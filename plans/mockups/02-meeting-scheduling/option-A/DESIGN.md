# Option A: Minimal & Clean

**Design Philosophy:** Simplicity first - guide users through a clear 3-step wizard with minimal cognitive load

---

## Design Principles

1. **One thing at a time** - Each step focuses on a single task
2. **Smart defaults** - Pre-fill common values to reduce clicks
3. **Clear progress** - Always show where you are in the process
4. **Forgiving** - Easy to go back and change
5. **Helpful** - Inline help text and validation

---

## Screen Flow

```
Entry → Step 1: Basics → Step 2: Invites → Step 3: Confirm → Success
         (Meeting details)  (Who attends)    (Review)      (Invites sent)
```

---

## Screen 1: Meeting Basics

### Layout

```
┌─────────────────────────────────────────────────────────────────┐
│ Schedule Meeting for Finance Committee                    [X]   │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ ┌─ Progress ──────────────────────────────────────────────────┐│
│ │  ● Basics    ○ Invites    ○ Confirm                         ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ Meeting Details                                                 │
│                                                                 │
│ Title *                                                         │
│ ┌─────────────────────────────────────────────────────────────┐│
│ │ Finance Committee - March 2026                              ││
│ └─────────────────────────────────────────────────────────────┘│
│ ℹ️  Auto-generated from committee name and date                 │
│                                                                 │
│ Description (optional)                                          │
│ ┌─────────────────────────────────────────────────────────────┐│
│ │ Quarterly financial review and budget planning              ││
│ │                                                             ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ When                                                            │
│ ┌───────────────────────────┬─────────────┬──────────────────┐ │
│ │ Date                      │ Start Time  │ Duration         │ │
│ │ ┌───────────────────────┐ │ ┌─────────┐ │ ┌──────────────┐ │ │
│ │ │ Mar 15, 2026    [📅]  │ │ │ 2:00 PM │ │ │ 1 hour   [▼]│ │ │
│ │ └───────────────────────┘ │ └─────────┘ │ └──────────────┘ │ │
│ └───────────────────────────┴─────────────┴──────────────────┘ │
│ 🌍 Meeting time will be shown in each member's local time zone │
│                                                                 │
│ Location                                                        │
│ ( ) In Person    (●) Virtual    ( ) Hybrid                     │
│                                                                 │
│ ┌─ Virtual Meeting Details ────────────────────────────────────┐│
│ │ Platform                                                     ││
│ │ ┌─────────────────────────────────────────────────────────┐ ││
│ │ │ Zoom (Auto-create meeting link)                      [▼]│ ││
│ │ └─────────────────────────────────────────────────────────┘ ││
│ │                                                             ││
│ │ ✓ Meeting link will be automatically generated and         ││
│ │   included in calendar invites                             ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ Recurring Meeting                                               │
│ ┌─────────────────────────────────────────────────────────────┐│
│ │ ( ) One-time    (●) Recurring                               ││
│ │                                                             ││
│ │ Every  [Monthly ▼]  on the  [3rd ▼]  [Friday ▼]            ││
│ │                                                             ││
│ │ Ends:  ( ) Never    (●) After [4] occurrences               ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│                                       ┌────────────────────────┐│
│                                       │      Next: Invites     ││
│                                       └────────────────────────┘│
└─────────────────────────────────────────────────────────────────┘
```

### Key Features

**Smart Defaults:**
- Title auto-filled: `{Committee Name} - {Month Year}`
- Duration: 1 hour (most common)
- Location: Virtual (post-COVID preference)
- Platform: Organization's default (Zoom/Teams)
- Recurring: Monthly on same day/time for standing committees

**Validation:**
- Title required (inline error if blank)
- Date must be in future
- Duration between 15 min - 4 hours
- Video platform required if Virtual selected

**Help Text:**
- Time zone notice (prevent confusion)
- Auto-link generation notice (reduce anxiety)
- Recurring pattern preview ("Next 4 meetings: Mar 15, Apr 19, May 17, Jun 21")

---

## Screen 2: Invites

### Layout

