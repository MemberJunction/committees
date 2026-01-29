import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { FormToolbarModule } from '@memberjunction/ng-form-toolbar';

// Kendo UI imports
import { DropDownsModule } from '@progress/kendo-angular-dropdowns';

// MemberJunction imports - these provide the form infrastructure
import { BaseFormsModule } from '@memberjunction/ng-base-forms';
import { EntityViewerModule } from '@memberjunction/ng-entity-viewer';
import { ContainerDirectivesModule } from '@memberjunction/ng-container-directives';

// Import all our form components
import { CommitteeFormComponent } from './lib/forms/committee/committee-form.component';
import { TypeFormComponent } from './lib/forms/type/type-form.component';
import { ActionItemFormComponent } from './lib/forms/action-item/action-item-form.component';
import { AgendaItemFormComponent } from './lib/forms/agenda-item/agenda-item-form.component';
import { ArtifactFormComponent } from './lib/forms/artifact/artifact-form.component';
import { AttendanceFormComponent } from './lib/forms/attendance/attendance-form.component';
import { MeetingFormComponent } from './lib/forms/meeting/meeting-form.component';
import { MembershipFormComponent } from './lib/forms/membership/membership-form.component';
import { RoleFormComponent } from './lib/forms/role/role-form.component';
import { TermFormComponent } from './lib/forms/term/term-form.component';

@NgModule({
    declarations: [
        // List ALL components here
        CommitteeFormComponent,
        TypeFormComponent,
        ActionItemFormComponent,
        AgendaItemFormComponent,
        ArtifactFormComponent,
        AttendanceFormComponent,
        MeetingFormComponent,
        MembershipFormComponent,
        RoleFormComponent,
        TermFormComponent
    ],
imports: [
        // Angular basics
        CommonModule,
        FormsModule,
        // Kendo UI modules
        DropDownsModule,
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