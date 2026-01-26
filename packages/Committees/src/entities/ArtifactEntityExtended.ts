import { ArtifactEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Artifacts')
export class ArtifactEntityExtended extends ArtifactEntity {
    /**
     * Synchronous validation for basic field checks
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Required fields
        if (!this.Title || this.Title.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Title is required', 'Title'));
        }
        if (!this.URL || this.URL.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'URL is required', 'URL'));
        }

        // Must attach to at least one parent entity
        if (!this.CommitteeID && !this.MeetingID && !this.AgendaItemID && !this.ActionItemID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Artifact must be attached to at least one entity (Committee, Meeting, Agenda Item, or Action Item)',
                'CommitteeID'
            ));
        }

        // URL validation
        if (this.URL) {
            if (!this.IsValidURL(this.URL)) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'Invalid',
                    'URL must be a valid HTTP or HTTPS URL',
                    'URL'
                ));
            }
        }

        // Provider-specific validation
        if (this.Provider !== 'URL' && !this.ExternalID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                `External ID is required for ${this.Provider} provider`,
                'ExternalID'
            ));
        }

        return result;
    }

    /**
     * Validate URL format
     */
    private IsValidURL(url: string): boolean {
        try {
            const parsed = new URL(url);
            return parsed.protocol === 'http:' || parsed.protocol === 'https:';
        } catch {
            return false;
        }
    }

    /**
     * Set defaults for new artifacts
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.Provider = 'URL';

        return result;
    }

    /**
     * Computed property: Get attached entity type
     */
    get AttachedToType(): string {
        if (this.ActionItemID) return 'Action Item';
        if (this.AgendaItemID) return 'Agenda Item';
        if (this.MeetingID) return 'Meeting';
        if (this.CommitteeID) return 'Committee';
        return 'None';
    }

    /**
     * Computed property: Get attached entity ID
     */
    get AttachedToID(): string | null {
        return this.ActionItemID || this.AgendaItemID || this.MeetingID || this.CommitteeID || null;
    }

    /**
     * Computed property: Is cloud provider?
     */
    get IsCloudProvider(): boolean {
        return this.Provider !== 'URL';
    }

    /**
     * Computed property: Provider icon
     */
    get ProviderIcon(): string {
        const icons: Record<string, string> = {
            'GoogleDrive': '📁',
            'SharePoint': '📘',
            'Box': '📦',
            'OneDrive': '☁️',
            'Dropbox': '📤',
            'URL': '🔗'
        };
        return icons[this.Provider] || '📄';
    }
}