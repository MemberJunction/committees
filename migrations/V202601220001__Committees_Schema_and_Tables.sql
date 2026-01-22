-- Committees App Schema and Tables
-- Phase 1: Core Entities

CREATE SCHEMA Committees;
GO

---------------------------------------------------------------------------
-- Committee Types: Board, Standing, Ad Hoc, Workgroup, Standards WG
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Core Committee entity
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Committee Terms (annual or custom periods)
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Role definitions (Chair, Vice Chair, Secretary, Member, Liaison, etc.)
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Committee membership (links to MJ User entity)
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Meeting records
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Meeting agenda items
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Meeting attendance
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- Action items (tasks assigned from meetings or committees)
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- External artifact links (documents, files, etc.)
---------------------------------------------------------------------------
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
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Schema
---------------------------------------------------------------------------
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Committee management app for governance, meetings, and action tracking',
    @level0type = N'SCHEMA', @level0name = N'Committees';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Type table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Categories of committees such as Board, Standing, Ad Hoc, Workgroup', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display name for the committee type', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type', @level2type = N'COLUMN', @level2name = N'Name';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description of this committee type', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Whether this type is for standards development committees', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type', @level2type = N'COLUMN', @level2name = N'IsStandards';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default term length in months for committees of this type', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type', @level2type = N'COLUMN', @level2name = N'DefaultTermMonths';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Font Awesome icon class for UI display', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Type', @level2type = N'COLUMN', @level2name = N'IconClass';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Committee table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Core committee records with hierarchy support', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Official name of the committee', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'Name';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description of the committee purpose and scope', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL to the committee charter document', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'CharterDocumentURL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Brief statement of the committee mission', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'MissionStatement';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Active, Inactive, Pending, or Dissolved', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'Status';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Whether the committee is visible to all users', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'IsPublic';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the committee was formed', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'FormationDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the committee was dissolved, if applicable', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Committee', @level2type = N'COLUMN', @level2name = N'DissolutionDate';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Term table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Time periods for committee membership cycles', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Term';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display name for the term, e.g. 2025-2026', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Term', @level2type = N'COLUMN', @level2name = N'Name';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Start date of the term', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Term', @level2type = N'COLUMN', @level2name = N'StartDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'End date of the term', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Term', @level2type = N'COLUMN', @level2name = N'EndDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Active, Upcoming, or Completed', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Term', @level2type = N'COLUMN', @level2name = N'Status';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Role table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Roles that members can hold on committees', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display name for the role', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'Name';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description of role responsibilities', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Whether this is an officer role like Chair or Secretary', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'IsOfficer';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Whether members in this role can vote', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'IsVotingRole';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'JSON object defining default permissions for this role', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'DefaultPermissionsJSON';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display order for sorting roles', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Role', @level2type = N'COLUMN', @level2name = N'Sequence';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Membership table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'User assignments to committees with roles and terms', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the membership started', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership', @level2type = N'COLUMN', @level2name = N'StartDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the membership ended, if applicable', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership', @level2type = N'COLUMN', @level2name = N'EndDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Active, Pending, Ended, or Suspended', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership', @level2type = N'COLUMN', @level2name = N'Status';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Reason the membership ended: Term ended, Resigned, Removed, etc.', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership', @level2type = N'COLUMN', @level2name = N'EndReason';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Additional notes about this membership', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Membership', @level2type = N'COLUMN', @level2name = N'Notes';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Meeting table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Committee meeting records with scheduling and video conferencing info', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Title of the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'Title';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description or purpose of the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scheduled start date and time with timezone offset', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'StartDateTime';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scheduled end date and time with timezone offset', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'EndDateTime';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'IANA timezone identifier for the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'TimeZone';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Meeting format: Virtual, InPerson, or Hybrid', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'LocationType';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Physical address or room name for in-person meetings', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'LocationText';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Video conferencing provider: Zoom, Teams, Meet, etc.', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'VideoProvider';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'External meeting ID from the video provider', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'VideoMeetingID';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL to join the video meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'VideoJoinURL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL to the meeting recording after completion', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'VideoRecordingURL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL to the meeting transcript', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'TranscriptURL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Draft, Scheduled, InProgress, Completed, Cancelled, Postponed', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'Status';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'External calendar event ID for sync purposes', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Meeting', @level2type = N'COLUMN', @level2name = N'CalendarEventID';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: AgendaItem table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Structured agenda items for meetings with hierarchy support', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display order within the meeting agenda', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'Sequence';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Title of the agenda item', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'Title';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description of the agenda item', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Estimated duration in minutes', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'DurationMinutes';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Type of item: Information, Discussion, Action, Vote, Report, Other', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'ItemType';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL to related document for this item', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'RelatedDocumentURL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Pending, Discussed, Tabled, Completed, Skipped', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'Status';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discussion notes and outcomes captured during the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'AgendaItem', @level2type = N'COLUMN', @level2name = N'Notes';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Attendance table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Meeting attendance records for committee members', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Attendance';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Attendance status: Expected, Present, Absent, Excused, Partial', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Attendance', @level2type = N'COLUMN', @level2name = N'AttendanceStatus';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Timestamp when the attendee joined the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Attendance', @level2type = N'COLUMN', @level2name = N'JoinedAt';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Timestamp when the attendee left the meeting', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Attendance', @level2type = N'COLUMN', @level2name = N'LeftAt';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Additional notes about attendance', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Attendance', @level2type = N'COLUMN', @level2name = N'Notes';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: ActionItem table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tasks and action items assigned from committees or meetings', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Title of the action item', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'Title';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed description of what needs to be done', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Due date for completion', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'DueDate';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Priority level: Low, Medium, High, Critical', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'Priority';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current status: Open, InProgress, Blocked, Completed, Cancelled', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'Status';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Timestamp when the action item was completed', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'CompletedAt';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Notes about how the item was completed', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'ActionItem', @level2type = N'COLUMN', @level2name = N'CompletionNotes';
