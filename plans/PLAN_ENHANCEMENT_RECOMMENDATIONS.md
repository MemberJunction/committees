# Committees App: Plan Enhancement Recommendations

**Date:** February 15, 2026
**Based On:** Market research analysis + current design plan review

---

## Executive Summary

Your current Phase 1 design is solid and covers the **core data model** well. However, market research reveals several **table-stakes features** missing from Phase 1 that are expected by users and critical for competitive positioning. This document maps market findings to your current plan and recommends enhancements.

### Key Findings:

✅ **Your Strengths:**
- Excellent data model (10 entities with proper relationships)
- Committee hierarchy support (self-referencing Parent)
- Meeting-centric workflow design
- Action item tracking
- Artifact linking architecture

⚠️ **Critical Gaps for Phase 1:**
- Security features (encryption, 2FA, audit logs)
- Collaboration features (annotations, commenting)
- Email notifications system
- Voting/approval workflows
- Mobile offline access
- Integration details (calendar, video conferencing)

🎯 **Strategic Opportunity:**
- Target professional associations & standards bodies (underserved market)
- Differentiate with "association-first" design
- AI features without complexity
- Transparent pricing model

---

## Current Plan vs. Market Requirements

### Your Current Phase 1 Deliverables:
1. ✅ Database migration with core entities (10 tables)
2. ✅ Extended properties migration with descriptions
3. ✅ `@memberjunction/committees-core` package
4. ✅ `@memberjunction/ng-committees` Angular components
5. ✅ Application metadata for MJ Explorer
6. ✅ Basic CRUD for committees, memberships, meetings
7. ✅ Document linking (URL-based)

### What Market Research Says Must Be in MVP (6-9 months):

#### ✅ Already Covered:
- Meeting lifecycle (agenda, scheduling, minutes, action items)
- Document management foundation (Artifact entity)
- Committee structure and hierarchy
- Membership management with roles and terms

#### ⚠️ Missing from Phase 1 (Table Stakes):

**1. Security & Compliance**
- Encryption at rest and in transit
- Two-factor authentication
- Role-based access control (RBAC)
- Audit logging
- Session management

**2. Collaboration Features**
- Document annotations
- Commenting on agenda items
- Discussion threads
- @mentions for notifications
- Activity feeds

**3. Voting & Approvals**
- Simple approval workflows
- Voting on proposals/motions
- Vote tracking and results
- Quorum validation

**4. Notifications System**
- Meeting reminders (email + in-app)
- Action item assignment notifications
- Document update alerts
- Attendance confirmations
- Deadline warnings

**5. Integration Details**
- **Calendar:** Google Calendar, Outlook, iCal sync
- **Video Conferencing:** Zoom, Teams, Google Meet join links
- **Document Storage:** Google Drive, SharePoint, OneDrive linking
- **Email:** SendGrid/SMTP for notifications

**6. Mobile Experience**
- Responsive web design
- Offline document access
- Mobile-optimized agenda views
- Touch-friendly interfaces

**7. Basic Reporting**
- Attendance reports
- Action item completion dashboards
- Meeting frequency analytics
- Member engagement basics

---

## Recommended Phase Structure (Revised)

### **Phase 1A: Core Foundation (Months 1-3)**
*Your current Phase 1 - Data model and basic CRUD*

**Database & Backend:**
- ✅ 10 entity schema (already designed)
- ✅ CodeGen integration
- ✅ GraphQL API
- **NEW:** Audit logging table
- **NEW:** Notification queue table
- **NEW:** Vote/Approval tables

**Core Business Logic:**
- Committee CRUD
- Membership management
- Meeting lifecycle
- Action item tracking
- Artifact linking

**Basic UI:**
- Committee list/detail views
- Meeting planner
- Simple action item list

### **Phase 1B: Table Stakes Features (Months 4-6)**
*Security, collaboration, notifications - required to compete*

**Security:**
- Encryption (TLS + at-rest)
- 2FA via MJ authentication
- RBAC implementation
- Audit log UI

**Collaboration:**
- Document annotations (PDF, Word)
- Comment threads on AgendaItems
- @mention notifications
- Activity timeline

**Voting:**
- Simple approval workflow (approve/reject)
- Voice vote recording
- Roll call vote tracking
- Quorum validation

**Notifications:**
- Email notification engine
- Meeting reminder schedule (7 days, 1 day, 1 hour)
- Action item assignment alerts
- Attendance confirmation requests

