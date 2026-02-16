# Option B: Functional & Comprehensive

**Design Philosophy:** Power user interface - all information and controls on one screen for maximum efficiency

---

## Design Principles

1. **Everything visible** - No hidden options, no wizard steps
2. **Keyboard-first** - Tab through fields, shortcuts for actions
3. **Information density** - Fit maximum info without clutter
4. **Quick actions** - Common tasks accessible with 1 click
5. **Expert-friendly** - Optimized for frequent users who know the system

---

## Single-Screen Layout

```
┌────────────────────────────────────────────────────────────────────────────────┐
│ Finance Committee > Schedule Meeting                                    [?] [X]│
├────────────────────────────────────────────────────────────────────────────────┤
│                                                                                │
│ ┌─ Quick Actions ────────────────────────────────────────────────────────────┐│
│ │ [📋 Use Template ▼] [📅 Copy Last Meeting] [⏱️ Find Available Time]       ││
│ └────────────────────────────────────────────────────────────────────────────┘│
│                                                                                │
│ ┌────────────────────────────────────────┬───────────────────────────────────┐│
│ │ BASIC INFORMATION                      │ ADVANCED OPTIONS                  ││
│ ├────────────────────────────────────────┼───────────────────────────────────┤│
│ │                                        │                                   ││
│ │ Title *                                │ Meeting ID                        ││
│ │ ┌────────────────────────────────────┐ │ ┌───────────────────────────────┐ ││
│ │ │ Finance Committee - March 2026     │ │ │ AUTO (on save)                │ ││
│ │ └────────────────────────────────────┘ │ └───────────────────────────────┘ ││
│ │                                        │                                   ││
│ │ Description                            │ Visibility                        ││
│ │ ┌────────────────────────────────────┐ │ (•) Members Only                  ││
│ │ │ Quarterly financial review and     │ │ ( ) Committee + Observers         ││
│ │ │ budget planning                    │ │ ( ) Organization-Wide             ││
│ │ │                                    │ │                                   ││
│ │ └────────────────────────────────────┘ │ Tags (comma-separated)            ││
│ │                                        │ ┌───────────────────────────────┐ ││
│ │ Schedule                               │ │ budget, Q1-2026, financial    │ ││
│ │ ┌──────────┬─────────┬──────┬────────┐ │ └───────────────────────────────┘ ││
│ │ │Date      │Time     │Dur.  │TZ      │ │                                   ││
│ │ │Mar 15 📅 │2:00 PM  │1h ▼  │EST ▼   │ │ Color Code                        ││
│ │ └──────────┴─────────┴──────┴────────┘ │ ┌─────────────────┐               ││
│ │                                        │ │ 🔵 Blue (Finance)│               ││
│ │ Recurrence                             │ └─────────────────┘               ││
│ │ [✓] Recurring Meeting                  │                                   ││
│ │ ┌────────────────────────────────────┐ │ Permissions                       ││
│ │ │ Every [Monthly▼] on [3rd▼] [Fri▼] │ │ [✓] Members can invite guests     ││
│ │ │ Ends after [4] occurrences         │ │ [✓] Allow anonymous RSVP          ││
│ │ │ Next: Mar 15, Apr 19, May 17...    │ │ [ ] Require attendance approval   ││
│ │ └────────────────────────────────────┘ │                                   ││
│ │                                        │                                   ││
│ │ Location                               │                                   ││
│ │ ( ) In Person  (•) Virtual  ( ) Hybrid │                                   ││
│ │                                        │                                   ││
│ │ ┌─ Virtual Platform ──────────────────┐│                                   ││
│ │ │ [Zoom ▼]  [Auto-create link]        ││                                   ││
│ │ │                                     ││                                   ││
│ │ │ Meeting ID: [AUTO]                  ││                                   ││
│ │ │ Passcode:   [AUTO]                  ││                                   ││
│ │ │ Waiting Room: [✓]  Recording: [✓]  ││                                   ││
│ │ └─────────────────────────────────────┘│                                   ││
│ │                                        │                                   ││
│ └────────────────────────────────────────┴───────────────────────────────────┘│
│                                                                                │
│ ┌─ ATTENDEES ───────────────────────────────────────────────────────────────┐ │
│ │                                                                            │ │
│ │ [✓] All Committee Members (8)  [ ] Select Specific Members                │ │
│ │                                                                            │ │
│ │ ┌──────────────────────────────────────────────────────────────────────┐  │ │
│ │ │ Name                Email                   Role        RSVP  Actions││  │ │
│ │ ├──────────────────────────────────────────────────────────────────────┤  │ │
│ │ │ [✓] Sarah Johnson   sarah.j@org.com        Chair       -     [✉][📞]││  │ │
│ │ │ [✓] Michael Chen    michael.c@org.com      Vice Chair  -     [✉][📞]││  │ │
│ │ │ [✓] Jennifer Lee    jennifer.l@org.com     Member      -     [✉][📞]││  │ │
│ │ │ [✓] David Kim       david.k@org.com        Member      -     [✉][📞]││  │ │
│ │ │ [✓] Lisa Wang       lisa.w@org.com         Member      -     [✉][📞]││  │ │
│ │ │ [✓] Robert Taylor   robert.t@org.com       Member      -     [✉][📞]││  │ │
│ │ │ [✓] Emily Davis     emily.d@org.com        Secretary   -     [✉][📞]││  │ │
│ │ │ [✓] James Wilson    james.w@org.com        Member      -     [✉][📞]││  │ │
│ │ └──────────────────────────────────────────────────────────────────────┘  │ │
│ │                                                                            │ │
│ │ ┌─ Additional Attendees ───────────────────────────────────────────────┐  │ │
│ │ │ [+ Add Person] [+ Add Email] [+ Import from List]                    │  │ │
│ │ │                                                                       │  │ │
│ │ │ • John Smith (CFO) - john.smith@org.com                          [X] │  │ │
│ │ │ • Amy Johnson (External Auditor) - amy.j@external.com            [X] │  │ │
│ │ └───────────────────────────────────────────────────────────────────────┘  │ │
│ │                                                                            │ │
│ │ Bulk Actions: [✉ Email All] [📋 Export List] [📊 Attendance Report]       │ │
│ └────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                │
│ ┌─ NOTIFICATIONS ───────────────────────────────────────────────────────────┐ │
│ │ Send When:        [✓] Now (on save)  [ ] Scheduled: [Date/Time]           │ │
│ │ Email Invitation: [✓] Send to all attendees                               │ │
│ │ Calendar Sync:    [✓] Google Calendar  [✓] Outlook  [ ] iCal Export       │ │
│ │                                                                            │ │
│ │ Reminders:  [✓] 7 days before  [✓] 1 day before  [✓] 1 hour before       │ │
│ │             [ ] Custom: [___] [hours/days ▼] before                       │ │
│ │                                                                            │ │
│ │ Follow-up:  [✓] Request RSVP (deadline: 2 days before)                    │ │
│ │             [✓] Send agenda 3 days before                                 │ │
│ │             [ ] Send pre-reading materials: [Select files]                │ │
│ └────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                │
│ ┌─ DOCUMENTS ───────────────────────────────────────────────────────────────┐ │
│ │ Meeting Folder: [📁 Create in Google Drive] [📁 Create in SharePoint]     │ │
│ │                                                                            │ │
│ │ Linked Documents (0):                                                      │ │
│ │ [+ Link Document] [+ Upload File] [+ Use Template]                        │ │
│ │                                                                            │ │
│ │ (Documents can also be added after meeting is created)                    │ │
│ └────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                │
│ ┌─ AGENDA ──────────────────────────────────────────────────────────────────┐ │
│ │ [Build agenda now] [Build agenda later] [Use template]                    │ │
│ │                                                                            │ │
│ │ ( ) Build now   (•) Build later (you can add agenda items after creation) │ │
│ └────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                │
│ ┌─ ACTIONS ─────────────────────────────────────────────────────────────────┐ │
│ │                                                                            │ │
│ │ Status: Draft                                                              │ │
│ │                                                                            │ │
│ │ [Save as Draft]  [Schedule & Send Invites]  [Schedule & Send Later]      │ │
│ │                                                                            │ │
│ │ [Cancel]                                            Ctrl+S: Save  Esc: Cancel│ │
│ └────────────────────────────────────────────────────────────────────────────┘ │
└────────────────────────────────────────────────────────────────────────────────┘
```

