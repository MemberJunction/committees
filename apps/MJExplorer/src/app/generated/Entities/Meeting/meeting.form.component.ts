import { Component } from '@angular/core';
import { MeetingEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Committees: Meetings') // Tell MemberJunction about this class
@Component({
    standalone: false,
    selector: 'gen-meeting-form',
    templateUrl: './meeting.form.component.html'
})
export class MeetingFormComponent extends BaseFormComponent {
    public record!: MeetingEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'meetingDetails', sectionName: 'Meeting Details', isExpanded: true },
            { sectionKey: 'schedule', sectionName: 'Schedule', isExpanded: true },
            { sectionKey: 'venueMedia', sectionName: 'Venue & Media', isExpanded: false },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'committeesAttendances', sectionName: 'Committees: Attendances', isExpanded: false },
            { sectionKey: 'committeesMinutes', sectionName: 'Committees: Minutes', isExpanded: false },
            { sectionKey: 'committeesMotions', sectionName: 'Committees: Motions', isExpanded: false },
            { sectionKey: 'committeesAgendaItems', sectionName: 'Committees: Agenda Items', isExpanded: false },
            { sectionKey: 'committeesActionItems', sectionName: 'Committees: Action Items', isExpanded: false },
            { sectionKey: 'committeesArtifacts', sectionName: 'Committees: Artifacts', isExpanded: false }
        ]);
    }
}