```
┌─────────────────────────────────────────────────────────────────┐
│ Schedule Meeting for Finance Committee                    [X]   │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ ┌─ Progress ──────────────────────────────────────────────────┐│
│ │  ✓ Basics    ● Invites    ○ Confirm                         ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ Who to Invite                                                   │
│                                                                 │
│ ┌─ Committee Members (8) ────────────────────────────────────┐ │
│ │ [✓] Select All                                             │ │
│ │                                                            │ │
│ │ ┌──────────────────────────────────────────────────────┐  │ │
│ │ │ [✓] Sarah Johnson  sarah.j@org.com        Chair       │  │ │
│ │ │ [✓] Michael Chen   michael.c@org.com      Vice Chair  │  │ │
│ │ │ [✓] Jennifer Lee   jennifer.l@org.com     Member      │  │ │
│ │ │ [✓] David Kim      david.k@org.com        Member      │  │ │
│ │ │ [✓] Lisa Wang      lisa.w@org.com         Member      │  │ │
│ │ │ [✓] Robert Taylor  robert.t@org.com       Member      │  │ │
│ │ │ [✓] Emily Davis    emily.d@org.com        Secretary    │  │ │
│ │ │ [✓] James Wilson   james.w@org.com        Member      │  │ │
│ │ └──────────────────────────────────────────────────────┘  │ │
│ └────────────────────────────────────────────────────────────┘ │
│                                                                 │
│ ┌─ Additional Attendees (Optional) ──────────────────────────┐ │
│ │ Add people who are not committee members                   │ │
│ │                                                            │ │
│ │ ┌────────────────────────────────────────────────────────┐ │ │
│ │ │ Search by name or email...                         [🔍]│ │ │
│ │ └────────────────────────────────────────────────────────┘ │ │
│ │                                                            │ │
│ │ Added (2):                                                 │ │
│ │ • John Smith (CFO) - john.smith@org.com              [X]  │ │
│ │ • Amy Johnson (Auditor) - amy.j@external.com         [X]  │ │
│ └────────────────────────────────────────────────────────────┘ │
│                                                                 │
│ Notification Options                                            │
│ ┌─────────────────────────────────────────────────────────────┐│
│ │ [✓] Send email invitation now                               ││
│ │ [✓] Add to members' calendars (Google/Outlook)              ││
│ │ [✓] Send reminder 1 day before meeting                      ││
│ │ [✓] Send reminder 1 hour before meeting                     ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ ┌──────────────┐                  ┌────────────────────────────┐│
│ │  ← Back      │                  │      Next: Confirm         ││
│ └──────────────┘                  └────────────────────────────┘│
└─────────────────────────────────────────────────────────────────┘
```

### Key Features

**Auto-Selection:**
- All active committee members pre-selected
- Smart filtering: Exclude members with "Inactive" status
- Role displayed for context (who should definitely attend)

**Additional Attendees:**
- Search autocomplete from organization directory
- Support external emails (guests, auditors)
- Visual distinction (committee members vs. guests)
- Easy removal (X button)

**Notification Defaults:**
- All checkboxes pre-checked (best practice)
- User can opt-out if needed (e.g., draft meeting)
- Clear description of what each option does

---

## Screen 3: Confirm & Send

### Layout

```
┌─────────────────────────────────────────────────────────────────┐
│ Schedule Meeting for Finance Committee                    [X]   │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ ┌─ Progress ──────────────────────────────────────────────────┐│
│ │  ✓ Basics    ✓ Invites    ● Confirm                         ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ Review Meeting Details                                          │
│                                                                 │
│ ┌─ Meeting Information ───────────────────────────────────────┐│
│ │ Finance Committee - March 2026                              ││
│ │                                                             ││
│ │ 📅 Friday, March 15, 2026                                   ││
│ │ 🕐 2:00 PM - 3:00 PM EST                                    ││
│ │ 🌍 Virtual via Zoom                                         ││
│ │ 🔁 Recurring: Monthly on 3rd Friday (4 occurrences)         ││
│ │                                                             ││
│ │ Description:                                                ││
│ │ Quarterly financial review and budget planning              ││
│ │                                                             ││
│ │                                          [Edit Basics]      ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ ┌─ Attendees (10) ────────────────────────────────────────────┐│
│ │ Committee Members (8):                                      ││
│ │ • Sarah Johnson (Chair)                                     ││
│ │ • Michael Chen (Vice Chair)                                 ││
│ │ • Jennifer Lee, David Kim, Lisa Wang,                       ││
│ │   Robert Taylor, James Wilson (Members)                     ││
│ │ • Emily Davis (Secretary)                                   ││
│ │                                                             ││
│ │ Guests (2):                                                 ││
│ │ • John Smith (CFO)                                          ││
│ │ • Amy Johnson (External Auditor)                            ││
│ │                                                             ││
│ │                                          [Edit Invites]     ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ ┌─ What Happens Next ─────────────────────────────────────────┐│
│ │ When you click "Send Invitations" below:                    ││
│ │                                                             ││
│ │ 1. ✉️  Email invitations sent to all 10 attendees           ││
│ │ 2. 📅 Calendar events created in their Google/Outlook       ││
│ │ 3. 🔗 Zoom meeting link auto-generated and included         ││
│ │ 4. 🔔 Reminders scheduled (1 day & 1 hour before)           ││
│ │ 5. ✓  Meeting appears in Committees app calendar           ││
│ │                                                             ││
│ │ You can edit meeting details anytime before the meeting.    ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ ┌──────────────┐           ┌─────────────────────────────────┐ │
│ │  ← Back      │           │  Send Invitations               │ │
│ └──────────────┘           └─────────────────────────────────┘ │
│                                                                 │
│                            [ Save as Draft ]                    │
│                            (send invites later)                 │
└─────────────────────────────────────────────────────────────────┘
```

