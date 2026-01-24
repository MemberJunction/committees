import { Component } from '@angular/core';
import { Role__CommitteesEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Roles__Committees') // Tell MemberJunction about this class
@Component({
    selector: 'gen-role__committees-form',
    templateUrl: './role__committees.form.component.html'
})
export class Role__CommitteesFormComponent extends BaseFormComponent {
    public record!: Role__CommitteesEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'details', sectionName: 'Details', isExpanded: true },
            { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false }
        ]);
    }
}

export function LoadRole__CommitteesFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
