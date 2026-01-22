# MemberJunction Committees App Design

**Version:** 1.0 Draft
**Date:** January 22, 2026
**Status:** Design Phase - Core (Phase 1)

---

## 1. Business Overview

### 1.1 The Problem

Organizations of all types—associations, standards bodies, nonprofits, corporations—rely on committees to govern, advise, and execute. Yet most organizations manage their committee operations through a patchwork of disconnected tools:

- **Spreadsheets** for tracking rosters and terms
- **Email threads** for meeting coordination
- **Shared drives** with inconsistent folder structures
- **Calendar apps** that don't sync with membership data
- **Word documents** for agendas and minutes that live in silos

This fragmentation leads to:
- Lost institutional knowledge when leadership transitions
- Missed action items that fall through the cracks
- Difficulty demonstrating governance compliance
- Hours spent on administrative overhead instead of substantive work

### 1.2 The Solution

The Committees App provides a **unified governance platform** that brings structure to committee operations while remaining flexible enough to accommodate different organizational needs. It is designed around five core capabilities:

| Capability | What It Does | Business Value |
|------------|--------------|----------------|
| **Committee Structure** | Define types, create committees, manage hierarchies | Clear organizational visibility |
| **Membership Management** | Track who serves, their roles, and term dates | Institutional memory, succession planning |
| **Meeting Coordination** | Schedule, build agendas, capture attendance | Streamlined operations, audit trail |
| **Action Tracking** | Assign tasks, monitor progress, drive accountability | Work gets done, nothing falls through |
| **Document Linking** | Connect to existing document systems | Single source of truth without migration |

### 1.3 Key Personas

```mermaid
mindmap
  root((Committees App))
    Board Administrator
      Manages all committees
      Creates committee structures
      Oversees governance compliance
      Runs reports across committees
    Committee Chair
      Runs their committee
      Schedules and leads meetings
      Assigns action items
      Manages roster within their scope
    Committee Member
      Participates in meetings
      Completes assigned actions
      Reviews agendas and documents
      Votes on motions
    Executive Staff
      Monitors committee activity
      Tracks deliverables
      Supports multiple committees
      Prepares materials
    External Liaison
      Represents partner organizations
      Attends as non-voting participant
      Reports back to their organization
```

#### Detailed Persona Descriptions

**Board Administrator (Sarah)**
- Responsible for governance across 15+ committees
- Needs visibility into all committee activities
- Manages annual board elections and term transitions
- Creates compliance reports for auditors
- Pain point: Currently maintains a complex spreadsheet with 500+ rows tracking all memberships

**Committee Chair (Michael)**
- Leads a standing committee with 12 members
- Runs monthly meetings with detailed agendas
- Assigns action items and follows up on completion
- Prepares annual reports on committee accomplishments
- Pain point: Spends 3+ hours per meeting on administrative tasks

**Committee Member (Jennifer)**
- Serves on 3 different committees
- Needs to track action items across all committees
- Reviews documents before meetings
- Pain point: Can't remember which committee assigned which task

### 1.4 Real-World Scenarios

#### Scenario 1: Standards Development Organization
A technology standards body has 40+ working groups developing specifications. Each working group:
- Has a chair, vice-chair, and 10-50 members from different companies
- Meets weekly or bi-weekly via video conference
- Tracks ballot votes on draft specifications
- Must maintain audit trails for ISO compliance

#### Scenario 2: Professional Association
A medical professional association has governance committees (Board, Finance, Nominating) plus program committees (Education, Certification, Ethics). They need:
- Annual term management aligned with fiscal year
- Officer succession planning
- Meeting minutes as official records
- Action item tracking across strategic initiatives

#### Scenario 3: Corporate Board Governance
A company's board of directors and advisory committees require:
- Strict access controls on sensitive materials
- Formal voting records
- Document retention policies
- Integration with board portal for materials

---

## 2. Conceptual Model

### 2.1 How Committees, Terms, Roles, and People Fit Together

```mermaid
graph TB
    subgraph Organization
        ORG[Organization]
    end

    subgraph "Committee Structure"
        TYPE[Committee Type]
        COM[Committee]
        TERM[Term]
    end

    subgraph "People & Roles"
        ROLE[Role Definition]
        USER[User/Person]
        MEM[Membership]
    end

    subgraph "Operations"
        MTG[Meeting]
        AI[Action Item]
        ART[Artifact]
    end

    ORG --> COM
    TYPE -->|categorizes| COM
    COM -->|has parent| COM
    COM -->|has| TERM

    ROLE -->|defines position| MEM
    USER -->|participates via| MEM
    COM -->|has| MEM
    TERM -->|scopes| MEM

    COM -->|schedules| MTG
    MTG -->|generates| AI
    AI -->|assigned to| USER
    MTG -->|links| ART
    COM -->|stores| ART

    style TYPE fill:#e1f5fe
    style ROLE fill:#e1f5fe
    style COM fill:#fff3e0
    style MTG fill:#e8f5e9
    style MEM fill:#fce4ec
```