### Key Features

**Clear Summary:**
- All key info visible at a glance
- Icons for visual scanning
- Edit buttons for each section (easy corrections)
- Recurring pattern clearly stated

**Transparency:**
- "What Happens Next" box explains exactly what will occur
- No surprises or hidden actions
- Reassurance that changes can be made later

**Options:**
- Primary action: "Send Invitations" (green, prominent)
- Secondary action: "Save as Draft" (gray, smaller)
- Back button for corrections

---

## Screen 4: Success

### Layout

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│                          ✓ Success!                             │
│                                                                 │
│         Meeting invitations have been sent                      │
│                                                                 │
│ ┌─ What We Did ───────────────────────────────────────────────┐│
│ │                                                             ││
│ │ ✓  Created "Finance Committee - March 2026"                 ││
│ │ ✓  Sent 10 email invitations                                ││
│ │ ✓  Added events to 10 calendars                             ││
│ │ ✓  Generated Zoom meeting link                              ││
│ │ ✓  Scheduled reminders (1 day & 1 hour before)              ││
│ │                                                             ││
│ │ Zoom Link: https://zoom.us/j/123456789                      ││
│ │            (also in calendar invite)                        ││
│ └─────────────────────────────────────────────────────────────┘│
│                                                                 │
│ Next Steps                                                      │
│                                                                 │
│ ┌─────────────────────────────┐  ┌────────────────────────────┐│
│ │   📝 Build Agenda            │  │   👥 View Attendees        ││
│ │   Add items to discuss       │  │   Track RSVPs              ││
│ └─────────────────────────────┘  └────────────────────────────┘│
│                                                                 │
│ ┌─────────────────────────────┐  ┌────────────────────────────┐│
│ │   📄 View Meeting Details    │  │   📅 Back to Calendar      ││
│ │   Edit or add documents      │  │   See all meetings         ││
│ └─────────────────────────────┘  └────────────────────────────┘│
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Key Features

**Confirmation:**
- Large checkmark (visual success)
- Summary of what was accomplished
- Zoom link immediately available (can copy/share)

**Next Steps:**
- 4 logical next actions
- Build Agenda (most common next step, top-left)
- View Attendees (check RSVPs)
- View Details (full meeting page)
- Back to Calendar (see context)

---

## Interaction Details

### Step 1: Meeting Basics

**Date Picker:**
- Opens calendar overlay on click
- Keyboard navigation: Arrow keys
- Shows meeting conflicts (other meetings on that day)
- Quick picks: "Tomorrow", "Next Week", "Next Month"

**Time Picker:**
- Dropdown with 15-minute increments
- Respects organization's business hours (default 8 AM - 6 PM)
- Keyboard input: Type "2p" → auto-complete to "2:00 PM"

**Duration:**
- Dropdown: 15 min, 30 min, 45 min, 1 hour, 1.5 hours, 2 hours, etc.
- Custom: Can type "75 minutes"

**Recurring:**
- "One-time" selected by default for ad hoc committees
- "Recurring" pre-selected for standing committees (detected automatically)
- Pattern preview updates live as user changes dropdowns

### Step 2: Invites

**Member List:**
- Checkbox for each member
- "Select All" / "Deselect All" toggle
- Inactive members shown grayed out with tooltip "(Inactive)"
- Sorting: Role (officers first), then alphabetical

