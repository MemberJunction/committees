# Journey 1: Committee Setup

## Overview
This journey covers the process of creating and configuring a new committee from initial setup through member assignment and role configuration.

## User Story
**As a** Board Administrator
**I want to** create a new committee with complete configuration
**So that** I can establish a functional committee ready for meetings and activities

## Primary Actor
Board Administrator (with committee management permissions)

## Success Criteria
- Committee is created with all required information
- Basic settings are configured (name, purpose, charter, meeting frequency)
- Initial members are added to the committee
- Member roles are assigned (Chair, Vice Chair, Secretary, Members)
- Committee is ready for meeting scheduling and activity tracking

## Functional Requirements

### Committee Information
- **Name** (required): Official committee name
- **Purpose** (required): Brief description of committee's mission
- **Charter Document** (optional): Upload or link to formal charter
- **Status**: Active, Inactive, Archived (default: Active)
- **Privacy Level**: Public, Members Only, Board Only

### Meeting Configuration
- **Default Meeting Frequency**: Weekly, Bi-weekly, Monthly, Quarterly, Ad-hoc
- **Default Duration**: 30min, 1hr, 1.5hr, 2hr, Custom
- **Default Location**: Physical location or virtual meeting link template
- **Default Day/Time**: Suggested recurring schedule

### Member Management
- **Add Members**: Search and select from organization member directory
- **Assign Roles**:
  - Chair (required, exactly 1)
  - Vice Chair (optional, 0-2)
  - Secretary (optional, 0-1)
  - Member (unlimited)
- **Set Effective Dates**: Start date and optional end date for each member
- **Member Permissions**: View only, Contribute, Edit settings

### Validation Rules
- Committee name must be unique
- At least one Chair must be assigned
- Meeting frequency and duration must be set if recurring meetings are enabled
- Minimum 2 members (including Chair) required for activation

## Business Rules
1. Only Board Administrators can create committees
2. Committee Chair can be changed but requires admin approval
3. Active committees must have at least 2 members
4. Charter document becomes immutable once committee is activated (requires version upload)
5. Member role changes are logged in audit trail

## Design Considerations

### Option A: Wizard-Based Approach
**Philosophy**: Progressive disclosure, minimal cognitive load per step

**Steps**:
1. Basic Information (name, purpose, status, privacy)
2. Meeting Configuration (frequency, duration, location, schedule)
3. Add Members (search, select, bulk add)
4. Assign Roles (drag-and-drop or dropdown assignment)
5. Review & Confirm

**Pros**:
- Easy to understand and follow
- Reduced decision fatigue
- Clear progress indication
- Mobile-friendly

**Cons**:
- More clicks to complete
- Can't see all settings at once
- Difficult to jump between steps for edits

### Option B: Single-Page Comprehensive Form
**Philosophy**: All information visible, efficient for power users

**Layout**:
- All sections on one scrollable page
- Collapsible sections with smart defaults
- Inline validation and help text
- Sticky action buttons

**Pros**:
- Fast for experienced users
- See entire configuration at once
- Easy to review before saving
- Fewer page loads

**Cons**:
- Can feel overwhelming initially
- Requires more scrolling
- Less suitable for mobile

### Option C: Modern Card-Based Visual
**Philosophy**: Visual, interactive, drag-and-drop focused

**Features**:
- Card-based layout with visual hierarchy
- Drag-and-drop member assignment
- Role assignment with visual badges
- Inline editing with auto-save
- Visual meeting schedule builder

**Pros**:
- Engaging and modern UI
- Intuitive drag-and-drop interactions
- Clear visual feedback
- Gamified experience

**Cons**:
- May be less efficient for keyboard users
- Requires more complex JavaScript
- Potential accessibility concerns

## Key Metrics to Evaluate
1. **Time to Complete**: Average time from start to committee activation
2. **Completion Rate**: Percentage of started setups that are completed
3. **Error Rate**: Validation errors per attempt
4. **User Satisfaction**: Post-task survey score
5. **Feature Discovery**: Use of optional features (charter upload, custom schedules)

## Technical Notes
- All prototypes use vanilla JavaScript for interactivity
- Form validation is client-side only (production would have server-side)
- Member data is mocked with realistic names and roles
- No actual data persistence in prototypes

## Related Journeys
- **Journey 2**: Meeting Scheduling (depends on committee setup)
- **Journey 3**: Document Management (optional charter upload)
- **Journey 4**: Member Directory (source for member selection)

## Revision History
- **2026-02-15**: Initial mockups created
