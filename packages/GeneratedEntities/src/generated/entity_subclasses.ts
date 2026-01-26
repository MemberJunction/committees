import { BaseEntity, EntitySaveOptions, EntityDeleteOptions, CompositeKey, ValidationResult, ValidationErrorInfo, ValidationErrorType, Metadata, ProviderType, DatabaseProviderBase } from "@memberjunction/core";
import { RegisterClass } from "@memberjunction/global";
import { z } from "zod";

export const loadModule = () => {
  // no-op, only used to ensure this file is a valid module and to allow easy loading
}

     
 
/**
 * zod schema definition for the entity Action Items
 */
export const ActionItemSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    CommitteeID: z.string().describe(`
        * * Field Name: CommitteeID
        * * Display Name: Committee
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    MeetingID: z.string().nullable().describe(`
        * * Field Name: MeetingID
        * * Display Name: Meeting
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)`),
    AgendaItemID: z.string().nullable().describe(`
        * * Field Name: AgendaItemID
        * * Display Name: Agenda Item
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)`),
    Title: z.string().describe(`
        * * Field Name: Title
        * * Display Name: Title
        * * SQL Data Type: nvarchar(255)
        * * Description: Title of the action item`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description of what needs to be done`),
    AssignedToUserID: z.string().describe(`
        * * Field Name: AssignedToUserID
        * * Display Name: Assigned To
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    AssignedByUserID: z.string().nullable().describe(`
        * * Field Name: AssignedByUserID
        * * Display Name: Assigned By
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    DueDate: z.date().nullable().describe(`
        * * Field Name: DueDate
        * * Display Name: Due Date
        * * SQL Data Type: date
        * * Description: Due date for completion`),
    Priority: z.union([z.literal('Critical'), z.literal('High'), z.literal('Low'), z.literal('Medium')]).describe(`
        * * Field Name: Priority
        * * Display Name: Priority
        * * SQL Data Type: nvarchar(20)
        * * Default Value: Medium
    * * Value List Type: List
    * * Possible Values 
    *   * Critical
    *   * High
    *   * Low
    *   * Medium
        * * Description: Priority level: Low, Medium, High, Critical`),
    Status: z.union([z.literal('Blocked'), z.literal('Cancelled'), z.literal('Completed'), z.literal('InProgress'), z.literal('Open')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Open
    * * Value List Type: List
    * * Possible Values 
    *   * Blocked
    *   * Cancelled
    *   * Completed
    *   * InProgress
    *   * Open
        * * Description: Current status: Open, InProgress, Blocked, Completed, Cancelled`),
    CompletedAt: z.date().nullable().describe(`
        * * Field Name: CompletedAt
        * * Display Name: Completed At
        * * SQL Data Type: datetimeoffset
        * * Description: Timestamp when the action item was completed`),
    CompletionNotes: z.string().nullable().describe(`
        * * Field Name: CompletionNotes
        * * Display Name: Completion Notes
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Notes about how the item was completed`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Committee: z.string().describe(`
        * * Field Name: Committee
        * * Display Name: Committee
        * * SQL Data Type: nvarchar(255)`),
    Meeting: z.string().nullable().describe(`
        * * Field Name: Meeting
        * * Display Name: Meeting
        * * SQL Data Type: nvarchar(255)`),
    AssignedToUser: z.string().describe(`
        * * Field Name: AssignedToUser
        * * Display Name: Assigned To User
        * * SQL Data Type: nvarchar(100)`),
    AssignedByUser: z.string().nullable().describe(`
        * * Field Name: AssignedByUser
        * * Display Name: Assigned By User
        * * SQL Data Type: nvarchar(100)`),
});

export type ActionItemEntityType = z.infer<typeof ActionItemSchema>;

/**
 * zod schema definition for the entity Agenda Items
 */
export const AgendaItemSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    MeetingID: z.string().describe(`
        * * Field Name: MeetingID
        * * Display Name: Meeting
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)`),
    ParentAgendaItemID: z.string().nullable().describe(`
        * * Field Name: ParentAgendaItemID
        * * Display Name: Parent Agenda Item
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)`),
    Sequence: z.number().describe(`
        * * Field Name: Sequence
        * * Display Name: Sequence
        * * SQL Data Type: int
        * * Description: Display order within the meeting agenda`),
    Title: z.string().describe(`
        * * Field Name: Title
        * * Display Name: Title
        * * SQL Data Type: nvarchar(255)
        * * Description: Title of the agenda item`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description of the agenda item`),
    PresenterUserID: z.string().nullable().describe(`
        * * Field Name: PresenterUserID
        * * Display Name: Presenter
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    DurationMinutes: z.number().nullable().describe(`
        * * Field Name: DurationMinutes
        * * Display Name: Duration (Minutes)
        * * SQL Data Type: int
        * * Description: Estimated duration in minutes`),
    ItemType: z.union([z.literal('Action'), z.literal('Discussion'), z.literal('Information'), z.literal('Other'), z.literal('Report'), z.literal('Vote')]).describe(`
        * * Field Name: ItemType
        * * Display Name: Item Type
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Discussion
    * * Value List Type: List
    * * Possible Values 
    *   * Action
    *   * Discussion
    *   * Information
    *   * Other
    *   * Report
    *   * Vote
        * * Description: Type of item: Information, Discussion, Action, Vote, Report, Other`),
    RelatedDocumentURL: z.string().nullable().describe(`
        * * Field Name: RelatedDocumentURL
        * * Display Name: Related Document URL
        * * SQL Data Type: nvarchar(1000)
        * * Description: URL to related document for this item`),
    Status: z.union([z.literal('Completed'), z.literal('Discussed'), z.literal('Pending'), z.literal('Skipped'), z.literal('Tabled')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Pending
    * * Value List Type: List
    * * Possible Values 
    *   * Completed
    *   * Discussed
    *   * Pending
    *   * Skipped
    *   * Tabled
        * * Description: Current status: Pending, Discussed, Tabled, Completed, Skipped`),
    Notes: z.string().nullable().describe(`
        * * Field Name: Notes
        * * Display Name: Notes
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Discussion notes and outcomes captured during the meeting`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Meeting: z.string().describe(`
        * * Field Name: Meeting
        * * Display Name: Meeting Name
        * * SQL Data Type: nvarchar(255)`),
    PresenterUser: z.string().nullable().describe(`
        * * Field Name: PresenterUser
        * * Display Name: Presenter User
        * * SQL Data Type: nvarchar(100)`),
    RootParentAgendaItemID: z.string().nullable().describe(`
        * * Field Name: RootParentAgendaItemID
        * * Display Name: Root Parent Agenda Item
        * * SQL Data Type: uniqueidentifier`),
});

export type AgendaItemEntityType = z.infer<typeof AgendaItemSchema>;

/**
 * zod schema definition for the entity Artifacts
 */