### 2.2 The Membership Triangle

The core data model centers on the **Membership** entity, which connects three dimensions:

```mermaid
graph TD
    subgraph "WHO"
        USER[User]
    end

    subgraph "WHERE"
        COM[Committee]
    end

    subgraph "AS WHAT"
        ROLE[Role]
    end

    subgraph "WHEN"
        TERM[Term]
    end

    MEM{Membership}

    USER --> MEM
    COM --> MEM
    ROLE --> MEM
    TERM -.->|optional| MEM

    style MEM fill:#ffeb3b
```

**Key Design Decisions:**

1. **Roles are global, not per-committee**: A "Chair" role means the same thing across all committees. This enables consistent reporting and permission management.

2. **Terms are optional**: Some committees (like ad hoc groups) don't have formal terms. Memberships can exist without being tied to a term.

3. **Users can have multiple memberships**: A person can be Chair of one committee and a Member of another simultaneously.

4. **Historical tracking**: When a membership ends, we record the end date and reason, preserving the audit trail.

### 2.3 Committee Hierarchy

Committees can form hierarchies, enabling complex organizational structures:

```mermaid
graph TD
    BOARD[Board of Directors]

    EXEC[Executive Committee]
    FIN[Finance Committee]
    NOM[Nominating Committee]

    AUDIT[Audit Subcommittee]
    INVEST[Investment Subcommittee]

    BOARD --> EXEC
    BOARD --> FIN
    BOARD --> NOM

    FIN --> AUDIT
    FIN --> INVEST

    style BOARD fill:#1976d2,color:#fff
    style EXEC fill:#42a5f5,color:#fff
    style FIN fill:#42a5f5,color:#fff
    style NOM fill:#42a5f5,color:#fff
    style AUDIT fill:#90caf9
    style INVEST fill:#90caf9
```

### 2.4 Meeting-Centric Operations

Meetings are the operational heartbeat of committees. Everything flows through meetings:

```mermaid
graph LR
    subgraph "Before"
        A1[Create Meeting]
        A2[Build Agenda]
        A3[Link Documents]
    end

    subgraph "During"
        B1[Record Attendance]
        B2[Discuss Items]
        B3[Capture Notes]
        B4[Create Actions]
    end

    subgraph "After"
        C1[Finalize Minutes]
        C2[Track Actions]
        C3[Link Recording]
    end

    A1 --> A2 --> A3 --> B1 --> B2 --> B3 --> B4 --> C1 --> C2 --> C3

    style A1 fill:#e3f2fd
    style A2 fill:#e3f2fd
    style A3 fill:#e3f2fd
    style B1 fill:#fff3e0
    style B2 fill:#fff3e0
    style B3 fill:#fff3e0
    style B4 fill:#fff3e0
    style C1 fill:#e8f5e9
    style C2 fill:#e8f5e9
    style C3 fill:#e8f5e9
```

---

## 3. Entity Relationship Diagram

### 3.1 Complete ERD