---

## Key Features

### Quick Actions Bar

**Use Template:**
- Dropdown shows recently used templates
- Clicking loads all template settings (title pattern, duration, attendees, etc.)
- Templates can be organization-wide or personal

**Copy Last Meeting:**
- One-click to copy previous meeting settings
- Increments date automatically (e.g., monthly → next month)
- Keeps same attendees, duration, location

**Find Available Time:**
- Analyzes attendee calendars
- Suggests 3-5 time slots with highest availability
- Shows conflict count for each slot

### Two-Column Layout

**Left Column: Basic Information**
- Essential fields for every meeting
- Larger input areas for easy data entry
- Visual date/time picker
- Recurrence pattern with preview

**Right Column: Advanced Options**
- Less frequently used but important settings
- Visibility controls
- Tags for categorization
- Color coding for calendar
- Permissions

### Attendees Section

**Grid View:**
- Sortable columns (click header to sort)
- Checkbox selection for bulk actions
- Quick actions per row:
  - [✉] Send individual email
  - [📞] View contact info

**Bulk Actions:**
- Email all selected attendees
- Export list to CSV/Excel
- Generate attendance report

**Additional Attendees:**
- Multiple ways to add: Person search, email entry, import from list
- Supports external emails
- Visual distinction from committee members

### Notifications Section

