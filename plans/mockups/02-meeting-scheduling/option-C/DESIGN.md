# Option C: Modern & Visual

**Design Philosophy:** Calendar-centric, visual interface with drag-and-drop interactions and progressive disclosure

---

## Design Principles

1. **Visual First** - Calendar is the primary interface, forms are secondary
2. **Gestural** - Drag-and-drop, swipe, pinch-to-zoom
3. **Progressive Disclosure** - Show basics first, reveal details on demand
4. **Mobile-First** - Optimized for touch, works great on desktop too
5. **Delightful** - Smooth animations, satisfying interactions

---

## Screen Flow

```
Calendar View → Quick Create Dialog → Detail Panel → Success Animation
(Drag to schedule)  (Basic fields)    (Full config)   (Confirmation)
```

---

## Screen 1: Calendar View with Quick Create

### Layout

```
┌────────────────────────────────────────────────────────────────────────────┐
│ Committees App                                        👤 Sarah J.     [≡] │
├────────────────────────────────────────────────────────────────────────────┤
│                                                                            │
│ Finance Committee                                                          │
│ ┌──────────────────────────────────────────────────────────────────────┐  │
│ │  📅 Calendar    📋 Meetings    👥 Members    📊 Dashboard            │  │
│ └──────────────────────────────────────────────────────────────────────┘  │
│                                                                            │
│ ┌─────────────────────────────────────────────────────────────────────┐   │
│ │  [  ←  ]    March 2026                              [ Today ]  [ →  ]│   │
│ │  ┌────────────────────────────────────────────────────────────────┐ │   │
│ │  │ Week View    Month View    Agenda                            │ │   │
│ │  └────────────────────────────────────────────────────────────────┘ │   │
│ └─────────────────────────────────────────────────────────────────────┘   │
│                                                                            │
│ ┌────┬────┬────┬────┬────┬────┬────┐                                     │
│ │Mon │Tue │Wed │Thu │Fri │Sat │Sun │                                     │
│ ├────┼────┼────┼────┼────┼────┼────┤                                     │
│ │  9 │ 10 │ 11 │ 12 │ 13 │ 14 │ 15 │                                     │
│ │    │    │    │    │    │    │    │                                     │
│ │    │    │    │    │    │ ░░ │ ░░ │  ← Weekend shaded                   │
│ ├────┼────┼────┼────┼────┼────┼────┤                                     │
│ │ 16 │ 17 │ 18 │ 19 │ 20 │ 21 │ 22 │                                     │
│ │    │    │    │    │    │ ░░ │ ░░ │                                     │
│ ├────┼────┼────┼────┼────┼────┼────┤                                     │
│ │ 23 │ 24 │ 25 │ 26 │ 27 │ 28 │ 29 │                                     │
│ │    │    │    │    │ ┌──────────┐ │                                     │
│ │    │    │    │    │ │  Meeting │ │  ← Existing meeting                 │
│ │    │    │    │    │ │  2-3 PM  │ │                                     │
│ │    │    │    │    │ └──────────┘ │                                     │
│ └────┴────┴────┴────┴────┴────┴────┘                                     │
│                                                                            │
│ ┌─────────────────────────────────────────────────────────────────────┐   │
│ │                     [➕  Schedule New Meeting]                       │   │
│ └─────────────────────────────────────────────────────────────────────┘   │
│                                                                            │
│ ┌─ Recent Activity ──────────────────────────────────────────────────┐    │
│ │ • Last meeting: Feb 21, 2026 - All members attended                │    │
│ │ • 3 action items pending completion                                │    │
│ │ • Next scheduled: Mar 27, 2:00 PM                                  │    │
│ └────────────────────────────────────────────────────────────────────┘    │
└────────────────────────────────────────────────────────────────────────────┘

                         (Click date or "Schedule New Meeting")
                                        ↓
```

### Quick Create Dialog (Appears as Modal)

