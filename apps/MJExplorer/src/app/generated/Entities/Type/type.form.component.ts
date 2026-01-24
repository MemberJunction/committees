import { Component } from '@angular/core';
import { TypeEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Types') // Tell MemberJunction about this class
@Component({
    selector: 'gen-type-form',
    templateUrl: './type.form.component.html'
})
export class TypeFormComponent extends BaseFormComponent {
    public record!: TypeEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'details', sectionName: 'Details', isExpanded: true },
            { sectionKey: 'committees', sectionName: 'Committees', isExpanded: false }
        ]);
    }
}

export function LoadTypeFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