**Integrations:**
- Calendar event creation (Google/Outlook)
- Video conferencing join URLs (Zoom/Teams)
- Document provider linking (Drive/SharePoint)

**Mobile:**
- Responsive Angular UI
- Offline document cache
- Touch-optimized controls

**Reporting:**
- Attendance summary reports
- Action item dashboard
- Meeting frequency charts

**Deliverable:** Competitive MVP ready for beta customers

---

### **Phase 2: Enhanced Core & Intelligence (Months 7-12)**
*AI features + advanced collaboration*

**AI-Powered Features:**
- Meeting minute generation (AI draft from transcript)
- Board book summarization
- Smart agenda suggestions from past patterns
- Action item auto-extraction from discussion

**Enhanced Collaboration:**
- Real-time co-editing of agendas
- Private messaging between members
- File sharing (not just linking)
- Meeting recording integration

**Committee Management:**
- **Engagement scoring** - Attendance, participation, action completion
- **Committee health dashboard** - Chair view of member activity
- **Member directory** - Skills, expertise, availability
- **Onboarding workflows** - New member welcome sequence

**Enhanced Reporting:**
- Executive dashboard (all committees)
- Committee chair dashboard (my committee)
- Member dashboard (my tasks)
- Trend analysis (attendance over time)

**Additional Integrations:**
- AMS integration (basic) - Member sync
- SSO (Google, Microsoft, Okta)
- Slack/Teams notifications

**Deliverable:** Differentiated from entry-level competitors

---

### **Phase 3: Association Excellence (Months 13-18)**
*Features specific to professional associations & standards bodies*

**Election Management:**
- **Nomination workflow:**
  - Self-nomination forms
  - Nomination by others
  - Candidate profiles with bios
  - Qualification verification
- **Secure voting:**
  - Ballot creation
  - Voting period management
  - Results tabulation
  - Integration with external voting platforms (Polyas, Election Buddy)
- **Term transition:**
  - Automated officer succession
  - Knowledge transfer checklists
  - Outgoing member exit interviews

**Standards Development Workflows:**
- **Ballot management:**
  - Draft ballot creation
  - Comment period tracking (60-day public review)
  - Comment resolution workflows
  - Recirculation management
- **Working group coordination:**
  - Sub-group hierarchy
  - Specification versioning
  - Public vs. private workspace
  - ISO/ANSI compliance tracking

**Succession Planning:**
- **Leadership pipeline:**
  - Identify high-engagement members
  - Officer progression paths (Member → Officer → Vice Chair → Chair)
  - Leadership training tracking
  - Mentorship program management
- **Continuity planning:**
  - Staggered term management
  - Institutional knowledge capture
  - Critical role coverage

**Committee Charters:**
- **Charter management:**
  - Charter templates
  - Approval workflows
  - Annual review scheduling
  - Version control
  - Bylaw integration

**Compliance Features:**
- **Conflict of interest:**
  - Annual disclosure forms
  - Mid-cycle updates
  - Conflict evaluation workflows
  - Recusal tracking in meetings
- **Document retention:**
  - Automated retention policies (7 years financial, permanent minutes)
  - Scheduled disposal workflows
  - Compliance reporting (SOX, nonprofit)

**Deep AMS Integration:**
- Fonteva connector
- Nimble AMS connector
- YourMembership connector
- Bidirectional member sync
- Event integration
- Engagement scoring sync

**Deliverable:** Best-in-class for associations and standards bodies

---

### **Phase 4: Enterprise & Vision (Months 19-24)**
*Multi-entity management and advanced features*

**Multi-Entity Management:**
- Chapter/subsidiary support
- Rolled-up reporting across entities
- Centralized administration
- Shared templates and policies

**Advanced Workflows:**
- No-code workflow builder
- Custom form builder
- Complex approval routing
- Conditional logic

**Real-Time Collaboration:**
- Live meeting mode with real-time agenda
- Collaborative annotations during meetings
- Real-time voting during video calls
- Live transcription integration

**Advanced Analytics:**
- Predictive modeling (attendance forecasting)
- At-risk committee identification
- Optimal composition analysis
- Custom report builder

**Ecosystem:**
- Public REST API
- Webhook support
- Zapier integrations
- Developer documentation
- Partner marketplace

**Deliverable:** Enterprise-grade platform with ecosystem

---

