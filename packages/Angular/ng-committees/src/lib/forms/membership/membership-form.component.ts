import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { MembershipEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Memberships')
@Component({
    selector: 'mj-membership-form',
    templateUrl: './membership-form.component.html',
    styleUrls: ['./membership-form.component.scss']
})
export class MembershipFormComponent extends BaseFormComponent {
    public record!: MembershipEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'assignment', sectionName: 'Assignment', isExpanded: true },
            { sectionKey: 'period', sectionName: 'Period & Status', isExpanded: true },
            { sectionKey: 'notes', sectionName: 'Notes', isExpanded: false }
        ]);
    }
}

export function LoadMembershipFormComponent() {}