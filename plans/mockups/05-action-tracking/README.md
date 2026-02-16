# Journey 5: Action Tracking

## User Story
As a committee member, I need to view and manage my assigned action items from meetings so that I can track my progress, update status, and ensure timely completion of my responsibilities.

## User Needs
- View all action items assigned to me across different committees
- Filter and organize action items by status, committee, priority, and due date
- Update progress on action items with status changes and progress percentages
- Add notes and comments to document work and blockers
- Attach files as evidence or supporting documentation
- Mark action items as complete
- See overdue items clearly highlighted
- Receive notifications for upcoming deadlines
- Understand dependencies between action items

## Key Requirements

### Functional Requirements
1. **Action Item Display**
   - Show all assigned action items with key details (title, committee, due date, status, priority)
   - Display assignment source (meeting/date where action was created)
   - Show current progress percentage
   - Highlight overdue items with visual indicators
   - Display dependency relationships

2. **Filtering & Organization**
   - Filter by status (Not Started, In Progress, Blocked, Complete)
   - Filter by committee
   - Filter by date range (created date, due date)
   - Filter by priority level
   - Search by keywords
   - Sort by various fields (due date, priority, status, committee)

3. **Status Management**
   - Update status (Not Started → In Progress → Complete)
   - Set "Blocked" status with reason
   - Update progress percentage (0-100%)
   - Mark complete with completion date

4. **Documentation**
   - Add notes/comments with timestamps
   - View history of updates
   - Attach files (documents, images, evidence)
   - Download or preview attachments

5. **Notifications & Alerts**
   - Show count of overdue items
   - Display upcoming deadlines (within 7 days)
   - Visual indicators for priority and urgency
   - Badge notifications for new assignments

### User Experience Requirements
- Quick access to most urgent/overdue items
- Easy status updates without complex workflows
- Inline editing for quick updates
- Detailed view for comprehensive updates
- Visual progress indicators
- Responsive design for mobile access
- Keyboard shortcuts for power users

### Data Requirements
- Action item details (title, description, committee, assigned date, due date)
- Assignment information (assigned by, assigned in meeting)
- Status tracking (current status, progress %, last updated)
- Notes/comments with timestamps and authors
- File attachments with metadata
- Dependency relationships
- Completion information (completed date, completed by)

## Design Options

### Option A: List View with Inline Editing
**Approach**: Traditional list/table view with expandable rows for details and inline editing capabilities.

**Strengths**:
- Familiar interface pattern
- Dense information display
- Quick scanning of many items
- Inline editing for efficiency
- Good for keyboard navigation

**Best For**:
- Users managing many action items
- Quick status updates
- Detail-oriented work

### Option B: Kanban Board
**Approach**: Column-based board showing action items grouped by status with drag-and-drop functionality.

**Strengths**:
- Visual workflow representation
- Intuitive drag-and-drop status changes
- Clear status distribution
- Engaging interaction model
- Good for workflow-oriented thinking

**Best For**:
- Visual thinkers
- Workflow management
- Team collaboration
- Progress visualization

### Option C: Timeline/Gantt View
**Approach**: Timeline visualization showing action items plotted by due date with dependency arrows.

**Strengths**:
- Time-based organization
- Dependency visualization
- Deadline awareness
- Planning and scheduling focus
- Identifies bottlenecks

**Best For**:
- Time-sensitive work
- Dependent tasks
- Project planning
- Deadline management

## Evaluation Criteria

### Usability
- How quickly can users find and update action items?
- How intuitive is the status update process?
- How easy is it to add notes and attachments?
- How well does it handle large numbers of action items?

### Efficiency
- How many clicks to complete common tasks?
- How well does it support bulk operations?
- How effective are the filtering and search capabilities?
- How quickly can users identify urgent items?

### Information Architecture
- How well organized is the information?
- How easy is it to understand the current state?
- How clear are relationships and dependencies?
- How effective are the visual indicators?

### Flexibility
- How well does it adapt to different workflows?
- How customizable is the view?
- How well does it scale with complexity?
- How suitable is it for different user types?

## Testing Scenarios

1. **New User First Login**
   - Discovers 15 assigned action items from 3 different committees
   - Needs to understand what's most urgent
   - Wants to update status on 3 items

2. **Regular Weekly Update**
   - Reviews all in-progress items
   - Updates progress on 5 items
   - Marks 2 items complete
   - Adds notes to 3 items

3. **Urgent Deadline Management**
   - 3 items due tomorrow
   - 2 items overdue
   - Needs to prioritize and communicate status quickly

4. **Detailed Update with Evidence**
   - Updates complex action item
   - Adds detailed progress notes
   - Attaches 3 supporting documents
   - Changes status and progress percentage

5. **Dependency Management**
   - Has action item blocked by another member's task
   - Needs to mark as blocked and document reason
   - Wants to see when blocking item will be complete

## Success Metrics
- Time to find specific action item < 10 seconds
- Time to update status < 5 seconds
- Time to add note and attachment < 30 seconds
- User satisfaction rating > 4.5/5
- Reduction in missed deadlines > 40%
- Adoption rate > 85% of committee members

## Files in This Directory
- `README.md` - This file
- `index.html` - Comparison page showing all three design options
- `option-A/prototype.html` - Interactive prototype of List View approach
- `option-B/prototype.html` - Interactive prototype of Kanban Board approach
- `option-C/prototype.html` - Interactive prototype of Timeline/Gantt approach
- `COMPARISON.md` - Detailed side-by-side comparison of all options
