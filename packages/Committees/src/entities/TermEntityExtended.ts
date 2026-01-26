import { TermEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo, Metadata } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Terms', 1)
export class TermEntityExtended extends TermEntity {
    /**
     * Intercept field changes to trigger side effects
     */
    Set(FieldName: string, Value: any): void {
        const oldValue = this.Get(FieldName);
        super.Set(FieldName, Value);

        // When dates change, potentially update status
        if ((FieldName === 'StartDate' || FieldName === 'EndDate') && oldValue !== Value) {
            this.UpdateStatusBasedOnDates();
        }
    }

    /**
     * Auto-calculate status based on dates
     */
    private UpdateStatusBasedOnDates(): void {
        const now = new Date();
        const start = this.StartDate ? new Date(this.StartDate) : null;
        const end = this.EndDate ? new Date(this.EndDate) : null;

        if (!start) return; // Can't determine without start date

        if (now < start) {
            // Future term
            if (this.Status !== 'Upcoming') {
                this.Status = 'Upcoming';
            }
        } else if (end && now > end) {
            // Past term
            if (this.Status !== 'Completed') {
                this.Status = 'Completed';
            }
        } else {
            // Current term
            if (this.Status !== 'Active') {
                this.Status = 'Active';
            }
        }
    }

    /**
     * Validate term dates and business rules
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Start date is required
        if (!this.StartDate) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Term start date is required',
                'StartDate'
            ));
        }

        // End date must be after start date
        if (this.StartDate && this.EndDate) {
            const start = new Date(this.StartDate);
            const end = new Date(this.EndDate);

            if (end <= start) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'Term end date must be after start date',
                    'EndDate'
                ));
            }
        }

        // Term name is required
        if (!this.Name || this.Name.trim().length === 0) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Term name is required',
                'Name'
            ));
        }

        return result;
    }

    /**
     * Set defaults for new terms
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        // Default status
        this.Status = 'Upcoming';

        return result;
    }
}