/*
 * ============================================================================
 * ACTION ITEM FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { ActionItemEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Action Items')
@Component({
    selector: 'mj-action-item-form',
    templateUrl: './action-item-form.component.html',
    styleUrls: ['./action-item-form.component.scss']
})
export class ActionItemFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: ActionItemEntityExtended;

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
    public users: { ID: string; Name: string }[] = [];
    public isLoadingCommittees: boolean = false;
    public isLoadingMeetings: boolean = false;
    public isLoadingAgendaItems: boolean = false;
    public isLoadingUsers: boolean = false;

    // Priority options
    public priorities = [
        { Name: 'Low', Value: 'Low' },
        { Name: 'Medium', Value: 'Medium' },
        { Name: 'High', Value: 'High' },
        { Name: 'Critical', Value: 'Critical' }
    ];

    // Status options
    public statuses = [
        { Name: 'Pending', Value: 'Pending' },
        { Name: 'In Progress', Value: 'InProgress' },
        { Name: 'Completed', Value: 'Completed' },
        { Name: 'On Hold', Value: 'OnHold' },
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
                { sectionKey: 'taskDetails', sectionName: 'Task Details', isExpanded: true },
                { sectionKey: 'assignment', sectionName: 'Assignment', isExpanded: true },
                { sectionKey: 'tracking', sectionName: 'Tracking', isExpanded: true },
                { sectionKey: 'completion', sectionName: 'Completion', isExpanded: false },
                { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load dropdowns
            await Promise.all([
                this.loadCommittees(),
                this.loadMeetings(),
                this.loadAgendaItems(),
                this.loadUsers()
            ]);

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing action item form:', error);
            this.showErrorNotification('Failed to load action item form');
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
                OrderBy: 'Title',
                ResultType: 'simple'
            });

            this.agendaItems = result.Results.map((a: any) => ({
                ID: a.ID,
                Name: a.Title || 'Untitled Item'
            }));

        } catch (error) {
            console.error('Error loading agenda items:', error);
        } finally {
            this.isLoadingAgendaItems = false;
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

        // Validate CommitteeID (required field)
        if (!this.record.CommitteeID) {
            this.validationErrors['CommitteeID'] = 'Committee is required';
        }

        // Validate DueDate when status is not Completed or Cancelled
        if (this.record.Status !== 'Completed' && this.record.Status !== 'Cancelled') {
            if (!this.record.DueDate) {
                this.validationErrors['DueDate'] = 'Due date is required for active tasks';
            }
        }

        // Validate CompletedAt when status is Completed
        if (this.record.Status === 'Completed' && !this.record.CompletedAt) {
            this.validationErrors['CompletedAt'] = 'Completion date is required when status is Completed';
        }
    }

    public onFieldInput(_fieldName: string): void {
        this.validationSubject$.next();
    }

    public onStatusChange(): void {
        this.validationSubject$.next();
    }

    public onDateChange(): void {
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
            this.showSuccessNotification('Saving action item... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the action item details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('Title');
        this.touchedFields.add('CommitteeID');
        this.touchedFields.add('DueDate');

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
                this.showSuccessNotification('Action item saved successfully!');
            } else {
                this.showErrorNotification('Failed to save action item. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving action item:', error);
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
     * Get priority icon based on Priority
     */
    public get priorityIcon(): string {
        const icons: Record<string, string> = {
            'Low': 'fas fa-arrow-down',
            'Medium': 'fas fa-minus',
            'High': 'fas fa-arrow-up',
            'Critical': 'fas fa-exclamation-triangle'
        };
        return icons[this.record.Priority] || 'fas fa-minus';
    }

    /**
     * Get priority color class
     */
    public get priorityColorClass(): string {
        const classes: Record<string, string> = {
            'Low': 'priority-low',
            'Medium': 'priority-medium',
            'High': 'priority-high',
            'Critical': 'priority-critical'
        };
        return classes[this.record.Priority] || 'priority-medium';
    }

    /**
     * Get status icon based on Status
     */
    public get statusIcon(): string {
        const icons: Record<string, string> = {
            'Pending': 'fas fa-clock',
            'InProgress': 'fas fa-spinner',
            'Completed': 'fas fa-check-circle',
            'OnHold': 'fas fa-pause-circle',
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
            'OnHold': 'status-onhold',
            'Cancelled': 'status-cancelled'
        };
        return classes[this.record.Status] || 'status-pending';
    }

    /**
     * Check if task is overdue
     */
    public get isOverdue(): boolean {
        if (!this.record.DueDate) return false;
        if (this.record.Status === 'Completed' || this.record.Status === 'Cancelled') return false;
        return new Date(this.record.DueDate) < new Date();
    }

    /**
     * Get days until due (or days overdue)
     */
    public get daysUntilDue(): string {
        if (!this.record.DueDate) return '';
        const due = new Date(this.record.DueDate);
        const now = new Date();
        const diffTime = due.getTime() - now.getTime();
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

        if (diffDays < 0) {
            return `${Math.abs(diffDays)} days overdue`;
        } else if (diffDays === 0) {
            return 'Due today';
        } else if (diffDays === 1) {
            return 'Due tomorrow';
        } else {
            return `${diffDays} days remaining`;
        }
    }

    /**
     * Format date for display
     */
    public formatDate(date: Date | string | null): string {
        if (!date) return '';
        const d = new Date(date);
        return d.toLocaleDateString();
    }

    /**
     * Get committee name for display
     */
    public getCommitteeName(): string {
        if (!this.record.CommitteeID) return '';
        const committee = this.committees.find(c => c.ID === this.record.CommitteeID);
        return committee?.Name || '';
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
     * Get agenda item name for display
     */
    public getAgendaItemName(): string {
        if (!this.record.AgendaItemID) return '';
        const item = this.agendaItems.find(a => a.ID === this.record.AgendaItemID);
        return item?.Name || '';
    }

    /**
     * Get user name for display (AssignedTo)
     */
    public getAssignedToName(): string {
        if (!this.record.AssignedToUserID) return '';
        const user = this.users.find(u => u.ID === this.record.AssignedToUserID);
        return user?.Name || '';
    }

    /**
     * Get user name for display (AssignedBy)
     */
    public getAssignedByName(): string {
        if (!this.record.AssignedByUserID) return '';
        const user = this.users.find(u => u.ID === this.record.AssignedByUserID);
        return user?.Name || '';
    }
}

export function LoadActionItemFormComponent() {
    // Empty function - existence prevents tree-shaking
}