## Critical Additions to Current Plan

### **Entities to Add:**

**1. Vote Entity** (Phase 1B)
```sql
CREATE TABLE __mj_Committees.Vote (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    MeetingID UNIQUEIDENTIFIER FK,
    AgendaItemID UNIQUEIDENTIFIER FK,
    MotionText NVARCHAR(MAX),
    VoteType NVARCHAR(50), -- VoiceVote, RollCall, Secret, Unanimous
    ResultType NVARCHAR(50), -- Passed, Failed, Tabled, Withdrawn
    YesCount INT,
    NoCount INT,
    AbstainCount INT,
    QuorumMet BIT,
    VotedAt DATETIMEOFFSET
)

CREATE TABLE __mj_Committees.VoteCast (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    VoteID UNIQUEIDENTIFIER FK,
    PersonID UNIQUEIDENTIFIER FK,
    CastAs NVARCHAR(20), -- Yes, No, Abstain
    CastAt DATETIMEOFFSET
)
```

**2. Comment Entity** (Phase 1B)
```sql
CREATE TABLE __mj_Committees.Comment (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    EntityID UNIQUEIDENTIFIER FK, -- Polymorphic: AgendaItem, ActionItem, Artifact
    RecordID NVARCHAR(700),
    PersonID UNIQUEIDENTIFIER FK,
    ParentCommentID UNIQUEIDENTIFIER FK, -- Threading
    CommentText NVARCHAR(MAX),
    MentionedPersonIDs NVARCHAR(MAX), -- JSON array for @mentions
    IsResolved BIT DEFAULT 0
)
```

**3. Notification Entity** (Phase 1B)
```sql
CREATE TABLE __mj_Committees.Notification (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    PersonID UNIQUEIDENTIFIER FK,
    NotificationType NVARCHAR(100), -- MeetingReminder, ActionItemAssigned, etc.
    EntityID UNIQUEIDENTIFIER FK,
    RecordID NVARCHAR(700),
    MessageText NVARCHAR(MAX),
    ChannelType NVARCHAR(50), -- Email, InApp, SMS
    Status NVARCHAR(50), -- Pending, Sent, Failed, Read
    ScheduledFor DATETIMEOFFSET,
    SentAt DATETIMEOFFSET
)
```

**4. AuditLog Entity** (Phase 1B)
```sql
CREATE TABLE __mj_Committees.AuditLog (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    PersonID UNIQUEIDENTIFIER FK,
    EntityID UNIQUEIDENTIFIER FK,
    RecordID NVARCHAR(700),
    ActionType NVARCHAR(50), -- Created, Updated, Deleted, Viewed, Exported
    FieldsChanged NVARCHAR(MAX), -- JSON
    IPAddress NVARCHAR(50),
    UserAgent NVARCHAR(500),
    Timestamp DATETIMEOFFSET
)
```

**5. Charter Entity** (Phase 3)
```sql
CREATE TABLE __mj_Committees.Charter (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    CommitteeID UNIQUEIDENTIFIER FK,
    Version INT,
    Purpose NVARCHAR(MAX),
    Authority NVARCHAR(MAX),
    Responsibilities NVARCHAR(MAX),
    MeetingSchedule NVARCHAR(500),
    Size INT,
    TermLengthMonths INT,
    MaxConsecutiveTerms INT,
    CompetenciesRequired NVARCHAR(MAX), -- JSON
    ApprovedByPersonID UNIQUEIDENTIFIER FK,
    ApprovedAt DATETIMEOFFSET,
    EffectiveDate DATE,
    NextReviewDate DATE,
    Status NVARCHAR(50) -- Draft, Active, Superseded
)
```

**6. ConflictOfInterest Entity** (Phase 3)
```sql
CREATE TABLE __mj_Committees.ConflictOfInterest (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    PersonID UNIQUEIDENTIFIER FK,
    DisclosureYear INT,
    EntityName NVARCHAR(255),
    RelationshipType NVARCHAR(100), -- Owner, Employee, BoardMember, Family
    OwnershipPercentage DECIMAL(5,2),
    EstimatedAnnualValue DECIMAL(15,2),
    Description NVARCHAR(MAX),
    EvaluatedByPersonID UNIQUEIDENTIFIER FK,
    Disposition NVARCHAR(50), -- NoConflict, ManagedByRecusal, Disqualifying
    Notes NVARCHAR(MAX)
)
```

