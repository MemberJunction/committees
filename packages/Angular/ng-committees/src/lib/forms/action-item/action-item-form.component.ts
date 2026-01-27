import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { ActionItemEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Action Items')
@Component({
    selector: 'mj-action-item-form',
    templateUrl: './action-item-form.component.html',
    styleUrls: ['./action-item-form.component.scss']
})
export class ActionItemFormComponent extends BaseFormComponent {
    public record!: ActionItemEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'taskDetails', sectionName: 'Task Details', isExpanded: true },
            { sectionKey: 'assignment', sectionName: 'Assignment', isExpanded: true },
            { sectionKey: 'tracking', sectionName: 'Tracking', isExpanded: true },
            { sectionKey: 'completion', sectionName: 'Completion', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
        ]);
    }
}

export function LoadActionItemFormComponent() {}