```mermaid
erDiagram
    Type ||--o{ Committee : "categorizes"
    Committee ||--o{ Committee : "parent of"
    Committee ||--o{ Term : "has"
    Committee ||--o{ Membership : "has members"
    Committee ||--o{ Meeting : "schedules"
    Committee ||--o{ ActionItem : "tracks"
    Committee ||--o{ Artifact : "stores"

    Role ||--o{ Membership : "defines position"
    Term ||--o{ Membership : "scopes to period"
    User ||--o{ Membership : "participates via"

    Meeting ||--o{ AgendaItem : "contains"
    Meeting ||--o{ Attendance : "records"
    Meeting ||--o{ ActionItem : "generates"
    Meeting ||--o{ Artifact : "links"

    AgendaItem ||--o{ AgendaItem : "has sub-items"
    AgendaItem ||--o{ ActionItem : "spawns"
    AgendaItem ||--o{ Artifact : "references"
    User ||--o{ AgendaItem : "presents"

    ActionItem ||--o{ Artifact : "attaches"
    User ||--o{ ActionItem : "assigned to"
    User ||--o{ Attendance : "attended"
    User ||--o{ Artifact : "uploaded"

    Type {
        uniqueidentifier ID PK
        nvarchar Name UK
        nvarchar Description
        bit IsStandards
        int DefaultTermMonths
        nvarchar IconClass
    }

    Committee {
        uniqueidentifier ID PK
        nvarchar Name
        nvarchar Description
        uniqueidentifier TypeID FK
        uniqueidentifier ParentCommitteeID FK
        uniqueidentifier OrganizationID FK
        nvarchar CharterDocumentURL
        nvarchar MissionStatement
        nvarchar Status
        bit IsPublic
        date FormationDate
        date DissolutionDate
    }

    Term {
        uniqueidentifier ID PK
        uniqueidentifier CommitteeID FK
        nvarchar Name
        date StartDate
        date EndDate
        nvarchar Status
    }

    Role {
        uniqueidentifier ID PK
        nvarchar Name UK
        nvarchar Description
        bit IsOfficer
        bit IsVotingRole
        nvarchar DefaultPermissionsJSON
        int Sequence
    }

    User {
        uniqueidentifier ID PK
        nvarchar Name
        nvarchar Email
    }

    Membership {
        uniqueidentifier ID PK
        uniqueidentifier CommitteeID FK
        uniqueidentifier UserID FK
        uniqueidentifier RoleID FK
        uniqueidentifier TermID FK
        date StartDate
        date EndDate
        nvarchar Status
        nvarchar EndReason
        nvarchar Notes
    }

    Meeting {
        uniqueidentifier ID PK
        uniqueidentifier CommitteeID FK
        nvarchar Title
        nvarchar Description
        datetimeoffset StartDateTime
        datetimeoffset EndDateTime
        nvarchar TimeZone
        nvarchar LocationType
        nvarchar LocationText
        nvarchar VideoProvider
        nvarchar VideoMeetingID
        nvarchar VideoJoinURL
        nvarchar VideoRecordingURL
        nvarchar TranscriptURL
        nvarchar Status
        nvarchar CalendarEventID
    }

    AgendaItem {
        uniqueidentifier ID PK
        uniqueidentifier MeetingID FK
        uniqueidentifier ParentAgendaItemID FK
        int Sequence
        nvarchar Title
        nvarchar Description
        uniqueidentifier PresenterUserID FK
        int DurationMinutes
        nvarchar ItemType
        nvarchar RelatedDocumentURL
        nvarchar Status
        nvarchar Notes
    }

    Attendance {
        uniqueidentifier ID PK
        uniqueidentifier MeetingID FK
        uniqueidentifier UserID FK
        nvarchar AttendanceStatus
        datetimeoffset JoinedAt
        datetimeoffset LeftAt
        nvarchar Notes
    }

    ActionItem {
        uniqueidentifier ID PK
        uniqueidentifier CommitteeID FK
        uniqueidentifier MeetingID FK
        uniqueidentifier AgendaItemID FK
        nvarchar Title
        nvarchar Description
        uniqueidentifier AssignedToUserID FK
        uniqueidentifier AssignedByUserID FK
        date DueDate
        nvarchar Priority
        nvarchar Status
        datetimeoffset CompletedAt
        nvarchar CompletionNotes
    }

    Artifact {
        uniqueidentifier ID PK
        uniqueidentifier CommitteeID FK
        uniqueidentifier MeetingID FK
        uniqueidentifier AgendaItemID FK
        uniqueidentifier ActionItemID FK
        nvarchar Title
        nvarchar Description
        nvarchar Provider
        nvarchar ExternalID
        nvarchar URL
        nvarchar MimeType
        bigint FileSize
        uniqueidentifier UploadedByUserID FK
        nvarchar ArtifactType
    }
```

### 3.2 Entity Groupings

| Group | Entities | Purpose |
|-------|----------|---------|
| **Structure** | Type, Committee, Term | Define what committees exist and their lifecycle |
| **People** | Role, Membership, (User from MJ) | Connect people to committees with specific roles |
| **Operations** | Meeting, AgendaItem, Attendance | Run the day-to-day of committee work |
| **Outcomes** | ActionItem, Artifact | Track deliverables and documentation |

---

## 4. System Behavior Sequences

### 4.1 Setting Up a New Committee

```mermaid
sequenceDiagram
    autonumber
    actor Admin as Board Administrator
    participant UI as Committees App
    participant DB as Database

    Admin->>UI: Navigate to Committees
    Admin->>UI: Click "New Committee"
    UI->>DB: Load Committee Types
    DB-->>UI: Return types list

    Admin->>UI: Select type "Standing Committee"
    Admin->>UI: Enter name, description, mission
    Admin->>UI: Set parent committee (optional)
    Admin->>UI: Click "Create"

    UI->>DB: INSERT Committee
    DB-->>UI: Return new Committee ID

    UI->>Admin: Show "Create First Term?" prompt
    Admin->>UI: Click "Yes"
    Admin->>UI: Enter term name "2026-2027"
    Admin->>UI: Set start/end dates

    UI->>DB: INSERT Term
    DB-->>UI: Return new Term ID

    UI->>Admin: Show "Add Members?" prompt
    Admin->>UI: Click "Add Member"
    Admin->>UI: Search for user "Michael Johnson"
    Admin->>UI: Select role "Chair"
    Admin->>UI: Confirm membership

    UI->>DB: INSERT Membership
    DB-->>UI: Confirm created

    UI->>Admin: Show committee dashboard with 1 member
```

