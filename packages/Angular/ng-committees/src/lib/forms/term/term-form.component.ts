import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { TermEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Terms')
@Component({
    selector: 'mj-term-form',
    templateUrl: './term-form.component.html',
    styleUrls: ['./term-form.component.scss']
})
export class TermFormComponent extends BaseFormComponent {
    public record!: TermEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'termDetails', sectionName: 'Term Details', isExpanded: true },
            { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false }
        ]);
    }
}

export function LoadTermFormComponent() {}