**Comprehensive Control:**
- When to send invites (now vs. scheduled)
- Which calendar systems to integrate
- Multiple reminder options (pre-configured + custom)
- Follow-up automation (RSVP requests, agenda distribution)

### Documents Section

**Folder Creation:**
- One-click to create meeting folder in Google Drive or SharePoint
- Automatically shared with attendees
- Follows organization's folder structure template

**Document Linking:**
- Link existing documents
- Upload new files
- Use document templates (agendas, minutes, etc.)

### Agenda Section

**Flexible Workflow:**
- Build agenda now (in-line quick builder)
- Build later (navigate to full agenda builder after creation)
- Use template (load standard agenda structure)

### Actions Bar

**Three Save Options:**
1. **Save as Draft** - Creates meeting but doesn't send invites (can edit more)
2. **Schedule & Send Invites** - Creates meeting and sends invites immediately
3. **Schedule & Send Later** - Creates meeting, schedules invites for future date/time

**Keyboard Shortcuts:**
- Ctrl+S / Cmd+S: Save as draft
- Ctrl+Enter / Cmd+Enter: Schedule & send invites
- Esc: Cancel and close

---

## Interaction Details

### Smart Defaults

**Auto-Population:**
- Title: `{Committee Name} - {Month Year}`
- Date: Next occurrence based on committee meeting schedule
- Time: Last meeting time or committee default
- Duration: Last meeting duration or 1 hour
- Location: Last meeting location or committee default
- Attendees: All active committee members pre-selected

**Template Detection:**
- If user schedules same meeting type repeatedly, offer to save as template
- "You've scheduled 3 similar meetings. Save as template?"

### Validation

**Inline Validation:**
- Red border + error text below field for errors
- Yellow border + warning text for warnings (not blocking)
- Green checkmark for valid fields

**Examples:**
- Error: "Title is required"
- Warning: "3 attendees have conflicts at this time"
- Success: "Video link will be generated automatically"

**Pre-Submit Validation:**
- All errors must be fixed before "Schedule & Send" is enabled
- Warnings can be ignored (user discretion)

### Autocomplete & Suggestions

**Title Field:**
- Suggests recent meeting titles
- Auto-completes committee name

**Attendees Search:**
- Real-time search as user types
- Results show: Name, Title, Department, Email, Availability
- Keyboard navigation: Arrow keys + Enter to select

**Tags Field:**
- Autocomplete from existing tags used in organization
- Creates new tag if doesn't exist
- Comma or Enter to add tag

---

## Power User Features

### Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Ctrl+S | Save as draft |
| Ctrl+Enter | Schedule & send invites |
| Ctrl+T | Use template |
| Ctrl+L | Copy last meeting |
| Ctrl+F | Find available time |
| Esc | Cancel/close |
| Tab | Next field |
| Shift+Tab | Previous field |

### Right-Click Context Menu

**On Attendee Row:**
- Send individual email
- View full profile
- Remove from meeting
- Copy email address
- View calendar

**On Meeting Folder:**
- Open in Google Drive/SharePoint
- Copy folder link
- Set permissions
- Download all documents

### Bulk Editing

**Select Multiple Attendees:**
- Shift+Click to select range
- Ctrl+Click to select individual
- Bulk actions appear when >1 selected

**Bulk Actions:**
- Send email to selected
- Change RSVP status
- Add to calendar
- Export selected to CSV

---

## Advanced Features

### Availability Heatmap

**When "Find Available Time" clicked:**
- Shows calendar grid (next 2 weeks)
- Color-coded by availability:
  - 🟢 Green: 80-100% available
  - 🟡 Yellow: 50-79% available
  - 🔴 Red: <50% available
- Click time slot to auto-fill date/time

### Conflict Detection

**Real-Time:**
- As user selects date/time, check attendee calendars
- Show warning badge: "⚠️ 3 conflicts"
- Click badge to see who has conflicts
- Suggest alternative times

