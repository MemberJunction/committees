// Export the module
export * from './module';

// Export all form components
export * from './lib/forms/committee/committee-form.component';

// Import all loader functions
import { LoadCommitteeFormComponent } from './lib/forms/committee/committee-form.component';

export function LoadNgCommitteesModule() {
    // Call all loader functions to prevent tree-shaking
    LoadCommitteeFormComponent();
}