### **Services to Build:**

**Phase 1B Services:**
1. **NotificationService** - Schedule and send notifications
2. **VotingService** - Manage votes and quorum
3. **CommentService** - Thread comments with @mentions
4. **AuditService** - Log all sensitive actions
5. **CalendarIntegrationService** - Sync with Google/Outlook
6. **VideoConferenceService** - Generate join URLs (Zoom/Teams)

**Phase 2 Services:**
7. **AIMinuteGeneratorService** - Draft minutes from transcript
8. **EngagementScoringService** - Calculate member participation
9. **CommitteeHealthService** - Dashboard metrics
10. **AuditService** - Track all record changes

**Phase 3 Services:**
11. **ElectionService** - Manage nominations and voting
12. **BallotService** - Standards development workflows
13. **ConflictOfInterestService** - Annual disclosures and tracking
14. **CharterService** - Charter approval and review workflows
15. **AMSIntegrationService** - Sync with Fonteva/Nimble AMS

---

## Market Positioning Strategy

### **Target Market Priority:**

**1. Primary: Professional Associations (60% focus)**
- Medical, legal, engineering associations
- Standards development organizations (IEEE, ANSI participants)
- Trade associations with complex committee structures

**Why:** Underserved market, willing to pay, complex needs that differentiate you

**2. Secondary: Nonprofit Boards (30% focus)**
- Nonprofits with multiple active committees
- Foundations with governance requirements
- Educational institutions

**Why:** Larger market, good fit for core features, upgrade path to premium

**3. Tertiary: Mid-Market Corporate (10% focus)**
- Private companies with board governance needs
- Family businesses with advisory boards
- Selective industries (healthcare, professional services)

**Why:** Smaller market for you, but high willingness to pay if you solve their pain

### **Competitive Differentiation:**

**vs. Boardable (entry-level competitor):**
- **Beat on:** Association-specific features, AI intelligence, integrations
- **Match on:** Usability, mobile experience
- **Pricing:** Similar base price, upsell on advanced features

**vs. Diligent/BoardEffect (enterprise competitors):**
- **Beat on:** Usability, transparent pricing, association workflows
- **Trail on:** Enterprise features (multi-entity, compliance dashboards)
- **Pricing:** Significantly lower (1/3 to 1/2 their price)

**vs. AMS Platforms (Fonteva, Nimble AMS):**
- **Beat on:** Purpose-built committee features, standalone value
- **Integrate with:** Not competing, complementing
- **Positioning:** "Best-of-breed committee management that integrates with your AMS"

### **Pricing Recommendation:**

**Per-Organization Tiering (Unlimited Users):**

- **Starter:** $199/month
  - Up to 3 committees
  - Unlimited users
  - 100GB storage
  - All Phase 1 features
  - Email support

- **Professional:** $499/month
  - Up to 10 committees
  - Unlimited users
  - 500GB storage
  - All Phase 2 features (AI, advanced reporting)
  - Priority support

- **Enterprise:** $999/month
  - Unlimited committees
  - Unlimited users
  - Unlimited storage
  - All Phase 3 features (elections, standards, compliance)
  - Dedicated account manager
  - SLA guarantees

**Add-Ons:**
- **Election Management:** +$99/month (only during election periods)
- **Advanced Analytics:** +$199/month
- **AMS Integration:** +$299/month (setup) + $99/month
- **Custom Workflows:** +$499/month

**Nonprofit Discount:** 20% off (automatic, no application required)

**Why This Works:**
- Published pricing (no "contact sales" friction)
- Unlimited users encourages inclusive governance
- Tiered by committees (proxy for organization size)
- Add-ons for specialized needs (fair pricing)
- Significantly cheaper than enterprise competitors
- Higher than entry-level but justified by features

---

## Implementation Recommendations

### **Month 1-3: Phase 1A - Core Foundation**

**Week 1-2:**
- ✅ Run BizApps migration (already in progress in other repo)
- ✅ Run Committees migration
- ✅ Run CodeGen
- Build basic entity services (CommitteeService, MeetingService, etc.)

**Week 3-6:**
- Implement Committee CRUD (list, create, edit, delete)
- Implement Membership management
- Implement Meeting lifecycle (create, schedule, conduct)
- Basic Angular components (committee list, detail, meeting planner)

**Week 7-12:**
- Action item tracking
- Artifact linking
- Agenda item management
- Basic reporting (attendance, action items)