**Conflict Details:**
```
Conflicts (3):
• Sarah Johnson - Board Meeting (1:00-3:00 PM)
• Michael Chen - Client Call (2:00-2:30 PM)
• Lisa Wang - Out of Office (All day)

Suggested alternatives:
• Mar 15, 3:30 PM (0 conflicts)
• Mar 16, 2:00 PM (1 conflict)
• Mar 17, 10:00 AM (0 conflicts)
```

### Conditional Logic

**Location Type Changes:**
- Select "In Person" → Show room booking
- Select "Virtual" → Show video platform options
- Select "Hybrid" → Show both sections

**Recurrence Changes:**
- Check "Recurring" → Show recurrence pattern
- Uncheck → Hide recurrence pattern

**Visibility Changes:**
- "Organization-Wide" → Add warning: "Meeting will be visible to all users"

---

## Accessibility

**Keyboard Navigation:**
- Full keyboard navigation (no mouse required)
- Logical tab order (top-to-bottom, left-to-right)
- Skip links: "Skip to attendees", "Skip to actions"

**Screen Reader:**
- ARIA labels on all interactive elements
- Form field labels properly associated
- Error messages announced immediately
- Status updates announced (e.g., "3 attendees selected")

**Visual:**
- High contrast mode supported
- Focus indicators on all fields
- Color + icon/text (not color alone)
- Adjustable text size (respects browser zoom)

---

## Mobile Considerations

**Not Optimized for Mobile:**
- This design is for desktop/laptop users (power users)
- Mobile users should use Option A (wizard) or Option C (visual)
- If accessed on mobile, show message: "For best experience, use desktop or try simplified wizard"

**Tablet (iPad) Support:**
- Two-column layout collapses to single column
- Touch-friendly field sizes
- Virtual keyboard doesn't obscure form

---

## Performance

**Loading:**
- Form loads in <500ms with all defaults populated
- Attendee list loads async (doesn't block form)
- Calendar availability loaded on-demand (when needed)

**Auto-Save:**
- Every 30 seconds (if draft mode)
- Visual indicator: "Last saved 5 seconds ago"
- Recover from browser crash

**Validation:**
- Client-side validation (instant)
- Server-side validation on submit (for data integrity)

---

## Error Handling

**Network Errors:**
- Auto-save failed → Retry automatically (3 attempts)
- Submit failed → Show error, allow retry, preserve data
- Calendar API down → Create meeting anyway, calendar sync marked as "Pending retry"

**Data Conflicts:**
- Meeting time changed by another user → Show diff, allow merge or overwrite
- Attendee removed by another admin → Highlight change, confirm before saving

---

## Developer Notes

**Component:**
```typescript
<MeetingScheduleForm
  committeeId="..."
  mode="create"  // or "edit" or "template"
  onSave={(meeting) => { /* ... */ }}
  onCancel={() => { /* ... */ }}
  initialData={...}  // For edit/copy modes
/>
```

**State Management:**
```typescript
interface MeetingFormState {
  // All fields from basic + advanced
  title: string;
  description: string;
  date: Date;
  startTime: string;
  duration: number;
  timeZone: string;
  locationType: 'InPerson' | 'Virtual' | 'Hybrid';
  // ... 30+ more fields

  // UI State
  validationErrors: Map<string, string>;
  isDirty: boolean;
  lastSaved: Date;
  isSubmitting: boolean;

  // Advanced
  showConflicts: boolean;
  selectedAttendees: Set<string>;
  // ...
}
```

**Form Validation:**
```typescript
const validationSchema = z.object({
  title: z.string().min(1, "Title is required"),
  date: z.date().min(new Date(), "Date must be in future"),
  startTime: z.string().regex(/^\d{1,2}:\d{2} (AM|PM)$/),
  duration: z.number().min(15).max(480), // 15 min to 8 hours
  attendeeIds: z.array(z.string()).min(1, "At least one attendee required"),
  // ...
});
```

---

## Comparison to Other Options

**vs. Option A (Wizard):**
- ✅ Faster for experienced users (no clicking through steps)
- ✅ More control and visibility
- ❌ Overwhelming for first-time users
- ❌ Requires larger screen

**vs. Option C (Visual):**
- ✅ More information density
- ✅ Better for bulk operations
- ❌ Less visually engaging
- ❌ Steeper learning curve

**Best For:**
- Experienced committee chairs who schedule meetings weekly
- Administrative staff managing multiple committees
- Desktop users with large monitors
- Users who value efficiency over simplicity

---

**Design Status:** Draft - Ready for Review
**Next:** Gather feedback and refine
