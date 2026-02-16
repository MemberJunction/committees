# Committees App: UX Design Mockups

**Status:** In Progress
**Last Updated:** February 15, 2026

---

## Overview

This directory contains user experience design mockups for the Committees application. Each key user journey has **3 distinct design options** that will be refined based on feedback.

---

## Design Principles

1. **Association-First Design**
   - Use association terminology (members, chapters, committees)
   - Optimize for volunteer governance workflows
   - Handle complexity without overwhelming users

2. **Collaboration-Centered**
   - Integrate with Google Workspace, Microsoft 365, Box
   - Make collaboration frictionless
   - Don't force proprietary systems

3. **Mobile-Responsive**
   - Phone/tablet friendly
   - Offline document access
   - Touch-optimized controls

4. **AI-Augmented, Not AI-Dominated**
   - AI suggests, humans decide
   - Show transparency in AI reasoning
   - Easy overrides and edits

5. **Accessible & Inclusive**
   - WCAG 2.1 AA compliant
   - Screen reader friendly
   - High contrast modes
   - Keyboard navigation

---

## User Journeys

### 1. [Committee Setup](./01-committee-setup/)
**Persona:** Board Administrator
**Goal:** Create new committee and configure basic settings
**Steps:** Create committee → Set type → Add members → Assign roles

### 2. [Meeting Scheduling](./02-meeting-scheduling/)
**Persona:** Committee Chair
**Goal:** Schedule a meeting with agenda
**Steps:** Create meeting → Set date/time → Add calendar event → Send invites

### 3. [Agenda Building](./03-agenda-building/)
**Persona:** Committee Chair
**Goal:** Build structured agenda with nested items
**Steps:** Add agenda items → Set presenters → Attach documents → Publish

### 4. [Meeting Execution](./04-meeting-execution/)
**Persona:** Committee Secretary
**Goal:** Conduct meeting and capture minutes
**Steps:** Mark attendance → Progress through agenda → Capture notes → Create action items

### 5. [Action Tracking](./05-action-tracking/)
**Persona:** Committee Member
**Goal:** View and complete assigned action items
**Steps:** View my tasks → Update progress → Mark complete → Add notes

### 6. [Election Management](./06-elections/)
**Persona:** Nominating Committee Chair
**Goal:** Run officer election process
**Steps:** Open nominations → Review candidates → Configure ballot → Conduct vote → Announce results

### 7. [Standards Ballot](./07-ballots/)
**Persona:** Standards WG Chair
**Goal:** Conduct standards development ballot
**Steps:** Create draft → Open comment period → Collect comments → Resolve comments → Recirculate

### 8. [Committee Dashboard](./08-dashboard/)
**Persona:** Board Administrator
**Goal:** Monitor health of all committees
**Steps:** View engagement scores → Identify at-risk committees → Review action item completion → Track attendance trends

### 9. [Document Collaboration](./09-documents/)
**Persona:** Committee Member
**Goal:** Collaborate on meeting documents
**Steps:** Access shared folder → Comment on agenda → Upload materials → Track versions

### 10. [Member Profile](./10-member-profile/)
**Persona:** Committee Member
**Goal:** View my committee involvement and activity
**Steps:** View my committees → See my action items → Check my engagement score → Update availability

---

## Mockup Format

Each user journey directory contains:
- `README.md` - Journey overview and user story
- `option-A/` - Design Option A (images + description)
- `option-B/` - Design Option B (images + description)
- `option-C/` - Design Option C (images + description)
- `final/` - Final approved design (after refinement)

### File Naming Convention:
- `01-screen-name.png` - Screenshot/mockup image
- `01-screen-name.md` - Screen description and interactions
- `flow-diagram.png` - User flow diagram (if applicable)

---

## Design Options Philosophy

**Option A: Minimal & Clean**
- Emphasis on simplicity
- Fewer UI elements
- More whitespace
- Best for: Less technical users, simple workflows

**Option B: Functional & Comprehensive**
- All information visible at once
- Dense information layout
- Advanced filters and controls
- Best for: Power users, complex workflows

**Option C: Modern & Visual**
- Strong visual hierarchy
- Card-based layouts
- Progressive disclosure
- Best for: Mobile users, visual learners

---

## Tools & Assets

**Design Tools:**
- Figma (primary)
- Adobe XD (optional)
- Sketch (optional)

**Component Libraries:**
- MemberJunction Angular components
- Angular Material
- Custom Committees components

**Color Palette:**
- Primary: #1976D2 (Blue)
- Secondary: #424242 (Gray)
- Accent: #FF9800 (Orange)
- Success: #4CAF50 (Green)
- Warning: #FFC107 (Amber)
- Error: #F44336 (Red)

**Typography:**
- Headings: Roboto Bold
- Body: Roboto Regular
- Monospace: Roboto Mono (for codes/IDs)

---

## Review Process

1. **Initial Design:** Create 3 distinct options for each journey
2. **Internal Review:** Team reviews and provides feedback
3. **User Testing:** Show to beta users and collect feedback
4. **Refinement:** Iterate based on feedback
5. **Final Approval:** Approve final design and move to `/final`
6. **Implementation:** Hand off to development team

---

## Progress Tracker

| Journey | Option A | Option B | Option C | Final | Status |
|---------|----------|----------|----------|-------|--------|
| 1. Committee Setup | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 2. Meeting Scheduling | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 3. Agenda Building | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 4. Meeting Execution | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 5. Action Tracking | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 6. Election Management | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 7. Standards Ballot | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 8. Committee Dashboard | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 9. Document Collaboration | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |
| 10. Member Profile | ⬜ | ⬜ | ⬜ | ⬜ | Not Started |

---

**Next Steps:**
1. Review comprehensive design document
2. Select priority user journeys to mockup first
3. Create 3 design options for each
4. Iterate and refine
5. Hand off to development
