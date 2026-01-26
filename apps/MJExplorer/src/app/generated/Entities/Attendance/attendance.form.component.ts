import { Component } from '@angular/core';
import { AttendanceEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';

@RegisterClass(BaseFormComponent, 'Attendances') // Tell MemberJunction about this class
@Component({
    selector: 'gen-attendance-form',
    templateUrl: './attendance.form.component.html'
})
export class AttendanceFormComponent extends BaseFormComponent {
    public record!: AttendanceEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'meetingParticipation', sectionName: 'Meeting Participation', isExpanded: true },
            { sectionKey: 'attendanceDetails', sectionName: 'Attendance Details', isExpanded: true },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false }
        ]);
    }
}

export function LoadAttendanceFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
