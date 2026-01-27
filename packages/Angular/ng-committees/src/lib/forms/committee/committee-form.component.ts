import { Component } from '@angular/core';
import { RegisterClass } from '@memberjunction/global';
import { BaseFormComponent } from '@memberjunction/ng-base-forms';
import { CommitteeEntityExtended } from '@memberjunction/committees-core';

// This decorator registers our component to handle 'Committees' entity
@RegisterClass(BaseFormComponent, 'Committees')
@Component({
    selector: 'mj-committee-form',           // HTML tag name
    templateUrl: './committee-form.component.html',
    styleUrls: ['./committee-form.component.scss']
})
export class CommitteeFormComponent extends BaseFormComponent {
    // The entity record we're editing - typed to our extended class
    // The ! means "trust me, this will be set before use"
    public record!: CommitteeEntityExtended;

    // Called when component initializes
    override async ngOnInit() {
        // Always call parent's ngOnInit first
        await super.ngOnInit();

        // Define the collapsible sections in our form
        // These appear as expandable panels in the UI
        this.initSections([
            {
                sectionKey: 'basicInformation',      // Unique ID
                sectionName: 'Basic Information',    // Display label
                isExpanded: true                     // Start expanded
            },
            {
                sectionKey: 'hierarchyOrganization',
                sectionName: 'Hierarchy & Organization',
                isExpanded: true
            },
            {
                sectionKey: 'lifecycle',
                sectionName: 'Lifecycle',
                isExpanded: false                    // Start collapsed
            },
            // Related entity sections (show grids of child records)
            { sectionKey: 'terms', sectionName: 'Terms', isExpanded: false },
            { sectionKey: 'memberships', sectionName: 'Memberships', isExpanded: false },
            { sectionKey: 'meetings', sectionName: 'Meetings', isExpanded: false },
            { sectionKey: 'actionItems', sectionName: 'Action Items', isExpanded: false },
            { sectionKey: 'artifacts', sectionName: 'Documents', isExpanded: false }
        ]);
    }
}

// Prevents tree-shaking of this component
export function LoadCommitteeFormComponent() {
}