/*
 * ============================================================================
 * ARTIFACT FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { ArtifactEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Artifacts')
@Component({
    selector: 'mj-artifact-form',
    templateUrl: './artifact-form.component.html',
    styleUrls: ['./artifact-form.component.scss']
})
export class ArtifactFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: ArtifactEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Dropdown data
    public committees: { ID: string; Name: string }[] = [];
    public meetings: { ID: string; Name: string }[] = [];
    public agendaItems: { ID: string; Name: string }[] = [];
    public actionItems: { ID: string; Name: string }[] = [];
    public users: { ID: string; Name: string }[] = [];
    public isLoadingCommittees: boolean = false;
    public isLoadingMeetings: boolean = false;
    public isLoadingAgendaItems: boolean = false;
    public isLoadingActionItems: boolean = false;
    public isLoadingUsers: boolean = false;

    // Expandable sections for related data
    public expandedSections: { [key: string]: boolean } = {};

    private destroy$ = new Subject<void>();
    private validationSubject$ = new Subject<void>();

    private keyboardShortcuts: { [key: string]: () => void } = {
        'ctrl+s': () => this.handleSaveShortcut(),
        'meta+s': () => this.handleSaveShortcut(),
        'ctrl+e': () => this.handleEditShortcut(),
        'meta+e': () => this.handleEditShortcut(),
        'escape': () => this.handleEscapeShortcut()
    };

    constructor(
        elementRef: ElementRef,
        sharedService: SharedService,
        public router: Router,
        route: ActivatedRoute,
        cdr: ChangeDetectorRef,
        private workspaceManager: WorkspaceStateManager
    ) {
        super(elementRef, sharedService, router, route, cdr);
    }

    override async ngOnInit() {
        this.isLoading = true;

        try {
            await super.ngOnInit();

            this.initSections([
                { sectionKey: 'documentInfo', sectionName: 'Document Info', isExpanded: true },
                { sectionKey: 'location', sectionName: 'Location & Provider', isExpanded: true },
                { sectionKey: 'associations', sectionName: 'Associations', isExpanded: true },
                { sectionKey: 'metadata', sectionName: 'Metadata', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load dropdowns
            await Promise.all([
                this.loadCommittees(),
                this.loadMeetings(),
                this.loadAgendaItems(),
                this.loadActionItems(),
                this.loadUsers()
            ]);

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing artifact form:', error);
            this.showErrorNotification('Failed to load artifact form');
        } finally {
            this.isLoading = false;
        }
    }

    ngOnDestroy() {
        this.destroy$.next();
        this.destroy$.complete();
    }

    // Load committees for dropdown
    private async loadCommittees(): Promise<void> {
        this.isLoadingCommittees = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Committees',
                ExtraFilter: "Status = 'Active'",
                OrderBy: 'Name',
                ResultType: 'simple'
            });

            this.committees = result.Results.map((c: any) => ({
                ID: c.ID,
                Name: c.Name
            }));

        } catch (error) {
            console.error('Error loading committees:', error);
        } finally {
            this.isLoadingCommittees = false;
        }
    }

    // Load meetings for dropdown
    private async loadMeetings(): Promise<void> {
        this.isLoadingMeetings = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Meetings',
                OrderBy: 'StartDateTime DESC',
                ResultType: 'simple'
            });

            this.meetings = result.Results.map((m: any) => ({
                ID: m.ID,
                Name: m.Title || `Meeting on ${new Date(m.StartDateTime).toLocaleDateString()}`
            }));

        } catch (error) {
            console.error('Error loading meetings:', error);
        } finally {
            this.isLoadingMeetings = false;
        }
    }

    // Load agenda items for dropdown
    private async loadAgendaItems(): Promise<void> {
        this.isLoadingAgendaItems = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Agenda Items',
                OrderBy: 'Sequence',
                ResultType: 'simple'
            });

            this.agendaItems = result.Results.map((a: any) => ({
                ID: a.ID,
                Name: a.Title || `Item #${a.Sequence}`
            }));

        } catch (error) {
            console.error('Error loading agenda items:', error);
        } finally {
            this.isLoadingAgendaItems = false;
        }
    }

    // Load action items for dropdown
    private async loadActionItems(): Promise<void> {
        this.isLoadingActionItems = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Action Items',
                OrderBy: 'DueDate DESC',
                ResultType: 'simple'
            });

            this.actionItems = result.Results.map((a: any) => ({
                ID: a.ID,
                Name: a.Title || a.Description?.substring(0, 50) || `Action Item`
            }));

        } catch (error) {
            console.error('Error loading action items:', error);
        } finally {
            this.isLoadingActionItems = false;
        }
    }

    // Load users for dropdown
    private async loadUsers(): Promise<void> {
        this.isLoadingUsers = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Users',
                OrderBy: 'Name',
                ResultType: 'simple'
            });

            this.users = result.Results.map((u: any) => ({
                ID: u.ID,
                Name: u.Name || u.Email
            }));

        } catch (error) {
            console.error('Error loading users:', error);
        } finally {
            this.isLoadingUsers = false;
        }
    }

    // Toggle expandable sections
    public toggleSection(sectionKey: string): void {
        this.expandedSections[sectionKey] = !this.expandedSections[sectionKey];
    }

    // Track when a field is touched (blurred)
    public markFieldAsTouched(fieldName: string): void {
        this.touchedFields.add(fieldName);
        this.validationSubject$.next();
    }

    // Check if field should show error
    public shouldShowFieldError(fieldName: string): boolean {
        const hasError = !!this.validationErrors[fieldName];
        const isTouched = this.touchedFields.has(fieldName);
        return hasError && isTouched;
    }

    private setupValidationFeedback(): void {
        this.validationSubject$
            .pipe(
                debounceTime(200),
                takeUntil(this.destroy$)
            )
            .subscribe(() => {
                this.performValidation();
            });
    }

    private performValidation(): void {
        this.validationErrors = {};

        const syncResult = this.record.Validate();

        if (!syncResult.Success && syncResult.Errors.length > 0) {
            syncResult.Errors.forEach(error => {
                if (error.Source) {
                    this.validationErrors[error.Source] = error.Message;
                }
            });
        }

        // Validate Title (required field)
        if (!this.record.Title || this.record.Title.trim() === '') {
            this.validationErrors['Title'] = 'Title is required';
        }

        // Validate URL (required field)
        if (!this.record.URL || this.record.URL.trim() === '') {
            this.validationErrors['URL'] = 'URL is required';
        } else if (!this.isValidURL(this.record.URL)) {
            this.validationErrors['URL'] = 'URL must be a valid HTTP or HTTPS URL';
        }

        // Validate associations (at least one required)
        if (!this.record.CommitteeID && !this.record.MeetingID && !this.record.AgendaItemID && !this.record.ActionItemID) {
            this.validationErrors['CommitteeID'] = 'Artifact must be attached to at least one entity';
        }

        // Provider-specific validation
        if (this.record.Provider && this.record.Provider !== 'URL' && !this.record.ExternalID) {
            this.validationErrors['ExternalID'] = `External ID is required for ${this.record.Provider} provider`;
        }
    }

    private isValidURL(url: string): boolean {
        try {
            const parsed = new URL(url);
            return parsed.protocol === 'http:' || parsed.protocol === 'https:';
        } catch {
            return false;
        }
    }

    public onFieldInput(_fieldName: string): void {
        this.validationSubject$.next();
    }

    @HostListener('document:keydown', ['$event'])
    handleKeyboardEvent(event: KeyboardEvent) {
        const key = this.getKeyCombo(event);
        const handler = this.keyboardShortcuts[key];

        if (handler) {
            event.preventDefault();
            handler();
        }
    }

    private getKeyCombo(event: KeyboardEvent): string {
        const parts: string[] = [];

        if (event.ctrlKey) parts.push('ctrl');
        if (event.metaKey) parts.push('meta');
        if (event.shiftKey) parts.push('shift');
        if (event.altKey) parts.push('alt');

        parts.push(event.key.toLowerCase());

        return parts.join('+');
    }

    private handleSaveShortcut(): void {
        if (this.EditMode && this.UserCanEdit) {
            this.SaveRecord(true);
            this.showSuccessNotification('Saving artifact... (Ctrl+S)');
        }
    }

    private handleEditShortcut(): void {
        if (!this.EditMode && this.UserCanEdit) {
            this.StartEditMode();
            this.showInfoNotification('Edit mode enabled (Ctrl+E)');
        }
    }

    private handleEscapeShortcut(): void {
        if (this.EditMode) {
            this.CancelEdit();
            this.showInfoNotification('Changes discarded (Esc)');
        }
    }

    public handleCancel(): void {
        // Revert any changes made to the record
        if (!this.record.IsSaved) {
            // For new records, reset to fresh defaults
            this.record.NewRecord();
        } else if (this.record.Dirty) {
            // For existing records, revert to original values
            this.record.Revert();
        }

        // Clear validation state
        this.validationErrors = {};
        this.touchedFields.clear();

        // Close the current tab
        const activeTabId = this.workspaceManager.GetActiveTabId();
        if (activeTabId) {
            this.workspaceManager.CloseTab(activeTabId);
        }
    }

    private showSuccessNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'success', 3000);
    }

    private showErrorNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'error', 5000);
    }

    private showInfoNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'info', 3000);
    }

    private showWelcomeMessage(): void {
        this.showInfoNotification('Welcome! Fill in the artifact details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('Title');
        this.touchedFields.add('URL');
        this.touchedFields.add('CommitteeID');

        // Run validation
        this.performValidation();

        // Check for validation errors
        if (Object.keys(this.validationErrors).length > 0) {
            this.showErrorNotification('Please fix the errors before saving.');
            this.isSaving = false;
            return false;
        }

        try {
            const result = await super.SaveRecord(StopEditModeAfterSave);

            if (result) {
                this.showSuccessNotification('Artifact saved successfully!');
            } else {
                this.showErrorNotification('Failed to save artifact. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving artifact:', error);
            this.showErrorNotification('An error occurred while saving.');
            return false;

        } finally {
            this.isSaving = false;
        }
    }

    override Validate(): ValidationResult {
        const result = super.Validate();
        this.performValidation();
        return result;
    }

    /**
     * Get the artifact type icon based on ArtifactType
     */
    public get artifactTypeIcon(): string {
        const icons: Record<string, string> = {
            'Agenda': 'fas fa-list-alt',
            'Minutes': 'fas fa-file-alt',
            'Presentation': 'fas fa-desktop',
            'Report': 'fas fa-chart-bar',
            'Policy': 'fas fa-gavel',
            'Proposal': 'fas fa-file-contract',
            'Other': 'fas fa-file'
        };
        return icons[this.record.ArtifactType] || 'fas fa-file';
    }

    /**
     * Get provider icon class
     */
    public get providerIconClass(): string {
        const icons: Record<string, string> = {
            'GoogleDrive': 'fab fa-google-drive',
            'SharePoint': 'fab fa-microsoft',
            'Box': 'fas fa-box',
            'OneDrive': 'fab fa-microsoft',
            'Dropbox': 'fab fa-dropbox',
            'URL': 'fas fa-link'
        };
        return icons[this.record.Provider] || 'fas fa-link';
    }

    /**
     * Get attached entity display text
     */
    public get attachedToDisplay(): string {
        if (this.record.ActionItemID) return 'Action Item';
        if (this.record.AgendaItemID) return 'Agenda Item';
        if (this.record.MeetingID) return 'Meeting';
        if (this.record.CommitteeID) return 'Committee';
        return 'Not attached';
    }

    /**
     * Format file size for display
     */
    public get fileSizeDisplay(): string {
        if (!this.record.FileSize) return 'Unknown';
        const bytes = this.record.FileSize;
        if (bytes < 1024) return `${bytes} B`;
        if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)} KB`;
        if (bytes < 1024 * 1024 * 1024) return `${(bytes / (1024 * 1024)).toFixed(1)} MB`;
        return `${(bytes / (1024 * 1024 * 1024)).toFixed(1)} GB`;
    }
}

export function LoadArtifactFormComponent() {
    // Empty function - existence prevents tree-shaking
}