### 4.2 Running a Committee Meeting

```mermaid
sequenceDiagram
    autonumber
    actor Chair as Committee Chair
    actor Members as Committee Members
    participant UI as Committees App
    participant DB as Database
    participant Video as Zoom/Teams

    Note over Chair,DB: BEFORE THE MEETING

    Chair->>UI: Create new meeting
    Chair->>UI: Set date, time, duration
    Chair->>UI: Select "Virtual" + Zoom
    UI->>DB: INSERT Meeting (status: Draft)

    Chair->>UI: Add agenda items
    loop For each agenda item
        Chair->>UI: Enter title, description, duration
        Chair->>UI: Assign presenter
        Chair->>UI: Link related documents
        UI->>DB: INSERT AgendaItem
    end

    Chair->>UI: Publish meeting
    UI->>DB: UPDATE Meeting (status: Scheduled)
    UI->>DB: Create Attendance records (status: Expected)

    Note over Chair,Video: DURING THE MEETING

    Members->>Video: Join video call
    Chair->>UI: Mark meeting "In Progress"
    UI->>DB: UPDATE Meeting (status: InProgress)

    Chair->>UI: Record attendance
    loop For each attendee
        Chair->>UI: Mark present/absent/excused
        UI->>DB: UPDATE Attendance
    end

    loop For each agenda item
        Chair->>UI: Mark item discussed
        Chair->>UI: Capture discussion notes
        UI->>DB: UPDATE AgendaItem (notes, status)

        opt Action items identified
            Chair->>UI: Create action item
            Chair->>UI: Assign to member, set due date
            UI->>DB: INSERT ActionItem
        end
    end

    Note over Chair,DB: AFTER THE MEETING

    Chair->>UI: Mark meeting complete
    UI->>DB: UPDATE Meeting (status: Completed)

    Chair->>UI: Link recording URL
    UI->>DB: INSERT Artifact (type: Recording)

    Chair->>UI: Upload/link minutes document
    UI->>DB: INSERT Artifact (type: Minutes)
```

### 4.3 Action Item Lifecycle

```mermaid
sequenceDiagram
    autonumber
    actor Chair as Committee Chair
    actor Assignee as Assigned Member
    participant UI as Committees App
    participant DB as Database

    Chair->>UI: Create action item from meeting
    Chair->>UI: Set title, description
    Chair->>UI: Assign to Jennifer
    Chair->>UI: Set due date, priority
    UI->>DB: INSERT ActionItem (status: Open)

    Note over Assignee: Notification sent

    Assignee->>UI: View "My Action Items"
    UI->>DB: SELECT ActionItems WHERE AssignedTo = Jennifer
    DB-->>UI: Return action items list

    Assignee->>UI: Open action item
    Assignee->>UI: Mark "In Progress"
    UI->>DB: UPDATE ActionItem (status: InProgress)

    opt Blocked by dependency
        Assignee->>UI: Mark "Blocked"
        Assignee->>UI: Add note explaining blocker
        UI->>DB: UPDATE ActionItem (status: Blocked)

        Note over Chair: Chair notified of blocker

        Chair->>UI: Review blocked item
        Chair->>UI: Resolve blocker
        Assignee->>UI: Mark "In Progress" again
        UI->>DB: UPDATE ActionItem (status: InProgress)
    end

    Assignee->>UI: Complete work
    Assignee->>UI: Attach deliverable document
    UI->>DB: INSERT Artifact (linked to ActionItem)

    Assignee->>UI: Mark "Completed"
    Assignee->>UI: Add completion notes
    UI->>DB: UPDATE ActionItem (status: Completed, CompletedAt: now)

    Note over Chair: Chair sees completed item in dashboard
```

### 4.4 Annual Term Transition

