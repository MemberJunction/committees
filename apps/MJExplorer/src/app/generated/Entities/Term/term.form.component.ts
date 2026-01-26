import { Component } from '@angular/core';
import { TermEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import {  } from "@memberjunction/ng-entity-viewer"

@RegisterClass(BaseFormComponent, 'Terms') // Tell MemberJunction about this class
@Component({
    selector: 'gen-term-form',
    templateUrl: './term.form.component.html'
})
export class TermFormComponent extends BaseFormComponent {
    public record!: TermEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'termOverview', sectionName: 'Term Overview', isExpanded: true },
            { sectionKey: 'termTimeline', sectionName: 'Term Timeline', isExpanded: true },
            { sectionKey: 'systemMetadata', sectionName: 'System Metadata', isExpanded: false },
            { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false }
        ]);
    }
}

export function LoadTermFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