export const ArtifactSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    CommitteeID: z.string().nullable().describe(`
        * * Field Name: CommitteeID
        * * Display Name: Committee
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    MeetingID: z.string().nullable().describe(`
        * * Field Name: MeetingID
        * * Display Name: Meeting
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)`),
    AgendaItemID: z.string().nullable().describe(`
        * * Field Name: AgendaItemID
        * * Display Name: Agenda Item
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)`),
    ActionItemID: z.string().nullable().describe(`
        * * Field Name: ActionItemID
        * * Display Name: Action Item
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Action Items (vwActionItems.ID)`),
    Title: z.string().describe(`
        * * Field Name: Title
        * * Display Name: Title
        * * SQL Data Type: nvarchar(255)
        * * Description: Display title for the artifact`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Description of the artifact contents`),
    Provider: z.union([z.literal('Box'), z.literal('Dropbox'), z.literal('GoogleDrive'), z.literal('OneDrive'), z.literal('SharePoint'), z.literal('URL')]).describe(`
        * * Field Name: Provider
        * * Display Name: Provider
        * * SQL Data Type: nvarchar(50)
    * * Value List Type: List
    * * Possible Values 
    *   * Box
    *   * Dropbox
    *   * GoogleDrive
    *   * OneDrive
    *   * SharePoint
    *   * URL
        * * Description: Storage provider: GoogleDrive, SharePoint, Box, OneDrive, Dropbox, URL`),
    ExternalID: z.string().nullable().describe(`
        * * Field Name: ExternalID
        * * Display Name: External ID
        * * SQL Data Type: nvarchar(500)
        * * Description: Provider-specific document or file ID`),
    URL: z.string().describe(`
        * * Field Name: URL
        * * Display Name: URL
        * * SQL Data Type: nvarchar(2000)
        * * Description: Direct URL to access the artifact`),
    MimeType: z.string().nullable().describe(`
        * * Field Name: MimeType
        * * Display Name: MIME Type
        * * SQL Data Type: nvarchar(100)
        * * Description: MIME type of the file`),
    FileSize: z.number().nullable().describe(`
        * * Field Name: FileSize
        * * Display Name: File Size
        * * SQL Data Type: bigint
        * * Description: File size in bytes`),
    UploadedByUserID: z.string().nullable().describe(`
        * * Field Name: UploadedByUserID
        * * Display Name: Uploaded By User
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    ArtifactType: z.union([z.literal('Agenda'), z.literal('Document'), z.literal('Image'), z.literal('Minutes'), z.literal('Other'), z.literal('Presentation'), z.literal('Recording'), z.literal('Spreadsheet'), z.literal('Transcript')]).describe(`
        * * Field Name: ArtifactType
        * * Display Name: Artifact Type
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Document
    * * Value List Type: List
    * * Possible Values 
    *   * Agenda
    *   * Document
    *   * Image
    *   * Minutes
    *   * Other
    *   * Presentation
    *   * Recording
    *   * Spreadsheet
    *   * Transcript
        * * Description: Type of artifact: Document, Spreadsheet, Presentation, Minutes, Agenda, Recording, Transcript, Image, Other`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Committee: z.string().nullable().describe(`
        * * Field Name: Committee
        * * Display Name: Committee
        * * SQL Data Type: nvarchar(255)`),
    Meeting: z.string().nullable().describe(`
        * * Field Name: Meeting
        * * Display Name: Meeting
        * * SQL Data Type: nvarchar(255)`),
    ActionItem: z.string().nullable().describe(`
        * * Field Name: ActionItem
        * * Display Name: Action Item
        * * SQL Data Type: nvarchar(255)`),
    UploadedByUser: z.string().nullable().describe(`
        * * Field Name: UploadedByUser
        * * Display Name: Uploaded By User
        * * SQL Data Type: nvarchar(100)`),
});

export type ArtifactEntityType = z.infer<typeof ArtifactSchema>;

/**
 * zod schema definition for the entity Attendances
 */
export const AttendanceSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    MeetingID: z.string().describe(`
        * * Field Name: MeetingID
        * * Display Name: Meeting
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)`),
    UserID: z.string().describe(`
        * * Field Name: UserID
        * * Display Name: User
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    AttendanceStatus: z.union([z.literal('Absent'), z.literal('Excused'), z.literal('Expected'), z.literal('Partial'), z.literal('Present')]).describe(`
        * * Field Name: AttendanceStatus
        * * Display Name: Attendance Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Expected
    * * Value List Type: List
    * * Possible Values 
    *   * Absent
    *   * Excused
    *   * Expected
    *   * Partial
    *   * Present
        * * Description: Attendance status: Expected, Present, Absent, Excused, Partial`),
    JoinedAt: z.date().nullable().describe(`
        * * Field Name: JoinedAt
        * * Display Name: Joined At
        * * SQL Data Type: datetimeoffset
        * * Description: Timestamp when the attendee joined the meeting`),
    LeftAt: z.date().nullable().describe(`
        * * Field Name: LeftAt
        * * Display Name: Left At
        * * SQL Data Type: datetimeoffset
        * * Description: Timestamp when the attendee left the meeting`),
    Notes: z.string().nullable().describe(`
        * * Field Name: Notes
        * * Display Name: Notes
        * * SQL Data Type: nvarchar(500)
        * * Description: Additional notes about attendance`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Meeting: z.string().describe(`
        * * Field Name: Meeting
        * * Display Name: Meeting
        * * SQL Data Type: nvarchar(255)`),
    User: z.string().describe(`
        * * Field Name: User
        * * Display Name: User
        * * SQL Data Type: nvarchar(100)`),
});

export type AttendanceEntityType = z.infer<typeof AttendanceSchema>;

/**
 * zod schema definition for the entity Committees
 */
