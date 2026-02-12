import { Component } from '@angular/core';
import { MembershipEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Committees: Memberships') // Tell MemberJunction about this class
@Component({
    standalone: false,
    selector: 'gen-membership-form',
    templateUrl: './membership.form.component.html'
})
export class MembershipFormComponent extends BaseFormComponent {
    public record!: MembershipEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'membershipCore', sectionName: 'Membership Core', isExpanded: true },
            { sectionKey: 'scheduleStatus', sectionName: 'Schedule & Status', isExpanded: true },
            { sectionKey: 'descriptiveDetails', sectionName: 'Descriptive Details', isExpanded: false },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'committeesVotes', sectionName: 'Committees: Votes', isExpanded: false },
            { sectionKey: 'committeesMotions', sectionName: 'Committees: Motions', isExpanded: false },
            { sectionKey: 'committeesMotions1', sectionName: 'Committees: Motions', isExpanded: false }
        ]);
    }
}