**Additional Attendees:**
- Autocomplete search
- Results show: Name, Title, Department, Email
- Can add external emails directly (validates format)
- Duplicate detection (can't add same person twice)

### Step 3: Confirm

**Edit Buttons:**
- Clicking "[Edit Basics]" goes back to Step 1 with values preserved
- Clicking "[Edit Invites]" goes back to Step 2 with values preserved
- Browser back button also works (values preserved)

**Send Invitations Button:**
- Disabled if any validation errors
- Shows loading spinner while sending
- Timeout: 30 seconds (if not complete, show error with retry)

---

## Accessibility

**Keyboard Navigation:**
- Tab order: Top to bottom, left to right
- Enter: Advance to next step
- Escape: Close dialog
- Arrows: Navigate within date/time pickers

**Screen Reader:**
- Progress indicator announces: "Step 1 of 3: Meeting Basics"
- Required fields announced: "Title, required"
- Validation errors read aloud immediately
- Success screen announces: "Success! Meeting invitations sent"

**Visual:**
- High contrast mode supported
- Focus indicators on all interactive elements
- Icons paired with text (not icon-only buttons)
- Color not sole indicator (checkmarks + green, not just green)

---

## Mobile Responsiveness

**Small Screens (<768px):**
- Single column layout
- Larger touch targets (48px minimum)
- Date/time pickers use native mobile controls
- Reduced whitespace to fit content
- Sticky "Next" button at bottom

**Tablets (768-1024px):**
- Same layout as desktop
- Optimized touch targets
- Sidebar progress indicator becomes top bar

---

## Error Handling

**Validation Errors:**
- Inline errors below each field (red text + icon)
- Cannot proceed to next step if errors present
- "Next" button disabled with tooltip explaining why

**Server Errors:**
- Email delivery failure → Show warning, allow retry
- Calendar API failure → Show error, meeting still created (manual calendar add)
- Zoom API failure → Show error, provide manual link entry

**Example Error Messages:**
- ❌ "Title is required"
- ❌ "Meeting date must be in the future"
- ❌ "At least one attendee must be selected"
- ⚠️ "Email sent to 8 of 10 attendees. 2 bounced. View details"

---

## Performance

**Loading Times:**
- Step 1 → Step 2: <100ms (client-side only)
- Step 2 → Step 3: <100ms (client-side only)
- Step 3 → Success: <3 seconds (API calls)
  - Meeting creation: ~500ms
  - Calendar events: ~1 second (parallel)
  - Zoom link generation: ~1 second
  - Email sending: Async (doesn't block)

**Progress Indication:**
- Step transitions: Smooth slide animation (200ms)
- "Send Invitations" click: Button shows spinner, disabled
- Background: "Sending invitations... (Step 1 of 4)"

---

## Developer Notes

**Components:**
- `MeetingScheduleWizard` - Parent container
- `MeetingBasicsStep` - Step 1
- `MeetingInvitesStep` - Step 2
- `MeetingConfirmStep` - Step 3
- `MeetingSuccessStep` - Step 4

**State Management:**
```typescript
interface MeetingScheduleState {
  // Step 1
  title: string;
  description?: string;
  date: Date;
  startTime: string;
  duration: number;
  locationType: 'InPerson' | 'Virtual' | 'Hybrid';
  videoProvider?: 'Zoom' | 'Teams' | 'Meet';
  isRecurring: boolean;
  recurrencePattern?: RecurrencePattern;

  // Step 2
  attendeeIds: string[];
  additionalEmails: string[];
  sendEmail: boolean;
  addToCalendar: boolean;
  reminders: ReminderConfig[];

  // Runtime
  currentStep: 1 | 2 | 3 | 4;
  validationErrors: Record<string, string>;
  isSubmitting: boolean;
}
```

**API Calls:**
```typescript
// Step 3 → Success
async function submitMeeting(state: MeetingScheduleState) {
  // 1. Create meeting record
  const meeting = await meetingService.create({...});

  // 2. Parallel: Calendar events + Video link
  const [calendarResults, videoLink] = await Promise.all([
    calendarService.createEvents(meeting, state.attendeeIds),
    videoService.createMeeting(meeting)
  ]);

  // 3. Update meeting with video link
  await meetingService.update(meeting.ID, { VideoJoinURL: videoLink });

  // 4. Async: Send emails (non-blocking)
  notificationService.sendMeetingInvites(meeting, state.attendeeIds);

  return meeting;
}
```

---

**Design Status:** Draft - Ready for Review
**Next:** Gather feedback and refine