```mermaid
sequenceDiagram
    autonumber
    actor Admin as Board Administrator
    participant UI as Committees App
    participant DB as Database

    Note over Admin,DB: END OF CURRENT TERM

    Admin->>UI: Navigate to committee
    Admin->>UI: View current term "2025-2026"
    Admin->>UI: Click "Create New Term"

    Admin->>UI: Enter "2026-2027"
    Admin->>UI: Set July 1, 2026 - June 30, 2027
    UI->>DB: INSERT Term (status: Upcoming)

    Admin->>UI: Click "Copy Members from Current Term"
    UI->>DB: SELECT Memberships WHERE TermID = current
    DB-->>UI: Return 12 memberships

    UI->>Admin: Show member list with checkboxes
    Admin->>UI: Uncheck 2 departing members
    Admin->>UI: Check 10 continuing members
    Admin->>UI: Click "Copy Selected"

    loop For each selected member
        UI->>DB: INSERT Membership (new TermID)
    end

    Admin->>UI: Add new members
    Admin->>UI: Search for "David Kim"
    Admin->>UI: Assign role "Member"
    UI->>DB: INSERT Membership

    Admin->>UI: Change leadership
    Admin->>UI: Find Michael's new membership
    Admin->>UI: Change role from "Chair" to "Past Chair"
    UI->>DB: UPDATE Membership (RoleID)

    Admin->>UI: Find Sarah's new membership
    Admin->>UI: Change role from "Vice Chair" to "Chair"
    UI->>DB: UPDATE Membership (RoleID)

    Note over Admin,DB: ON JULY 1, 2026

    Admin->>UI: Activate new term
    UI->>DB: UPDATE Term SET Status = 'Active' WHERE name = '2026-2027'
    UI->>DB: UPDATE Term SET Status = 'Completed' WHERE name = '2025-2026'
    UI->>DB: UPDATE Membership SET Status = 'Ended' WHERE TermID = old
```

---

## 5. State Diagrams

### 5.1 Committee Status Lifecycle

```mermaid
stateDiagram-v2
    [*] --> Pending: Created
    Pending --> Active: Approved/Activated
    Active --> Inactive: Temporarily Suspended
    Inactive --> Active: Reactivated
    Active --> Dissolved: Permanently Closed
    Pending --> Dissolved: Rejected/Cancelled
    Dissolved --> [*]

    note right of Active: Normal operating state
    note right of Inactive: Paused but not closed
    note right of Dissolved: Historical record only
```

### 5.2 Meeting Status Lifecycle

```mermaid
stateDiagram-v2
    [*] --> Draft: Created
    Draft --> Scheduled: Published
    Scheduled --> InProgress: Started
    Scheduled --> Postponed: Rescheduled
    Scheduled --> Cancelled: Called Off
    Postponed --> Scheduled: New Date Set
    InProgress --> Completed: Ended
    Completed --> [*]
    Cancelled --> [*]

    note right of Draft: Building agenda
    note right of Scheduled: Ready, invites sent
    note right of InProgress: Currently happening
```

### 5.3 Action Item Status Lifecycle

```mermaid
stateDiagram-v2
    [*] --> Open: Created
    Open --> InProgress: Work Started
    InProgress --> Blocked: Issue Found
    Blocked --> InProgress: Issue Resolved
    InProgress --> Completed: Work Done
    Open --> Cancelled: No Longer Needed
    InProgress --> Cancelled: No Longer Needed
    Blocked --> Cancelled: Abandoned
    Completed --> [*]
    Cancelled --> [*]

    note right of Open: Assigned, not started
    note right of InProgress: Actively being worked
    note right of Blocked: Waiting on dependency
```

### 5.4 Term Status Lifecycle

```mermaid
stateDiagram-v2
    [*] --> Upcoming: Created for Future
    Upcoming --> Active: Start Date Reached
    Active --> Completed: End Date Reached
    Completed --> [*]

    note right of Upcoming: Future term, planning roster
    note right of Active: Current operating term
    note right of Completed: Historical record
```

---

## 6. Schema Design

**Schema Name:** `Committees`

All entities use the `Committees` schema. The `__mj_CreatedAt` and `__mj_UpdatedAt` tracking columns are added automatically by MJ CodeGen.

### 6.1 Committee Structure Entities

```sql
CREATE SCHEMA Committees;
GO

-- Committee Types: Board, Standing, Ad Hoc, Workgroup, Standards WG
CREATE TABLE Committees.Type (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    IsStandards BIT NOT NULL DEFAULT 0,
    DefaultTermMonths INT,
    IconClass NVARCHAR(100),
    CONSTRAINT PK_Type PRIMARY KEY (ID),
    CONSTRAINT UQ_Type_Name UNIQUE (Name)
);

-- Core Committee entity
CREATE TABLE Committees.Committee (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    TypeID UNIQUEIDENTIFIER NOT NULL,
    ParentCommitteeID UNIQUEIDENTIFIER,
    OrganizationID UNIQUEIDENTIFIER,
    CharterDocumentURL NVARCHAR(1000),
    MissionStatement NVARCHAR(MAX),
    Status NVARCHAR(50) NOT NULL DEFAULT 'Active',
    IsPublic BIT NOT NULL DEFAULT 1,
    FormationDate DATE,
    DissolutionDate DATE,
    CONSTRAINT PK_Committee PRIMARY KEY (ID),
    CONSTRAINT FK_Committee_Type FOREIGN KEY (TypeID) REFERENCES Committees.Type(ID),
    CONSTRAINT FK_Committee_Parent FOREIGN KEY (ParentCommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT CK_Committee_Status CHECK (Status IN ('Active', 'Inactive', 'Pending', 'Dissolved'))
);

-- Committee Terms (annual or custom periods)
CREATE TABLE Committees.Term (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    CommitteeID UNIQUEIDENTIFIER NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Status NVARCHAR(50) NOT NULL DEFAULT 'Active',
    CONSTRAINT PK_Term PRIMARY KEY (ID),
    CONSTRAINT FK_Term_Committee FOREIGN KEY (CommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT CK_Term_Status CHECK (Status IN ('Active', 'Upcoming', 'Completed'))
);
```

