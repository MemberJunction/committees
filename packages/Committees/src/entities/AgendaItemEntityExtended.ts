import { AgendaItemEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Agenda Items')
export class AgendaItemEntityExtended extends AgendaItemEntity {
    /**
     * Synchronous validation for basic field checks
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Required fields
        if (!this.MeetingID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Meeting is required', 'MeetingID'));
        }
        if (!this.Title || this.Title.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Title is required', 'Title'));
        }

        // Duration must be positive
        if (this.DurationMinutes !== null && this.DurationMinutes <= 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Invalid',
                'Duration must be a positive number',
                'DurationMinutes'
            ));
        }

        // Sequence must be positive
        if (this.Sequence <= 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Invalid',
                'Sequence must be a positive number',
                'Sequence'
            ));
        }

        // Cannot be own parent
        if (this.ParentAgendaItemID === this.ID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'CircularReference',
                'Agenda item cannot be its own parent',
                'ParentAgendaItemID'
            ));
        }

        return result;
    }

    /**
     * Set defaults for new agenda items
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.ItemType = 'Discussion';
        this.Sequence = 100; // Default sequence

        return result;
    }

    /**
     * Computed property: Display title with type icon
     */
    get DisplayTitle(): string {
        const icons: Record<string, string> = {
            'Action': '✓',
            'Discussion': '💬',
            'Information': 'ℹ',
            'Vote': '🗳',
            'Report': '📊',
            'Other': '•'
        };
        const icon = icons[this.ItemType] || '•';
        return `${icon} ${this.Title}`;
    }

    /**
     * Computed property: Is this a sub-item?
     */
    get IsSubItem(): boolean {
        return this.ParentAgendaItemID !== null;
    }

    /**
     * Computed property: Formatted duration
     */
    get FormattedDuration(): string {
        if (!this.DurationMinutes) return 'Not specified';

        if (this.DurationMinutes < 60) {
            return `${this.DurationMinutes} min`;
        }

        const hours = Math.floor(this.DurationMinutes / 60);
        const mins = this.DurationMinutes % 60;
        return mins > 0 ? `${hours}h ${mins}min` : `${hours}h`;
    }
}