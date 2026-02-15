# Committees App

A unified governance platform for managing committees, memberships, meetings, and action tracking. Built as an [OpenApp](https://github.com/MemberJunction/MJ) on the MemberJunction platform.

## The Problem

Organizations manage committee operations through disconnected tools -- spreadsheets for rosters, email threads for coordination, shared drives for documents, and calendar apps that don't sync with membership data. This fragmentation leads to lost institutional knowledge, missed action items, and hours spent on administrative overhead.

## What This App Does

| Capability | Description |
|---|---|
| **Committee Structure** | Define types (Board, Standing, Ad Hoc, Workgroup, Standards WG), create committees, manage hierarchies |
| **Membership Management** | Track who serves, their roles, term dates, and historical membership |
| **Meeting Coordination** | Schedule meetings, build agendas, capture attendance, link video conferencing |
| **Motions & Voting** | Record formal motions, individual votes, and results |
| **Action Tracking** | Assign tasks from meetings, monitor progress, drive accountability |
| **Document Linking** | Connect to Google Drive, SharePoint, OneDrive, Box, Dropbox -- no migration needed |
| **Minutes Management** | Track draft/approval lifecycle of meeting minutes |

## Schema Overview

All tables live in the `Committees` SQL schema (14 tables):

**Structure** -- Type, Committee, Term
**People** -- Role, Membership
**Operations** -- Meeting, AgendaItem, Attendance
**Governance** -- Motion, Vote
**Outcomes** -- ActionItem, Artifact, ArtifactType, Minute

See [plans/committees-design.md](plans/committees-design.md) for the full design document with ERDs, sequence diagrams, and state machines.

## Prerequisites

- **MemberJunction** v4.x or higher (this is an MJ OpenApp)
- **Node.js** 22+
- **SQL Server** 2019+ or Azure SQL
- A configured MJ environment with database access

## Quick Start

### 1. Install Dependencies

```bash
npm install
```

### 2. Configure Environment

Copy or edit `.env` with your database connection settings. See MemberJunction docs for required environment variables (DB_HOST, DB_DATABASE, DB_USERNAME, DB_PASSWORD, auth provider settings).

### 3. Run Migrations

```bash
npm run mj:migrate
```

This creates the `Committees` schema and all 14 tables.

### 4. Sync Metadata

```bash
npx mj-sync push --dir ./metadata
```

This loads seed data for committee types, roles, and artifact types.

### 5. Run Code Generation

```bash
npm run mj:codegen
```

Generates TypeScript entity classes, GraphQL resolvers, and Angular components.

### 6. Build & Run

```bash
npm run build
npm start
```

## Directory Structure

```
.
├── apps/
│   ├── MJAPI/                 # GraphQL API server
│   └── MJExplorer/            # Angular UI
├── Demos/                     # Demo datasets (sample SQL data)
├── metadata/                  # Seed data (types, roles, artifact types)
│   ├── committee-types/
│   ├── roles/
│   └── artifact-types/
├── migrations/                # Flyway database migrations
├── packages/
│   ├── GeneratedEntities/     # Auto-generated entity classes
│   └── GeneratedActions/      # Auto-generated action classes
├── plans/                     # Design documents
├── SQL Scripts/               # SQL views and stored procedures
├── mj.config.cjs              # MemberJunction configuration
└── turbo.json                 # Turbo build configuration
```

## Seed Data

Managed via the `metadata/` folder using `mj-sync`. Includes:

- **5 Committee Types**: Board of Directors, Standing Committee, Ad Hoc Committee, Workgroup, Standards Working Group
- **7 Roles**: Chair, Vice Chair, Secretary, Member, Non-Voting Member, Liaison, Advisor
- **9 Artifact Types**: Document, Spreadsheet, Presentation, Minutes, Agenda, Recording, Transcript, Image, Other

## Design

The full design document is at [plans/committees-design.md](plans/committees-design.md) and covers:

- Business overview and key personas
- Conceptual model and the "Membership Triangle" (Who + Where + As What + When)
- Complete ERD with all relationships
- Sequence diagrams for setting up committees, running meetings, action item lifecycle, and term transitions
- State diagrams for Committee, Meeting, Action Item, and Term lifecycles
- Phase roadmap (Core, Enhanced, Standards/Voting, AI)

## Development

### After Database Changes

```bash
npm run mj:migrate     # Run new migrations
npm run mj:codegen     # Regenerate TypeScript/GraphQL/Angular code
npm run build          # Rebuild all packages
```

### Updating MemberJunction Packages

```bash
./Update_MemberJunction_Packages_To_Latest.ps1
npm install
npm run build
```

## Roadmap

| Phase | Focus | Status |
|---|---|---|
| **Phase 1** | Core schema, CRUD, document linking | In Progress |
| **Phase 2** | Dashboards, meeting templates, notifications | Planned |
| **Phase 3** | Workflow stages, balloting, calendar integration | Planned |
| **Phase 4** | AI-generated minutes, transcript processing, analytics | Planned |

## License

ISC