### 6.2 Membership & Roles Entities

```sql
-- Role definitions (Chair, Vice Chair, Secretary, Member, Liaison, etc.)
CREATE TABLE Committees.Role (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    IsOfficer BIT NOT NULL DEFAULT 0,
    IsVotingRole BIT NOT NULL DEFAULT 1,
    DefaultPermissionsJSON NVARCHAR(MAX),
    Sequence INT NOT NULL DEFAULT 100,
    CONSTRAINT PK_Role PRIMARY KEY (ID),
    CONSTRAINT UQ_Role_Name UNIQUE (Name)
);

-- Committee membership (links to MJ User entity)
CREATE TABLE Committees.Membership (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    CommitteeID UNIQUEIDENTIFIER NOT NULL,
    UserID UNIQUEIDENTIFIER NOT NULL,
    RoleID UNIQUEIDENTIFIER NOT NULL,
    TermID UNIQUEIDENTIFIER,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Status NVARCHAR(50) NOT NULL DEFAULT 'Active',
    EndReason NVARCHAR(100),
    Notes NVARCHAR(MAX),
    CONSTRAINT PK_Membership PRIMARY KEY (ID),
    CONSTRAINT FK_Membership_Committee FOREIGN KEY (CommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT FK_Membership_User FOREIGN KEY (UserID) REFERENCES __mj.[User](ID),
    CONSTRAINT FK_Membership_Role FOREIGN KEY (RoleID) REFERENCES Committees.Role(ID),
    CONSTRAINT FK_Membership_Term FOREIGN KEY (TermID) REFERENCES Committees.Term(ID),
    CONSTRAINT CK_Membership_Status CHECK (Status IN ('Active', 'Pending', 'Ended', 'Suspended'))
);
```

### 6.3 Meeting Entities

```sql
-- Meeting records
CREATE TABLE Committees.Meeting (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    CommitteeID UNIQUEIDENTIFIER NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    StartDateTime DATETIMEOFFSET NOT NULL,
    EndDateTime DATETIMEOFFSET,
    TimeZone NVARCHAR(50) NOT NULL DEFAULT 'America/New_York',
    LocationType NVARCHAR(50) NOT NULL DEFAULT 'Virtual',
    LocationText NVARCHAR(500),
    VideoProvider NVARCHAR(50),
    VideoMeetingID NVARCHAR(255),
    VideoJoinURL NVARCHAR(1000),
    VideoRecordingURL NVARCHAR(1000),
    TranscriptURL NVARCHAR(1000),
    Status NVARCHAR(50) NOT NULL DEFAULT 'Scheduled',
    CalendarEventID NVARCHAR(255),
    CONSTRAINT PK_Meeting PRIMARY KEY (ID),
    CONSTRAINT FK_Meeting_Committee FOREIGN KEY (CommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT CK_Meeting_Status CHECK (Status IN ('Draft', 'Scheduled', 'InProgress', 'Completed', 'Cancelled', 'Postponed')),
    CONSTRAINT CK_Meeting_LocationType CHECK (LocationType IN ('Virtual', 'InPerson', 'Hybrid'))
);

-- Meeting agenda items
CREATE TABLE Committees.AgendaItem (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    MeetingID UNIQUEIDENTIFIER NOT NULL,
    ParentAgendaItemID UNIQUEIDENTIFIER,
    Sequence INT NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    PresenterUserID UNIQUEIDENTIFIER,
    DurationMinutes INT,
    ItemType NVARCHAR(50) NOT NULL DEFAULT 'Discussion',
    RelatedDocumentURL NVARCHAR(1000),
    Status NVARCHAR(50) NOT NULL DEFAULT 'Pending',
    Notes NVARCHAR(MAX),
    CONSTRAINT PK_AgendaItem PRIMARY KEY (ID),
    CONSTRAINT FK_AgendaItem_Meeting FOREIGN KEY (MeetingID) REFERENCES Committees.Meeting(ID),
    CONSTRAINT FK_AgendaItem_Parent FOREIGN KEY (ParentAgendaItemID) REFERENCES Committees.AgendaItem(ID),
    CONSTRAINT FK_AgendaItem_Presenter FOREIGN KEY (PresenterUserID) REFERENCES __mj.[User](ID),
    CONSTRAINT CK_AgendaItem_Type CHECK (ItemType IN ('Information', 'Discussion', 'Action', 'Vote', 'Report', 'Other')),
    CONSTRAINT CK_AgendaItem_Status CHECK (Status IN ('Pending', 'Discussed', 'Tabled', 'Completed', 'Skipped'))
);

-- Meeting attendance
CREATE TABLE Committees.Attendance (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    MeetingID UNIQUEIDENTIFIER NOT NULL,
    UserID UNIQUEIDENTIFIER NOT NULL,
    AttendanceStatus NVARCHAR(50) NOT NULL DEFAULT 'Expected',
    JoinedAt DATETIMEOFFSET,
    LeftAt DATETIMEOFFSET,
    Notes NVARCHAR(500),
    CONSTRAINT PK_Attendance PRIMARY KEY (ID),
    CONSTRAINT FK_Attendance_Meeting FOREIGN KEY (MeetingID) REFERENCES Committees.Meeting(ID),
    CONSTRAINT FK_Attendance_User FOREIGN KEY (UserID) REFERENCES __mj.[User](ID),
    CONSTRAINT CK_Attendance_Status CHECK (AttendanceStatus IN ('Expected', 'Present', 'Absent', 'Excused', 'Partial')),
    CONSTRAINT UQ_Attendance UNIQUE (MeetingID, UserID)
);
```

