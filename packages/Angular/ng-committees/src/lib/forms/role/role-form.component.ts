import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { RoleEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Roles')
@Component({
    selector: 'mj-role-form',
    templateUrl: './role-form.component.html',
    styleUrls: ['./role-form.component.scss']
})
export class RoleFormComponent extends BaseFormComponent {
    public record!: RoleEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'roleDetails', sectionName: 'Role Details', isExpanded: true },
            { sectionKey: 'permissions', sectionName: 'Permissions & Settings', isExpanded: true },
            { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false }
        ]);
    }
}

export function LoadRoleFormComponent() {}