GO

---------------------------------------------------------------------------
-- EXTENDED PROPERTIES: Artifact table
---------------------------------------------------------------------------
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Links to external documents and files from various providers', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Display title for the artifact', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'Title';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Description of the artifact contents', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'Description';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Storage provider: GoogleDrive, SharePoint, Box, OneDrive, Dropbox, URL', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'Provider';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Provider-specific document or file ID', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'ExternalID';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Direct URL to access the artifact', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'URL';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'MIME type of the file', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'MimeType';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'File size in bytes', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'FileSize';
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Type of artifact: Document, Spreadsheet, Presentation, Minutes, Agenda, Recording, Transcript, Image, Other', @level0type = N'SCHEMA', @level0name = N'Committees', @level1type = N'TABLE', @level1name = N'Artifact', @level2type = N'COLUMN', @level2name = N'ArtifactType';
GO

---------------------------------------------------------------------------
-- SEED DATA: Default Committee Types
---------------------------------------------------------------------------
INSERT INTO Committees.Type (Name, Description, IsStandards, DefaultTermMonths, IconClass) VALUES
('Board of Directors', 'Governing board with fiduciary responsibility', 0, 12, 'fa-solid fa-landmark'),
('Standing Committee', 'Permanent committee with ongoing responsibilities', 0, 12, 'fa-solid fa-users'),
('Ad Hoc Committee', 'Temporary committee for specific purpose', 0, NULL, 'fa-solid fa-clock'),
('Workgroup', 'Task-focused group with defined deliverables', 0, NULL, 'fa-solid fa-briefcase'),
('Standards Working Group', 'Committee developing standards or specifications', 1, NULL, 'fa-solid fa-file-contract');
GO

---------------------------------------------------------------------------
-- SEED DATA: Default Roles
---------------------------------------------------------------------------
INSERT INTO Committees.Role (Name, Description, IsOfficer, IsVotingRole, Sequence) VALUES
('Chair', 'Leads the committee and runs meetings', 1, 1, 10),
('Vice Chair', 'Supports chair and leads in their absence', 1, 1, 20),
('Secretary', 'Records minutes and manages documentation', 1, 1, 30),
('Member', 'Voting member of the committee', 0, 1, 100),
('Non-Voting Member', 'Participates but does not vote', 0, 0, 110),
('Liaison', 'Represents another group or organization', 0, 0, 120),
('Advisor', 'Provides expertise without membership', 0, 0, 130);
GO
