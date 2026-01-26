import { Component } from '@angular/core';
import { ActionItemEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Action Items') // Tell MemberJunction about this class
@Component({
    selector: 'gen-actionitem-form',
    templateUrl: './actionitem.form.component.html'
})
export class ActionItemFormComponent extends BaseFormComponent {
    public record!: ActionItemEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'context', sectionName: 'Context', isExpanded: true },
            { sectionKey: 'actionDetails', sectionName: 'Action Details', isExpanded: true },
            { sectionKey: 'assignment', sectionName: 'Assignment', isExpanded: false },
            { sectionKey: 'schedule', sectionName: 'Schedule', isExpanded: false },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Artifacts', isExpanded: false }
        ]);
    }
}

export function LoadActionItemFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
