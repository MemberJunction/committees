import { AttendanceEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Attendances')
export class AttendanceEntityExtended extends AttendanceEntity {
    /**
     * Synchronous validation for basic field checks
     */
    Validate(): ValidationResult {
        const result = super.Validate();

        // Required fields
        if (!this.MeetingID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Meeting is required', 'MeetingID'));
        }
        if (!this.UserID) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'User is required', 'UserID'));
        }

        // LeftAt must be after JoinedAt
        if (this.JoinedAt && this.LeftAt) {
            const joined = new Date(this.JoinedAt);
            const left = new Date(this.LeftAt);

            if (left <= joined) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'Leave time must be after join time',
                    'LeftAt'
                ));
            }
        }

        // If status is Present or Partial, JoinedAt should be set
        if ((this.AttendanceStatus === 'Present' || this.AttendanceStatus === 'Partial') && !this.JoinedAt) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo(
                'Required',
                'Join time is required when attendance status is Present or Partial',
                'JoinedAt'
            ));
        }

        return result;
    }

    /**
     * Set defaults for new attendance records
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.AttendanceStatus = 'Expected';

        return result;
    }

    /**
     * Override Set to auto-update timestamps
     */
    Set(FieldName: string, Value: any): void {
        super.Set(FieldName, Value);

        // Auto-set JoinedAt when status changes to Present
        if (FieldName === 'AttendanceStatus' && Value === 'Present' && !this.JoinedAt) {
            super.Set('JoinedAt', new Date());
        }
    }

    /**
     * Computed property: Duration in minutes
     */
    get DurationMinutes(): number | null {
        if (!this.JoinedAt || !this.LeftAt) return null;

        const joined = new Date(this.JoinedAt);
        const left = new Date(this.LeftAt);
        const diffMs = left.getTime() - joined.getTime();

        return Math.round(diffMs / (1000 * 60));
    }

    /**
     * Computed property: Was attendee present?
     */
    get WasPresent(): boolean {
        return this.AttendanceStatus === 'Present' || this.AttendanceStatus === 'Partial';
    }

    /**
     * Computed property: Formatted duration
     */
    get FormattedDuration(): string {
        const mins = this.DurationMinutes;
        if (mins === null) return 'N/A';

        if (mins < 60) {
            return `${mins} min`;
        }

        const hours = Math.floor(mins / 60);
        const remainingMins = mins % 60;
        return remainingMins > 0 ? `${hours}h ${remainingMins}min` : `${hours}h`;
    }
}