import { CommitteeEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo, Metadata, RunView } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Committees', 1)
export class CommitteeEntityExtended extends CommitteeEntity {
    private static readonly STATUS_TRANSITIONS: Record<string, string[]> = {
        'Pending': ['Active', 'Dissolved'],      // Approved or Rejected
        'Active': ['Inactive', 'Dissolved'],     // Suspended or Closed
        'Inactive': ['Active'],                  // Reactivated
        'Dissolved': []                          // Terminal state
    };
    /**
     * Synchronous validation for basic field checks
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Committee name is required
        if (!this.Name || this.Name.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Committee name is required',
                'Name'
            ));
        }

        // Formation date before dissolution (synchronous date check)
        if (this.FormationDate && this.DissolutionDate) {
            const formation = new Date(this.FormationDate);
            const dissolution = new Date(this.DissolutionDate);

            if (dissolution <= formation) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'Dissolution date must be after formation date',
                    'DissolutionDate'
                ));
            }
        }

        // Status-specific validations (synchronous)
        if (this.Status === 'Dissolved' && !this.DissolutionDate) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Dissolution date is required when status is Dissolved',
                'DissolutionDate'
            ));
        }

        if (this.IsSaved && this.Dirty) {
            const oldStatus = this.GetFieldByName('Status')?.OldValue;
            if (oldStatus && oldStatus !== this.Status) {
                const validTransitions = CommitteeEntityExtended.STATUS_TRANSITIONS[oldStatus] || [];
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

        return result;
    }

    /**
     * Async validation runs automatically after Validate() passes
     */
    async ValidateAsync(): Promise<ValidationResult> {
        const result = await super.ValidateAsync();

        // Check for circular parent reference
        if (this.ParentCommitteeID && this.IsSaved) {
            if (await this.WouldCreateCircularReference(this.ParentCommitteeID)) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'CircularReference',
                    'Cannot set parent committee - would create circular reference',
                    'ParentCommitteeID'
                ));
            }
        }

        // Cannot dissolve committee with active children
        if (this.Status === 'Dissolved' && this.IsSaved) {
            const hasActiveChildren = await this.HasActiveChildren();
            if (hasActiveChildren) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'ActiveChildren',
                    'Cannot dissolve committee with active child committees',
                    'Status'
                ));
            }
        }

        return result;
    }

    /**
     * Check if setting a parent would create circular reference
     */
    private async WouldCreateCircularReference(proposedParentID: string): Promise<boolean> {
        if (proposedParentID === this.ID) {
            return true;
        }

        let currentParentID: string | null = proposedParentID;
        const visited = new Set<string>();

        while (currentParentID) {
            if (visited.has(currentParentID)) {
                return true;
            }
            visited.add(currentParentID);

            if (currentParentID === this.ID) {
                return true;
            }

            const md = new Metadata();
            const parent = await md.GetEntityObject<CommitteeEntity>('Committees');
            if (await parent.Load(currentParentID)) {
                currentParentID = parent.ParentCommitteeID;  // Now safe - both are string | null
            } else {
                break;
            }
        }

        return false;
    }


    /**
     * Check if committee has any active children
     */
    private async HasActiveChildren(): Promise<boolean> {
        const rv = new RunView();
        const result = await rv.RunView({
            EntityName: 'Committees',
            ExtraFilter: `ParentCommitteeID = '${this.ID}' AND Status = 'Active'`,
            ResultType: 'count_only'
        });

        return result.TotalRowCount > 0;
    }

    /**
     * Get hierarchy depth (how many levels deep)
     */
    async GetHierarchyDepth(): Promise<number> {
        let depth = 0;
        let currentParentID = this.ParentCommitteeID;

        while (currentParentID) {
            depth++;
            const md = new Metadata();
            const parent = await md.GetEntityObject<CommitteeEntity>('Committees');
            if (await parent.Load(currentParentID)) {
                currentParentID = parent.ParentCommitteeID;
            } else {
                break;
            }
        }

        return depth;
    }

    /**
     * Set defaults for new committees
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.Status = 'Pending';
        this.IsPublic = true;

        return result;
    }
}