```
┌───────────────────────────────────────────────────┐
│  Schedule Meeting                          [X]    │
├───────────────────────────────────────────────────┤
│                                                   │
│  What's this meeting about?                       │
│  ┌─────────────────────────────────────────────┐ │
│  │ Finance Committee - March 2026              │ │
│  └─────────────────────────────────────────────┘ │
│                                                   │
│  When?                                            │
│  ┌──────────────────┬──────────┬────────────────┐│
│  │ 📅 Mar 15, 2026  │ 🕐 2:00 PM│ ⏱️ 1 hour     ││
│  └──────────────────┴──────────┴────────────────┘│
│                                                   │
│  Where?                                           │
│  ┌──────────────────┬──────────────────────────┐ │
│  │ (•) 💻 Virtual    │ Zoom (Auto-generated) [▼]│ │
│  │ ( ) 🏢 In Person  │                          │ │
│  │ ( ) 🔄 Hybrid     │                          │ │
│  └──────────────────┴──────────────────────────┘ │
│                                                   │
│  Who's invited?                                   │
│  ┌─────────────────────────────────────────────┐ │
│  │ [✓] All committee members (8)               │ │
│  │                                             │ │
│  │ 👥 Sarah J., Michael C., Jennifer L.,       │ │
│  │    David K., Lisa W., Robert T.,            │ │
│  │    Emily D., James W.                       │ │
│  │                                             │ │
│  │ [+ Add guest]                               │ │
│  └─────────────────────────────────────────────┘ │
│                                                   │
│  ┌─────────────────────────────────────────────┐ │
│  │        Create Meeting & Send Invites        │ │
│  └─────────────────────────────────────────────┘ │
│                                                   │
│         [More options] (expands to full form)     │
└───────────────────────────────────────────────────┘
```

### Drag-and-Drop Behavior

**User Action:** Click and drag on calendar
**Visual Feedback:**
- As mouse moves, transparent blue box appears showing meeting duration
- Time range updates in real-time: "2:00 PM - 3:00 PM"
- Drop to create meeting at that time

```
User drags from 2 PM to 3 PM on Friday March 15:

┌────┬────┬────┬────┬─────────────────┬────┬────┐
│Mon │Tue │Wed │Thu │     Fri     ↓   │Sat │Sun │
│    │    │    │    │  ┌───────────┐   │    │    │
│    │    │    │    │  │  DRAG     │   │    │    │
│    │    │    │    │  │  2-3 PM   │   │    │    │
│    │    │    │    │  └───────────┘   │    │    │
└────┴────┴────┴────┴─────────────────┴────┴────┘

On drop → Quick Create Dialog opens with date/time pre-filled
```

---

## Screen 2: Detail Panel (Slide-in from right)

**Triggered by:** Clicking "More options" in Quick Create

```
┌───────────────────────────────────────────────────────────────────────┐
│ Calendar (behind)                                    [Detail Panel] → │
│                                                                        │
│ (Calendar remains visible but dimmed)               ┌─────────────────┤
│                                                     │ ← Back          │
│                                                     │                 │
│                                                     │ Meeting Details │
│                                                     │                 │
│                                                     │ ┌─────────────┐ │
│                                                     │ │ Title       │ │
│                                                     │ │ Finance ... │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ ┌─────────────┐ │
│                                                     │ │ Description │ │
│                                                     │ │ Quarterly..│ │
│                                                     │ │            │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ 📅 Schedule     │
│                                                     │ ┌─────────────┐ │
│                                                     │ │ Mar 15      │ │
│                                                     │ │ 2:00 PM     │ │
│                                                     │ │ 1 hour      │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ 🔁 Recurring    │
│                                                     │ ┌─────────────┐ │
│                                                     │ │ Monthly  [▼]│ │
│                                                     │ │ 4 meetings  │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ 👥 Attendees    │
│                                                     │ ┌─────────────┐ │
│                                                     │ │ 8 members   │ │
│                                                     │ │ [View list] │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ 🔔 Notifications│
│                                                     │ ┌─────────────┐ │
│                                                     │ │ [✓] Email   │ │
│                                                     │ │ [✓] Calendar│ │
│                                                     │ │ [✓] Reminders│
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     │ ┌─────────────┐ │
│                                                     │ │   Create    │ │
│                                                     │ │   Meeting   │ │
│                                                     │ └─────────────┘ │
│                                                     │                 │
│                                                     └─────────────────┘
└───────────────────────────────────────────────────────────────────────┘
```

**Interaction:**
- Panel slides in from right (300ms animation)
- Calendar dims but remains visible (background blur)
- User can drag panel wider if needed (resize handle)
- Click outside panel or [← Back] to close

---

## Screen 3: Success Animation

**After "Create Meeting" clicked:**

```
┌───────────────────────────────────────────────────┐
│                                                   │
│                                                   │
│                    ✓                              │
│                (Animated)                         │
│                                                   │
│              Meeting Created!                     │
│                                                   │
│     Invitations sent to 8 members                 │
│                                                   │
│  ┌───────────────────────────────────────────┐   │
│  │ Finance Committee - March 2026            │   │
│  │ Friday, March 15, 2026                    │   │
│  │ 2:00 PM - 3:00 PM                         │   │
│  │                                           │   │
│  │ [View Meeting]  [Build Agenda]            │   │
│  └───────────────────────────────────────────┘   │
│                                                   │
│        (Auto-closes in 3 seconds)                 │
└───────────────────────────────────────────────────┘

                      ↓ (Animation)

Calendar view updates with new meeting card appearing
```

