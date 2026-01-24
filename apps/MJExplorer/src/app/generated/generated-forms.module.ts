/**********************************************************************************
* GENERATED FILE - This file is automatically managed by the MJ CodeGen tool, 
* 
* DO NOT MODIFY THIS FILE - any changes you make will be wiped out the next time the file is
* generated
* 
**********************************************************************************/
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

// MemberJunction Imports
import { BaseFormsModule } from '@memberjunction/ng-base-forms';
import { FormToolbarModule } from '@memberjunction/ng-form-toolbar';
import { EntityViewerModule } from '@memberjunction/ng-entity-viewer';
import { LinkDirectivesModule } from '@memberjunction/ng-link-directives';
import { MJTabStripModule } from "@memberjunction/ng-tabstrip";
import { ContainerDirectivesModule } from "@memberjunction/ng-container-directives";

// Kendo Imports
import { InputsModule } from '@progress/kendo-angular-inputs';
import { DateInputsModule } from '@progress/kendo-angular-dateinputs';
import { ButtonsModule } from '@progress/kendo-angular-buttons';
import { LayoutModule } from '@progress/kendo-angular-layout';
import { ComboBoxModule } from '@progress/kendo-angular-dropdowns';
import { DropDownListModule } from '@progress/kendo-angular-dropdowns';

// Import Generated Components
import { ActionItemFormComponent, LoadActionItemFormComponent } from "./Entities/ActionItem/actionitem.form.component";
import { AgendaItemFormComponent, LoadAgendaItemFormComponent } from "./Entities/AgendaItem/agendaitem.form.component";
import { ArtifactFormComponent, LoadArtifactFormComponent } from "./Entities/Artifact/artifact.form.component";
import { AttendanceFormComponent, LoadAttendanceFormComponent } from "./Entities/Attendance/attendance.form.component";
import { CommitteeFormComponent, LoadCommitteeFormComponent } from "./Entities/Committee/committee.form.component";
import { MeetingFormComponent, LoadMeetingFormComponent } from "./Entities/Meeting/meeting.form.component";
import { MembershipFormComponent, LoadMembershipFormComponent } from "./Entities/Membership/membership.form.component";
import { Role__CommitteesFormComponent, LoadRole__CommitteesFormComponent } from "./Entities/Role__Committees/role__committees.form.component";
import { TermFormComponent, LoadTermFormComponent } from "./Entities/Term/term.form.component";
import { TypeFormComponent, LoadTypeFormComponent } from "./Entities/Type/type.form.component";
   

@NgModule({
declarations: [
    ActionItemFormComponent,
    AgendaItemFormComponent,
    ArtifactFormComponent,
    AttendanceFormComponent,
    CommitteeFormComponent,
    MeetingFormComponent,
    MembershipFormComponent,
    Role__CommitteesFormComponent,
    TermFormComponent,
    TypeFormComponent],
imports: [
    CommonModule,
    FormsModule,
    LayoutModule,
    InputsModule,
    ButtonsModule,
    DateInputsModule,
    EntityViewerModule,
    LinkDirectivesModule,
    BaseFormsModule,
    FormToolbarModule,
    MJTabStripModule,
    ContainerDirectivesModule,
    DropDownListModule,
    ComboBoxModule
],
exports: [
]
})
export class GeneratedForms_SubModule_0 { }
    


@NgModule({
declarations: [
],
imports: [
    GeneratedForms_SubModule_0
]
})
export class GeneratedFormsModule { }
    
export function LoadGeneratedForms() {
    // This function doesn't do much, but it calls each generated form's loader function
    // which in turn calls the sections for that generated form. Ultimately, those bits of
    // code do NOTHING - the point is to prevent the code from being eliminated during tree shaking
    // since it is dynamically instantiated on demand, and the Angular compiler has no way to know that,
    // in production builds tree shaking will eliminate the code unless we do this
    LoadActionItemFormComponent();
    LoadAgendaItemFormComponent();
    LoadArtifactFormComponent();
    LoadAttendanceFormComponent();
    LoadCommitteeFormComponent();
    LoadMeetingFormComponent();
    LoadMembershipFormComponent();
    LoadRole__CommitteesFormComponent();
    LoadTermFormComponent();
    LoadTypeFormComponent();
}
    