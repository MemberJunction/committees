/*
 * ============================================================================
 * MEETING FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { MeetingEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Meetings')
@Component({
    selector: 'mj-meeting-form',
    templateUrl: './meeting-form.component.html',
    styleUrls: ['./meeting-form.component.scss']
})
export class MeetingFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: MeetingEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Dropdown data
    public committees: { ID: string; Name: string }[] = [];
    public isLoadingCommittees: boolean = false;

    // Location type options
    public locationTypes = [
        { Name: 'In Person', Value: 'InPerson' },
        { Name: 'Virtual', Value: 'Virtual' },
        { Name: 'Hybrid', Value: 'Hybrid' }
    ];

    // Video provider options
    public videoProviders = [
        { Name: 'Zoom', Value: 'Zoom' },
        { Name: 'Microsoft Teams', Value: 'Teams' },
        { Name: 'Google Meet', Value: 'GoogleMeet' },
        { Name: 'WebEx', Value: 'WebEx' },
        { Name: 'Other', Value: 'Other' }
    ];

    // Status options
    public statuses = [
        { Name: 'Draft', Value: 'Draft' },
        { Name: 'Scheduled', Value: 'Scheduled' },
        { Name: 'Postponed', Value: 'Postponed' },
        { Name: 'In Progress', Value: 'InProgress' },
        { Name: 'Completed', Value: 'Completed' },
        { Name: 'Cancelled', Value: 'Cancelled' }
    ];

    // Timezone options (common timezones)
    public timezones = [
        { Name: 'Eastern Time (ET)', Value: 'America/New_York' },
        { Name: 'Central Time (CT)', Value: 'America/Chicago' },
        { Name: 'Mountain Time (MT)', Value: 'America/Denver' },
        { Name: 'Pacific Time (PT)', Value: 'America/Los_Angeles' },
        { Name: 'UTC', Value: 'UTC' },
        { Name: 'London (GMT/BST)', Value: 'Europe/London' },
        { Name: 'Paris (CET/CEST)', Value: 'Europe/Paris' },
        { Name: 'Tokyo (JST)', Value: 'Asia/Tokyo' }
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
                { sectionKey: 'basicInformation', sectionName: 'Basic Information', isExpanded: true },
                { sectionKey: 'schedule', sectionName: 'Schedule & Location', isExpanded: true },
                { sectionKey: 'videoConference', sectionName: 'Video Conference', isExpanded: true },
                { sectionKey: 'status', sectionName: 'Status & Recording', isExpanded: false },
                { sectionKey: 'agendaItems', sectionName: 'Agenda Items', isExpanded: false },
                { sectionKey: 'attendance', sectionName: 'Attendance', isExpanded: false },
                { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
                { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load dropdowns
            await this.loadCommittees();

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing meeting form:', error);
            this.showErrorNotification('Failed to load meeting form');
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

        // Validate StartDateTime (required field)
        if (!this.record.StartDateTime) {
            this.validationErrors['StartDateTime'] = 'Start date/time is required';
        }

        // Validate EndDateTime is after StartDateTime
        if (this.record.StartDateTime && this.record.EndDateTime) {
            const start = new Date(this.record.StartDateTime);
            const end = new Date(this.record.EndDateTime);
            if (end <= start) {
                this.validationErrors['EndDateTime'] = 'End time must be after start time';
            }
        }

        // Validate VideoProvider when location type is Virtual or Hybrid
        if ((this.record.LocationType === 'Virtual' || this.record.LocationType === 'Hybrid') && !this.record.VideoProvider) {
            this.validationErrors['VideoProvider'] = 'Video provider is required for virtual/hybrid meetings';
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

    public onLocationTypeChange(): void {
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
            this.showSuccessNotification('Saving meeting... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the meeting details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('Title');
        this.touchedFields.add('CommitteeID');
        this.touchedFields.add('StartDateTime');

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
                this.showSuccessNotification('Meeting saved successfully!');
            } else {
                this.showErrorNotification('Failed to save meeting. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving meeting:', error);
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
     * Get status icon based on Status
     */
    public get statusIcon(): string {
        const icons: Record<string, string> = {
            'Draft': 'fas fa-file-alt',
            'Scheduled': 'fas fa-calendar-check',
            'Postponed': 'fas fa-pause-circle',
            'InProgress': 'fas fa-play-circle',
            'Completed': 'fas fa-check-circle',
            'Cancelled': 'fas fa-times-circle'
        };
        return icons[this.record.Status] || 'fas fa-question-circle';
    }

    /**
     * Get status color class
     */
    public get statusColorClass(): string {
        const classes: Record<string, string> = {
            'Draft': 'status-draft',
            'Scheduled': 'status-scheduled',
            'Postponed': 'status-postponed',
            'InProgress': 'status-inprogress',
            'Completed': 'status-completed',
            'Cancelled': 'status-cancelled'
        };
        return classes[this.record.Status] || 'status-draft';
    }

    /**
     * Get location type icon
     */
    public get locationTypeIcon(): string {
        const icons: Record<string, string> = {
            'InPerson': 'fas fa-building',
            'Virtual': 'fas fa-video',
            'Hybrid': 'fas fa-laptop-house'
        };
        return icons[this.record.LocationType] || 'fas fa-map-marker-alt';
    }

    /**
     * Get duration display
     */
    public get durationDisplay(): string {
        if (!this.record.StartDateTime || !this.record.EndDateTime) return '';

        const start = new Date(this.record.StartDateTime);
        const end = new Date(this.record.EndDateTime);
        const diffMs = end.getTime() - start.getTime();
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
     * Format date for display
     */
    public formatDate(date: Date | string | null): string {
        if (!date) return '';
        const d = new Date(date);
        return d.toLocaleDateString();
    }

    /**
     * Format time for display
     */
    public formatTime(date: Date | string | null): string {
        if (!date) return '';
        const d = new Date(date);
        return d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
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
     * Check if video conference fields should be shown
     */
    public get showVideoConference(): boolean {
        return this.record.LocationType === 'Virtual' || this.record.LocationType === 'Hybrid';
    }
}

export function LoadMeetingFormComponent() {
    // Empty function - existence prevents tree-shaking
}