### 6.4 Action Items & Artifacts

```sql
-- Action items (tasks assigned from meetings or committees)
CREATE TABLE Committees.ActionItem (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    CommitteeID UNIQUEIDENTIFIER NOT NULL,
    MeetingID UNIQUEIDENTIFIER,
    AgendaItemID UNIQUEIDENTIFIER,
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    AssignedToUserID UNIQUEIDENTIFIER NOT NULL,
    AssignedByUserID UNIQUEIDENTIFIER,
    DueDate DATE,
    Priority NVARCHAR(20) NOT NULL DEFAULT 'Medium',
    Status NVARCHAR(50) NOT NULL DEFAULT 'Open',
    CompletedAt DATETIMEOFFSET,
    CompletionNotes NVARCHAR(MAX),
    CONSTRAINT PK_ActionItem PRIMARY KEY (ID),
    CONSTRAINT FK_ActionItem_Committee FOREIGN KEY (CommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT FK_ActionItem_Meeting FOREIGN KEY (MeetingID) REFERENCES Committees.Meeting(ID),
    CONSTRAINT FK_ActionItem_AgendaItem FOREIGN KEY (AgendaItemID) REFERENCES Committees.AgendaItem(ID),
    CONSTRAINT FK_ActionItem_AssignedTo FOREIGN KEY (AssignedToUserID) REFERENCES __mj.[User](ID),
    CONSTRAINT FK_ActionItem_AssignedBy FOREIGN KEY (AssignedByUserID) REFERENCES __mj.[User](ID),
    CONSTRAINT CK_ActionItem_Priority CHECK (Priority IN ('Low', 'Medium', 'High', 'Critical')),
    CONSTRAINT CK_ActionItem_Status CHECK (Status IN ('Open', 'InProgress', 'Blocked', 'Completed', 'Cancelled'))
);

-- External artifact links (documents, files, etc.)
CREATE TABLE Committees.Artifact (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(),
    CommitteeID UNIQUEIDENTIFIER,
    MeetingID UNIQUEIDENTIFIER,
    AgendaItemID UNIQUEIDENTIFIER,
    ActionItemID UNIQUEIDENTIFIER,
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    Provider NVARCHAR(50) NOT NULL,
    ExternalID NVARCHAR(500),
    URL NVARCHAR(2000) NOT NULL,
    MimeType NVARCHAR(100),
    FileSize BIGINT,
    UploadedByUserID UNIQUEIDENTIFIER,
    ArtifactType NVARCHAR(50) NOT NULL DEFAULT 'Document',
    CONSTRAINT PK_Artifact PRIMARY KEY (ID),
    CONSTRAINT FK_Artifact_Committee FOREIGN KEY (CommitteeID) REFERENCES Committees.Committee(ID),
    CONSTRAINT FK_Artifact_Meeting FOREIGN KEY (MeetingID) REFERENCES Committees.Meeting(ID),
    CONSTRAINT FK_Artifact_AgendaItem FOREIGN KEY (AgendaItemID) REFERENCES Committees.AgendaItem(ID),
    CONSTRAINT FK_Artifact_ActionItem FOREIGN KEY (ActionItemID) REFERENCES Committees.ActionItem(ID),
    CONSTRAINT FK_Artifact_UploadedBy FOREIGN KEY (UploadedByUserID) REFERENCES __mj.[User](ID),
    CONSTRAINT CK_Artifact_Provider CHECK (Provider IN ('GoogleDrive', 'SharePoint', 'Box', 'OneDrive', 'Dropbox', 'URL')),
    CONSTRAINT CK_Artifact_Type CHECK (ArtifactType IN ('Document', 'Spreadsheet', 'Presentation', 'Minutes', 'Agenda', 'Recording', 'Transcript', 'Image', 'Other'))
);
```

