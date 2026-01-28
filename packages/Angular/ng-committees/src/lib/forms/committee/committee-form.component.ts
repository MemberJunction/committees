/*
 * ============================================================================
 * COMMITTEE FORM COMPONENT - STUNNING REDESIGN
 * ============================================================================
 */

import { Component, OnInit, OnDestroy, HostListener, ElementRef, ChangeDetectorRef } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { CommitteeEntityExtended } from '@memberjunction/committees-core';
import { RunView, ValidationResult } from '@memberjunction/core';
import { SharedService } from '@memberjunction/ng-shared';
import { Subject } from 'rxjs';
import { debounceTime, takeUntil } from 'rxjs/operators';

interface ComputedMetrics {
    daysSinceFormation: number;
    hierarchyDepth: number;
    totalMembers: number;
    activeMembers: number;
    totalMeetings: number;
    upcomingMeetings: number;
    totalActionItems: number;
    pendingActionItems: number;
}

interface ValidationErrors {
    [fieldName: string]: string;
}

@RegisterClass(BaseFormComponent, 'Committees')
@Component({
    selector: 'mj-committee-form',
    templateUrl: './committee-form.component.html',
    styleUrls: ['./committee-form.component.scss']
})
export class CommitteeFormComponent extends BaseFormComponent implements OnInit, OnDestroy {

    public record!: CommitteeEntityExtended;

    // State management
    public isLoading: boolean = false;
    public isLoadingMetrics: boolean = false;
    public isSaving: boolean = false;

    // Computed metrics
    public computedMetrics: ComputedMetrics = {
        daysSinceFormation: 0,
        hierarchyDepth: 0,
        totalMembers: 0,
        activeMembers: 0,
        totalMeetings: 0,
        upcomingMeetings: 0,
        totalActionItems: 0,
        pendingActionItems: 0
    };

    // Validation feedback
    public validationErrors: ValidationErrors = {};
    public touchedFields: Set<string> = new Set();

    // Status transition info
    public showStatusTransitionInfo: boolean = false;
    public statusTransitionMessage: string = '';

    // NEW: Expandable sections for card-based layout
    public expandedSections: { [key: string]: boolean } = {
        memberships: false,
        meetings: false,
        terms: false,
        actionItems: false,
        artifacts: false
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
        cdr: ChangeDetectorRef
    ) {
        super(elementRef, sharedService, router, route, cdr);
    }

