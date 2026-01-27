// Export the module
export * from './module';

// Export all form components
export * from './lib/forms/committee/committee-form.component';
export * from './lib/forms/type/type-form.component';
export * from './lib/forms/action-item/action-item-form.component';
export * from './lib/forms/agenda-item/agenda-item-form.component';
export * from './lib/forms/artifact/artifact-form.component';
export * from './lib/forms/attendance/attendance-form.component';
export * from './lib/forms/meeting/meeting-form.component';
export * from './lib/forms/membership/membership-form.component';
export * from './lib/forms/role/role-form.component';
export * from './lib/forms/term/term-form.component';

// Import all loader functions
import { LoadCommitteeFormComponent } from './lib/forms/committee/committee-form.component';
import { LoadTypeFormComponent } from './lib/forms/type/type-form.component';
import { LoadActionItemFormComponent } from './lib/forms/action-item/action-item-form.component';
import { LoadAgendaItemFormComponent } from './lib/forms/agenda-item/agenda-item-form.component';
import { LoadArtifactFormComponent } from './lib/forms/artifact/artifact-form.component';
import { LoadAttendanceFormComponent } from './lib/forms/attendance/attendance-form.component';
import { LoadMeetingFormComponent } from './lib/forms/meeting/meeting-form.component';
import { LoadMembershipFormComponent } from './lib/forms/membership/membership-form.component';
import { LoadRoleFormComponent } from './lib/forms/role/role-form.component';
import { LoadTermFormComponent } from './lib/forms/term/term-form.component';

export function LoadNgCommitteesModule() {
    // Call all loader functions to prevent tree-shaking
    LoadCommitteeFormComponent();
    LoadTypeFormComponent();
    LoadActionItemFormComponent();
    LoadAgendaItemFormComponent();
    LoadArtifactFormComponent();
    LoadAttendanceFormComponent();
    LoadMeetingFormComponent();
    LoadMembershipFormComponent();
    LoadRoleFormComponent();
    LoadTermFormComponent();
}