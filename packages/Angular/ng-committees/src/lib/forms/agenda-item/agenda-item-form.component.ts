import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { AgendaItemEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Agenda Items')
@Component({
    selector: 'mj-agenda-item-form',
    templateUrl: './agenda-item-form.component.html',
    styleUrls: ['./agenda-item-form.component.scss']
})
export class AgendaItemFormComponent extends BaseFormComponent {
    public record!: AgendaItemEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'itemDetails', sectionName: 'Item Details', isExpanded: true },
            { sectionKey: 'presentation', sectionName: 'Presentation', isExpanded: true },
            { sectionKey: 'outcome', sectionName: 'Outcome', isExpanded: false },
            { sectionKey: 'subItems', sectionName: 'Sub-Items', isExpanded: false },
            { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
        ]);
    }
}

export function LoadAgendaItemFormComponent() {}