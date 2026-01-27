import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { MeetingEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Meetings')
@Component({
    selector: 'mj-meeting-form',
    templateUrl: './meeting-form.component.html',
    styleUrls: ['./meeting-form.component.scss']
})
export class MeetingFormComponent extends BaseFormComponent {
    public record!: MeetingEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'basicInformation', sectionName: 'Basic Information', isExpanded: true },
            { sectionKey: 'schedule', sectionName: 'Schedule & Location', isExpanded: true },
            { sectionKey: 'videoConference', sectionName: 'Video Conference', isExpanded: false },
            { sectionKey: 'status', sectionName: 'Status & Recording', isExpanded: false },
            // Related entities
            { sectionKey: 'agendaItems', sectionName: 'Agenda Items', isExpanded: false },
            { sectionKey: 'attendance', sectionName: 'Attendance', isExpanded: false },
            { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
        ]);
    }
}

export function LoadMeetingFormComponent() {}