import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { AttendanceEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Attendances')
@Component({
    selector: 'mj-attendance-form',
    templateUrl: './attendance-form.component.html',
    styleUrls: ['./attendance-form.component.scss']
})
export class AttendanceFormComponent extends BaseFormComponent {
    public record!: AttendanceEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'attendanceDetails', sectionName: 'Attendance Details', isExpanded: true },
            { sectionKey: 'timing', sectionName: 'Timing', isExpanded: true }
        ]);
    }
}

export function LoadAttendanceFormComponent() {}