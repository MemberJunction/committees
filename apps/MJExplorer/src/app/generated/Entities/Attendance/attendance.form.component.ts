import { Component } from '@angular/core';
import { AttendanceEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';

@RegisterClass(BaseFormComponent, 'Committees: Attendances') // Tell MemberJunction about this class
@Component({
    standalone: false,
    selector: 'gen-attendance-form',
    templateUrl: './attendance.form.component.html'
})
export class AttendanceFormComponent extends BaseFormComponent {
    public record!: AttendanceEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'participantInfo', sectionName: 'Participant Info', isExpanded: true },
            { sectionKey: 'attendanceRecord', sectionName: 'Attendance Record', isExpanded: true },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false }
        ]);
    }
}

