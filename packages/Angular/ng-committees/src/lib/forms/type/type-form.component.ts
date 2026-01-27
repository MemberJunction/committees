import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { TypeEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Types')
@Component({
    selector: 'mj-type-form',
    templateUrl: './type-form.component.html',
    styleUrls: ['./type-form.component.scss']
})
export class TypeFormComponent extends BaseFormComponent {
    public record!: TypeEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'typeDetails', sectionName: 'Type Details', isExpanded: true },
            { sectionKey: 'committees', sectionName: 'Committees', isExpanded: false }
        ]);
    }
}

export function LoadTypeFormComponent() {}