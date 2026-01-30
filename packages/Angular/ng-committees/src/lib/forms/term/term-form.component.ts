/*
 * ============================================================================
 * TERM FORM COMPONENT - CONSISTENT WITH COMMITTEE/MEMBERSHIP FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { TermEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Terms')
@Component({
    selector: 'mj-term-form',
    templateUrl: './term-form.component.html',
    styleUrls: ['./term-form.component.scss']
})
export class TermFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: TermEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Status transition info
    public showStatusTransitionInfo: boolean = false;
    public statusTransitionMessage: string = '';

    // Committees dropdown data
    public committees: { ID: string; Name: string }[] = [];
    public isLoadingCommittees: boolean = false;

    // Expandable sections for related data
    public expandedSections: { [key: string]: boolean } = {
        memberships: false
    };

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
                { sectionKey: 'termDetails', sectionName: 'Term Details', isExpanded: true },
                { sectionKey: 'schedule', sectionName: 'Schedule', isExpanded: true },
                { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load committees for dropdown
            await this.loadCommittees();

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing term form:', error);
            this.showErrorNotification('Failed to load term form');
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
            this.showErrorNotification('Failed to load committees');
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

        // Validate Name (required field)
        if (!this.record.Name || this.record.Name.trim() === '') {
            this.validationErrors['Name'] = 'Term name is required';
        }

        // Validate CommitteeID (required field)
        if (!this.record.CommitteeID) {
            this.validationErrors['CommitteeID'] = 'Committee is required';
        }

        // Validate StartDate (required field)
        if (!this.record.StartDate) {
            this.validationErrors['StartDate'] = 'Start date is required';
        }

        // Validate date range (end date must be after start date)
        if (this.record.StartDate && this.record.EndDate) {
            const startDate = new Date(this.record.StartDate);
            const endDate = new Date(this.record.EndDate);
            if (endDate <= startDate) {
                this.validationErrors['EndDate'] = 'End date must be after start date';
            }
        }

        // Update status transition info
        this.updateStatusTransitionInfo();
    }

    private updateStatusTransitionInfo(): void {
        this.showStatusTransitionInfo = false;
        this.statusTransitionMessage = '';

        if (!this.record.Status) return;

        const today = new Date();
        today.setHours(0, 0, 0, 0);

        const startDate = this.record.StartDate ? new Date(this.record.StartDate) : null;
        const endDate = this.record.EndDate ? new Date(this.record.EndDate) : null;

        if (startDate) startDate.setHours(0, 0, 0, 0);
        if (endDate) endDate.setHours(0, 0, 0, 0);

        if (this.record.Status === 'Active') {
            if (startDate && startDate > today) {
                this.showStatusTransitionInfo = true;
                this.statusTransitionMessage = 'This term is marked Active but the start date is in the future. Consider setting status to "Upcoming".';
            } else if (endDate && endDate < today) {
                this.showStatusTransitionInfo = true;
                this.statusTransitionMessage = 'This term is marked Active but the end date has passed. Consider setting status to "Completed".';
            }
        } else if (this.record.Status === 'Upcoming') {
            if (startDate && startDate <= today) {
                this.showStatusTransitionInfo = true;
                this.statusTransitionMessage = 'This term is marked Upcoming but the start date has passed. Consider setting status to "Active".';
            }
        } else if (this.record.Status === 'Completed') {
            if (endDate && endDate > today) {
                this.showStatusTransitionInfo = true;
                this.statusTransitionMessage = 'This term is marked Completed but the end date is in the future. Verify this is correct.';
            }
        }
    }

    public onFieldInput(_fieldName: string): void {
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
            this.showSuccessNotification('Saving term... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the term details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('Name');
        this.touchedFields.add('CommitteeID');
        this.touchedFields.add('StartDate');

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
                this.showSuccessNotification('Term saved successfully!');
            } else {
                this.showErrorNotification('Failed to save term. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving term:', error);
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
     * Get the term duration display text
     */
    public get termDurationDisplay(): string {
        if (!this.record.StartDate) return '';

        const startDate = new Date(this.record.StartDate);
        const endDate = this.record.EndDate ? new Date(this.record.EndDate) : null;

        if (!endDate) {
            return 'Ongoing';
        }

        const diffTime = Math.abs(endDate.getTime() - startDate.getTime());
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

        if (diffDays < 30) {
            return `${diffDays} days`;
        } else if (diffDays < 365) {
            const months = Math.round(diffDays / 30);
            return months === 1 ? '1 month' : `${months} months`;
        } else {
            const years = Math.round(diffDays / 365 * 10) / 10;
            return years === 1 ? '1 year' : `${years} years`;
        }
    }

    /**
     * Get days remaining in term (if active)
     */
    public get daysRemainingDisplay(): string {
        if (!this.record.EndDate || this.record.Status !== 'Active') return '';

        const today = new Date();
        const endDate = new Date(this.record.EndDate);
        const diffTime = endDate.getTime() - today.getTime();
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

        if (diffDays < 0) {
            return 'Ended';
        } else if (diffDays === 0) {
            return 'Ends today';
        } else if (diffDays === 1) {
            return '1 day remaining';
        } else {
            return `${diffDays} days remaining`;
        }
    }

    /**
     * Format date for display
     */
    public formatDate(date: Date | string | null): string {
        if (!date) return 'Not set';
        const d = new Date(date);
        return d.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
    }
}

export function LoadTermFormComponent() {
    // Empty function - existence prevents tree-shaking
}