**Animation Sequence:**
1. Checkmark draws itself (stroke animation, 500ms)
2. "Meeting Created!" fades in (200ms)
3. Meeting card slides up from bottom (300ms)
4. Confetti animation (subtle, 1 second)
5. Auto-close after 3 seconds OR user clicks anywhere

**Calendar Update:**
```
┌────┬────┬────┬────┬────────────────┬────┬────┐
│Mon │Tue │Wed │Thu │    Fri         │Sat │Sun │
│    │    │    │    │ ┌────────────┐ │    │    │
│    │    │    │    │ │ Finance... │ │    │    │
│    │    │    │    │ │ 2-3 PM     │ │    │    │  ← NEW!
│    │    │    │    │ │ 8 attending│ │    │    │  (Appears with slide-in animation)
│    │    │    │    │ └────────────┘ │    │    │
└────┴────┴────┴────┴────────────────┴────┴────┘
```

---

## Card-Based UI for Meeting Details

### Meeting Card (on Calendar)

```
┌─────────────────────────────────┐
│ Finance Committee - March 2026  │
│ ────────────────────────────────│
│ 🕐 2:00 PM - 3:00 PM           │
│ 💻 Virtual (Zoom)               │
│                                 │
│ 👥 8 attending | ✓ 5 | ? 3     │  ← RSVP status
│ ────────────────────────────────│
│ [View] [Edit] [Cancel]          │
└─────────────────────────────────┘
```

**Hover State:**
- Card expands slightly (scale 1.05)
- Shadow deepens
- Quick actions appear (View, Edit, Cancel)

**Click Card:**
- Opens detail panel from right
- Shows full meeting information
- Agenda items, attendees, documents

---

## Visual Enhancements

### Member Availability Heatmap

**When scheduling, show availability:**

```
Member Availability for Mar 15, 2026

     9a  10a  11a  12p  1p  2p  3p  4p  5p
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🟢🟢🟢🟢🟡🟡🟡🟡🟢  Sarah J.
🟢🟢🔴🔴🔴🟡🟢🟢🟢  Michael C.
🟢🟢🟢🟢🟢🟢🟢🟡🔴  Jennifer L.
🟢🟢🟢🟢🟢🟢🟢🟢🟢  David K.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🟢 Available  🟡 Maybe  🔴 Busy

Best times: 9-10 AM (all available) or 4-5 PM (most available)
```

**Interactive:**
- Hover over time block to see details
- Click time block to auto-fill meeting time
- Drag across blocks to select multi-hour meeting

### Time Zone Visualization

**Show multiple time zones:**

```
Meeting Time:
┌────────────────────────────────────┐
│ 🌍 New York (EST)                  │
│    2:00 PM - 3:00 PM               │
│                                    │
│ 🌍 London (GMT)                    │
│    7:00 PM - 8:00 PM               │
│                                    │
│ 🌍 Tokyo (JST)                     │
│    4:00 AM - 5:00 AM (next day)    │
└────────────────────────────────────┘
```

**Toggle:** Click 🌍 icon to expand/collapse additional time zones

### Recurring Pattern Visual

**Visual pattern preview:**

```
Recurrence: Monthly on 3rd Friday

│  Mar  │  Apr  │  May  │  Jun  │
├───────┼───────┼───────┼───────┤
│   15● │   19● │   17● │   21● │  ← Dots show meeting dates
```

**Interactive:**
- Click dot to edit that specific occurrence
- Drag dot to reschedule occurrence
- Right-click for "Delete this occurrence"

---

## Mobile-First Features

### Swipe Gestures

**On Meeting Card:**
- Swipe left → Quick actions (Edit, Cancel, Duplicate)
- Swipe right → Mark as complete or view details
- Long-press → Drag to reschedule

**In Calendar:**
- Swipe left/right → Previous/next month
- Pinch → Zoom in (week view) / zoom out (month view)
- Pull down → Refresh

### Touch-Optimized Controls

**Large Touch Targets:**
- All buttons minimum 48x48px
- Spacing between clickable elements: 8px minimum
- Form fields: 56px height

**Bottom Sheet UI:**
- Quick Create slides up from bottom (not modal)
- Easy thumb reach on phones
- Swipe down to dismiss

```
┌────────────────────────────────┐
│                                │
│ (Calendar visible above)       │
│                                │
│ ════════════════════════════   │  ← Handle (swipe down)
│                                │
│ Schedule Meeting               │
│                                │
│ Title                          │
│ ┌────────────────────────────┐│
│ │ Finance Committee...       ││
│ └────────────────────────────┘│
│                                │
│ ... (rest of form)             │
│                                │
│ [Create Meeting]               │
└────────────────────────────────┘
```

### Offline Support

