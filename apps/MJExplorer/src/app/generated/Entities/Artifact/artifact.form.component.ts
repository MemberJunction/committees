import { Component } from '@angular/core';
import { ArtifactEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';

@RegisterClass(BaseFormComponent, 'Artifacts') // Tell MemberJunction about this class
@Component({
    selector: 'gen-artifact-form',
    templateUrl: './artifact.form.component.html'
})
export class ArtifactFormComponent extends BaseFormComponent {
    public record!: ArtifactEntity;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'details', sectionName: 'Details', isExpanded: true }
        ]);
    }
}

export function LoadArtifactFormComponent() {
    // does nothing, but called to prevent tree-shaking from eliminating this component from the build
}
