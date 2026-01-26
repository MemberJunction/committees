import { Component } from '@angular/core';
import { AgendaItemEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Agenda Items') // Tell MemberJunction about this class
@Component({
    selector: 'gen-agendaitem-form',
    templateUrl: './agendaitem.form.component.html'
})
export class AgendaItemFormComponent extends BaseFormComponent {
    public record!: AgendaItemEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'meetingOrdering', sectionName: 'Meeting & Ordering', isExpanded: true },
            { sectionKey: 'relationships', sectionName: 'Relationships', isExpanded: true },
            { sectionKey: 'agendaItemDetails', sectionName: 'Agenda Item Details', isExpanded: false },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
            { sectionKey: 'agendaItems', sectionName: 'Agenda Items', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Artifacts', isExpanded: false }
        ]);
    }
}

export function LoadAgendaItemFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
