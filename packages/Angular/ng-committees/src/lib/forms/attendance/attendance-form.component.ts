/*
 * ============================================================================
 * ATTENDANCE FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { AttendanceEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Attendances')
@Component({
    selector: 'mj-attendance-form',
    templateUrl: './attendance-form.component.html',
    styleUrls: ['./attendance-form.component.scss']
})
export class AttendanceFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: AttendanceEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Dropdown data
    public meetings: { ID: string; Name: string }[] = [];
    public users: { ID: string; Name: string }[] = [];
    public isLoadingMeetings: boolean = false;
    public isLoadingUsers: boolean = false;

    // Attendance status options
    public attendanceStatuses = [
        { Name: 'Expected', Value: 'Expected' },
        { Name: 'Present', Value: 'Present' },
        { Name: 'Partial', Value: 'Partial' },
        { Name: 'Absent', Value: 'Absent' },
        { Name: 'Excused', Value: 'Excused' }
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
                { sectionKey: 'attendanceDetails', sectionName: 'Attendance Details', isExpanded: true },
                { sectionKey: 'timing', sectionName: 'Timing', isExpanded: true }
            ]);

            this.setupValidationFeedback();

            // Load dropdowns
            await Promise.all([
                this.loadMeetings(),
                this.loadUsers()
            ]);

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing attendance form:', error);
            this.showErrorNotification('Failed to load attendance form');
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

        // Validate MeetingID (required field)
        if (!this.record.MeetingID) {
            this.validationErrors['MeetingID'] = 'Meeting is required';
        }

        // Validate UserID (required field)
        if (!this.record.UserID) {
            this.validationErrors['UserID'] = 'User is required';
        }

        // Validate JoinedAt when status is Present or Partial
        if ((this.record.AttendanceStatus === 'Present' || this.record.AttendanceStatus === 'Partial') && !this.record.JoinedAt) {
            this.validationErrors['JoinedAt'] = 'Join time is required when marked as Present or Partial';
        }

        // Validate LeftAt is after JoinedAt
        if (this.record.JoinedAt && this.record.LeftAt) {
            const joined = new Date(this.record.JoinedAt);
            const left = new Date(this.record.LeftAt);
            if (left <= joined) {
                this.validationErrors['LeftAt'] = 'Leave time must be after join time';
            }
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
            this.showSuccessNotification('Saving attendance... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the attendance details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('MeetingID');
        this.touchedFields.add('UserID');

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
                this.showSuccessNotification('Attendance saved successfully!');
            } else {
                this.showErrorNotification('Failed to save attendance. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving attendance:', error);
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
     * Get status icon based on AttendanceStatus
     */
    public get statusIcon(): string {
        const icons: Record<string, string> = {
            'Expected': 'fas fa-clock',
            'Present': 'fas fa-check-circle',
            'Partial': 'fas fa-adjust',
            'Absent': 'fas fa-times-circle',
            'Excused': 'fas fa-calendar-times'
        };
        return icons[this.record.AttendanceStatus] || 'fas fa-question-circle';
    }

    /**
     * Get status color class
     */
    public get statusColorClass(): string {
        const classes: Record<string, string> = {
            'Expected': 'status-expected',
            'Present': 'status-present',
            'Partial': 'status-partial',
            'Absent': 'status-absent',
            'Excused': 'status-excused'
        };
        return classes[this.record.AttendanceStatus] || 'status-expected';
    }

    /**
     * Get duration display
     */
    public get durationDisplay(): string {
        if (!this.record.JoinedAt || !this.record.LeftAt) return '';

        const joined = new Date(this.record.JoinedAt);
        const left = new Date(this.record.LeftAt);
        const diffMs = left.getTime() - joined.getTime();
        const mins = Math.round(diffMs / (1000 * 60));

        if (mins < 60) {
            return `${mins} min`;
        }

        const hours = Math.floor(mins / 60);
        const remainingMins = mins % 60;
        return remainingMins > 0 ? `${hours}h ${remainingMins}m` : `${hours}h`;
    }

    /**
     * Format datetime for display
     */
    public formatDateTime(date: Date | string | null): string {
        if (!date) return '';
        const d = new Date(date);
        return d.toLocaleString();
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
     * Get user name for display
     */
    public getUserName(): string {
        if (!this.record.UserID) return '';
        const user = this.users.find(u => u.ID === this.record.UserID);
        return user?.Name || '';
    }
}

export function LoadAttendanceFormComponent() {
    // Empty function - existence prevents tree-shaking
}