**Deliverable:** Functional core with no frills

---

### **Month 4-6: Phase 1B - Table Stakes**

**Security (Week 13-14):**
- Implement audit logging
- Add 2FA support via MJ
- RBAC enforcement
- Encryption validation

**Voting (Week 15-16):**
- Vote and VoteCast entities
- VotingService implementation
- Quorum validation
- Vote result tracking

**Collaboration (Week 17-19):**
- Comment entity and threading
- @mention parsing and notifications
- Activity feed
- Document annotations (PDF.js or similar)

**Notifications (Week 20-22):**
- Notification entity and queue
- NotificationService (email via SendGrid)
- Meeting reminder schedules
- Action item alerts
- Attendance confirmations

**Integrations (Week 23-24):**
- Calendar service (Google/Outlook)
- Video conference service (Zoom/Teams)
- Document provider linking

**Deliverable:** Competitive MVP, beta-ready

---

### **Success Metrics to Track:**

**Phase 1A/1B Completion:**
- ✅ All 10+ entities migrated and CodeGen'd
- ✅ Core CRUD operations functional
- ✅ Meeting lifecycle end-to-end working
- ✅ Security features implemented
- ✅ Notification system sending emails
- ✅ At least 1 integration working (calendar or video)

**User Adoption (Beta Period):**
- 5-10 beta customers by Month 6
- 90%+ feature usage (core features used by 90% of users)
- <5% churn during beta
- NPS score 40+ (good for new product)
- Average 3+ committees per customer

**Performance:**
- Meeting creation <2 seconds
- Agenda loading <1 second
- Document upload <5 seconds for 10MB
- Notification delivery <1 minute
- Mobile page load <3 seconds

**Support:**
- 95%+ uptime
- <24 hour response time on support tickets
- <3 day resolution time for bugs
- Zero data breaches or security incidents

---

## Next Steps

1. **Review and approve this enhanced plan** ✓
2. **Update committees-design.md** with Phase 1B additions
3. **Create entity migrations** for Vote, Comment, Notification, AuditLog
4. **Run CodeGen** to generate new entity classes
5. **Begin Phase 1A implementation** (core foundation)
6. **Parallel: Design Phase 1B UI/UX** while Phase 1A is in dev

---

## Appendix: Feature Comparison Matrix

| Feature | Boardable | Diligent | Your MVP (1B) | Your Phase 2 | Your Phase 3 |
|---------|-----------|----------|---------------|--------------|--------------|
| **Core Meeting Management** | ✅ | ✅ | ✅ | ✅ | ✅ |
| Document Management | ✅ | ✅ | ✅ | ✅ | ✅ |
| Mobile Responsive | ✅ | ✅ | ✅ | ✅ | ✅ |
| Offline Access | ❌ | ✅ | ✅ | ✅ | ✅ |
| Voting/Approvals | ✅ | ✅ | ✅ | ✅ | ✅ |
| Calendar Integration | ✅ | ✅ | ✅ | ✅ | ✅ |
| Video Integration | ✅ | ✅ | ✅ | ✅ | ✅ |
| **AI Features** | ❌ | ✅ | ❌ | ✅ | ✅ |
| Board Book Summarization | ❌ | ✅ | ❌ | ✅ | ✅ |
| Automated Minutes | ❌ | ✅ | ❌ | ✅ | ✅ |
| **Association-Specific** | | | | | |
| Election Management | ❌ | ❌ | ❌ | ❌ | ✅ |
| Standards Development | ❌ | ❌ | ❌ | ❌ | ✅ |
| Succession Planning | ❌ | ❌ | ❌ | ❌ | ✅ |
| AMS Integration | ❌ | ❌ | ❌ | Basic | Deep |
| Engagement Scoring | ❌ | ❌ | ❌ | ✅ | ✅ |
| **Enterprise** | | | | | |
| Multi-Entity | ❌ | ✅ | ❌ | ❌ | Future |
| SOX Compliance | ❌ | ✅ | ❌ | ❌ | ✅ |
| **Pricing (Est.)** | $25-44/mo | $300+/mo | $199/mo | $499/mo | $999/mo |

---

**Bottom Line:** Your current plan is a great start, but needs Phase 1B (table stakes) features to be competitive. With the enhanced plan, you'll be positioned as the best choice for professional associations while remaining accessible to nonprofits and competitive with entry-level board portals.
