# User Journey: Meeting Scheduling

**Persona:** Committee Chair (Michael)
**Goal:** Schedule a committee meeting and send invitations
**Frequency:** Monthly for standing committees, as-needed for ad hoc

---

## User Story

> "As a Committee Chair, I want to schedule a meeting and automatically send calendar invites to all members, so that everyone knows when and where to attend without manual coordination."

---

## Journey Context

**Before this journey:**
- Committee exists with active members
- User has Committee Chair or Committee Admin role
- Members have email addresses and calendar preferences configured

**After this journey:**
- Meeting created with scheduled date/time
- Calendar events created in members' calendars (Google/Outlook)
- Email invitations sent to all members
- Video conference link generated (if virtual)
- Meeting appears in committee calendar view

---

## Key Requirements

### Must Have:
1. **Quick scheduling** - Create meeting in <2 minutes
2. **Auto-invites** - Automatically invite all committee members
3. **Calendar integration** - Create events in Google/Outlook
4. **Video link generation** - Auto-create Zoom/Teams meeting
5. **Recurring meetings** - Support monthly/quarterly patterns
6. **Time zone handling** - Show meeting time in member's local time
7. **RSVP tracking** - Track who accepted/declined

### Nice to Have:
1. **Smart scheduling** - Suggest times based on member availability
2. **Meeting templates** - Reuse common meeting structures
3. **Location lookup** - Integrate with building/room booking
4. **Agenda preview** - Start building agenda during scheduling

---

## Success Metrics

- **Speed:** Meeting scheduled in <90 seconds (from click to invites sent)
- **Accuracy:** 95%+ of invites delivered successfully
- **Adoption:** 80%+ of chairs use scheduling feature (vs. manual email)
- **RSVP Rate:** 70%+ of members RSVP within 24 hours

---

## Pain Points to Avoid

Based on market research:
1. ❌ **Too many steps** - Users abandon multi-page wizards
2. ❌ **Missing integrations** - Manual calendar entry is friction
3. ❌ **Lost in options** - Too many fields overwhelm users
4. ❌ **No templates** - Recreating same meeting each month is tedious
5. ❌ **Time zone confusion** - Members miss meetings due to TZ errors

---

## Design Options

### [Option A: Minimal & Clean](./option-A/)
**Philosophy:** Simplicity first - step-by-step wizard with minimal cognitive load

**Best For:**
- Less technical users
- Simple meeting types
- First-time users learning the system

**Key Features:**
- 3-step wizard (Basics → Invites → Confirm)
- Large, clear form fields
- Smart defaults (location, duration, invitees)
- Inline validation
- Preview before sending

### [Option B: Functional & Comprehensive](./option-B/)
**Philosophy:** Power user - all information and controls on one screen

**Best For:**
- Experienced users
- Complex meetings (multiple locations, custom attendees)
- Users who want to see all options at once

**Key Features:**
- Single-page form with collapsible sections
- Advanced options visible (recurring, reminders, permissions)
- Bulk actions (edit multiple fields at once)
- Keyboard shortcuts
- Quick actions sidebar

### [Option C: Modern & Visual](./option-C/)
**Philosophy:** Visual and interactive - calendar-centric with drag-and-drop

**Best For:**
- Mobile users
- Visual learners
- Users managing multiple meetings

**Key Features:**
- Calendar view with drag-to-schedule
- Card-based UI
- Visual time slot picker
- Member availability heat map
- Animated transitions

---

## User Flow Comparison

| Step | Option A | Option B | Option C |
|------|----------|----------|----------|
| **Entry Point** | "Schedule Meeting" button | "Schedule Meeting" button | Click on calendar date |
| **Step 1** | Wizard: Meeting basics | Single form: All fields | Calendar: Select time slot |
| **Step 2** | Wizard: Select attendees | (All on one screen) | Modal: Meeting details |
| **Step 3** | Wizard: Review & send | (All on one screen) | Auto-save, send invites |
| **Completion** | Success message | Success toast | Calendar updates live |

---

## Next Steps

1. Review all 3 options
2. Provide feedback on approach and details
3. Refine chosen option(s)
4. Create final approved design
5. Hand off to development team

---

**Created:** February 15, 2026
**Status:** In Review
