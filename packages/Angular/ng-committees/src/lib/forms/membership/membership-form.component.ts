/*
 * ============================================================================
 * MEMBERSHIP FORM COMPONENT - CONSISTENT WITH COMMITTEE FORM DESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { MembershipEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { WorkspaceStateManager } from '@memberjunction/ng-base-application';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Memberships')
@Component({
    selector: 'mj-membership-form',
    templateUrl: './membership-form.component.html',
    styleUrls: ['./membership-form.component.scss']
})
export class MembershipFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: MembershipEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isSaving: boolean = false;

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Status transition info
    public showStatusTransitionInfo: boolean = false;
    public statusTransitionMessage: string = '';

    // Dropdown data
    public committees: { ID: string; Name: string }[] = [];
    public isLoadingCommittees: boolean = false;

    public users: { ID: string; Name: string; Email: string }[] = [];
    public isLoadingUsers: boolean = false;

    public roles: { ID: string; Name: string; IsOfficer: boolean }[] = [];
    public isLoadingRoles: boolean = false;

    public terms: { ID: string; Name: string; StartDate: Date; EndDate: Date }[] = [];
    public isLoadingTerms: boolean = false;

    // Computed membership duration
    public membershipDays: number = 0;

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
                { sectionKey: 'assignment', sectionName: 'Assignment', isExpanded: true },
                { sectionKey: 'period', sectionName: 'Period & Status', isExpanded: true },
                { sectionKey: 'notes', sectionName: 'Notes', isExpanded: false }
            ]);

            this.setupValidationFeedback();

            // Load dropdown data
            await Promise.all([
                this.loadCommittees(),
                this.loadUsers(),
                this.loadRoles()
            ]);

            // Load terms after we know the committee (if saved)
            if (this.record.CommitteeID) {
                await this.loadTerms();
            }

            // Calculate membership duration for saved records
            if (this.record.IsSaved) {
                this.calculateMembershipDuration();
            }

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing membership form:', error);
            this.showErrorNotification('Failed to load membership form');
        } finally {
            this.isLoading = false;
        }
    }

    ngOnDestroy() {
        this.destroy$.next();
        this.destroy$.complete();
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

    private calculateMembershipDuration(): void {
        if (this.record.StartDate) {
            const startDate = new Date(this.record.StartDate);
            const endDate = this.record.EndDate ? new Date(this.record.EndDate) : new Date();
            const diffTime = Math.abs(endDate.getTime() - startDate.getTime());
            this.membershipDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
        }
    }

    /**
     * Load committees for dropdown
     */
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

            if (result && result.Success) {
                this.committees = result.Results.map((r: any) => ({
                    ID: r.ID,
                    Name: r.Name
                }));
            }
        } catch (error) {
            console.error('Error loading committees:', error);
            this.showErrorNotification('Failed to load committees');
        } finally {
            this.isLoadingCommittees = false;
        }
    }

    /**
     * Load users for dropdown
     */
    private async loadUsers(): Promise<void> {
        this.isLoadingUsers = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Users',
                ExtraFilter: "IsActive = 1",
                OrderBy: 'Name',
                ResultType: 'simple'
            });

            if (result && result.Success) {
                this.users = result.Results.map((r: any) => ({
                    ID: r.ID,
                    Name: r.Name,
                    Email: r.Email || ''
                }));
            }
        } catch (error) {
            console.error('Error loading users:', error);
            this.showErrorNotification('Failed to load users');
        } finally {
            this.isLoadingUsers = false;
        }
    }

    /**
     * Load roles for dropdown
     */
    private async loadRoles(): Promise<void> {
        this.isLoadingRoles = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Roles',
                ExtraFilter: '',
                OrderBy: 'Sequence, Name',
                ResultType: 'simple'
            });

            if (result && result.Success) {
                this.roles = result.Results.map((r: any) => ({
                    ID: r.ID,
                    Name: r.Name,
                    IsOfficer: r.IsOfficer
                }));
            }
        } catch (error) {
            console.error('Error loading roles:', error);
            this.showErrorNotification('Failed to load roles');
        } finally {
            this.isLoadingRoles = false;
        }
    }

    /**
     * Load terms for the selected committee
     */
    public async loadTerms(): Promise<void> {
        if (!this.record.CommitteeID) {
            this.terms = [];
            return;
        }

        this.isLoadingTerms = true;

        try {
            const rv = new RunView();
            const result = await rv.RunView({
                EntityName: 'Terms',
                ExtraFilter: `CommitteeID = '${this.record.CommitteeID}'`,
                OrderBy: 'StartDate DESC',
                ResultType: 'simple'
            });

            if (result && result.Success) {
                this.terms = result.Results.map((r: any) => ({
                    ID: r.ID,
                    Name: r.Name,
                    StartDate: r.StartDate,
                    EndDate: r.EndDate
                }));
            }
        } catch (error) {
            console.error('Error loading terms:', error);
            this.showErrorNotification('Failed to load terms');
        } finally {
            this.isLoadingTerms = false;
        }
    }

    /**
     * Handle committee selection change - reload terms
     */
    public async onCommitteeChange(): Promise<void> {
        // Clear term selection when committee changes
        this.record.TermID = null as any;
        await this.loadTerms();
        this.validationSubject$.next();
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

        this.checkStatusTransitions();
    }

    private checkStatusTransitions(): void {
        if (!this.record.IsSaved || !this.record.Dirty) {
            this.showStatusTransitionInfo = false;
            return;
        }

        const statusField = this.record.GetFieldByName('Status');

        if (statusField && statusField.OldValue && statusField.Value !== statusField.OldValue) {
            const newStatus = statusField.Value;

            this.showStatusTransitionInfo = true;

            switch (newStatus) {
                case 'Active':
                    this.statusTransitionMessage = 'Activating this membership will allow the member to participate in committee activities.';
                    break;
                case 'Pending':
                    this.statusTransitionMessage = 'Pending status indicates the membership is awaiting approval.';
                    break;
                case 'Ended':
                    this.statusTransitionMessage = 'Ending the membership will record the end date. Please provide an end reason.';
                    break;
                case 'Suspended':
                    this.statusTransitionMessage = 'Suspending the membership temporarily removes participation rights.';
                    break;
                default:
                    this.showStatusTransitionInfo = false;
            }
        } else {
            this.showStatusTransitionInfo = false;
        }
    }

    public onFieldInput(_fieldName: string): void {
        this.validationSubject$.next();
    }

    /**
     * Handle date field changes
     */
    public onDateChange(): void {
        this.performValidation();
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
            this.showSuccessNotification('Saving membership... (Ctrl+S)');
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
        this.showInfoNotification('Welcome! Fill in the membership details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        // Mark required fields as touched
        this.touchedFields.add('CommitteeID');
        this.touchedFields.add('UserID');
        this.touchedFields.add('RoleID');
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
                this.showSuccessNotification('Membership saved successfully!');

                if (this.record.IsSaved) {
                    this.calculateMembershipDuration();
                }
            } else {
                this.showErrorNotification('Failed to save membership. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving membership:', error);
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
     * Get selected committee name for display
     */
    public get selectedCommitteeName(): string {
        if (!this.record.CommitteeID) return '';
        const committee = this.committees.find(c => c.ID === this.record.CommitteeID);
        return committee?.Name || this.record.Committee || '';
    }

    /**
     * Get selected user name for display
     */
    public get selectedUserName(): string {
        if (!this.record.UserID) return '';
        const user = this.users.find(u => u.ID === this.record.UserID);
        return user?.Name || this.record.User || '';
    }

    /**
     * Get selected role name for display
     */
    public get selectedRoleName(): string {
        if (!this.record.RoleID) return '';
        const role = this.roles.find(r => r.ID === this.record.RoleID);
        return role?.Name || this.record.Role || '';
    }

    /**
     * Get selected term name for display
     */
    public get selectedTermName(): string {
        if (!this.record.TermID) return 'No term assigned';
        const term = this.terms.find(t => t.ID === this.record.TermID);
        return term?.Name || this.record.Term || '';
    }

    /**
     * Check if selected role is an officer role
     */
    public get isOfficerRole(): boolean {
        if (!this.record.RoleID) return false;
        const role = this.roles.find(r => r.ID === this.record.RoleID);
        return role?.IsOfficer || false;
    }
}

export function LoadMembershipFormComponent() {
    // Empty function - existence prevents tree-shaking
}