export const CommitteeSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    Name: z.string().describe(`
        * * Field Name: Name
        * * Display Name: Name
        * * SQL Data Type: nvarchar(255)
        * * Description: Official name of the committee`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description of the committee purpose and scope`),
    TypeID: z.string().describe(`
        * * Field Name: TypeID
        * * Display Name: Type
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Types (vwTypes.ID)`),
    ParentCommitteeID: z.string().nullable().describe(`
        * * Field Name: ParentCommitteeID
        * * Display Name: Parent Committee
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    OrganizationID: z.string().nullable().describe(`
        * * Field Name: OrganizationID
        * * Display Name: Organization
        * * SQL Data Type: uniqueidentifier`),
    CharterDocumentURL: z.string().nullable().describe(`
        * * Field Name: CharterDocumentURL
        * * Display Name: Charter Document URL
        * * SQL Data Type: nvarchar(1000)
        * * Description: URL to the committee charter document`),
    MissionStatement: z.string().nullable().describe(`
        * * Field Name: MissionStatement
        * * Display Name: Mission Statement
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Brief statement of the committee mission`),
    Status: z.union([z.literal('Active'), z.literal('Dissolved'), z.literal('Inactive'), z.literal('Pending')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Dissolved
    *   * Inactive
    *   * Pending
        * * Description: Current status: Active, Inactive, Pending, or Dissolved`),
    IsPublic: z.boolean().describe(`
        * * Field Name: IsPublic
        * * Display Name: Public
        * * SQL Data Type: bit
        * * Default Value: 1
        * * Description: Whether the committee is visible to all users`),
    FormationDate: z.date().nullable().describe(`
        * * Field Name: FormationDate
        * * Display Name: Formation Date
        * * SQL Data Type: date
        * * Description: Date the committee was formed`),
    DissolutionDate: z.date().nullable().describe(`
        * * Field Name: DissolutionDate
        * * Display Name: Dissolution Date
        * * SQL Data Type: date
        * * Description: Date the committee was dissolved, if applicable`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Type: z.string().describe(`
        * * Field Name: Type
        * * Display Name: Type
        * * SQL Data Type: nvarchar(100)`),
    ParentCommittee: z.string().nullable().describe(`
        * * Field Name: ParentCommittee
        * * Display Name: Parent Committee Name
        * * SQL Data Type: nvarchar(255)`),
    RootParentCommitteeID: z.string().nullable().describe(`
        * * Field Name: RootParentCommitteeID
        * * Display Name: Root Parent Committee
        * * SQL Data Type: uniqueidentifier`),
});

export type CommitteeEntityType = z.infer<typeof CommitteeSchema>;

/**
 * zod schema definition for the entity Meetings
 */
export const MeetingSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    CommitteeID: z.string().describe(`
        * * Field Name: CommitteeID
        * * Display Name: Committee ID
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    Title: z.string().describe(`
        * * Field Name: Title
        * * Display Name: Title
        * * SQL Data Type: nvarchar(255)
        * * Description: Title of the meeting`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description or purpose of the meeting`),
    StartDateTime: z.date().describe(`
        * * Field Name: StartDateTime
        * * Display Name: Start Date & Time
        * * SQL Data Type: datetimeoffset
        * * Description: Scheduled start date and time with timezone offset`),
    EndDateTime: z.date().nullable().describe(`
        * * Field Name: EndDateTime
        * * Display Name: End Date & Time
        * * SQL Data Type: datetimeoffset
        * * Description: Scheduled end date and time with timezone offset`),
    TimeZone: z.string().describe(`
        * * Field Name: TimeZone
        * * Display Name: Time Zone
        * * SQL Data Type: nvarchar(50)
        * * Default Value: America/New_York
        * * Description: IANA timezone identifier for the meeting`),
    LocationType: z.union([z.literal('Hybrid'), z.literal('InPerson'), z.literal('Virtual')]).describe(`
        * * Field Name: LocationType
        * * Display Name: Location Type
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Virtual
    * * Value List Type: List
    * * Possible Values 
    *   * Hybrid
    *   * InPerson
    *   * Virtual
        * * Description: Meeting format: Virtual, InPerson, or Hybrid`),
    LocationText: z.string().nullable().describe(`
        * * Field Name: LocationText
        * * Display Name: Location
        * * SQL Data Type: nvarchar(500)
        * * Description: Physical address or room name for in-person meetings`),
    VideoProvider: z.string().nullable().describe(`
        * * Field Name: VideoProvider
        * * Display Name: Video Provider
        * * SQL Data Type: nvarchar(50)
        * * Description: Video conferencing provider: Zoom, Teams, Meet, etc.`),
    VideoMeetingID: z.string().nullable().describe(`
        * * Field Name: VideoMeetingID
        * * Display Name: Video Meeting ID
        * * SQL Data Type: nvarchar(255)
        * * Description: External meeting ID from the video provider`),
    VideoJoinURL: z.string().nullable().describe(`
        * * Field Name: VideoJoinURL
        * * Display Name: Video Join URL
        * * SQL Data Type: nvarchar(1000)
        * * Description: URL to join the video meeting`),
    VideoRecordingURL: z.string().nullable().describe(`
        * * Field Name: VideoRecordingURL
        * * Display Name: Video Recording URL
        * * SQL Data Type: nvarchar(1000)
        * * Description: URL to the meeting recording after completion`),
    TranscriptURL: z.string().nullable().describe(`
        * * Field Name: TranscriptURL
        * * Display Name: Transcript URL
        * * SQL Data Type: nvarchar(1000)
        * * Description: URL to the meeting transcript`),
    Status: z.union([z.literal('Cancelled'), z.literal('Completed'), z.literal('Draft'), z.literal('InProgress'), z.literal('Postponed'), z.literal('Scheduled')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Scheduled
    * * Value List Type: List
    * * Possible Values 
    *   * Cancelled
    *   * Completed
    *   * Draft
    *   * InProgress
    *   * Postponed
    *   * Scheduled
        * * Description: Current status: Draft, Scheduled, InProgress, Completed, Cancelled, Postponed`),
    CalendarEventID: z.string().nullable().describe(`
        * * Field Name: CalendarEventID
        * * Display Name: Calendar Event ID
        * * SQL Data Type: nvarchar(255)
        * * Description: External calendar event ID for sync purposes`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Committee: z.string().describe(`
        * * Field Name: Committee
        * * Display Name: Committee
        * * SQL Data Type: nvarchar(255)`),
});

export type MeetingEntityType = z.infer<typeof MeetingSchema>;

/**
 * zod schema definition for the entity Memberships
 */
export const MembershipSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    CommitteeID: z.string().describe(`
        * * Field Name: CommitteeID
        * * Display Name: Committee
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    UserID: z.string().describe(`
        * * Field Name: UserID
        * * Display Name: User
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Users (vwUsers.ID)`),
    RoleID: z.string().describe(`
        * * Field Name: RoleID
        * * Display Name: Role
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Roles__Committees (vwRoles__Committees.ID)`),
    TermID: z.string().nullable().describe(`
        * * Field Name: TermID
        * * Display Name: Term
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Terms (vwTerms.ID)`),
    StartDate: z.date().describe(`
        * * Field Name: StartDate
        * * Display Name: Start Date
        * * SQL Data Type: date
        * * Description: Date the membership started`),
    EndDate: z.date().nullable().describe(`
        * * Field Name: EndDate
        * * Display Name: End Date
        * * SQL Data Type: date
        * * Description: Date the membership ended, if applicable`),
    Status: z.union([z.literal('Active'), z.literal('Ended'), z.literal('Pending'), z.literal('Suspended')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Ended
    *   * Pending
    *   * Suspended
        * * Description: Current status: Active, Pending, Ended, or Suspended`),
    EndReason: z.string().nullable().describe(`
        * * Field Name: EndReason
        * * Display Name: End Reason
        * * SQL Data Type: nvarchar(100)
        * * Description: Reason the membership ended: Term ended, Resigned, Removed, etc.`),
    Notes: z.string().nullable().describe(`
        * * Field Name: Notes
        * * Display Name: Notes
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Additional notes about this membership`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Committee: z.string().describe(`
        * * Field Name: Committee
        * * Display Name: Committee Name
        * * SQL Data Type: nvarchar(255)`),
    User: z.string().describe(`
        * * Field Name: User
        * * Display Name: User Name
        * * SQL Data Type: nvarchar(100)`),
    Role: z.string().describe(`
        * * Field Name: Role
        * * Display Name: Role Name
        * * SQL Data Type: nvarchar(100)`),
    Term: z.string().nullable().describe(`
        * * Field Name: Term
        * * Display Name: Term Name
        * * SQL Data Type: nvarchar(100)`),
});

export type MembershipEntityType = z.infer<typeof MembershipSchema>;

/**
 * zod schema definition for the entity Roles__Committees
 */
export const Role__CommitteesSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    Name: z.string().describe(`
        * * Field Name: Name
        * * Display Name: Name
        * * SQL Data Type: nvarchar(100)
        * * Description: Display name for the role`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description of role responsibilities`),
    IsOfficer: z.boolean().describe(`
        * * Field Name: IsOfficer
        * * Display Name: Is Officer
        * * SQL Data Type: bit
        * * Default Value: 0
        * * Description: Whether this is an officer role like Chair or Secretary`),
    IsVotingRole: z.boolean().describe(`
        * * Field Name: IsVotingRole
        * * Display Name: Is Voting Role
        * * SQL Data Type: bit
        * * Default Value: 1
        * * Description: Whether members in this role can vote`),
    DefaultPermissionsJSON: z.string().nullable().describe(`
        * * Field Name: DefaultPermissionsJSON
        * * Display Name: Default Permissions JSON
        * * SQL Data Type: nvarchar(MAX)
        * * Description: JSON object defining default permissions for this role`),
    Sequence: z.number().describe(`
        * * Field Name: Sequence
        * * Display Name: Sequence
        * * SQL Data Type: int
        * * Default Value: 100
        * * Description: Display order for sorting roles`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
});

export type Role__CommitteesEntityType = z.infer<typeof Role__CommitteesSchema>;

/**
 * zod schema definition for the entity Terms
 */
export const TermSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    CommitteeID: z.string().describe(`
        * * Field Name: CommitteeID
        * * Display Name: Committee
        * * SQL Data Type: uniqueidentifier
        * * Related Entity/Foreign Key: Committees (vwCommittees.ID)`),
    Name: z.string().describe(`
        * * Field Name: Name
        * * Display Name: Term Name
        * * SQL Data Type: nvarchar(100)
        * * Description: Display name for the term, e.g. 2025-2026`),
    StartDate: z.date().describe(`
        * * Field Name: StartDate
        * * Display Name: Start Date
        * * SQL Data Type: date
        * * Description: Start date of the term`),
    EndDate: z.date().nullable().describe(`
        * * Field Name: EndDate
        * * Display Name: End Date
        * * SQL Data Type: date
        * * Description: End date of the term`),
    Status: z.union([z.literal('Active'), z.literal('Completed'), z.literal('Upcoming')]).describe(`
        * * Field Name: Status
        * * Display Name: Status
        * * SQL Data Type: nvarchar(50)
        * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Completed
    *   * Upcoming
        * * Description: Current status: Active, Upcoming, or Completed`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    Committee: z.string().describe(`
        * * Field Name: Committee
        * * Display Name: Committee Name
        * * SQL Data Type: nvarchar(255)`),
});

export type TermEntityType = z.infer<typeof TermSchema>;

/**
 * zod schema definition for the entity Types
 */
export const TypeSchema = z.object({
    ID: z.string().describe(`
        * * Field Name: ID
        * * Display Name: ID
        * * SQL Data Type: uniqueidentifier
        * * Default Value: newsequentialid()`),
    Name: z.string().describe(`
        * * Field Name: Name
        * * Display Name: Name
        * * SQL Data Type: nvarchar(100)
        * * Description: Display name for the committee type`),
    Description: z.string().nullable().describe(`
        * * Field Name: Description
        * * Display Name: Description
        * * SQL Data Type: nvarchar(MAX)
        * * Description: Detailed description of this committee type`),
    IsStandards: z.boolean().describe(`
        * * Field Name: IsStandards
        * * Display Name: Is Standards
        * * SQL Data Type: bit
        * * Default Value: 0
        * * Description: Whether this type is for standards development committees`),
    DefaultTermMonths: z.number().nullable().describe(`
        * * Field Name: DefaultTermMonths
        * * Display Name: Default Term Months
        * * SQL Data Type: int
        * * Description: Default term length in months for committees of this type`),
    IconClass: z.string().nullable().describe(`
        * * Field Name: IconClass
        * * Display Name: Icon Class
        * * SQL Data Type: nvarchar(100)
        * * Description: Font Awesome icon class for UI display`),
    __mj_CreatedAt: z.date().describe(`
        * * Field Name: __mj_CreatedAt
        * * Display Name: Created At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
    __mj_UpdatedAt: z.date().describe(`
        * * Field Name: __mj_UpdatedAt
        * * Display Name: Updated At
        * * SQL Data Type: datetimeoffset
        * * Default Value: getutcdate()`),
});

