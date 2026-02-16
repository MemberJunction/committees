# Journey 4: Meeting Execution

## Overview
This journey focuses on the live meeting execution experience for committee secretaries. The secretary needs to efficiently manage all aspects of a meeting in real-time, from attendance tracking through agenda progression to minutes finalization.

## User Story
**As a** Committee Secretary
**I want to** conduct a meeting with integrated tools for attendance, agenda management, note-taking, and action tracking
**So that** I can focus on capturing accurate information without juggling multiple systems or documents

## Key Personas
- **Primary**: Committee Secretary (meeting facilitator and note-taker)
- **Secondary**: Committee Members (attendees being tracked)
- **Tertiary**: Committee Chair (may assist with flow control)

## User Requirements

### Functional Requirements
1. **Attendance Management**
   - Mark members as Present, Absent, or Excused
   - Support late arrivals and early departures with timestamps
   - Calculate and display quorum status in real-time
   - Track proxy attendance or alternate representatives

2. **Agenda Navigation**
   - Clear visual indication of current agenda item
   - One-click progression to next item
   - Ability to skip or reorder items on the fly
   - Timer display for each agenda item with warnings
   - Overall meeting duration tracking

3. **Note Capture**
   - Rich text editor for discussion notes
   - Notes organized by agenda item automatically
   - Support for templates (motions, votes, discussions)
   - Auto-save functionality with conflict detection

4. **Action Item Creation**
   - Quick capture during discussion
   - Assignment to committee members (with dropdown)
   - Due date selection
   - Priority and category tagging
   - Link action items to specific agenda items

5. **Motion and Voting**
   - Record motion text and proposer/seconder
   - Conduct votes with member-by-member tracking
   - Support for voice votes, roll call, and ballot
   - Automatic calculation of vote outcomes

6. **Minutes Finalization**
   - Preview complete minutes in formatted view
   - Edit/review mode before publishing
   - Export to PDF and Word formats
   - Distribution to committee members

### Non-Functional Requirements
- **Performance**: Real-time updates with <500ms latency
- **Reliability**: Auto-save every 30 seconds, recover from connection loss
- **Usability**: Keyboard shortcuts for common actions, minimal clicks to complete tasks
- **Accessibility**: WCAG 2.1 AA compliance, screen reader support
- **Mobile**: Responsive design for tablet use (secondary to desktop)

## Design Options

### Option A: Linear Flow with Sectioned Navigation
**Concept**: Step-by-step progression through meeting phases with clear navigation
- Attendance → Agenda Items (with timer) → Notes → Actions → Finalization
- Navigation breadcrumb shows progress
- Each section is full-screen focused view
- Quick-access sidebar for jumping between sections

**Strengths**:
- Clear mental model of meeting flow
- Reduced cognitive load (one task at a time)
- Mobile-friendly sequential layout

**Weaknesses**:
- Context switching between sections
- May slow down experienced users
- Harder to capture notes while progressing agenda

### Option B: Split-Screen Agenda + Notes/Actions
**Concept**: Persistent agenda on left, dynamic workspace on right
- Left panel: Scrollable agenda with progress indicators
- Right panel: Tabbed interface for Notes, Actions, Attendance, Voting
- Timer and controls in header bar
- Agenda items clickable to load context

**Strengths**:
- Always see agenda context
- Efficient for multi-tasking (notes while tracking agenda)
- Dense information layout for power users

**Weaknesses**:
- Can feel cramped on smaller screens
- Multiple panels may overwhelm new users
- Harder to focus on single task

### Option C: Presenter Mode with Floating Panels
**Concept**: Large-format agenda display optimized for projector/screen sharing
- Full-screen agenda item display with large timer
- Floating, draggable note-taking panel
- Minimalist controls (play/pause timer, next/previous)
- Pop-up modals for attendance, voting, actions

**Strengths**:
- Great for hybrid/remote meetings (shareable screen)
- Clear focus on current agenda item
- Reduces visual clutter during discussions

**Weaknesses**:
- Floating panels can obscure content
- Less efficient for rapid data entry
- May require larger display

## Success Metrics
- Time to complete meeting execution: <5 minutes overhead (vs. paper-based)
- Note-taking accuracy: >95% of discussion points captured
- Action item creation speed: <30 seconds per item
- User satisfaction: >4.5/5 on ease of use
- Minutes finalization time: <10 minutes post-meeting

## Technical Considerations
- Real-time collaboration if multiple note-takers
- Offline mode for poor connectivity environments
- Integration with calendar systems for scheduling
- Email/notification integration for action item assignments
- Version control for minutes (draft vs. approved)

## Related Journeys
- **Journey 3**: Meeting Preparation (pre-populates agenda and attendees)
- **Journey 5**: Post-Meeting Follow-up (publishes minutes and tracks action items)
- **Journey 7**: Action Item Management (tracks completion of assigned actions)

## Files in This Directory
- `index.html` - Comparison page with side-by-side previews
- `option-A/prototype.html` - Linear flow prototype
- `option-B/prototype.html` - Split-screen prototype
- `option-C/prototype.html` - Presenter mode prototype
- `COMPARISON.md` - Detailed feature and design comparison
