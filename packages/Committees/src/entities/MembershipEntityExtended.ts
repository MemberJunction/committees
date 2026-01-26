import { MembershipEntity, TermEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo, Metadata, RunView } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Memberships')
export class MembershipEntityExtended extends MembershipEntity {
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
        if (!this.UserID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'User is required', 'UserID'));
        }
        if (!this.RoleID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Role is required', 'RoleID'));
        }
        if (!this.StartDate) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Start date is required', 'StartDate'));
        }

        // End date must be after start date
        if (this.StartDate && this.EndDate) {
            const start = new Date(this.StartDate);
            const end = new Date(this.EndDate);
            if (end <= start) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'End date must be after start date',
                    'EndDate'
                ));
            }
        }

        // If status is Ended, end date and reason are required
        if (this.Status === 'Ended') {
            if (!this.EndDate) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'Required',
                    'End date is required when membership is ended',
                    'EndDate'
                ));
            }
            if (!this.EndReason || this.EndReason.trim().length === 0) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'Required',
                    'End reason is required when membership is ended',
                    'EndReason'
                ));
            }
        }

        return result;
    }

    /**
     * Async validation runs automatically after Validate() passes
     */
    async ValidateAsync(): Promise<ValidationResult> {
        const result = await super.ValidateAsync();

        // If term specified, validate dates are within term
        if (this.TermID && this.StartDate) {
            const termValid = await this.ValidateDatesWithinTerm();
            if (!termValid.isValid) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    termValid.message,
                    'StartDate'
                ));
            }
        }

        // Check for duplicate active membership
        if (this.Status === 'Active') {
            const hasDuplicate = await this.HasDuplicateActiveMembership();
            if (hasDuplicate) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'Duplicate',
                    'User already has an active membership with this role in this committee',
                    'UserID'
                ));
            }
        }

        // Warning if ending membership with open action items
        if (this.Status === 'Ended' && this.IsSaved) {
            const openActions = await this.GetOpenActionItemCount();
            if (openActions > 0) {
                result.Errors.push(new ValidationErrorInfo(
                    'Warning',
                    `User has ${openActions} open action item(s) in this committee`,
                    'Status'
                ));
            }
        }

        return result;
    }

    /**
     * Check if dates fall within term boundaries
     */
    private async ValidateDatesWithinTerm(): Promise<{ isValid: boolean; message: string }> {
        if (!this.TermID) {
            return { isValid: false, message: 'Cannot validate: TermID is not set' };
        }

        const md = new Metadata();
        const term = await md.GetEntityObject<TermEntity>('Terms');

        if (!await term.Load(this.TermID)) {
            return { isValid: false, message: 'Cannot validate: Term not found' };
        }

        const termStart = new Date(term.Get('StartDate'));
        const termEnd = term.Get('EndDate') ? new Date(term.Get('EndDate')) : null;
        const memberStart = new Date(this.StartDate);

        if (memberStart < termStart) {
            return {
                isValid: false,
                message: `Membership start date cannot be before term start date (${termStart.toLocaleDateString()})`
            };
        }

        if (termEnd && memberStart > termEnd) {
            return {
                isValid: false,
                message: `Membership start date cannot be after term end date (${termEnd.toLocaleDateString()})`
            };
        }

        return { isValid: true, message: '' };
    }

    /**
     * Check for duplicate active membership
     */
    private async HasDuplicateActiveMembership(): Promise<boolean> {
        const rv = new RunView();
        let filter = `CommitteeID = '${this.CommitteeID}' AND UserID = '${this.UserID}' AND RoleID = '${this.RoleID}' AND Status = 'Active'`;

        // Exclude current record if updating
        if (this.IsSaved) {
            filter += ` AND ID != '${this.ID}'`;
        }

        const result = await rv.RunView({
            EntityName: 'Memberships',
            ExtraFilter: filter,
            ResultType: 'count_only'
        });

        return result.TotalRowCount > 0;
    }

    /**
     * Count open action items for this user in this committee
     */
    private async GetOpenActionItemCount(): Promise<number> {
        const rv = new RunView();
        const result = await rv.RunView({
            EntityName: 'Action Items',
            ExtraFilter: `CommitteeID = '${this.CommitteeID}' AND AssignedToUserID = '${this.UserID}' AND Status IN ('Open', 'InProgress', 'Blocked')`,
            ResultType: 'count_only'
        });

        return result.TotalRowCount;
    }

    /**
     * Set defaults for new memberships
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.Status = 'Active';
        this.StartDate = new Date();

        return result;
    }

    /**
     * Override Save to auto-set end date when status changes to Ended
     */
    async Save(options?: any): Promise<boolean> {
        // Auto-set end date if status changed to Ended
        if (this.Status === 'Ended' && !this.EndDate) {
            this.EndDate = new Date();
        }

        return await super.Save(options);
    }
}