export type TypeEntityType = z.infer<typeof TypeSchema>;
 
 

/**
 * Action Items - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: ActionItem
 * * Base View: vwActionItems
 * * @description Tasks and action items assigned from committees or meetings
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Action Items')
export class ActionItemEntity extends BaseEntity<ActionItemEntityType> {
    /**
    * Loads the Action Items record from the database
    * @param ID: string - primary key value to load the Action Items record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof ActionItemEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: CommitteeID
    * * Display Name: Committee
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get CommitteeID(): string {
        return this.Get('CommitteeID');
    }
    set CommitteeID(value: string) {
        this.Set('CommitteeID', value);
    }

    /**
    * * Field Name: MeetingID
    * * Display Name: Meeting
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)
    */
    get MeetingID(): string | null {
        return this.Get('MeetingID');
    }
    set MeetingID(value: string | null) {
        this.Set('MeetingID', value);
    }

    /**
    * * Field Name: AgendaItemID
    * * Display Name: Agenda Item
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)
    */
    get AgendaItemID(): string | null {
        return this.Get('AgendaItemID');
    }
    set AgendaItemID(value: string | null) {
        this.Set('AgendaItemID', value);
    }

    /**
    * * Field Name: Title
    * * Display Name: Title
    * * SQL Data Type: nvarchar(255)
    * * Description: Title of the action item
    */
    get Title(): string {
        return this.Get('Title');
    }
    set Title(value: string) {
        this.Set('Title', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description of what needs to be done
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: AssignedToUserID
    * * Display Name: Assigned To
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get AssignedToUserID(): string {
        return this.Get('AssignedToUserID');
    }
    set AssignedToUserID(value: string) {
        this.Set('AssignedToUserID', value);
    }

    /**
    * * Field Name: AssignedByUserID
    * * Display Name: Assigned By
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get AssignedByUserID(): string | null {
        return this.Get('AssignedByUserID');
    }
    set AssignedByUserID(value: string | null) {
        this.Set('AssignedByUserID', value);
    }

    /**
    * * Field Name: DueDate
    * * Display Name: Due Date
    * * SQL Data Type: date
    * * Description: Due date for completion
    */
    get DueDate(): Date | null {
        return this.Get('DueDate');
    }
    set DueDate(value: Date | null) {
        this.Set('DueDate', value);
    }

    /**
    * * Field Name: Priority
    * * Display Name: Priority
    * * SQL Data Type: nvarchar(20)
    * * Default Value: Medium
    * * Value List Type: List
    * * Possible Values 
    *   * Critical
    *   * High
    *   * Low
    *   * Medium
    * * Description: Priority level: Low, Medium, High, Critical
    */
    get Priority(): 'Critical' | 'High' | 'Low' | 'Medium' {
        return this.Get('Priority');
    }
    set Priority(value: 'Critical' | 'High' | 'Low' | 'Medium') {
        this.Set('Priority', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Open
    * * Value List Type: List
    * * Possible Values 
    *   * Blocked
    *   * Cancelled
    *   * Completed
    *   * InProgress
    *   * Open
    * * Description: Current status: Open, InProgress, Blocked, Completed, Cancelled
    */
    get Status(): 'Blocked' | 'Cancelled' | 'Completed' | 'InProgress' | 'Open' {
        return this.Get('Status');
    }
    set Status(value: 'Blocked' | 'Cancelled' | 'Completed' | 'InProgress' | 'Open') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: CompletedAt
    * * Display Name: Completed At
    * * SQL Data Type: datetimeoffset
    * * Description: Timestamp when the action item was completed
    */
    get CompletedAt(): Date | null {
        return this.Get('CompletedAt');
    }
    set CompletedAt(value: Date | null) {
        this.Set('CompletedAt', value);
    }

    /**
    * * Field Name: CompletionNotes
    * * Display Name: Completion Notes
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Notes about how the item was completed
    */
    get CompletionNotes(): string | null {
        return this.Get('CompletionNotes');
    }
    set CompletionNotes(value: string | null) {
        this.Set('CompletionNotes', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Committee
    * * Display Name: Committee
    * * SQL Data Type: nvarchar(255)
    */
    get Committee(): string {
        return this.Get('Committee');
    }

    /**
    * * Field Name: Meeting
    * * Display Name: Meeting
    * * SQL Data Type: nvarchar(255)
    */
    get Meeting(): string | null {
        return this.Get('Meeting');
    }

    /**
    * * Field Name: AssignedToUser
    * * Display Name: Assigned To User
    * * SQL Data Type: nvarchar(100)
    */
    get AssignedToUser(): string {
        return this.Get('AssignedToUser');
    }

    /**
    * * Field Name: AssignedByUser
    * * Display Name: Assigned By User
    * * SQL Data Type: nvarchar(100)
    */
    get AssignedByUser(): string | null {
        return this.Get('AssignedByUser');
    }
}


/**
 * Agenda Items - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: AgendaItem
 * * Base View: vwAgendaItems
 * * @description Structured agenda items for meetings with hierarchy support
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Agenda Items')
export class AgendaItemEntity extends BaseEntity<AgendaItemEntityType> {
    /**
    * Loads the Agenda Items record from the database
    * @param ID: string - primary key value to load the Agenda Items record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof AgendaItemEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: MeetingID
    * * Display Name: Meeting
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)
    */
    get MeetingID(): string {
        return this.Get('MeetingID');
    }
    set MeetingID(value: string) {
        this.Set('MeetingID', value);
    }

    /**
    * * Field Name: ParentAgendaItemID
    * * Display Name: Parent Agenda Item
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)
    */
    get ParentAgendaItemID(): string | null {
        return this.Get('ParentAgendaItemID');
    }
    set ParentAgendaItemID(value: string | null) {
        this.Set('ParentAgendaItemID', value);
    }

    /**
    * * Field Name: Sequence
    * * Display Name: Sequence
    * * SQL Data Type: int
    * * Description: Display order within the meeting agenda
    */
    get Sequence(): number {
        return this.Get('Sequence');
    }
    set Sequence(value: number) {
        this.Set('Sequence', value);
    }

    /**
    * * Field Name: Title
    * * Display Name: Title
    * * SQL Data Type: nvarchar(255)
    * * Description: Title of the agenda item
    */
    get Title(): string {
        return this.Get('Title');
    }
    set Title(value: string) {
        this.Set('Title', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description of the agenda item
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: PresenterUserID
    * * Display Name: Presenter
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get PresenterUserID(): string | null {
        return this.Get('PresenterUserID');
    }
    set PresenterUserID(value: string | null) {
        this.Set('PresenterUserID', value);
    }

    /**
    * * Field Name: DurationMinutes
    * * Display Name: Duration (Minutes)
    * * SQL Data Type: int
    * * Description: Estimated duration in minutes
    */
    get DurationMinutes(): number | null {
        return this.Get('DurationMinutes');
    }
    set DurationMinutes(value: number | null) {
        this.Set('DurationMinutes', value);
    }

    /**
    * * Field Name: ItemType
    * * Display Name: Item Type
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Discussion
    * * Value List Type: List
    * * Possible Values 
    *   * Action
    *   * Discussion
    *   * Information
    *   * Other
    *   * Report
    *   * Vote
    * * Description: Type of item: Information, Discussion, Action, Vote, Report, Other
    */
    get ItemType(): 'Action' | 'Discussion' | 'Information' | 'Other' | 'Report' | 'Vote' {
        return this.Get('ItemType');
    }
    set ItemType(value: 'Action' | 'Discussion' | 'Information' | 'Other' | 'Report' | 'Vote') {
        this.Set('ItemType', value);
    }

    /**
    * * Field Name: RelatedDocumentURL
    * * Display Name: Related Document URL
    * * SQL Data Type: nvarchar(1000)
    * * Description: URL to related document for this item
    */
    get RelatedDocumentURL(): string | null {
        return this.Get('RelatedDocumentURL');
    }
    set RelatedDocumentURL(value: string | null) {
        this.Set('RelatedDocumentURL', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Pending
    * * Value List Type: List
    * * Possible Values 
    *   * Completed
    *   * Discussed
    *   * Pending
    *   * Skipped
    *   * Tabled
    * * Description: Current status: Pending, Discussed, Tabled, Completed, Skipped
    */
    get Status(): 'Completed' | 'Discussed' | 'Pending' | 'Skipped' | 'Tabled' {
        return this.Get('Status');
    }
    set Status(value: 'Completed' | 'Discussed' | 'Pending' | 'Skipped' | 'Tabled') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: Notes
    * * Display Name: Notes
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Discussion notes and outcomes captured during the meeting
    */
    get Notes(): string | null {
        return this.Get('Notes');
    }
    set Notes(value: string | null) {
        this.Set('Notes', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Meeting
    * * Display Name: Meeting Name
    * * SQL Data Type: nvarchar(255)
    */
    get Meeting(): string {
        return this.Get('Meeting');
    }

    /**
    * * Field Name: PresenterUser
    * * Display Name: Presenter User
    * * SQL Data Type: nvarchar(100)
    */
    get PresenterUser(): string | null {
        return this.Get('PresenterUser');
    }

    /**
    * * Field Name: RootParentAgendaItemID
    * * Display Name: Root Parent Agenda Item
    * * SQL Data Type: uniqueidentifier
    */
    get RootParentAgendaItemID(): string | null {
        return this.Get('RootParentAgendaItemID');
    }
}


/**
 * Artifacts - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Artifact
 * * Base View: vwArtifacts
 * * @description Links to external documents and files from various providers
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Artifacts')
export class ArtifactEntity extends BaseEntity<ArtifactEntityType> {
    /**
    * Loads the Artifacts record from the database
    * @param ID: string - primary key value to load the Artifacts record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof ArtifactEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: CommitteeID
    * * Display Name: Committee
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get CommitteeID(): string | null {
        return this.Get('CommitteeID');
    }
    set CommitteeID(value: string | null) {
        this.Set('CommitteeID', value);
    }

    /**
    * * Field Name: MeetingID
    * * Display Name: Meeting
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)
    */
    get MeetingID(): string | null {
        return this.Get('MeetingID');
    }
    set MeetingID(value: string | null) {
        this.Set('MeetingID', value);
    }

    /**
    * * Field Name: AgendaItemID
    * * Display Name: Agenda Item
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Agenda Items (vwAgendaItems.ID)
    */
    get AgendaItemID(): string | null {
        return this.Get('AgendaItemID');
    }
    set AgendaItemID(value: string | null) {
        this.Set('AgendaItemID', value);
    }

    /**
    * * Field Name: ActionItemID
    * * Display Name: Action Item
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Action Items (vwActionItems.ID)
    */
    get ActionItemID(): string | null {
        return this.Get('ActionItemID');
    }
    set ActionItemID(value: string | null) {
        this.Set('ActionItemID', value);
    }

    /**
    * * Field Name: Title
    * * Display Name: Title
    * * SQL Data Type: nvarchar(255)
    * * Description: Display title for the artifact
    */
    get Title(): string {
        return this.Get('Title');
    }
    set Title(value: string) {
        this.Set('Title', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Description of the artifact contents
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: Provider
    * * Display Name: Provider
    * * SQL Data Type: nvarchar(50)
    * * Value List Type: List
    * * Possible Values 
    *   * Box
    *   * Dropbox
    *   * GoogleDrive
    *   * OneDrive
    *   * SharePoint
    *   * URL
    * * Description: Storage provider: GoogleDrive, SharePoint, Box, OneDrive, Dropbox, URL
    */
    get Provider(): 'Box' | 'Dropbox' | 'GoogleDrive' | 'OneDrive' | 'SharePoint' | 'URL' {
        return this.Get('Provider');
    }
    set Provider(value: 'Box' | 'Dropbox' | 'GoogleDrive' | 'OneDrive' | 'SharePoint' | 'URL') {
        this.Set('Provider', value);
    }

    /**
    * * Field Name: ExternalID
    * * Display Name: External ID
    * * SQL Data Type: nvarchar(500)
    * * Description: Provider-specific document or file ID
    */
    get ExternalID(): string | null {
        return this.Get('ExternalID');
    }
    set ExternalID(value: string | null) {
        this.Set('ExternalID', value);
    }

    /**
    * * Field Name: URL
    * * Display Name: URL
    * * SQL Data Type: nvarchar(2000)
    * * Description: Direct URL to access the artifact
    */
    get URL(): string {
        return this.Get('URL');
    }
    set URL(value: string) {
        this.Set('URL', value);
    }

    /**
    * * Field Name: MimeType
    * * Display Name: MIME Type
    * * SQL Data Type: nvarchar(100)
    * * Description: MIME type of the file
    */
    get MimeType(): string | null {
        return this.Get('MimeType');
    }
    set MimeType(value: string | null) {
        this.Set('MimeType', value);
    }

    /**
    * * Field Name: FileSize
    * * Display Name: File Size
    * * SQL Data Type: bigint
    * * Description: File size in bytes
    */
    get FileSize(): number | null {
        return this.Get('FileSize');
    }
    set FileSize(value: number | null) {
        this.Set('FileSize', value);
    }

    /**
    * * Field Name: UploadedByUserID
    * * Display Name: Uploaded By User
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get UploadedByUserID(): string | null {
        return this.Get('UploadedByUserID');
    }
    set UploadedByUserID(value: string | null) {
        this.Set('UploadedByUserID', value);
    }

    /**
    * * Field Name: ArtifactType
    * * Display Name: Artifact Type
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Document
    * * Value List Type: List
    * * Possible Values 
    *   * Agenda
    *   * Document
    *   * Image
    *   * Minutes
    *   * Other
    *   * Presentation
    *   * Recording
    *   * Spreadsheet
    *   * Transcript
    * * Description: Type of artifact: Document, Spreadsheet, Presentation, Minutes, Agenda, Recording, Transcript, Image, Other
    */
    get ArtifactType(): 'Agenda' | 'Document' | 'Image' | 'Minutes' | 'Other' | 'Presentation' | 'Recording' | 'Spreadsheet' | 'Transcript' {
        return this.Get('ArtifactType');
    }
    set ArtifactType(value: 'Agenda' | 'Document' | 'Image' | 'Minutes' | 'Other' | 'Presentation' | 'Recording' | 'Spreadsheet' | 'Transcript') {
        this.Set('ArtifactType', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Committee
    * * Display Name: Committee
    * * SQL Data Type: nvarchar(255)
    */
    get Committee(): string | null {
        return this.Get('Committee');
    }

    /**
    * * Field Name: Meeting
    * * Display Name: Meeting
    * * SQL Data Type: nvarchar(255)
    */
    get Meeting(): string | null {
        return this.Get('Meeting');
    }

    /**
    * * Field Name: ActionItem
    * * Display Name: Action Item
    * * SQL Data Type: nvarchar(255)
    */
    get ActionItem(): string | null {
        return this.Get('ActionItem');
    }

    /**
    * * Field Name: UploadedByUser
    * * Display Name: Uploaded By User
    * * SQL Data Type: nvarchar(100)
    */
    get UploadedByUser(): string | null {
        return this.Get('UploadedByUser');
    }
}


/**
 * Attendances - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Attendance
 * * Base View: vwAttendances
 * * @description Meeting attendance records for committee members
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Attendances')
export class AttendanceEntity extends BaseEntity<AttendanceEntityType> {
    /**
    * Loads the Attendances record from the database
    * @param ID: string - primary key value to load the Attendances record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof AttendanceEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: MeetingID
    * * Display Name: Meeting
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Meetings (vwMeetings.ID)
    */
    get MeetingID(): string {
        return this.Get('MeetingID');
    }
    set MeetingID(value: string) {
        this.Set('MeetingID', value);
    }

    /**
    * * Field Name: UserID
    * * Display Name: User
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get UserID(): string {
        return this.Get('UserID');
    }
    set UserID(value: string) {
        this.Set('UserID', value);
    }

    /**
    * * Field Name: AttendanceStatus
    * * Display Name: Attendance Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Expected
    * * Value List Type: List
    * * Possible Values 
    *   * Absent
    *   * Excused
    *   * Expected
    *   * Partial
    *   * Present
    * * Description: Attendance status: Expected, Present, Absent, Excused, Partial
    */
    get AttendanceStatus(): 'Absent' | 'Excused' | 'Expected' | 'Partial' | 'Present' {
        return this.Get('AttendanceStatus');
    }
    set AttendanceStatus(value: 'Absent' | 'Excused' | 'Expected' | 'Partial' | 'Present') {
        this.Set('AttendanceStatus', value);
    }

    /**
    * * Field Name: JoinedAt
    * * Display Name: Joined At
    * * SQL Data Type: datetimeoffset
    * * Description: Timestamp when the attendee joined the meeting
    */
    get JoinedAt(): Date | null {
        return this.Get('JoinedAt');
    }
    set JoinedAt(value: Date | null) {
        this.Set('JoinedAt', value);
    }

    /**
    * * Field Name: LeftAt
    * * Display Name: Left At
    * * SQL Data Type: datetimeoffset
    * * Description: Timestamp when the attendee left the meeting
    */
    get LeftAt(): Date | null {
        return this.Get('LeftAt');
    }
    set LeftAt(value: Date | null) {
        this.Set('LeftAt', value);
    }

    /**
    * * Field Name: Notes
    * * Display Name: Notes
    * * SQL Data Type: nvarchar(500)
    * * Description: Additional notes about attendance
    */
    get Notes(): string | null {
        return this.Get('Notes');
    }
    set Notes(value: string | null) {
        this.Set('Notes', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Meeting
    * * Display Name: Meeting
    * * SQL Data Type: nvarchar(255)
    */
    get Meeting(): string {
        return this.Get('Meeting');
    }

    /**
    * * Field Name: User
    * * Display Name: User
    * * SQL Data Type: nvarchar(100)
    */
    get User(): string {
        return this.Get('User');
    }
}


/**
 * Committees - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Committee
 * * Base View: vwCommittees
 * * @description Core committee records with hierarchy support
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Committees')
export class CommitteeEntity extends BaseEntity<CommitteeEntityType> {
    /**
    * Loads the Committees record from the database
    * @param ID: string - primary key value to load the Committees record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof CommitteeEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: Name
    * * Display Name: Name
    * * SQL Data Type: nvarchar(255)
    * * Description: Official name of the committee
    */
    get Name(): string {
        return this.Get('Name');
    }
    set Name(value: string) {
        this.Set('Name', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description of the committee purpose and scope
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: TypeID
    * * Display Name: Type
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Types (vwTypes.ID)
    */
    get TypeID(): string {
        return this.Get('TypeID');
    }
    set TypeID(value: string) {
        this.Set('TypeID', value);
    }

    /**
    * * Field Name: ParentCommitteeID
    * * Display Name: Parent Committee
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get ParentCommitteeID(): string | null {
        return this.Get('ParentCommitteeID');
    }
    set ParentCommitteeID(value: string | null) {
        this.Set('ParentCommitteeID', value);
    }

    /**
    * * Field Name: OrganizationID
    * * Display Name: Organization
    * * SQL Data Type: uniqueidentifier
    */
    get OrganizationID(): string | null {
        return this.Get('OrganizationID');
    }
    set OrganizationID(value: string | null) {
        this.Set('OrganizationID', value);
    }

    /**
    * * Field Name: CharterDocumentURL
    * * Display Name: Charter Document URL
    * * SQL Data Type: nvarchar(1000)
    * * Description: URL to the committee charter document
    */
    get CharterDocumentURL(): string | null {
        return this.Get('CharterDocumentURL');
    }
    set CharterDocumentURL(value: string | null) {
        this.Set('CharterDocumentURL', value);
    }

    /**
    * * Field Name: MissionStatement
    * * Display Name: Mission Statement
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Brief statement of the committee mission
    */
    get MissionStatement(): string | null {
        return this.Get('MissionStatement');
    }
    set MissionStatement(value: string | null) {
        this.Set('MissionStatement', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Dissolved
    *   * Inactive
    *   * Pending
    * * Description: Current status: Active, Inactive, Pending, or Dissolved
    */
    get Status(): 'Active' | 'Dissolved' | 'Inactive' | 'Pending' {
        return this.Get('Status');
    }
    set Status(value: 'Active' | 'Dissolved' | 'Inactive' | 'Pending') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: IsPublic
    * * Display Name: Public
    * * SQL Data Type: bit
    * * Default Value: 1
    * * Description: Whether the committee is visible to all users
    */
    get IsPublic(): boolean {
        return this.Get('IsPublic');
    }
    set IsPublic(value: boolean) {
        this.Set('IsPublic', value);
    }

    /**
    * * Field Name: FormationDate
    * * Display Name: Formation Date
    * * SQL Data Type: date
    * * Description: Date the committee was formed
    */
    get FormationDate(): Date | null {
        return this.Get('FormationDate');
    }
    set FormationDate(value: Date | null) {
        this.Set('FormationDate', value);
    }

    /**
    * * Field Name: DissolutionDate
    * * Display Name: Dissolution Date
    * * SQL Data Type: date
    * * Description: Date the committee was dissolved, if applicable
    */
    get DissolutionDate(): Date | null {
        return this.Get('DissolutionDate');
    }
    set DissolutionDate(value: Date | null) {
        this.Set('DissolutionDate', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Type
    * * Display Name: Type
    * * SQL Data Type: nvarchar(100)
    */
    get Type(): string {
        return this.Get('Type');
    }

    /**
    * * Field Name: ParentCommittee
    * * Display Name: Parent Committee Name
    * * SQL Data Type: nvarchar(255)
    */
    get ParentCommittee(): string | null {
        return this.Get('ParentCommittee');
    }

    /**
    * * Field Name: RootParentCommitteeID
    * * Display Name: Root Parent Committee
    * * SQL Data Type: uniqueidentifier
    */
    get RootParentCommitteeID(): string | null {
        return this.Get('RootParentCommitteeID');
    }
}


/**
 * Meetings - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Meeting
 * * Base View: vwMeetings
 * * @description Committee meeting records with scheduling and video conferencing info
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Meetings')
export class MeetingEntity extends BaseEntity<MeetingEntityType> {
    /**
    * Loads the Meetings record from the database
    * @param ID: string - primary key value to load the Meetings record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof MeetingEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: CommitteeID
    * * Display Name: Committee ID
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get CommitteeID(): string {
        return this.Get('CommitteeID');
    }
    set CommitteeID(value: string) {
        this.Set('CommitteeID', value);
    }

    /**
    * * Field Name: Title
    * * Display Name: Title
    * * SQL Data Type: nvarchar(255)
    * * Description: Title of the meeting
    */
    get Title(): string {
        return this.Get('Title');
    }
    set Title(value: string) {
        this.Set('Title', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description or purpose of the meeting
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: StartDateTime
    * * Display Name: Start Date & Time
    * * SQL Data Type: datetimeoffset
    * * Description: Scheduled start date and time with timezone offset
    */
    get StartDateTime(): Date {
        return this.Get('StartDateTime');
    }
    set StartDateTime(value: Date) {
        this.Set('StartDateTime', value);
    }

    /**
    * * Field Name: EndDateTime
    * * Display Name: End Date & Time
    * * SQL Data Type: datetimeoffset
    * * Description: Scheduled end date and time with timezone offset
    */
    get EndDateTime(): Date | null {
        return this.Get('EndDateTime');
    }
    set EndDateTime(value: Date | null) {
        this.Set('EndDateTime', value);
    }

    /**
    * * Field Name: TimeZone
    * * Display Name: Time Zone
    * * SQL Data Type: nvarchar(50)
    * * Default Value: America/New_York
    * * Description: IANA timezone identifier for the meeting
    */
    get TimeZone(): string {
        return this.Get('TimeZone');
    }
    set TimeZone(value: string) {
        this.Set('TimeZone', value);
    }

    /**
    * * Field Name: LocationType
    * * Display Name: Location Type
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Virtual
    * * Value List Type: List
    * * Possible Values 
    *   * Hybrid
    *   * InPerson
    *   * Virtual
    * * Description: Meeting format: Virtual, InPerson, or Hybrid
    */
    get LocationType(): 'Hybrid' | 'InPerson' | 'Virtual' {
        return this.Get('LocationType');
    }
    set LocationType(value: 'Hybrid' | 'InPerson' | 'Virtual') {
        this.Set('LocationType', value);
    }

    /**
    * * Field Name: LocationText
    * * Display Name: Location
    * * SQL Data Type: nvarchar(500)
    * * Description: Physical address or room name for in-person meetings
    */
    get LocationText(): string | null {
        return this.Get('LocationText');
    }
    set LocationText(value: string | null) {
        this.Set('LocationText', value);
    }

    /**
    * * Field Name: VideoProvider
    * * Display Name: Video Provider
    * * SQL Data Type: nvarchar(50)
    * * Description: Video conferencing provider: Zoom, Teams, Meet, etc.
    */
    get VideoProvider(): string | null {
        return this.Get('VideoProvider');
    }
    set VideoProvider(value: string | null) {
        this.Set('VideoProvider', value);
    }

    /**
    * * Field Name: VideoMeetingID
    * * Display Name: Video Meeting ID
    * * SQL Data Type: nvarchar(255)
    * * Description: External meeting ID from the video provider
    */
    get VideoMeetingID(): string | null {
        return this.Get('VideoMeetingID');
    }
    set VideoMeetingID(value: string | null) {
        this.Set('VideoMeetingID', value);
    }

    /**
    * * Field Name: VideoJoinURL
    * * Display Name: Video Join URL
    * * SQL Data Type: nvarchar(1000)
    * * Description: URL to join the video meeting
    */
    get VideoJoinURL(): string | null {
        return this.Get('VideoJoinURL');
    }
    set VideoJoinURL(value: string | null) {
        this.Set('VideoJoinURL', value);
    }

    /**
    * * Field Name: VideoRecordingURL
    * * Display Name: Video Recording URL
    * * SQL Data Type: nvarchar(1000)
    * * Description: URL to the meeting recording after completion
    */
    get VideoRecordingURL(): string | null {
        return this.Get('VideoRecordingURL');
    }
    set VideoRecordingURL(value: string | null) {
        this.Set('VideoRecordingURL', value);
    }

    /**
    * * Field Name: TranscriptURL
    * * Display Name: Transcript URL
    * * SQL Data Type: nvarchar(1000)
    * * Description: URL to the meeting transcript
    */
    get TranscriptURL(): string | null {
        return this.Get('TranscriptURL');
    }
    set TranscriptURL(value: string | null) {
        this.Set('TranscriptURL', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Scheduled
    * * Value List Type: List
    * * Possible Values 
    *   * Cancelled
    *   * Completed
    *   * Draft
    *   * InProgress
    *   * Postponed
    *   * Scheduled
    * * Description: Current status: Draft, Scheduled, InProgress, Completed, Cancelled, Postponed
    */
    get Status(): 'Cancelled' | 'Completed' | 'Draft' | 'InProgress' | 'Postponed' | 'Scheduled' {
        return this.Get('Status');
    }
    set Status(value: 'Cancelled' | 'Completed' | 'Draft' | 'InProgress' | 'Postponed' | 'Scheduled') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: CalendarEventID
    * * Display Name: Calendar Event ID
    * * SQL Data Type: nvarchar(255)
    * * Description: External calendar event ID for sync purposes
    */
    get CalendarEventID(): string | null {
        return this.Get('CalendarEventID');
    }
    set CalendarEventID(value: string | null) {
        this.Set('CalendarEventID', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Committee
    * * Display Name: Committee
    * * SQL Data Type: nvarchar(255)
    */
    get Committee(): string {
        return this.Get('Committee');
    }
}


/**
 * Memberships - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Membership
 * * Base View: vwMemberships
 * * @description User assignments to committees with roles and terms
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Memberships')
export class MembershipEntity extends BaseEntity<MembershipEntityType> {
    /**
    * Loads the Memberships record from the database
    * @param ID: string - primary key value to load the Memberships record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof MembershipEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: CommitteeID
    * * Display Name: Committee
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get CommitteeID(): string {
        return this.Get('CommitteeID');
    }
    set CommitteeID(value: string) {
        this.Set('CommitteeID', value);
    }

    /**
    * * Field Name: UserID
    * * Display Name: User
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Users (vwUsers.ID)
    */
    get UserID(): string {
        return this.Get('UserID');
    }
    set UserID(value: string) {
        this.Set('UserID', value);
    }

    /**
    * * Field Name: RoleID
    * * Display Name: Role
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Roles__Committees (vwRoles__Committees.ID)
    */
    get RoleID(): string {
        return this.Get('RoleID');
    }
    set RoleID(value: string) {
        this.Set('RoleID', value);
    }

    /**
    * * Field Name: TermID
    * * Display Name: Term
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Terms (vwTerms.ID)
    */
    get TermID(): string | null {
        return this.Get('TermID');
    }
    set TermID(value: string | null) {
        this.Set('TermID', value);
    }

    /**
    * * Field Name: StartDate
    * * Display Name: Start Date
    * * SQL Data Type: date
    * * Description: Date the membership started
    */
    get StartDate(): Date {
        return this.Get('StartDate');
    }
    set StartDate(value: Date) {
        this.Set('StartDate', value);
    }

    /**
    * * Field Name: EndDate
    * * Display Name: End Date
    * * SQL Data Type: date
    * * Description: Date the membership ended, if applicable
    */
    get EndDate(): Date | null {
        return this.Get('EndDate');
    }
    set EndDate(value: Date | null) {
        this.Set('EndDate', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Ended
    *   * Pending
    *   * Suspended
    * * Description: Current status: Active, Pending, Ended, or Suspended
    */
    get Status(): 'Active' | 'Ended' | 'Pending' | 'Suspended' {
        return this.Get('Status');
    }
    set Status(value: 'Active' | 'Ended' | 'Pending' | 'Suspended') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: EndReason
    * * Display Name: End Reason
    * * SQL Data Type: nvarchar(100)
    * * Description: Reason the membership ended: Term ended, Resigned, Removed, etc.
    */
    get EndReason(): string | null {
        return this.Get('EndReason');
    }
    set EndReason(value: string | null) {
        this.Set('EndReason', value);
    }

    /**
    * * Field Name: Notes
    * * Display Name: Notes
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Additional notes about this membership
    */
    get Notes(): string | null {
        return this.Get('Notes');
    }
    set Notes(value: string | null) {
        this.Set('Notes', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Committee
    * * Display Name: Committee Name
    * * SQL Data Type: nvarchar(255)
    */
    get Committee(): string {
        return this.Get('Committee');
    }

    /**
    * * Field Name: User
    * * Display Name: User Name
    * * SQL Data Type: nvarchar(100)
    */
    get User(): string {
        return this.Get('User');
    }

    /**
    * * Field Name: Role
    * * Display Name: Role Name
    * * SQL Data Type: nvarchar(100)
    */
    get Role(): string {
        return this.Get('Role');
    }

    /**
    * * Field Name: Term
    * * Display Name: Term Name
    * * SQL Data Type: nvarchar(100)
    */
    get Term(): string | null {
        return this.Get('Term');
    }
}


/**
 * Roles__Committees - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Role
 * * Base View: vwRoles__Committees
 * * @description Roles that members can hold on committees
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Roles__Committees')
export class Role__CommitteesEntity extends BaseEntity<Role__CommitteesEntityType> {
    /**
    * Loads the Roles__Committees record from the database
    * @param ID: string - primary key value to load the Roles__Committees record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof Role__CommitteesEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: Name
    * * Display Name: Name
    * * SQL Data Type: nvarchar(100)
    * * Description: Display name for the role
    */
    get Name(): string {
        return this.Get('Name');
    }
    set Name(value: string) {
        this.Set('Name', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description of role responsibilities
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: IsOfficer
    * * Display Name: Is Officer
    * * SQL Data Type: bit
    * * Default Value: 0
    * * Description: Whether this is an officer role like Chair or Secretary
    */
    get IsOfficer(): boolean {
        return this.Get('IsOfficer');
    }
    set IsOfficer(value: boolean) {
        this.Set('IsOfficer', value);
    }

    /**
    * * Field Name: IsVotingRole
    * * Display Name: Is Voting Role
    * * SQL Data Type: bit
    * * Default Value: 1
    * * Description: Whether members in this role can vote
    */
    get IsVotingRole(): boolean {
        return this.Get('IsVotingRole');
    }
    set IsVotingRole(value: boolean) {
        this.Set('IsVotingRole', value);
    }

    /**
    * * Field Name: DefaultPermissionsJSON
    * * Display Name: Default Permissions JSON
    * * SQL Data Type: nvarchar(MAX)
    * * Description: JSON object defining default permissions for this role
    */
    get DefaultPermissionsJSON(): string | null {
        return this.Get('DefaultPermissionsJSON');
    }
    set DefaultPermissionsJSON(value: string | null) {
        this.Set('DefaultPermissionsJSON', value);
    }

    /**
    * * Field Name: Sequence
    * * Display Name: Sequence
    * * SQL Data Type: int
    * * Default Value: 100
    * * Description: Display order for sorting roles
    */
    get Sequence(): number {
        return this.Get('Sequence');
    }
    set Sequence(value: number) {
        this.Set('Sequence', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }
}


/**
 * Terms - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Term
 * * Base View: vwTerms
 * * @description Time periods for committee membership cycles
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Terms')
export class TermEntity extends BaseEntity<TermEntityType> {
    /**
    * Loads the Terms record from the database
    * @param ID: string - primary key value to load the Terms record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof TermEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: CommitteeID
    * * Display Name: Committee
    * * SQL Data Type: uniqueidentifier
    * * Related Entity/Foreign Key: Committees (vwCommittees.ID)
    */
    get CommitteeID(): string {
        return this.Get('CommitteeID');
    }
    set CommitteeID(value: string) {
        this.Set('CommitteeID', value);
    }

    /**
    * * Field Name: Name
    * * Display Name: Term Name
    * * SQL Data Type: nvarchar(100)
    * * Description: Display name for the term, e.g. 2025-2026
    */
    get Name(): string {
        return this.Get('Name');
    }
    set Name(value: string) {
        this.Set('Name', value);
    }

    /**
    * * Field Name: StartDate
    * * Display Name: Start Date
    * * SQL Data Type: date
    * * Description: Start date of the term
    */
    get StartDate(): Date {
        return this.Get('StartDate');
    }
    set StartDate(value: Date) {
        this.Set('StartDate', value);
    }

    /**
    * * Field Name: EndDate
    * * Display Name: End Date
    * * SQL Data Type: date
    * * Description: End date of the term
    */
    get EndDate(): Date | null {
        return this.Get('EndDate');
    }
    set EndDate(value: Date | null) {
        this.Set('EndDate', value);
    }

    /**
    * * Field Name: Status
    * * Display Name: Status
    * * SQL Data Type: nvarchar(50)
    * * Default Value: Active
    * * Value List Type: List
    * * Possible Values 
    *   * Active
    *   * Completed
    *   * Upcoming
    * * Description: Current status: Active, Upcoming, or Completed
    */
    get Status(): 'Active' | 'Completed' | 'Upcoming' {
        return this.Get('Status');
    }
    set Status(value: 'Active' | 'Completed' | 'Upcoming') {
        this.Set('Status', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }

    /**
    * * Field Name: Committee
    * * Display Name: Committee Name
    * * SQL Data Type: nvarchar(255)
    */
    get Committee(): string {
        return this.Get('Committee');
    }
}


/**
 * Types - strongly typed entity sub-class
 * * Schema: Committees
 * * Base Table: Type
 * * Base View: vwTypes
 * * @description Categories of committees such as Board, Standing, Ad Hoc, Workgroup
 * * Primary Key: ID
 * @extends {BaseEntity}
 * @class
 * @public
 */
@RegisterClass(BaseEntity, 'Types')
export class TypeEntity extends BaseEntity<TypeEntityType> {
    /**
    * Loads the Types record from the database
    * @param ID: string - primary key value to load the Types record.
    * @param EntityRelationshipsToLoad - (optional) the relationships to load
    * @returns {Promise<boolean>} - true if successful, false otherwise
    * @public
    * @async
    * @memberof TypeEntity
    * @method
    * @override
    */
    public async Load(ID: string, EntityRelationshipsToLoad?: string[]) : Promise<boolean> {
        const compositeKey: CompositeKey = new CompositeKey();
        compositeKey.KeyValuePairs.push({ FieldName: 'ID', Value: ID });
        return await super.InnerLoad(compositeKey, EntityRelationshipsToLoad);
    }

    /**
    * * Field Name: ID
    * * Display Name: ID
    * * SQL Data Type: uniqueidentifier
    * * Default Value: newsequentialid()
    */
    get ID(): string {
        return this.Get('ID');
    }
    set ID(value: string) {
        this.Set('ID', value);
    }

    /**
    * * Field Name: Name
    * * Display Name: Name
    * * SQL Data Type: nvarchar(100)
    * * Description: Display name for the committee type
    */
    get Name(): string {
        return this.Get('Name');
    }
    set Name(value: string) {
        this.Set('Name', value);
    }

    /**
    * * Field Name: Description
    * * Display Name: Description
    * * SQL Data Type: nvarchar(MAX)
    * * Description: Detailed description of this committee type
    */
    get Description(): string | null {
        return this.Get('Description');
    }
    set Description(value: string | null) {
        this.Set('Description', value);
    }

    /**
    * * Field Name: IsStandards
    * * Display Name: Is Standards
    * * SQL Data Type: bit
    * * Default Value: 0
    * * Description: Whether this type is for standards development committees
    */
    get IsStandards(): boolean {
        return this.Get('IsStandards');
    }
    set IsStandards(value: boolean) {
        this.Set('IsStandards', value);
    }

    /**
    * * Field Name: DefaultTermMonths
    * * Display Name: Default Term Months
    * * SQL Data Type: int
    * * Description: Default term length in months for committees of this type
    */
    get DefaultTermMonths(): number | null {
        return this.Get('DefaultTermMonths');
    }
    set DefaultTermMonths(value: number | null) {
        this.Set('DefaultTermMonths', value);
    }

    /**
    * * Field Name: IconClass
    * * Display Name: Icon Class
    * * SQL Data Type: nvarchar(100)
    * * Description: Font Awesome icon class for UI display
    */
    get IconClass(): string | null {
        return this.Get('IconClass');
    }
    set IconClass(value: string | null) {
        this.Set('IconClass', value);
    }

    /**
    * * Field Name: __mj_CreatedAt
    * * Display Name: Created At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_CreatedAt(): Date {
        return this.Get('__mj_CreatedAt');
    }

    /**
    * * Field Name: __mj_UpdatedAt
    * * Display Name: Updated At
    * * SQL Data Type: datetimeoffset
    * * Default Value: getutcdate()
    */
    get __mj_UpdatedAt(): Date {
        return this.Get('__mj_UpdatedAt');
    }
}
