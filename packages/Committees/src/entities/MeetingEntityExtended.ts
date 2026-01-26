import { MeetingEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity, ValidationResult, ValidationErrorInfo, Metadata, RunView } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Meetings', 1)
export class MeetingEntityExtended extends MeetingEntity {
    // Valid status transitions
    private static readonly STATUS_TRANSITIONS: Record<string, string[]> = {
        'Draft': ['Scheduled', 'Cancelled'],
        'Scheduled': ['InProgress', 'Postponed', 'Cancelled'],
        'Postponed': ['Scheduled', 'Cancelled'],
        'InProgress': ['Completed'],
        'Completed': [], // Terminal state
        'Cancelled': []  // Terminal state
    };

    /**
     * Validate meeting business rules
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
        if (!this.StartDateTime) {
            result.Success = false;
            result.Errors.push(new ValidationErrorInfo('Required', 'Start date/time is required', 'StartDateTime'));
        }

        // End time must be after start time
        if (this.StartDateTime && this.EndDateTime) {
            const start = new Date(this.StartDateTime);
            const end = new Date(this.EndDateTime);
            if (end <= start) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'DateRange',
                    'End time must be after start time',
                    'EndDateTime'
                ));
            }
        }

        // Validate status transition if updating
        if (this.IsSaved && this.Dirty) {
            const oldStatus = this.GetFieldByName('Status')?.OldValue;
            if (oldStatus && oldStatus !== this.Status) {
                const validTransitions = MeetingEntityExtended.STATUS_TRANSITIONS[oldStatus] || [];
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

        // Video provider validation
        if (this.LocationType === 'Virtual' || this.LocationType === 'Hybrid') {
            if (!this.VideoProvider) {
                result.Success = false;
                result.Errors.push(new ValidationErrorInfo(
                    'Required',
                    'Video provider is required for virtual/hybrid meetings',
                    'VideoProvider'
                ));
            }
        }

        return result;
    }

    /**
     * Override Save to handle cascading operations
     */
    async Save(options?: any): Promise<boolean> {
        const isNewRecord = !this.IsSaved;
        const oldStatus = this.IsSaved ? this.GetFieldByName('Status')?.OldValue : null;
        const statusChanged = oldStatus !== this.Status;

        // Save the meeting first
        const saveResult = await super.Save(options);
        if (!saveResult) {
            return false;
        }

        // When transitioning to Scheduled, create attendance records
        if (statusChanged && this.Status === 'Scheduled') {
            await this.CreateAttendanceRecords();
        }

        // When marking InProgress, record actual start time if not set
        if (statusChanged && this.Status === 'InProgress') {
            if (!this.Get('ActualStartTime')) {
                this.Set('ActualStartTime', new Date());
                await super.Save(options);
            }
        }

        // When marking Completed, ensure end time is set
        if (statusChanged && this.Status === 'Completed') {
            if (!this.EndDateTime) {
                this.EndDateTime = new Date();
                await super.Save(options);
            }
        }

        return true;
    }

    /**
     * Create attendance records for all active committee members
     */
    private async CreateAttendanceRecords(): Promise<void> {
        // Get all active memberships for this committee
        const rv = new RunView();
        const memberships = await rv.RunView({
            EntityName: 'Memberships',
            ExtraFilter: `CommitteeID = '${this.CommitteeID}' AND Status = 'Active'`,
            ResultType: 'entity_object'
        });

        const md = new Metadata();

        for (const membership of memberships.Results) {
            // Check if attendance record already exists
            const existingCheck = await rv.RunView({
                EntityName: 'Attendance',
                ExtraFilter: `MeetingID = '${this.ID}' AND UserID = '${membership.Get('UserID')}'`,
                ResultType: 'count_only'
            });

            if (existingCheck.TotalRowCount === 0) {
                // Create attendance record
                const attendance = await md.GetEntityObject('Attendance');
                attendance.NewRecord();
                attendance.Set('MeetingID', this.ID);
                attendance.Set('UserID', membership.Get('UserID'));
                attendance.Set('AttendanceStatus', 'Expected');
                await attendance.Save();
            }
        }
    }

    /**
     * Override Delete to prevent deletion of completed meetings
     */
    async Delete(options?: any): Promise<boolean> {
        if (this.Status === 'Completed') {
            throw new Error('Cannot delete completed meetings. Cancel the meeting instead.');
        }

        // Check if meeting has any associated records
        const hasAgendaItems = await this.HasAgendaItems();
        if (hasAgendaItems) {
            throw new Error('Cannot delete meeting with agenda items. Cancel the meeting instead.');
        }

        return await super.Delete(options);
    }

    /**
     * Check if meeting has agenda items
     */
    private async HasAgendaItems(): Promise<boolean> {
        const rv = new RunView();
        const result = await rv.RunView({
            EntityName: 'Agenda Items',
            ExtraFilter: `MeetingID = '${this.ID}'`,
            ResultType: 'count_only'
        });
        return result.TotalRowCount > 0;
    }

    /**
     * Get meeting duration in minutes
     */
    get DurationMinutes(): number | null {
        if (!this.StartDateTime || !this.EndDateTime) {
            return null;
        }
        const start = new Date(this.StartDateTime);
        const end = new Date(this.EndDateTime);
        return Math.round((end.getTime() - start.getTime()) / 60000);
    }

    /**
     * Set defaults for new meetings
     */
    NewRecord(): boolean {
        const result = super.NewRecord();

        this.Status = 'Draft';
        this.LocationType = 'Virtual';
        this.TimeZone = 'America/New_York';

        return result;
    }
}