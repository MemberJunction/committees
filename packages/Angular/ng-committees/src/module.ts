import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { FormToolbarModule } from '@memberjunction/ng-form-toolbar';

// MemberJunction imports - these provide the form infrastructure
import { BaseFormsModule } from '@memberjunction/ng-base-forms';
import { EntityViewerModule } from '@memberjunction/ng-entity-viewer';
import { ContainerDirectivesModule } from '@memberjunction/ng-container-directives';

// Import all our form components
import { CommitteeFormComponent } from './lib/forms/committee/committee-form.component';

@NgModule({
    declarations: [
        // List ALL components here
        CommitteeFormComponent
    ],
imports: [
        // Angular basics
        CommonModule,
        FormsModule,
        // MemberJunction modules we use in templates
        BaseFormsModule,
        EntityViewerModule,
        ContainerDirectivesModule,
        FormToolbarModule
    ],
    exports: [
        // Normally empty - components are loaded by registration, not export
    ]
})
export class NgCommitteesModule { }