    override async ngOnInit() {
        this.isLoading = true;

        try {
            await super.ngOnInit();

            this.initSections([
                { sectionKey: 'basicInformation', sectionName: 'Basic Information', isExpanded: true },
                { sectionKey: 'hierarchyOrganization', sectionName: 'Hierarchy & Organization', isExpanded: true },
                { sectionKey: 'lifecycle', sectionName: 'Lifecycle', isExpanded: false },
                { sectionKey: 'terms', sectionName: 'Terms', isExpanded: false },
                { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false },
                { sectionKey: 'meetings', sectionName: 'Meetings', isExpanded: false },
                { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
                { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
            ]);

            this.setupValidationFeedback();
            this.setupFieldListeners();

            if (this.record.IsSaved) {
                await this.loadComputedMetrics();
            }

            if (!this.record.IsSaved) {
                this.showWelcomeMessage();
            }

        } catch (error) {
            console.error('Error initializing committee form:', error);
            this.showErrorNotification('Failed to load committee form');
        } finally {
            this.isLoading = false;
        }
    }

    ngOnDestroy() {
        this.destroy$.next();
        this.destroy$.complete();
    }

    // NEW: Toggle expandable sections
    public toggleSection(sectionKey: string): void {
        this.expandedSections[sectionKey] = !this.expandedSections[sectionKey];
    }

    // Track when a field is touched (blurred)
    public markFieldAsTouched(fieldName: string): void {
        this.touchedFields.add(fieldName);
        this.validationSubject$.next();
    }

    // Check if field should show error (touched and has error)
    public shouldShowFieldError(fieldName: string): boolean {
        return this.touchedFields.has(fieldName) && !!this.validationErrors[fieldName];
    }

    private async loadComputedMetrics(): Promise<void> {
        if (!this.record.IsSaved) return;

        this.isLoadingMetrics = true;

        try {
            if (this.record.FormationDate) {
                const formationDate = new Date(this.record.FormationDate);
                const today = new Date();
                const diffTime = Math.abs(today.getTime() - formationDate.getTime());
                this.computedMetrics.daysSinceFormation = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            }

            this.computedMetrics.hierarchyDepth = await this.record.GetHierarchyDepth();

            await Promise.all([
                this.loadMembershipMetrics(),
                this.loadMeetingMetrics(),
                this.loadActionItemMetrics()
            ]);

        } catch (error) {
            console.error('Error loading computed metrics:', error);
            this.showErrorNotification('Failed to load committee statistics');
        } finally {
            this.isLoadingMetrics = false;
        }
    }

    private async loadMembershipMetrics(): Promise<void> {
        const rv = new RunView();

        try {
            const totalResult = await rv.RunView({
                EntityName: 'Memberships',
                ExtraFilter: `CommitteeID = '${this.record.ID}'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.totalMembers = totalResult.TotalRowCount;

            const activeResult = await rv.RunView({
                EntityName: 'Memberships',
                ExtraFilter: `CommitteeID = '${this.record.ID}' AND Status = 'Active'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.activeMembers = activeResult.TotalRowCount;

        } catch (error) {
            console.error('Error loading membership metrics:', error);
            this.computedMetrics.totalMembers = 0;
            this.computedMetrics.activeMembers = 0;
        }
    }

    private async loadMeetingMetrics(): Promise<void> {
        const rv = new RunView();

        try {
            const totalResult = await rv.RunView({
                EntityName: 'Meetings',
                ExtraFilter: `CommitteeID = '${this.record.ID}'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.totalMeetings = totalResult.TotalRowCount;

            const today = new Date().toISOString().split('T')[0];
            const upcomingResult = await rv.RunView({
                EntityName: 'Meetings',
                ExtraFilter: `CommitteeID = '${this.record.ID}' AND StartDateTime >= '${today}'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.upcomingMeetings = upcomingResult.TotalRowCount;

        } catch (error) {
            console.error('Error loading meeting metrics:', error);
            this.computedMetrics.totalMeetings = 0;
            this.computedMetrics.upcomingMeetings = 0;
        }
    }

    private async loadActionItemMetrics(): Promise<void> {
        const rv = new RunView();

        try {
            const totalResult = await rv.RunView({
                EntityName: 'Action Items',
                ExtraFilter: `CommitteeID = '${this.record.ID}'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.totalActionItems = totalResult.TotalRowCount;

            const pendingResult = await rv.RunView({
                EntityName: 'Action Items',
                ExtraFilter: `CommitteeID = '${this.record.ID}' AND Status = 'Pending'`,
                ResultType: 'count_only'
            });
            this.computedMetrics.pendingActionItems = pendingResult.TotalRowCount;

        } catch (error) {
            console.error('Error loading action item metrics:', error);
            this.computedMetrics.totalActionItems = 0;
            this.computedMetrics.pendingActionItems = 0;
        }
    }

    private setupValidationFeedback(): void {
        this.validationSubject$
            .pipe(
                debounceTime(500),
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
                    this.statusTransitionMessage = 'Activating the committee will make it visible to members and allow scheduling meetings.';
                    break;
                case 'Inactive':
                    this.statusTransitionMessage = 'Suspending the committee will prevent new meetings from being scheduled.';
                    break;
                case 'Dissolved':
                    this.statusTransitionMessage = 'Dissolving the committee is permanent. Ensure all action items are completed and no active sub-committees exist.';
                    break;
                case 'Pending':
                    this.statusTransitionMessage = 'Pending status indicates the committee is awaiting approval or formation.';
                    break;
                default:
                    this.showStatusTransitionInfo = false;
            }
        } else {
            this.showStatusTransitionInfo = false;
        }
    }

    private setupFieldListeners(): void {
        const fieldsToWatch = ['Name', 'Status', 'FormationDate', 'DissolutionDate', 'ParentCommitteeID'];

        fieldsToWatch.forEach(fieldName => {
            const field = this.record.GetFieldByName(fieldName);
            if (field) {
                this.validationSubject$.next();
            }
        });
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
            this.showSuccessNotification('Saving committee... (Ctrl+S)');
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

    private showSuccessNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'success', 3000);
    }

    private showErrorNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'error', 5000);
    }

    private showInfoNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'info', 3000);
    }

    private showWarningNotification(message: string): void {
        this.sharedService.CreateSimpleNotification(message, 'warning', 4000);
    }

    private showWelcomeMessage(): void {
        this.showInfoNotification('Welcome! Fill in the committee details to get started.');
    }

    override async SaveRecord(StopEditModeAfterSave: boolean): Promise<boolean> {
        this.isSaving = true;

        try {
            const result = await super.SaveRecord(StopEditModeAfterSave);

            if (result) {
                this.showSuccessNotification('Committee saved successfully!');

                if (this.record.IsSaved) {
                    await this.loadComputedMetrics();
                }
            } else {
                this.showErrorNotification('Failed to save committee. Please check for errors.');
            }

            return result;

        } catch (error) {
            console.error('Error saving committee:', error);
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
}

export function LoadCommitteeFormComponent() {
    // Empty function - existence prevents tree-shaking
}