/*
 * ============================================================================
 * AGENDA ITEM FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { AgendaItemEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Agenda Items')
@Component({
    selector: 'mj-agenda-item-form',
    templateUrl: './agenda-item-form.component.html',
    styleUrls: ['./agenda-item-form.component.scss']
})
export class AgendaItemFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: AgendaItemEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Dropdown data
    public meetings: { ID: string; Name: string }[] = [];
    public parentAgendaItems: { ID: string; Name: string }[] = [];
    public users: { ID: string; Name: string }[] = [];
    public isLoadingMeetings: boolean = false;
    public isLoadingParentItems: boolean = false;
    public isLoadingUsers: boolean = false;

    // Item type options
    public itemTypes = [
        { Name: 'Discussion', Value: 'Discussion' },
        { Name: 'Information', Value: 'Information' },
        { Name: 'Action', Value: 'Action' },
        { Name: 'Vote', Value: 'Vote' },
        { Name: 'Presentation', Value: 'Presentation' },
        { Name: 'Other', Value: 'Other' }
    ];

    // Status options
    public statuses = [
        { Name: 'Pending', Value: 'Pending' },
        { Name: 'In Progress', Value: 'InProgress' },
        { Name: 'Completed', Value: 'Completed' },
        { Name: 'Deferred', Value: 'Deferred' },
        { Name: 'Cancelled', Value: 'Cancelled' }
    ];

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
                { sectionKey: 'itemDetails', sectionName: 'Item Details', isExpanded: true },
                { sectionKey: 'presentation', sectionName: 'Presentation', isExpanded: true },
                { sectionKey: 'outcome', sectionName: 'Outcome', isExpanded: true },
                { sectionKey: 'subItems', sectionName: 'Sub-Items', isExpanded: false },
                { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
                { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load dropdowns
            await Promise.all([
                this.loadMeetings(),
                this.loadParentAgendaItems(),
                this.loadUsers()
            ]);

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing agenda item form:', error);
            this.showErrorNotification('Failed to load agenda item form');
        } finally {
            this.isLoading = false;
        }
    }

    ngOnDestroy() {
        this.destroy$.next();
        this.destroy$.complete();
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

    // Load parent agenda items for dropdown
    private async loadParentAgendaItems(): Promise<void> {
        this.isLoadingParentItems = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Agenda Items',
                OrderBy: 'Title',
                ResultType: 'simple'
            });

            this.parentAgendaItems = result.Results
                .filter((a: any) => a.ID !== this.record?.ID) // Exclude current item
                .map((a: any) => ({
                    ID: a.ID,
                    Name: a.Title || 'Untitled Item'
                }));

        } catch (error) {
            console.error('Error loading parent agenda items:', error);
        } finally {
            this.isLoadingParentItems = false;
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
        if (!this.record.Title || this.record.Title.trim().length === 0) {
            this.validationErrors['Title'] = 'Title is required';
        }

        // Validate MeetingID (required field)
        if (!this.record.MeetingID) {
            this.validationErrors['MeetingID'] = 'Meeting is required';
        }

        // Validate DurationMinutes (positive number)
        if (this.record.DurationMinutes !== null && this.record.DurationMinutes !== undefined && this.record.DurationMinutes < 0) {
            this.validationErrors['DurationMinutes'] = 'Duration must be a positive number';
        }

        // Validate Sequence (positive number)
        if (this.record.Sequence !== null && this.record.Sequence !== undefined && this.record.Sequence < 0) {
            this.validationErrors['Sequence'] = 'Sequence must be a positive number';
        }
    }

    public onFieldInput(_fieldName: string): void {
        this.validationSubject$.next();
    }

    public onStatusChange(): void {
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
            this.showSuccessNotification('Saving agenda item... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the agenda item details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('Title');
        this.touchedFields.add('MeetingID');

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
                this.showSuccessNotification('Agenda item saved successfully!');
            } else {
                this.showErrorNotification('Failed to save agenda item. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving agenda item:', error);
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
     * Get item type icon based on ItemType
     */
    public get itemTypeIcon(): string {
        const icons: Record<string, string> = {
            'Discussion': 'fas fa-comments',
            'Information': 'fas fa-info-circle',
            'Action': 'fas fa-bolt',
            'Vote': 'fas fa-vote-yea',
            'Presentation': 'fas fa-presentation',
            'Other': 'fas fa-ellipsis-h'
        };
        return icons[this.record.ItemType] || 'fas fa-list-ol';
    }

    /**
     * Get status icon based on Status
     */
    public get statusIcon(): string {
        const icons: Record<string, string> = {
            'Pending': 'fas fa-clock',
            'InProgress': 'fas fa-spinner',
            'Completed': 'fas fa-check-circle',
            'Deferred': 'fas fa-pause-circle',
            'Cancelled': 'fas fa-times-circle'
        };
        return icons[this.record.Status] || 'fas fa-question-circle';
    }

    /**
     * Get status color class
     */
    public get statusColorClass(): string {
        const classes: Record<string, string> = {
            'Pending': 'status-pending',
            'InProgress': 'status-inprogress',
            'Completed': 'status-completed',
            'Deferred': 'status-deferred',
            'Cancelled': 'status-cancelled'
        };
        return classes[this.record.Status] || 'status-pending';
    }

    /**
     * Get duration display
     */
    public get durationDisplay(): string {
        if (!this.record.DurationMinutes) return '';
        const mins = this.record.DurationMinutes;
        if (mins < 60) {
            return `${mins} min`;
        }
        const hours = Math.floor(mins / 60);
        const remainingMins = mins % 60;
        return remainingMins > 0 ? `${hours}h ${remainingMins}m` : `${hours}h`;
    }

    /**
     * Get meeting name for display
     */
    public getMeetingName(): string {
        if (!this.record.MeetingID) return '';
        const meeting = this.meetings.find(m => m.ID === this.record.MeetingID);
        return meeting?.Name || '';
    }

    /**
     * Get parent agenda item name for display
     */
    public getParentAgendaItemName(): string {
        if (!this.record.ParentAgendaItemID) return '';
        const item = this.parentAgendaItems.find(a => a.ID === this.record.ParentAgendaItemID);
        return item?.Name || '';
    }

    /**
     * Get presenter name for display
     */
    public getPresenterName(): string {
        if (!this.record.PresenterUserID) return '';
        const user = this.users.find(u => u.ID === this.record.PresenterUserID);
        return user?.Name || '';
    }
}

export function LoadAgendaItemFormComponent() {
    // Empty function - existence prevents tree-shaking
}
