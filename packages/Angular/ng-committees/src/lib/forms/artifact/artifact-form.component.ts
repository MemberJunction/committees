import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { ArtifactEntityExtended } from '@memberjunction/committees-core';

@RegisterClass(BaseFormComponent, 'Artifacts')
@Component({
    selector: 'mj-artifact-form',
    templateUrl: './artifact-form.component.html',
    styleUrls: ['./artifact-form.component.scss']
})
export class ArtifactFormComponent extends BaseFormComponent {
    public record!: ArtifactEntityExtended;

    override async ngOnInit() {
        await super.ngOnInit();
        this.initSections([
            { sectionKey: 'documentInfo', sectionName: 'Document Info', isExpanded: true },
            { sectionKey: 'location', sectionName: 'Location & Provider', isExpanded: true },
            { sectionKey: 'associations', sectionName: 'Associations', isExpanded: true },
            { sectionKey: 'metadata', sectionName: 'Metadata', isExpanded: false }
        ]);
    }
}

export function LoadArtifactFormComponent() {}