**Progressive Web App (PWA):**
- Create meeting while offline → Saved to queue
- Shows "Pending sync" badge
- Auto-sync when connection restored
- Notifications still delivered (push notifications)

---

## Animations & Transitions

### Smooth Transitions

**Screen Changes:**
- Quick Create appears: Fade in + scale from center (300ms ease-out)
- Detail panel: Slide from right (300ms ease-in-out)
- Success: Checkmark draw animation + confetti (1000ms total)

**Calendar Updates:**
- New meeting card: Slide in from top (200ms)
- Meeting moved: Slide to new position (300ms)
- Meeting deleted: Fade out + shrink (200ms)

### Loading States

**Creating Meeting:**
```
┌─────────────────────────────────┐
│  Creating meeting...            │
│                                 │
│  ⟳  Sending invitations         │  ← Spinner
│                                 │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━     │  ← Progress bar
│  Step 2 of 3                    │
└─────────────────────────────────┘
```

**Progress Indicators:**
1. Creating meeting record (500ms)
2. Sending invitations (1-2 seconds)
3. Generating video link (500ms)

---

## Accessibility

**Keyboard Navigation:**
- Calendar: Arrow keys to navigate dates
- Enter: Create meeting on selected date
- Escape: Close dialog
- Tab: Navigate form fields

**Screen Reader:**
- Calendar announces dates: "Monday, March 15, 2026, 1 meeting"
- Meeting cards announce: "Finance Committee meeting, March 15, 2:00 PM, 8 attendees, 5 confirmed"
- Drag-and-drop alternative: Click date → Time picker

**Visual:**
- High contrast mode: Stronger colors, thicker borders
- Reduced motion mode: Disable animations
- Focus indicators: Blue outline, 3px

---

## Performance

**Optimizations:**
- Virtual scrolling for long attendee lists
- Lazy load availability heatmap (only when needed)
- Debounce calendar queries (300ms after user stops dragging)
- Cache recent meetings locally (faster load)

**Metrics:**
- Calendar load: <1 second
- Quick Create open: <100ms
- Meeting creation: <3 seconds total
- Animation frame rate: 60 FPS

---

## Developer Notes

**Components:**
```typescript
<CalendarView
  committeeId="..."
  onDateClick={(date) => openQuickCreate(date)}
  onDragEnd={(start, end) => openQuickCreate(start, end)}
/>

<QuickCreateDialog
  open={showQuickCreate}
  initialDate={selectedDate}
  initialTime={selectedTime}
  onSubmit={(meeting) => createMeeting(meeting)}
  onExpand={() => openDetailPanel()}
/>

<DetailPanel
  open={showDetail}
  meeting={meetingData}
  onSave={(meeting) => updateMeeting(meeting)}
  onClose={() => closeDetailPanel()}
/>

<SuccessAnimation
  show={showSuccess}
  meeting={createdMeeting}
  onComplete={() => refreshCalendar()}
/>
```

**State:**
```typescript
interface CalendarState {
  currentMonth: Date;
  selectedDate: Date | null;
  meetings: MeetingCard[];
  showQuickCreate: boolean;
  showDetailPanel: boolean;
  showSuccess: boolean;
  draggedTimeRange: { start: Date; end: Date } | null;
}
```

**Animations (CSS/Framer Motion):**
```css
.quick-create-enter {
  transform: scale(0.9);
  opacity: 0;
}
.quick-create-enter-active {
  transform: scale(1);
  opacity: 1;
  transition: all 300ms ease-out;
}

.panel-enter {
  transform: translateX(100%);
}
.panel-enter-active {
  transform: translateX(0);
  transition: transform 300ms ease-in-out;
}
```

---

## Comparison to Other Options

**vs. Option A (Wizard):**
- ✅ More engaging and visual
- ✅ Better for mobile users
- ❌ Less structured guidance for first-time users
- ❌ Requires more screen real estate

**vs. Option B (Comprehensive):**
- ✅ Less overwhelming, progressive disclosure
- ✅ Better mobile experience
- ❌ Requires more clicks for advanced options
- ❌ Less efficient for power users

**Best For:**
- Mobile/tablet users
- Visual learners
- Users who prefer calendar-first workflow
- Modern UX expectations
- Touch-friendly interactions

---

**Design Status:** Draft - Ready for Review
**Next:** Gather feedback and refine

---

## Prototype Links

*Note: These would be interactive prototypes in Figma/Adobe XD*

1. **Interactive Calendar** - [figma.com/proto/calendar](placeholder)
2. **Drag-and-Drop Demo** - [figma.com/proto/drag](placeholder)
3. **Mobile Bottom Sheet** - [figma.com/proto/mobile](placeholder)
4. **Success Animation** - [figma.com/proto/success](placeholder)