---

## 7. Core Entity Summary

| Entity Name | Table | Description |
|-------------|-------|-------------|
| Types | Committees.Type | Board, Standing, Ad Hoc, Workgroup |
| Committees | Committees.Committee | Core committee records |
| Terms | Committees.Term | Annual/custom term periods |
| Roles | Committees.Role | Chair, Vice Chair, Member, etc. |
| Memberships | Committees.Membership | User-committee assignments |
| Meetings | Committees.Meeting | Meeting records |
| Agenda Items | Committees.AgendaItem | Structured agendas |
| Attendance | Committees.Attendance | Who attended |
| Action Items | Committees.ActionItem | Tasks and assignments |
| Artifacts | Committees.Artifact | Document/file links |

---

## 8. Design Principles

- **Metadata-driven**: All configuration in the database, not code
- **Link-first integration**: References to external systems (Zoom, Google Docs, SharePoint), not recreation
- **Entity-centric**: Leverages MJ's canonical entities (Users, Organizations) rather than duplicating
- **Open-core**: Free core is fully functional; premium adds workflow automation and AI (future phases)

---

## 9. Migration Files

Single migration file: `migrations/V202601220001__Committees_Schema_and_Tables.sql`

Contains:
1. `CREATE SCHEMA Committees`
2. 10 `CREATE TABLE` statements
3. Extended properties via `sp_addextendedproperty` for:
   - Schema description
   - Table descriptions
   - Column descriptions (excluding ID and FK columns)
4. Seed data for Types and Roles

**Note:** `__mj_CreatedAt` and `__mj_UpdatedAt` columns are added automatically by MJ CodeGen.

---

## 10. Seed Data

```sql
-- Default Committee Types
INSERT INTO Committees.Type (Name, Description, IsStandards, DefaultTermMonths, IconClass) VALUES
('Board of Directors', 'Governing board with fiduciary responsibility', 0, 12, 'fa-solid fa-landmark'),
('Standing Committee', 'Permanent committee with ongoing responsibilities', 0, 12, 'fa-solid fa-users'),
('Ad Hoc Committee', 'Temporary committee for specific purpose', 0, NULL, 'fa-solid fa-clock'),
('Workgroup', 'Task-focused group with defined deliverables', 0, NULL, 'fa-solid fa-briefcase'),
('Standards Working Group', 'Committee developing standards or specifications', 1, NULL, 'fa-solid fa-file-contract');

-- Default Roles
INSERT INTO Committees.Role (Name, Description, IsOfficer, IsVotingRole, Sequence) VALUES
('Chair', 'Leads the committee and runs meetings', 1, 1, 10),
('Vice Chair', 'Supports chair and leads in their absence', 1, 1, 20),
('Secretary', 'Records minutes and manages documentation', 1, 1, 30),
('Member', 'Voting member of the committee', 0, 1, 100),
('Non-Voting Member', 'Participates but does not vote', 0, 0, 110),
('Liaison', 'Represents another group or organization', 0, 0, 120),
('Advisor', 'Provides expertise without membership', 0, 0, 130);
```

---

## 11. Phase 1 Deliverables

1. Database migration with core entities (10 tables)
2. Extended properties migration with descriptions
3. `@memberjunction/committees-core` package
4. `@memberjunction/ng-committees` Angular components
5. Application metadata for MJ Explorer
6. Basic CRUD for committees, memberships, meetings
7. Document linking (URL-based)

---

## 12. Future Phases

| Phase | Focus | Key Features |
|-------|-------|--------------|
| **Phase 2** | Enhanced Core | Committee dashboard, meeting templates, email notifications |
| **Phase 3** | Premium - Standards | Workflow stages, balloting/voting, calendar integration |
| **Phase 4** | Premium - AI | Transcript processing, AI-generated minutes, analytics |

---

*Document created for Blue Cypress / MemberJunction architecture planning.*
