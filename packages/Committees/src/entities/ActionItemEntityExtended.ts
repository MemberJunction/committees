import { ActionItemEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo, Metadata, RunView } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Action Items', 1)
export class ActionItemEntityExtended extends ActionItemEntity {
    // Valid status transitions
    private static readonly STATUS_TRANSITIONS: Record<string, string[]> = {
        'Open': ['InProgress', 'Blocked', 'Cancelled'],
        'InProgress': ['Completed', 'Blocked', 'Cancelled'],
        'Blocked': ['InProgress', 'Open', 'Cancelled'],
        'Completed': [], // Terminal state - cannot reopen
        'Cancelled': []  // Terminal state
    };

    /**
     * Synchronous validation for basic field checks
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Required fields
        if (!this.CommitteeID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Committee is required', 'CommitteeID'));
        }
        if (!this.Title || this.Title.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Title is required', 'Title'));
        }
        if (!this.AssignedToUserID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Assignee is required', 'AssignedToUserID'));
        }

        // Validate status transition if updating
        if (this.IsSaved && this.Dirty) {
            const oldStatus = this.GetFieldByName('Status')?.OldValue;
            if (oldStatus && oldStatus !== this.Status) {
                const validTransitions = ActionItemEntityExtended.STATUS_TRANSITIONS[oldStatus] || [];
                if (!validTransitions.includes(this.Status)) {
                    result.Success = false;
                    result.Errors.push(new ValidationErrorInfo(
                        'InvalidTransition',
                        `Cannot transition from ${oldStatus} to ${this.Status}`,
                        'Status'
                    ));
                }
            }
        }

        // Due date must be in the future for new items
        if (!this.IsSaved && this.DueDate) {
            const today = new Date();
            today.setHours(0, 0, 0, 0);
            const dueDate = new Date(this.DueDate);
            dueDate.setHours(0, 0, 0, 0);

            if (dueDate < today) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'Due date must be in the future',
                    'DueDate'
                ));
            }
        }

        return result;
    }

    /**
     * Async validation for cross-entity checks
     */
    async ValidateAsync(): Promise<ValidationResult> {
        const result = await super.ValidateAsync();

        // Verify assignee is a member of the committee
        if (this.AssignedToUserID && this.CommitteeID) {
            const isMember = await this.IsUserCommitteeMember(this.AssignedToUserID, this.CommitteeID);
            if (!isMember) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'InvalidAssignee',
                    'Assigned user must be a member of the committee',
                    'AssignedToUserID'
                ));
            }
        }

        return result;
    }

    /**
     * Check if user is a member of the committee
     */
    private async IsUserCommitteeMember(userID: string, committeeID: string): Promise<boolean> {
        const rv = new RunView();
        const result = await rv.RunView({
            EntityName: 'Memberships',
            ExtraFilter: `UserID = '${userID}' AND CommitteeID = '${committeeID}' AND Status = 'Active'`,
            ResultType: 'count_only'
        });

        return result.TotalRowCount > 0;
    }

    /**
     * Set defaults for new action items
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.Status = 'Open';

        return result;
    }

    /**
     * Override Save to auto-set completion timestamp
     */
    async Save(options?: any): Promise<boolean> {
        // Auto-set CompletedAt when status changes to Completed
        if (this.Status === 'Completed' && !this.CompletedAt) {
            const oldStatus = this.GetFieldByName('Status')?.OldValue;
            if (oldStatus !== 'Completed') {
                this.CompletedAt = new Date();
            }
        }

        return await super.Save(options);
    }

    /**
     * Computed property: Is this action item overdue?
     */
    get IsOverdue(): boolean {
        if (!this.DueDate || this.Status === 'Completed' || this.Status === 'Cancelled') {
            return false;
        }

        const today = new Date();
        today.setHours(0, 0, 0, 0);
        const dueDate = new Date(this.DueDate);
        dueDate.setHours(0, 0, 0, 0);

        return dueDate < today;
    }

    /**
     * Computed property: Days until due (negative if overdue)
     */
    get DaysUntilDue(): number | null {
        if (!this.DueDate) return null;

        const today = new Date();
        today.setHours(0, 0, 0, 0);
        const dueDate = new Date(this.DueDate);
        dueDate.setHours(0, 0, 0, 0);

        const diffTime = dueDate.getTime() - today.getTime();
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

        return diffDays;
    }

    /**
     * Computed property: Priority level based on due date
     */
    get PriorityLevel(): 'Critical' | 'High' | 'Medium' | 'Low' | 'None' {
        const days = this.DaysUntilDue;

        if (days === null || this.Status === 'Completed' || this.Status === 'Cancelled') {
            return 'None';
        }

        if (days < 0) return 'Critical'; // Overdue
        if (days <= 3) return 'High';
        if (days <= 7) return 'Medium';
        return 'Low';
    }
}