import { Role__CommitteesEntity  as RoleEntity} from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Roles')
export class RoleEntityExtended extends RoleEntity {
    /**
     * Set defaults for new roles
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        // Set default sequence
        if (!this.Sequence) {
            this.Sequence = 100;
        }

        // Default to voting role
        if (this.IsVotingRole === null || this.IsVotingRole === undefined) {
            this.IsVotingRole = true;
        }

        // Default to non-officer
        if (this.IsOfficer === null || this.IsOfficer === undefined) {
            this.IsOfficer = false;
        }

        return result;
    }

    /**
     * Validate business rules
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Role name is required (beyond database constraint)
        if (!this.Name || this.Name.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Role name is required',
                'Name'
            ));
        }

        // Role name should be reasonable length
        if (this.Name && this.Name.length > 100) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Length',
                'Role name must be 100 characters or less',
                'Name'
            ));
        }

        // Business rule: Officers should typically be voting roles
        if (this.IsOfficer && !this.IsVotingRole) {
            // This is a warning, not an error - don't set Success = false
            result.Errors.push(new ValidationErrorInfo(
                'Warning',
                'Officer roles are typically voting roles. Please verify this is intentional.',
                'IsVotingRole'
            ));
        }

        return result;
    }
}