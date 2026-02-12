import { Component } from '@angular/core';
import { RoleEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Committees: Roles') // Tell MemberJunction about this class
@Component({
    standalone: false,
    selector: 'gen-role-form',
    templateUrl: './role.form.component.html'
})
export class RoleFormComponent extends BaseFormComponent {
    public record!: RoleEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'roleBasics', sectionName: 'Role Basics', isExpanded: true },
            { sectionKey: 'permissions', sectionName: 'Permissions', isExpanded: true },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'committeesMemberships', sectionName: 'Committees: Memberships', isExpanded: false }
        ]);
    }
}

