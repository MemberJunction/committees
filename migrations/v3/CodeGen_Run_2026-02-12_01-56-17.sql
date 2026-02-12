/* SQL generated to create new entity Committees: Types */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'e10e8df7-67a9-43e4-9581-1792ceae4afa',
         'Committees: Types',
         'Types',
         NULL,
         NULL,
         'Type',
         'vwTypes',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to create new application Committees */
INSERT INTO [${flyway:defaultSchema}].Application (ID, Name, Description, SchemaAutoAddNewEntities, Path, AutoUpdatePath)
                       VALUES ('774cfa06-cc21-4711-b8b8-8a526cced120', 'Committees', 'Generated for schema', 'Committees', 'committees', 1)

/* SQL generated to add new entity Committees: Types to application ID: '774cfa06-cc21-4711-b8b8-8a526cced120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774cfa06-cc21-4711-b8b8-8a526cced120', 'e10e8df7-67a9-43e4-9581-1792ceae4afa', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774cfa06-cc21-4711-b8b8-8a526cced120'))

/* SQL generated to add new permission for entity Committees: Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e10e8df7-67a9-43e4-9581-1792ceae4afa', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e10e8df7-67a9-43e4-9581-1792ceae4afa', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e10e8df7-67a9-43e4-9581-1792ceae4afa', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Committees */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '7b21610c-29f9-47b3-b416-0fde8fd7fb1f',
         'Committees: Committees',
         'Committees',
         NULL,
         NULL,
         'Committee',
         'vwCommittees',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Committees to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '7b21610c-29f9-47b3-b416-0fde8fd7fb1f', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Committees for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('7b21610c-29f9-47b3-b416-0fde8fd7fb1f', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Committees for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('7b21610c-29f9-47b3-b416-0fde8fd7fb1f', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Committees for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('7b21610c-29f9-47b3-b416-0fde8fd7fb1f', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Terms */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '2f1fcb74-b53a-4c0a-bac0-2a80d48fdefd',
         'Committees: Terms',
         'Terms',
         NULL,
         NULL,
         'Term',
         'vwTerms',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Terms to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '2f1fcb74-b53a-4c0a-bac0-2a80d48fdefd', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Terms for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f1fcb74-b53a-4c0a-bac0-2a80d48fdefd', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Terms for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f1fcb74-b53a-4c0a-bac0-2a80d48fdefd', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Terms for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f1fcb74-b53a-4c0a-bac0-2a80d48fdefd', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Roles */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'f5df73d6-a95f-4c90-a29d-4427b9d1180d',
         'Committees: Roles',
         'Roles',
         NULL,
         NULL,
         'Role',
         'vwRoles',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Roles to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'f5df73d6-a95f-4c90-a29d-4427b9d1180d', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Roles for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('f5df73d6-a95f-4c90-a29d-4427b9d1180d', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Roles for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('f5df73d6-a95f-4c90-a29d-4427b9d1180d', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Roles for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('f5df73d6-a95f-4c90-a29d-4427b9d1180d', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Memberships */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'd84f3e7b-81f4-473c-af22-8eacbfc467a9',
         'Committees: Memberships',
         'Memberships',
         NULL,
         NULL,
         'Membership',
         'vwMemberships',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Memberships to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'd84f3e7b-81f4-473c-af22-8eacbfc467a9', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Memberships for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('d84f3e7b-81f4-473c-af22-8eacbfc467a9', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Memberships for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('d84f3e7b-81f4-473c-af22-8eacbfc467a9', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Memberships for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('d84f3e7b-81f4-473c-af22-8eacbfc467a9', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Meetings */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '53496733-00ed-4311-b3f7-88d51cfd7187',
         'Committees: Meetings',
         'Meetings',
         NULL,
         NULL,
         'Meeting',
         'vwMeetings',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Meetings to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '53496733-00ed-4311-b3f7-88d51cfd7187', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Meetings for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('53496733-00ed-4311-b3f7-88d51cfd7187', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Meetings for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('53496733-00ed-4311-b3f7-88d51cfd7187', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Meetings for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('53496733-00ed-4311-b3f7-88d51cfd7187', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Agenda Items */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '029c1632-67ef-49df-8649-76ca82ab93dc',
         'Committees: Agenda Items',
         'Agenda Items',
         NULL,
         NULL,
         'AgendaItem',
         'vwAgendaItems',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Agenda Items to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '029c1632-67ef-49df-8649-76ca82ab93dc', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Agenda Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('029c1632-67ef-49df-8649-76ca82ab93dc', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Agenda Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('029c1632-67ef-49df-8649-76ca82ab93dc', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Agenda Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('029c1632-67ef-49df-8649-76ca82ab93dc', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Attendances */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '057d3096-6e81-43f8-93a0-b18d95b9d550',
         'Committees: Attendances',
         'Attendances',
         NULL,
         NULL,
         'Attendance',
         'vwAttendances',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Attendances to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '057d3096-6e81-43f8-93a0-b18d95b9d550', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Attendances for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('057d3096-6e81-43f8-93a0-b18d95b9d550', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Attendances for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('057d3096-6e81-43f8-93a0-b18d95b9d550', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Attendances for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('057d3096-6e81-43f8-93a0-b18d95b9d550', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Action Items */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'a0401025-8b02-4c18-beab-f27a30f2e217',
         'Committees: Action Items',
         'Action Items',
         NULL,
         NULL,
         'ActionItem',
         'vwActionItems',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Action Items to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'a0401025-8b02-4c18-beab-f27a30f2e217', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Action Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a0401025-8b02-4c18-beab-f27a30f2e217', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Action Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a0401025-8b02-4c18-beab-f27a30f2e217', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Action Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a0401025-8b02-4c18-beab-f27a30f2e217', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Artifact Types */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'b8de1802-b7a7-47f3-8a2b-727e105dfa95',
         'Committees: Artifact Types',
         'Artifact Types',
         NULL,
         NULL,
         'ArtifactType',
         'vwArtifactTypes',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Artifact Types to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'b8de1802-b7a7-47f3-8a2b-727e105dfa95', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Artifact Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8de1802-b7a7-47f3-8a2b-727e105dfa95', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Artifact Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8de1802-b7a7-47f3-8a2b-727e105dfa95', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Artifact Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8de1802-b7a7-47f3-8a2b-727e105dfa95', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Artifacts */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '4494c5f2-e37e-4351-b933-133b7ae38eaf',
         'Committees: Artifacts',
         'Artifacts',
         NULL,
         NULL,
         'Artifact',
         'vwArtifacts',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Artifacts to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '4494c5f2-e37e-4351-b933-133b7ae38eaf', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Artifacts for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4494c5f2-e37e-4351-b933-133b7ae38eaf', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Artifacts for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4494c5f2-e37e-4351-b933-133b7ae38eaf', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Artifacts for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4494c5f2-e37e-4351-b933-133b7ae38eaf', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Minutes */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'b8cdf74d-3151-435e-9c8f-1c9ef6bd3f7c',
         'Committees: Minutes',
         'Minutes',
         NULL,
         NULL,
         'Minute',
         'vwMinutes',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Minutes to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'b8cdf74d-3151-435e-9c8f-1c9ef6bd3f7c', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Minutes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8cdf74d-3151-435e-9c8f-1c9ef6bd3f7c', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Minutes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8cdf74d-3151-435e-9c8f-1c9ef6bd3f7c', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Minutes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('b8cdf74d-3151-435e-9c8f-1c9ef6bd3f7c', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Motions */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         'e894f05b-500f-4a86-a1b1-34825c8a9736',
         'Committees: Motions',
         'Motions',
         NULL,
         NULL,
         'Motion',
         'vwMotions',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Motions to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', 'e894f05b-500f-4a86-a1b1-34825c8a9736', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Motions for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e894f05b-500f-4a86-a1b1-34825c8a9736', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Motions for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e894f05b-500f-4a86-a1b1-34825c8a9736', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Motions for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e894f05b-500f-4a86-a1b1-34825c8a9736', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees: Votes */

      INSERT INTO [${flyway:defaultSchema}].Entity (
         ID,
         Name,
         DisplayName,
         Description,
         NameSuffix,
         BaseTable,
         BaseView,
         SchemaName,
         IncludeInAPI,
         AllowUserSearchAPI
         , TrackRecordChanges
         , AuditRecordAccess
         , AuditViewRuns
         , AllowAllRowsAPI
         , AllowCreateAPI
         , AllowUpdateAPI
         , AllowDeleteAPI
         , UserViewMaxRows
      )
      VALUES (
         '43457b5c-4c33-494f-ac37-fe23c82f536b',
         'Committees: Votes',
         'Votes',
         NULL,
         NULL,
         'Vote',
         'vwVotes',
         'Committees',
         1,
         0
         , 1
         , 0
         , 0
         , 0
         , 1
         , 1
         , 1
         , 1000
      )
   

/* SQL generated to add new entity Committees: Votes to application ID: '774CFA06-CC21-4711-B8B8-8A526CCED120' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('774CFA06-CC21-4711-B8B8-8A526CCED120', '43457b5c-4c33-494f-ac37-fe23c82f536b', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '774CFA06-CC21-4711-B8B8-8A526CCED120'))

/* SQL generated to add new permission for entity Committees: Votes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43457b5c-4c33-494f-ac37-fe23c82f536b', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees: Votes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43457b5c-4c33-494f-ac37-fe23c82f536b', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees: Votes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43457b5c-4c33-494f-ac37-fe23c82f536b', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4fff7265-892b-461b-a163-69142ce72c85'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4fff7265-892b-461b-a163-69142ce72c85',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '90182c9e-d7ca-4907-a15c-7c071d0e89d9'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '90182c9e-d7ca-4907-a15c-7c071d0e89d9',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100002,
            'Name',
            'Name',
            'Official name of the committee',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            1,
            1,
            0,
            1,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '3ca5d450-5b6d-4f32-a23f-a58723406cd8'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3ca5d450-5b6d-4f32-a23f-a58723406cd8',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100003,
            'Description',
            'Description',
            'Detailed description of the committee purpose and scope',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '00ff0f42-46b5-4503-9e0c-17118d943995'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'TypeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '00ff0f42-46b5-4503-9e0c-17118d943995',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100004,
            'TypeID',
            'Type ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'b1ef042d-2979-47e1-99d0-ecfed377c6ed'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'ParentCommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b1ef042d-2979-47e1-99d0-ecfed377c6ed',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100005,
            'ParentCommitteeID',
            'Parent Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0c543168-b506-468f-a519-bd16b3dd2729'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'OrganizationID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0c543168-b506-468f-a519-bd16b3dd2729',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100006,
            'OrganizationID',
            'Organization ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5dd40045-5d26-4cd5-aef6-d2297ed37836'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'CharterDocumentURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5dd40045-5d26-4cd5-aef6-d2297ed37836',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100007,
            'CharterDocumentURL',
            'Charter Document URL',
            'URL to the committee charter document',
            'nvarchar',
            2000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '60bf74fe-9d09-4874-96eb-1784517e7915'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'MissionStatement')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '60bf74fe-9d09-4874-96eb-1784517e7915',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100008,
            'MissionStatement',
            'Mission Statement',
            'Brief statement of the committee mission',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5f778039-e446-4714-b4f0-934f538cd47b'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5f778039-e446-4714-b4f0-934f538cd47b',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100009,
            'Status',
            'Status',
            'Current status: Active, Inactive, Pending, or Dissolved',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Active',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2b94b8fb-eee9-4308-a369-e69db39a7ff0'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'IsPublic')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2b94b8fb-eee9-4308-a369-e69db39a7ff0',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100010,
            'IsPublic',
            'Is Public',
            'Whether the committee is visible to all users',
            'bit',
            1,
            1,
            0,
            0,
            '(1)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ca4ab088-65f9-4407-b88b-9250caf6fbaa'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'FormationDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ca4ab088-65f9-4407-b88b-9250caf6fbaa',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100011,
            'FormationDate',
            'Formation Date',
            'Date the committee was formed',
            'date',
            3,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'eeb36783-f18e-4269-b05d-3f6a8b0741b1'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'DissolutionDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'eeb36783-f18e-4269-b05d-3f6a8b0741b1',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100012,
            'DissolutionDate',
            'Dissolution Date',
            'Date the committee was dissolved, if applicable',
            'date',
            3,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2d10ed2a-4987-4509-9f2e-3b008c210069'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2d10ed2a-4987-4509-9f2e-3b008c210069',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100013,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '89f0dc94-9c29-4f3c-a766-3ab388638410'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '89f0dc94-9c29-4f3c-a766-3ab388638410',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100014,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c8fc85de-8545-4809-94a1-e6a1b044ddb5'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c8fc85de-8545-4809-94a1-e6a1b044ddb5',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '23485f05-6c13-4b9d-b0ec-ca23f5aed434'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '23485f05-6c13-4b9d-b0ec-ca23f5aed434',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100002,
            'CommitteeID',
            'Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4f07c31e-90c5-41be-a2a0-8db938b86d84'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4f07c31e-90c5-41be-a2a0-8db938b86d84',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100003,
            'MeetingID',
            'Meeting ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '69315205-a3a0-47e8-984b-60f27223df61'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '69315205-a3a0-47e8-984b-60f27223df61',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100004,
            'AgendaItemID',
            'Agenda Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '029C1632-67EF-49DF-8649-76CA82AB93DC',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '3b91ae95-6472-4009-a119-937d80369508'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'ActionItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3b91ae95-6472-4009-a119-937d80369508',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100005,
            'ActionItemID',
            'Action Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'A0401025-8B02-4C18-BEAB-F27A30F2E217',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '64b0a6c4-b897-4f03-b926-b3081d1b12d9'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '64b0a6c4-b897-4f03-b926-b3081d1b12d9',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100006,
            'Title',
            'Title',
            'Display title for the artifact',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0eeb9f49-69f3-436d-84ea-db3ff68e50e1'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0eeb9f49-69f3-436d-84ea-db3ff68e50e1',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100007,
            'Description',
            'Description',
            'Description of the artifact contents',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '324fdebe-927c-4b10-84c5-2bfdb6b1b32b'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'ArtifactTypeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '324fdebe-927c-4b10-84c5-2bfdb6b1b32b',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100008,
            'ArtifactTypeID',
            'Artifact Type ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'dd98fb29-646d-4567-8d24-2dca48ad576c'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'Provider')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'dd98fb29-646d-4567-8d24-2dca48ad576c',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100009,
            'Provider',
            'Provider',
            'Storage provider: GoogleDrive, SharePoint, Box, OneDrive, Dropbox, URL',
            'nvarchar',
            100,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '59d9d150-04b2-46f6-9a39-de73263c5f39'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'ExternalID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '59d9d150-04b2-46f6-9a39-de73263c5f39',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100010,
            'ExternalID',
            'External ID',
            'Provider-specific document or file ID',
            'nvarchar',
            1000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9b4ee4b0-4e0e-469e-ad25-7eb7ff5b5dd6'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'URL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9b4ee4b0-4e0e-469e-ad25-7eb7ff5b5dd6',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100011,
            'URL',
            'URL',
            'Direct URL to access the artifact',
            'nvarchar',
            4000,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8e85f690-c77d-4ad9-85c1-dddc7f376dd6'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'MimeType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8e85f690-c77d-4ad9-85c1-dddc7f376dd6',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100012,
            'MimeType',
            'Mime Type',
            'MIME type of the file',
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '10005e68-1a18-4dde-9578-0b591fba97a8'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'FileSize')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '10005e68-1a18-4dde-9578-0b591fba97a8',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100013,
            'FileSize',
            'File Size',
            'File size in bytes',
            'bigint',
            8,
            19,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ebfa4d58-3a57-422c-9bb2-fd1df07335a5'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'UploadedByUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ebfa4d58-3a57-422c-9bb2-fd1df07335a5',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100014,
            'UploadedByUserID',
            'Uploaded By User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '58ac2445-6d8b-47a6-b9d7-fbccbbcce7d1'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '58ac2445-6d8b-47a6-b9d7-fbccbbcce7d1',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100015,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ea65cf63-0258-4c8a-a238-64643b969a6e'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ea65cf63-0258-4c8a-a238-64643b969a6e',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100016,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '999be9a4-8e02-4666-8579-98ab911343b8'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '999be9a4-8e02-4666-8579-98ab911343b8',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'acc49c65-ea5f-4a07-a674-c613abda8507'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'acc49c65-ea5f-4a07-a674-c613abda8507',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100002,
            'Name',
            'Name',
            'Display name for the committee type',
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            1,
            1,
            0,
            1,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e79e9cb2-6e5b-4214-b60a-85524296abdd'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e79e9cb2-6e5b-4214-b60a-85524296abdd',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100003,
            'Description',
            'Description',
            'Detailed description of this committee type',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '6f5747ab-58b6-4237-b8de-88627e215996'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'IsStandards')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6f5747ab-58b6-4237-b8de-88627e215996',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100004,
            'IsStandards',
            'Is Standards',
            'Whether this type is for standards development committees',
            'bit',
            1,
            1,
            0,
            0,
            '(0)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5bc34cdc-b66e-4a34-98f6-780de9c1d180'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'DefaultTermMonths')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5bc34cdc-b66e-4a34-98f6-780de9c1d180',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100005,
            'DefaultTermMonths',
            'Default Term Months',
            'Default term length in months for committees of this type',
            'int',
            4,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4120dd7e-1631-4f2b-a12c-fc6216de0978'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = 'IconClass')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4120dd7e-1631-4f2b-a12c-fc6216de0978',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100006,
            'IconClass',
            'Icon Class',
            'Font Awesome icon class for UI display',
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5ecc1715-f17f-4b3c-a591-f330ee5a7d68'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5ecc1715-f17f-4b3c-a591-f330ee5a7d68',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100007,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '15c37811-a643-482c-9a6d-48239a144594'  OR 
               (EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '15c37811-a643-482c-9a6d-48239a144594',
            'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', -- Entity: Committees: Types
            100008,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'b924630d-e263-42db-b168-874761b8f3a4'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b924630d-e263-42db-b168-874761b8f3a4',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ac5d9f28-ad2a-4ed1-8c69-9e1917e0fdce'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'ArtifactID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ac5d9f28-ad2a-4ed1-8c69-9e1917e0fdce',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100002,
            'ArtifactID',
            'Artifact ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '4494C5F2-E37E-4351-B933-133B7AE38EAF',
            'ID',
            0,
            0,
            1,
            0,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f7a7dfdd-7354-4e7e-9b9c-6a8124b19254'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'ApprovalStatus')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f7a7dfdd-7354-4e7e-9b9c-6a8124b19254',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100003,
            'ApprovalStatus',
            'Approval Status',
            'Current approval status: Draft, PendingApproval, Approved, Rejected',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Draft',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd5715d77-8fbf-4606-8139-499ef0b0e6c5'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'ApprovedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd5715d77-8fbf-4606-8139-499ef0b0e6c5',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100004,
            'ApprovedAt',
            'Approved At',
            'Timestamp when the minutes were approved',
            'datetimeoffset',
            10,
            34,
            7,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5b0e28a0-9af6-40fd-a1d2-66cd335934c5'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'ApprovedByMeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5b0e28a0-9af6-40fd-a1d2-66cd335934c5',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100005,
            'ApprovedByMeetingID',
            'Approved By Meeting ID',
            'Reference to the meeting at which these minutes were approved (typically the next meeting)',
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '1ecd44e8-4bbb-4501-9d30-deaa1a7536fb'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1ecd44e8-4bbb-4501-9d30-deaa1a7536fb',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100006,
            'Notes',
            'Notes',
            'Additional notes about the minutes',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0de2be57-7a6c-40d1-805c-e5ca7783b2a5'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0de2be57-7a6c-40d1-805c-e5ca7783b2a5',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100007,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '6c92863c-65b0-4f08-ae45-162244b67054'  OR 
               (EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6c92863c-65b0-4f08-ae45-162244b67054',
            'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', -- Entity: Committees: Minutes
            100008,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c615b152-f7cd-440e-b4a6-717af5969f88'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c615b152-f7cd-440e-b4a6-717af5969f88',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c2c83172-81e6-4b75-805f-b0e4f814e811'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c2c83172-81e6-4b75-805f-b0e4f814e811',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100002,
            'CommitteeID',
            'Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '281e889c-4006-4faf-9312-f50de18fde57'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '281e889c-4006-4faf-9312-f50de18fde57',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100003,
            'Name',
            'Name',
            'Display name for the term, e.g. 2025-2026',
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            1,
            1,
            0,
            1,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '02f147ce-2929-4578-8b21-4344312aee1b'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'StartDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '02f147ce-2929-4578-8b21-4344312aee1b',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100004,
            'StartDate',
            'Start Date',
            'Start date of the term',
            'date',
            3,
            10,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4dade5a7-aa2f-4a5f-ae18-ecda2f2692b5'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'EndDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4dade5a7-aa2f-4a5f-ae18-ecda2f2692b5',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100005,
            'EndDate',
            'End Date',
            'End date of the term',
            'date',
            3,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '358e4278-1140-4e71-864e-b15033567581'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '358e4278-1140-4e71-864e-b15033567581',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100006,
            'Status',
            'Status',
            'Current status: Active, Upcoming, or Completed',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Active',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ea5c88a7-174f-4b20-926d-a51416bef0be'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ea5c88a7-174f-4b20-926d-a51416bef0be',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100007,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c54d413c-3b8c-4a00-accb-082fb5f1a0b8'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c54d413c-3b8c-4a00-accb-082fb5f1a0b8',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100008,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '91f802df-3c50-48af-9c72-46973eb16b58'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '91f802df-3c50-48af-9c72-46973eb16b58',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '81f02f9c-2a7b-466d-bf0a-a229ffa96544'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '81f02f9c-2a7b-466d-bf0a-a229ffa96544',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100002,
            'MeetingID',
            'Meeting ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4c6b79af-cab0-4d9b-a284-1af3994ae16a'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4c6b79af-cab0-4d9b-a284-1af3994ae16a',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100003,
            'AgendaItemID',
            'Agenda Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '029C1632-67EF-49DF-8649-76CA82AB93DC',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'fc60b5c3-204d-45d1-9f83-c7ff347bd1d8'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'fc60b5c3-204d-45d1-9f83-c7ff347bd1d8',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100004,
            'Sequence',
            'Sequence',
            'Display order when multiple motions exist for the same agenda item',
            'int',
            4,
            10,
            0,
            0,
            '(1)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '479a73eb-d652-43e1-b5f9-c1ebddcfcfcc'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '479a73eb-d652-43e1-b5f9-c1ebddcfcfcc',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100005,
            'Title',
            'Title',
            'Title of the motion',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'a6013279-980c-4409-9e37-02274ccfa65f'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a6013279-980c-4409-9e37-02274ccfa65f',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100006,
            'Description',
            'Description',
            'Full text or description of the motion',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '646104df-9a6c-480e-a2f5-7cba04fe1977'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'MovedByMembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '646104df-9a6c-480e-a2f5-7cba04fe1977',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100007,
            'MovedByMembershipID',
            'Moved By Membership ID',
            'The committee member who made the motion',
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2a7c68e0-edee-49d3-926a-fc8fadfb25ef'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'SecondedByMembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2a7c68e0-edee-49d3-926a-fc8fadfb25ef',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100008,
            'SecondedByMembershipID',
            'Seconded By Membership ID',
            'The committee member who seconded the motion',
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '046787b1-f7ca-47b5-9812-ac1dadf57e1d'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'Result')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '046787b1-f7ca-47b5-9812-ac1dadf57e1d',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100009,
            'Result',
            'Result',
            'Outcome of the vote: Pending, Passed, Failed, Tabled, Withdrawn',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Pending',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2c3bbebc-150a-4720-87c2-1b70982b9353'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'ResultSummary')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2c3bbebc-150a-4720-87c2-1b70982b9353',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100010,
            'ResultSummary',
            'Result Summary',
            'Human-readable vote tally, e.g. 7-2-1 or Passed unanimously',
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e1155bc9-6f20-423d-84ea-0d6de805dc6c'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'YesCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e1155bc9-6f20-423d-84ea-0d6de805dc6c',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100011,
            'YesCount',
            'Yes Count',
            'Number of Yes votes',
            'int',
            4,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8ca3afde-951a-4774-ab96-b9e9f0471bfd'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'NoCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8ca3afde-951a-4774-ab96-b9e9f0471bfd',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100012,
            'NoCount',
            'No Count',
            'Number of No votes',
            'int',
            4,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e9ee7e51-7b63-42a3-b525-c09df3c6131f'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'AbstainCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e9ee7e51-7b63-42a3-b525-c09df3c6131f',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100013,
            'AbstainCount',
            'Abstain Count',
            'Number of Abstain votes',
            'int',
            4,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9d061a12-1f6b-4695-8ebb-708543ef0e3a'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9d061a12-1f6b-4695-8ebb-708543ef0e3a',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100014,
            'Notes',
            'Notes',
            'Additional notes about the motion or vote',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '467772fb-ff74-4f79-8c9d-9c764ea620d4'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '467772fb-ff74-4f79-8c9d-9c764ea620d4',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100015,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'cb76271d-23d6-4944-9c05-cb0bcb90444c'  OR 
               (EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cb76271d-23d6-4944-9c05-cb0bcb90444c',
            'E894F05B-500F-4A86-A1B1-34825C8A9736', -- Entity: Committees: Motions
            100016,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '82d7bfdc-cbee-4c73-aeeb-e5359ccee565'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '82d7bfdc-cbee-4c73-aeeb-e5359ccee565',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9bb18bdf-4c8c-4340-95db-10eb7a03b507'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9bb18bdf-4c8c-4340-95db-10eb7a03b507',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100002,
            'Name',
            'Name',
            'Display name for the role',
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            1,
            1,
            0,
            1,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7c799c9d-5f0c-4125-bb55-cba8ec9f886a'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7c799c9d-5f0c-4125-bb55-cba8ec9f886a',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100003,
            'Description',
            'Description',
            'Detailed description of role responsibilities',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '20a277e9-9ed7-4807-8e7d-23aead059415'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'IsOfficer')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '20a277e9-9ed7-4807-8e7d-23aead059415',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100004,
            'IsOfficer',
            'Is Officer',
            'Whether this is an officer role like Chair or Secretary',
            'bit',
            1,
            1,
            0,
            0,
            '(0)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'deb69bab-c7fb-40a5-908e-07008d1a7e49'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'IsVotingRole')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'deb69bab-c7fb-40a5-908e-07008d1a7e49',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100005,
            'IsVotingRole',
            'Is Voting Role',
            'Whether members in this role can vote',
            'bit',
            1,
            1,
            0,
            0,
            '(1)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '704456b4-2aba-4d78-9bbd-5f4e16592d9e'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'DefaultPermissionsJSON')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '704456b4-2aba-4d78-9bbd-5f4e16592d9e',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100006,
            'DefaultPermissionsJSON',
            'Default Permissions JSON',
            'JSON object defining default permissions for this role',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '083a214c-ab05-4646-a33e-374211c17e2b'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '083a214c-ab05-4646-a33e-374211c17e2b',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100007,
            'Sequence',
            'Sequence',
            'Display order for sorting roles',
            'int',
            4,
            10,
            0,
            0,
            '(100)',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c933fd87-6b56-42dc-9f41-80c26ada778d'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c933fd87-6b56-42dc-9f41-80c26ada778d',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100008,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '18eba7ec-bb0b-44a5-b732-1b49304005a6'  OR 
               (EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '18eba7ec-bb0b-44a5-b732-1b49304005a6',
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', -- Entity: Committees: Roles
            100009,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ab18119e-cb23-44e3-a5e6-d0b534ba3b7b'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ab18119e-cb23-44e3-a5e6-d0b534ba3b7b',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '1f35bb86-8c8d-4f04-81f3-f4fb4d360eb6'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1f35bb86-8c8d-4f04-81f3-f4fb4d360eb6',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100002,
            'Name',
            'Name',
            'Display name for the artifact type',
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            1,
            1,
            0,
            1,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '997bb7fb-6488-46ad-8c9a-da11a591d158'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '997bb7fb-6488-46ad-8c9a-da11a591d158',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100003,
            'Description',
            'Description',
            'Detailed description of this artifact type',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '606bbf25-f877-4630-9217-24e8f74c1c93'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'ExtendedEntityID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '606bbf25-f877-4630-9217-24e8f74c1c93',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100004,
            'ExtendedEntityID',
            'Extended Entity ID',
            'Optional reference to an MJ Entity that provides additional fields for this artifact type via a 1:1 extension table',
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'E0238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '47aa5760-ef2b-4925-993d-a583f6c7d263'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'IconClass')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '47aa5760-ef2b-4925-993d-a583f6c7d263',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100005,
            'IconClass',
            'Icon Class',
            'Font Awesome icon class for UI display',
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0233b96d-cc5c-4480-971f-4825cd86ae98'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0233b96d-cc5c-4480-971f-4825cd86ae98',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100006,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0a730314-4215-44a5-8e47-e6a2cd37e792'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0a730314-4215-44a5-8e47-e6a2cd37e792',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100007,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e2ba2bd4-8937-4ad3-b424-3dc0a3e95292'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e2ba2bd4-8937-4ad3-b424-3dc0a3e95292',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4808166b-7e80-4809-8142-6b2655c92d78'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4808166b-7e80-4809-8142-6b2655c92d78',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100002,
            'MeetingID',
            'Meeting ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '10749745-8328-4b16-963c-7b47e163223a'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'ParentAgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '10749745-8328-4b16-963c-7b47e163223a',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100003,
            'ParentAgendaItemID',
            'Parent Agenda Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '029C1632-67EF-49DF-8649-76CA82AB93DC',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ae0b8596-de99-4ddd-bf37-f3934509f579'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ae0b8596-de99-4ddd-bf37-f3934509f579',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100004,
            'Sequence',
            'Sequence',
            'Display order within the meeting agenda',
            'int',
            4,
            10,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '97755269-3f04-4435-a6e9-bb49c82e24c5'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '97755269-3f04-4435-a6e9-bb49c82e24c5',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100005,
            'Title',
            'Title',
            'Title of the agenda item',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '20471af0-cb83-4f06-af5a-1ce740400384'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '20471af0-cb83-4f06-af5a-1ce740400384',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100006,
            'Description',
            'Description',
            'Detailed description of the agenda item',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0c9d2583-9b41-44da-a794-494df02d16d8'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'PresenterUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0c9d2583-9b41-44da-a794-494df02d16d8',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100007,
            'PresenterUserID',
            'Presenter User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f66f028c-d91f-4989-b5b5-7a0a42ffb4b4'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'DurationMinutes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f66f028c-d91f-4989-b5b5-7a0a42ffb4b4',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100008,
            'DurationMinutes',
            'Duration Minutes',
            'Estimated duration in minutes',
            'int',
            4,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2c9eaac5-14b9-4cf1-8a2b-9416e1909fb4'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'ItemType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2c9eaac5-14b9-4cf1-8a2b-9416e1909fb4',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100009,
            'ItemType',
            'Item Type',
            'Type of item: Information, Discussion, Action, Vote, Report, Other',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Discussion',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '13dca502-39d7-4d85-9a8d-8f45d62ad8b9'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'RelatedDocumentURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '13dca502-39d7-4d85-9a8d-8f45d62ad8b9',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100010,
            'RelatedDocumentURL',
            'Related Document URL',
            'URL to related document for this item',
            'nvarchar',
            2000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '76abc9d8-0f88-456b-a2a1-320191fc4046'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '76abc9d8-0f88-456b-a2a1-320191fc4046',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100011,
            'Status',
            'Status',
            'Current status: Pending, Discussed, Tabled, Completed, Skipped',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Pending',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '29ee005c-ecb6-47c4-8a98-54220dc08e47'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '29ee005c-ecb6-47c4-8a98-54220dc08e47',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100012,
            'Notes',
            'Notes',
            'Discussion notes and outcomes captured during the meeting',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f52bb8d8-9f2e-4cfd-8231-835d60a4c14e'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f52bb8d8-9f2e-4cfd-8231-835d60a4c14e',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100013,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '828165ac-85b4-48e6-945b-d23c19293767'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '828165ac-85b4-48e6-945b-d23c19293767',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100014,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e2afeb24-a8f2-47a3-82f0-85a2cd2d44e4'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e2afeb24-a8f2-47a3-82f0-85a2cd2d44e4',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0e37e235-b2df-48d7-8b83-dfbc5ce96d1d'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0e37e235-b2df-48d7-8b83-dfbc5ce96d1d',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100002,
            'CommitteeID',
            'Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '1e3f7311-d0e2-4327-baec-eff89986fa0a'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1e3f7311-d0e2-4327-baec-eff89986fa0a',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100003,
            'Title',
            'Title',
            'Title of the meeting',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '123adc87-ec2b-4ed0-9b33-ecfa547c41fd'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '123adc87-ec2b-4ed0-9b33-ecfa547c41fd',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100004,
            'Description',
            'Description',
            'Detailed description or purpose of the meeting',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '84c20d0f-1dd3-4b47-a1b7-4a103d38a08d'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'StartDateTime')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '84c20d0f-1dd3-4b47-a1b7-4a103d38a08d',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100005,
            'StartDateTime',
            'Start Date Time',
            'Scheduled start date and time with timezone offset',
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '33fcb8b1-9fe4-4ed3-a9e0-ac2becf12c00'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'EndDateTime')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '33fcb8b1-9fe4-4ed3-a9e0-ac2becf12c00',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100006,
            'EndDateTime',
            'End Date Time',
            'Scheduled end date and time with timezone offset',
            'datetimeoffset',
            10,
            34,
            7,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd1a5e34a-b11b-4e44-9e3b-c29262e71a19'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'TimeZone')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd1a5e34a-b11b-4e44-9e3b-c29262e71a19',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100007,
            'TimeZone',
            'Time Zone',
            'IANA timezone identifier for the meeting',
            'nvarchar',
            100,
            0,
            0,
            0,
            'America/New_York',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e0a4b53f-6319-4de0-a76b-f5c28a2bc22b'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'LocationType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e0a4b53f-6319-4de0-a76b-f5c28a2bc22b',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100008,
            'LocationType',
            'Location Type',
            'Meeting format: Virtual, InPerson, or Hybrid',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Virtual',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7822945f-5a8f-4f49-a748-94b1b2e79321'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'LocationText')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7822945f-5a8f-4f49-a748-94b1b2e79321',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100009,
            'LocationText',
            'Location Text',
            'Physical address or room name for in-person meetings',
            'nvarchar',
            1000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ebaa606c-0e74-4333-b884-f646bf8b5aa5'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'VideoProvider')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ebaa606c-0e74-4333-b884-f646bf8b5aa5',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100010,
            'VideoProvider',
            'Video Provider',
            'Video conferencing provider: Zoom, Teams, Meet, etc.',
            'nvarchar',
            100,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f1a46c9a-f36b-45c9-99ff-8639c38059b4'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'VideoMeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f1a46c9a-f36b-45c9-99ff-8639c38059b4',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100011,
            'VideoMeetingID',
            'Video Meeting ID',
            'External meeting ID from the video provider',
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '35df8179-9935-47e4-bd42-63dee8663ff3'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'VideoJoinURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '35df8179-9935-47e4-bd42-63dee8663ff3',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100012,
            'VideoJoinURL',
            'Video Join URL',
            'URL to join the video meeting',
            'nvarchar',
            2000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2b7d4b6d-53d5-4bb8-8f15-60195959e849'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'VideoRecordingURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2b7d4b6d-53d5-4bb8-8f15-60195959e849',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100013,
            'VideoRecordingURL',
            'Video Recording URL',
            'URL to the meeting recording after completion',
            'nvarchar',
            2000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '3d1903ae-47e0-44f2-97c0-2c214ebaaf49'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'TranscriptURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3d1903ae-47e0-44f2-97c0-2c214ebaaf49',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100014,
            'TranscriptURL',
            'Transcript URL',
            'URL to the meeting transcript',
            'nvarchar',
            2000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '25043a66-fef3-46dd-b436-2c90ccb68c25'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '25043a66-fef3-46dd-b436-2c90ccb68c25',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100015,
            'Status',
            'Status',
            'Current status: Draft, Scheduled, InProgress, Completed, Cancelled, Postponed',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Scheduled',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e67ea2e6-942c-4b3c-8ae8-04d069d7e9da'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'CalendarEventID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e67ea2e6-942c-4b3c-8ae8-04d069d7e9da',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100016,
            'CalendarEventID',
            'Calendar Event ID',
            'External calendar event ID for sync purposes',
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd4d9a7c1-819c-4dfa-9bc2-7ba57c945cf5'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd4d9a7c1-819c-4dfa-9bc2-7ba57c945cf5',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100017,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'b3d15733-9070-486d-9e04-bb90fd6024f0'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b3d15733-9070-486d-9e04-bb90fd6024f0',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100018,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '08e40458-e0c0-4576-8497-ec47e55d9bf4'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '08e40458-e0c0-4576-8497-ec47e55d9bf4',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '71cfc564-3920-4491-928f-5c78d5471023'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '71cfc564-3920-4491-928f-5c78d5471023',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100002,
            'CommitteeID',
            'Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '248d9518-db0c-47df-b3de-217561a2a149'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'UserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '248d9518-db0c-47df-b3de-217561a2a149',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100003,
            'UserID',
            'User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '130e9f80-8ec7-438e-b7fb-b4352dc5a626'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'RoleID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '130e9f80-8ec7-438e-b7fb-b4352dc5a626',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100004,
            'RoleID',
            'Role ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'F5DF73D6-A95F-4C90-A29D-4427B9D1180D',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'a4220189-68ab-4334-93e1-e1de962238d3'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'TermID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a4220189-68ab-4334-93e1-e1de962238d3',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100005,
            'TermID',
            'Term ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8479fd77-eadc-43a0-910d-44eaf70bec67'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'StartDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8479fd77-eadc-43a0-910d-44eaf70bec67',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100006,
            'StartDate',
            'Start Date',
            'Date the membership started',
            'date',
            3,
            10,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '733ed814-1dad-4d7c-8777-3956aaac6e12'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'EndDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '733ed814-1dad-4d7c-8777-3956aaac6e12',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100007,
            'EndDate',
            'End Date',
            'Date the membership ended, if applicable',
            'date',
            3,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f38b780a-bb02-4166-8a2f-494b44bf86ed'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f38b780a-bb02-4166-8a2f-494b44bf86ed',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100008,
            'Status',
            'Status',
            'Current status: Active, Pending, Ended, or Suspended',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Active',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '86862bdf-cc08-4ae2-873b-e91028804eaf'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'EndReason')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '86862bdf-cc08-4ae2-873b-e91028804eaf',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100009,
            'EndReason',
            'End Reason',
            'Reason the membership ended: Term ended, Resigned, Removed, etc.',
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e518e5b7-dd3e-4439-9143-c0abfcbf3b67'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e518e5b7-dd3e-4439-9143-c0abfcbf3b67',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100010,
            'Notes',
            'Notes',
            'Additional notes about this membership',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'bfcef62f-5366-4031-984b-a589822269c2'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'bfcef62f-5366-4031-984b-a589822269c2',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100011,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '633d83df-b035-45ae-b3ab-5c114e189070'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '633d83df-b035-45ae-b3ab-5c114e189070',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100012,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c323246d-b1e6-482c-9795-e69f68fb8b74'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c323246d-b1e6-482c-9795-e69f68fb8b74',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7b4e62e1-d72c-4a61-827b-95daa4f75bcf'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7b4e62e1-d72c-4a61-827b-95daa4f75bcf',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100002,
            'MeetingID',
            'Meeting ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '86e398eb-a568-4315-96ac-605c80f56393'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'UserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '86e398eb-a568-4315-96ac-605c80f56393',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100003,
            'UserID',
            'User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '39a1a6f2-81d8-4caf-92ee-89e44b67261d'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'AttendanceStatus')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '39a1a6f2-81d8-4caf-92ee-89e44b67261d',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100004,
            'AttendanceStatus',
            'Attendance Status',
            'Attendance status: Expected, Present, Absent, Excused, Partial',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Expected',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '247c2c4a-c896-4fe2-8dbf-a17e86514f7b'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'JoinedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '247c2c4a-c896-4fe2-8dbf-a17e86514f7b',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100005,
            'JoinedAt',
            'Joined At',
            'Timestamp when the attendee joined the meeting',
            'datetimeoffset',
            10,
            34,
            7,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '32712f81-6202-48c1-8270-1553fbaae1c9'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'LeftAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '32712f81-6202-48c1-8270-1553fbaae1c9',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100006,
            'LeftAt',
            'Left At',
            'Timestamp when the attendee left the meeting',
            'datetimeoffset',
            10,
            34,
            7,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f50ad38e-81be-4615-bf03-5cd5f21efed9'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f50ad38e-81be-4615-bf03-5cd5f21efed9',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100007,
            'Notes',
            'Notes',
            'Additional notes about attendance',
            'nvarchar',
            1000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd3fb3ee9-9eb7-4563-b605-b77058ce978b'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd3fb3ee9-9eb7-4563-b605-b77058ce978b',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100008,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '437c355d-f859-41c7-b44f-1ff71a090d42'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '437c355d-f859-41c7-b44f-1ff71a090d42',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100009,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '87918c6f-db0d-4213-a06d-4aff36defc27'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '87918c6f-db0d-4213-a06d-4aff36defc27',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2865a9fa-5093-4517-ab1e-994dd4610a5c'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2865a9fa-5093-4517-ab1e-994dd4610a5c',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100002,
            'CommitteeID',
            'Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f3e47dc5-2aa8-49fa-ae34-ba8c5de344e1'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f3e47dc5-2aa8-49fa-ae34-ba8c5de344e1',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100003,
            'MeetingID',
            'Meeting ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '53496733-00ED-4311-B3F7-88D51CFD7187',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9d28509d-c35b-4130-a85c-744808dbca9f'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9d28509d-c35b-4130-a85c-744808dbca9f',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100004,
            'AgendaItemID',
            'Agenda Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            '029C1632-67EF-49DF-8649-76CA82AB93DC',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'fe8a9e1d-088d-43b4-acd0-06092871c631'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'fe8a9e1d-088d-43b4-acd0-06092871c631',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100005,
            'Title',
            'Title',
            'Title of the action item',
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '14adcf1a-3c6d-4d82-b497-d34c14039d60'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '14adcf1a-3c6d-4d82-b497-d34c14039d60',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100006,
            'Description',
            'Description',
            'Detailed description of what needs to be done',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'f316270a-73fc-4b46-941f-a4933c809c51'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'AssignedToUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f316270a-73fc-4b46-941f-a4933c809c51',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100007,
            'AssignedToUserID',
            'Assigned To User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e94e5192-6968-453f-856c-874c0f10c220'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'AssignedByUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e94e5192-6968-453f-856c-874c0f10c220',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100008,
            'AssignedByUserID',
            'Assigned By User ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            'E1238F34-2837-EF11-86D4-6045BDEE16E6',
            'ID',
            0,
            0,
            1,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '6f10af2c-5fc5-42ed-acc7-b96d18fc4397'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'DueDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6f10af2c-5fc5-42ed-acc7-b96d18fc4397',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100009,
            'DueDate',
            'Due Date',
            'Due date for completion',
            'date',
            3,
            10,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0eab9fdb-b4fc-49d0-a72d-0cb15692b7ee'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'Priority')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0eab9fdb-b4fc-49d0-a72d-0cb15692b7ee',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100010,
            'Priority',
            'Priority',
            'Priority level: Low, Medium, High, Critical',
            'nvarchar',
            40,
            0,
            0,
            0,
            'Medium',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '6fc8e0be-c7dc-4f9c-bae7-2af74f59565a'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6fc8e0be-c7dc-4f9c-bae7-2af74f59565a',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100011,
            'Status',
            'Status',
            'Current status: Open, InProgress, Blocked, Completed, Cancelled',
            'nvarchar',
            100,
            0,
            0,
            0,
            'Open',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'b10b1272-088b-4e5a-b73f-f7ad1908b14e'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'CompletedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b10b1272-088b-4e5a-b73f-f7ad1908b14e',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100012,
            'CompletedAt',
            'Completed At',
            'Timestamp when the action item was completed',
            'datetimeoffset',
            10,
            34,
            7,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2490453f-8238-4f19-b5ca-cc6bd90d3ab3'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'CompletionNotes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2490453f-8238-4f19-b5ca-cc6bd90d3ab3',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100013,
            'CompletionNotes',
            'Completion Notes',
            'Notes about how the item was completed',
            'nvarchar',
            -1,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '259fa741-0d2d-4023-931a-7e0488ad9a20'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '259fa741-0d2d-4023-931a-7e0488ad9a20',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100014,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '6afd89a1-6ddb-4bcb-bb7b-266c1431106c'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6afd89a1-6ddb-4bcb-bb7b-266c1431106c',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100015,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7bd8780e-eb72-4c61-b4e5-0171668d88a2'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7bd8780e-eb72-4c61-b4e5-0171668d88a2',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100001,
            'ID',
            'ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'newsequentialid()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            1,
            0,
            0,
            1,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '38798f35-87d3-411e-8e32-302812cf8c0e'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = 'MotionID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '38798f35-87d3-411e-8e32-302812cf8c0e',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100002,
            'MotionID',
            'Motion ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'E894F05B-500F-4A86-A1B1-34825C8A9736',
            'ID',
            0,
            0,
            1,
            0,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9f3a07bd-829f-4334-bd8f-6092ed8d78a0'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = 'MembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9f3a07bd-829f-4334-bd8f-6092ed8d78a0',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100003,
            'MembershipID',
            'Membership ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9',
            'ID',
            0,
            0,
            1,
            0,
            0,
            1,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '0a14e518-0d92-48a2-b09c-f5296bbe43ef'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = 'VoteValue')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0a14e518-0d92-48a2-b09c-f5296bbe43ef',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100004,
            'VoteValue',
            'Vote Value',
            'The vote cast: Yes, No, Abstain, or Absent',
            'nvarchar',
            40,
            0,
            0,
            0,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4e1887ef-78f2-417d-9ad0-af2fa7694f27'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4e1887ef-78f2-417d-9ad0-af2fa7694f27',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100005,
            'Notes',
            'Notes',
            'Optional notes explaining the vote',
            'nvarchar',
            1000,
            0,
            0,
            1,
            'null',
            0,
            1,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'c4912618-291f-4936-a954-c2f200afb714'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c4912618-291f-4936-a954-c2f200afb714',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100006,
            '__mj_CreatedAt',
            'Created At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '41c6ca97-f1c1-4564-ade2-1bf441fd8833'  OR 
               (EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '41c6ca97-f1c1-4564-ade2-1bf441fd8833',
            '43457B5C-4C33-494F-AC37-FE23C82F536B', -- Entity: Committees: Votes
            100007,
            '__mj_UpdatedAt',
            'Updated At',
            NULL,
            'datetimeoffset',
            10,
            34,
            7,
            0,
            'getutcdate()',
            0,
            0,
            0,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert entity field value with ID ad26d56a-21d3-48b2-9f97-7ba524f39ddd */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ad26d56a-21d3-48b2-9f97-7ba524f39ddd', '5F778039-E446-4714-B4F0-934F538CD47B', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID 513f388c-3a8b-4c6e-8f58-df5f3d9a2f1d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('513f388c-3a8b-4c6e-8f58-df5f3d9a2f1d', '5F778039-E446-4714-B4F0-934F538CD47B', 2, 'Dissolved', 'Dissolved')

/* SQL text to insert entity field value with ID 463f0feb-7c97-44f5-a895-26c4a542b872 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('463f0feb-7c97-44f5-a895-26c4a542b872', '5F778039-E446-4714-B4F0-934F538CD47B', 3, 'Inactive', 'Inactive')

/* SQL text to insert entity field value with ID 4b0ca7eb-ef50-478e-96f2-dcd1e255f185 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('4b0ca7eb-ef50-478e-96f2-dcd1e255f185', '5F778039-E446-4714-B4F0-934F538CD47B', 4, 'Pending', 'Pending')

/* SQL text to update ValueListType for entity field ID 5F778039-E446-4714-B4F0-934F538CD47B */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='5F778039-E446-4714-B4F0-934F538CD47B'

/* SQL text to insert entity field value with ID 2fec14eb-0a41-4ebc-b37b-bf06442dc1ff */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2fec14eb-0a41-4ebc-b37b-bf06442dc1ff', '358E4278-1140-4E71-864E-B15033567581', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID 97109888-b6e0-44db-aba1-b0ea007ca578 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('97109888-b6e0-44db-aba1-b0ea007ca578', '358E4278-1140-4E71-864E-B15033567581', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID ad56b03b-7f21-4cdc-a0c9-8f7ef4768f5c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ad56b03b-7f21-4cdc-a0c9-8f7ef4768f5c', '358E4278-1140-4E71-864E-B15033567581', 3, 'Upcoming', 'Upcoming')

/* SQL text to update ValueListType for entity field ID 358E4278-1140-4E71-864E-B15033567581 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='358E4278-1140-4E71-864E-B15033567581'

/* SQL text to insert entity field value with ID ee4877a7-d092-4df7-96aa-74d5cbb552a1 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ee4877a7-d092-4df7-96aa-74d5cbb552a1', 'F38B780A-BB02-4166-8A2F-494B44BF86ED', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID da536b2a-f0f8-458d-a9cb-6f97dbb0d649 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('da536b2a-f0f8-458d-a9cb-6f97dbb0d649', 'F38B780A-BB02-4166-8A2F-494B44BF86ED', 2, 'Ended', 'Ended')

/* SQL text to insert entity field value with ID b89e1d65-7edc-4592-ae98-0760ebd20add */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b89e1d65-7edc-4592-ae98-0760ebd20add', 'F38B780A-BB02-4166-8A2F-494B44BF86ED', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 47202d5a-42a1-4afa-813c-0e437907d545 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('47202d5a-42a1-4afa-813c-0e437907d545', 'F38B780A-BB02-4166-8A2F-494B44BF86ED', 4, 'Suspended', 'Suspended')

/* SQL text to update ValueListType for entity field ID F38B780A-BB02-4166-8A2F-494B44BF86ED */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='F38B780A-BB02-4166-8A2F-494B44BF86ED'

/* SQL text to insert entity field value with ID cfce4f18-95d9-4b61-a05c-be4ef454fe97 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('cfce4f18-95d9-4b61-a05c-be4ef454fe97', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 1, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID 22358d96-f9c2-4409-9b73-9a9f287ddbff */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('22358d96-f9c2-4409-9b73-9a9f287ddbff', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 70b1a575-c0af-4043-8754-500b5e0482ba */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('70b1a575-c0af-4043-8754-500b5e0482ba', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 3, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID fd0d965e-c7f6-4cf6-be51-eda2d08f1147 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('fd0d965e-c7f6-4cf6-be51-eda2d08f1147', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID a37e3479-80eb-4ecb-9afc-38823ede07cd */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a37e3479-80eb-4ecb-9afc-38823ede07cd', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 5, 'Postponed', 'Postponed')

/* SQL text to insert entity field value with ID 55309e4d-55be-4360-a3c8-e39c1b967b3d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('55309e4d-55be-4360-a3c8-e39c1b967b3d', '25043A66-FEF3-46DD-B436-2C90CCB68C25', 6, 'Scheduled', 'Scheduled')

/* SQL text to update ValueListType for entity field ID 25043A66-FEF3-46DD-B436-2C90CCB68C25 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='25043A66-FEF3-46DD-B436-2C90CCB68C25'

/* SQL text to insert entity field value with ID a94df229-bd1f-4a82-9b36-16ec102cb9e3 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a94df229-bd1f-4a82-9b36-16ec102cb9e3', 'E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B', 1, 'Hybrid', 'Hybrid')

/* SQL text to insert entity field value with ID aec8602a-8834-4694-a588-b66bddefe052 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('aec8602a-8834-4694-a588-b66bddefe052', 'E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B', 2, 'InPerson', 'InPerson')

/* SQL text to insert entity field value with ID acb90a68-0c5e-40ac-b2ad-5729ab2ec8a8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('acb90a68-0c5e-40ac-b2ad-5729ab2ec8a8', 'E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B', 3, 'Virtual', 'Virtual')

/* SQL text to update ValueListType for entity field ID E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B'

/* SQL text to insert entity field value with ID eadcfd8c-51c6-4c6d-ae78-3b793e68002e */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('eadcfd8c-51c6-4c6d-ae78-3b793e68002e', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 1, 'Action', 'Action')

/* SQL text to insert entity field value with ID 89e08236-0929-4689-8d23-9a875c1655b0 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('89e08236-0929-4689-8d23-9a875c1655b0', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 2, 'Discussion', 'Discussion')

/* SQL text to insert entity field value with ID b24c4dcd-4086-4b31-a49b-9585f2ea237f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b24c4dcd-4086-4b31-a49b-9585f2ea237f', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 3, 'Information', 'Information')

/* SQL text to insert entity field value with ID ae43c669-b8e3-4989-b1c6-ddffa0769d25 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ae43c669-b8e3-4989-b1c6-ddffa0769d25', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 4, 'Other', 'Other')

/* SQL text to insert entity field value with ID b2d0db2c-6801-4d30-bbf9-c82895cd7464 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b2d0db2c-6801-4d30-bbf9-c82895cd7464', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 5, 'Report', 'Report')

/* SQL text to insert entity field value with ID 41d3b54b-f4f6-4dd2-8dc0-cdf77c4c9a62 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('41d3b54b-f4f6-4dd2-8dc0-cdf77c4c9a62', '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4', 6, 'Vote', 'Vote')

/* SQL text to update ValueListType for entity field ID 2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4'

/* SQL text to insert entity field value with ID 93adaa35-6261-4f0a-aa2a-9de6ab916da0 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('93adaa35-6261-4f0a-aa2a-9de6ab916da0', '76ABC9D8-0F88-456B-A2A1-320191FC4046', 1, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 7b138113-2fc8-4637-9009-d3c7e5956757 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('7b138113-2fc8-4637-9009-d3c7e5956757', '76ABC9D8-0F88-456B-A2A1-320191FC4046', 2, 'Discussed', 'Discussed')

/* SQL text to insert entity field value with ID e3ddd77f-2144-4962-a1ed-19e01c16467d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('e3ddd77f-2144-4962-a1ed-19e01c16467d', '76ABC9D8-0F88-456B-A2A1-320191FC4046', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID c4219913-b118-4479-8c1d-ccecd59f3796 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c4219913-b118-4479-8c1d-ccecd59f3796', '76ABC9D8-0F88-456B-A2A1-320191FC4046', 4, 'Skipped', 'Skipped')

/* SQL text to insert entity field value with ID 73c70251-ac6a-4a4a-a500-ce79c2d129b6 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('73c70251-ac6a-4a4a-a500-ce79c2d129b6', '76ABC9D8-0F88-456B-A2A1-320191FC4046', 5, 'Tabled', 'Tabled')

/* SQL text to update ValueListType for entity field ID 76ABC9D8-0F88-456B-A2A1-320191FC4046 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='76ABC9D8-0F88-456B-A2A1-320191FC4046'

/* SQL text to insert entity field value with ID 587b0a0d-c35d-4da6-baea-fd6b8eb4dea4 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('587b0a0d-c35d-4da6-baea-fd6b8eb4dea4', '39A1A6F2-81D8-4CAF-92EE-89E44B67261D', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID b22f9344-5f91-410a-a8f1-85c70418d95a */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b22f9344-5f91-410a-a8f1-85c70418d95a', '39A1A6F2-81D8-4CAF-92EE-89E44B67261D', 2, 'Excused', 'Excused')

/* SQL text to insert entity field value with ID 54c4d306-ebc5-4fc9-8dd3-019bdebbdaca */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('54c4d306-ebc5-4fc9-8dd3-019bdebbdaca', '39A1A6F2-81D8-4CAF-92EE-89E44B67261D', 3, 'Expected', 'Expected')

/* SQL text to insert entity field value with ID 5cbac88f-7043-4828-b6cf-efc87d54afbf */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('5cbac88f-7043-4828-b6cf-efc87d54afbf', '39A1A6F2-81D8-4CAF-92EE-89E44B67261D', 4, 'Partial', 'Partial')

/* SQL text to insert entity field value with ID dd741159-52dd-46a0-b740-38c9ebddad53 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('dd741159-52dd-46a0-b740-38c9ebddad53', '39A1A6F2-81D8-4CAF-92EE-89E44B67261D', 5, 'Present', 'Present')

/* SQL text to update ValueListType for entity field ID 39A1A6F2-81D8-4CAF-92EE-89E44B67261D */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='39A1A6F2-81D8-4CAF-92EE-89E44B67261D'

/* SQL text to insert entity field value with ID b8639767-948b-4b53-b378-b121dd5fe394 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b8639767-948b-4b53-b378-b121dd5fe394', '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE', 1, 'Critical', 'Critical')

/* SQL text to insert entity field value with ID f139eaf1-c972-48d1-8f36-a95ede53fb8b */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f139eaf1-c972-48d1-8f36-a95ede53fb8b', '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE', 2, 'High', 'High')

/* SQL text to insert entity field value with ID f7226883-76fe-4d0e-ad70-2065591a6e71 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f7226883-76fe-4d0e-ad70-2065591a6e71', '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE', 3, 'Low', 'Low')

/* SQL text to insert entity field value with ID 32a793a7-8347-41b9-a1c6-9bb5460077f9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('32a793a7-8347-41b9-a1c6-9bb5460077f9', '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE', 4, 'Medium', 'Medium')

/* SQL text to update ValueListType for entity field ID 0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE'

/* SQL text to insert entity field value with ID a0649d8b-114d-4427-a6c5-958e2d8a68af */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a0649d8b-114d-4427-a6c5-958e2d8a68af', '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A', 1, 'Blocked', 'Blocked')

/* SQL text to insert entity field value with ID e2e7cc88-35e6-4dd2-9f97-bdf46d6df035 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('e2e7cc88-35e6-4dd2-9f97-bdf46d6df035', '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A', 2, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID c00b30dc-5c32-42d3-ba60-7af1faa0ae36 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c00b30dc-5c32-42d3-ba60-7af1faa0ae36', '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A', 3, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 9c2268f4-acf0-4012-ab08-4634420361fc */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('9c2268f4-acf0-4012-ab08-4634420361fc', '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID ea8d7b78-a1f7-4b74-9639-a333432af502 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ea8d7b78-a1f7-4b74-9639-a333432af502', '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A', 5, 'Open', 'Open')

/* SQL text to update ValueListType for entity field ID 6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A'

/* SQL text to insert entity field value with ID 5d682adc-9b74-4f8c-9f0a-624f9bab6881 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('5d682adc-9b74-4f8c-9f0a-624f9bab6881', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 1, 'Box', 'Box')

/* SQL text to insert entity field value with ID 8989a920-4154-42eb-9c83-5645f09ece52 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8989a920-4154-42eb-9c83-5645f09ece52', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 2, 'Dropbox', 'Dropbox')

/* SQL text to insert entity field value with ID fcde71bf-493f-4ba3-b94b-b898a77788da */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('fcde71bf-493f-4ba3-b94b-b898a77788da', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 3, 'GoogleDrive', 'GoogleDrive')

/* SQL text to insert entity field value with ID fd81db80-c34e-4a80-af27-61f9198ecd58 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('fd81db80-c34e-4a80-af27-61f9198ecd58', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 4, 'OneDrive', 'OneDrive')

/* SQL text to insert entity field value with ID f5c233f7-2347-47f9-9162-fada2b053d0a */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f5c233f7-2347-47f9-9162-fada2b053d0a', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 5, 'SharePoint', 'SharePoint')

/* SQL text to insert entity field value with ID b55d715c-c355-41f9-86dd-d4c500d63b4c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b55d715c-c355-41f9-86dd-d4c500d63b4c', 'DD98FB29-646D-4567-8D24-2DCA48AD576C', 6, 'URL', 'URL')

/* SQL text to update ValueListType for entity field ID DD98FB29-646D-4567-8D24-2DCA48AD576C */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='DD98FB29-646D-4567-8D24-2DCA48AD576C'

/* SQL text to insert entity field value with ID aedab14a-b54f-4896-a73b-505eccb6a4c7 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('aedab14a-b54f-4896-a73b-505eccb6a4c7', 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254', 1, 'Approved', 'Approved')

/* SQL text to insert entity field value with ID 385bea19-53f6-4d70-ab39-9b83f71e857f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('385bea19-53f6-4d70-ab39-9b83f71e857f', 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254', 2, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID 5f3293b6-c029-4fe7-bf4b-b0ccd4e8bc2c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('5f3293b6-c029-4fe7-bf4b-b0ccd4e8bc2c', 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254', 3, 'PendingApproval', 'PendingApproval')

/* SQL text to insert entity field value with ID 91b63225-044d-415d-b604-d6b8982993d8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('91b63225-044d-415d-b604-d6b8982993d8', 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254', 4, 'Rejected', 'Rejected')

/* SQL text to update ValueListType for entity field ID F7A7DFDD-7354-4E7E-9B9C-6A8124B19254 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='F7A7DFDD-7354-4E7E-9B9C-6A8124B19254'

/* SQL text to insert entity field value with ID 32203d05-8220-45f6-9379-907e82c3ae8f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('32203d05-8220-45f6-9379-907e82c3ae8f', '046787B1-F7CA-47B5-9812-AC1DADF57E1D', 1, 'Failed', 'Failed')

/* SQL text to insert entity field value with ID 2517295e-e923-4662-b1b5-a2572484521c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2517295e-e923-4662-b1b5-a2572484521c', '046787B1-F7CA-47B5-9812-AC1DADF57E1D', 2, 'Passed', 'Passed')

/* SQL text to insert entity field value with ID bf897961-8e7f-4f7e-9ab7-9a94aba276a5 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('bf897961-8e7f-4f7e-9ab7-9a94aba276a5', '046787B1-F7CA-47B5-9812-AC1DADF57E1D', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 8cd81f4a-1517-4d8c-9a05-861434e3f2a1 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8cd81f4a-1517-4d8c-9a05-861434e3f2a1', '046787B1-F7CA-47B5-9812-AC1DADF57E1D', 4, 'Tabled', 'Tabled')

/* SQL text to insert entity field value with ID 8af59b09-3389-4a16-b78a-84bd8d9ca4a4 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8af59b09-3389-4a16-b78a-84bd8d9ca4a4', '046787B1-F7CA-47B5-9812-AC1DADF57E1D', 5, 'Withdrawn', 'Withdrawn')

/* SQL text to update ValueListType for entity field ID 046787B1-F7CA-47B5-9812-AC1DADF57E1D */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='046787B1-F7CA-47B5-9812-AC1DADF57E1D'

/* SQL text to insert entity field value with ID 1c040f70-a9d9-418a-a383-965c5327e1aa */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('1c040f70-a9d9-418a-a383-965c5327e1aa', '0A14E518-0D92-48A2-B09C-F5296BBE43EF', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID c74bf951-044a-48d5-b392-44104f8739b7 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c74bf951-044a-48d5-b392-44104f8739b7', '0A14E518-0D92-48A2-B09C-F5296BBE43EF', 2, 'Abstain', 'Abstain')

/* SQL text to insert entity field value with ID 000d7f7c-790e-4a17-b5e4-02a1a82d5136 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('000d7f7c-790e-4a17-b5e4-02a1a82d5136', '0A14E518-0D92-48A2-B09C-F5296BBE43EF', 3, 'No', 'No')

/* SQL text to insert entity field value with ID 0ef18030-f0d2-4f01-b10b-7b1914ac7e61 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0ef18030-f0d2-4f01-b10b-7b1914ac7e61', '0A14E518-0D92-48A2-B09C-F5296BBE43EF', 4, 'Yes', 'Yes')

/* SQL text to update ValueListType for entity field ID 0A14E518-0D92-48A2-B09C-F5296BBE43EF */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='0A14E518-0D92-48A2-B09C-F5296BBE43EF'

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'df54ddb1-44ba-4a07-a316-e5a385d9d1ff'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('df54ddb1-44ba-4a07-a316-e5a385d9d1ff', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'CommitteeID', 'One To Many', 1, 1, 'Committees: Memberships', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a9b5a542-f0a3-48bb-ba94-ecbd2fecb529'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a9b5a542-f0a3-48bb-ba94-ecbd2fecb529', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'CommitteeID', 'One To Many', 1, 1, 'Committees: Action Items', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '35d1be14-46cc-4520-9a58-3bfaa1c597b3'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('35d1be14-46cc-4520-9a58-3bfaa1c597b3', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', 'CommitteeID', 'One To Many', 1, 1, 'Committees: Terms', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'c8d9e324-5a1b-4163-99fa-4ec102f23c86'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('c8d9e324-5a1b-4163-99fa-4ec102f23c86', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'CommitteeID', 'One To Many', 1, 1, 'Committees: Artifacts', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'e9140b27-07dc-49c0-b0ac-5df5ae17b076'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('e9140b27-07dc-49c0-b0ac-5df5ae17b076', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', '53496733-00ED-4311-B3F7-88D51CFD7187', 'CommitteeID', 'One To Many', 1, 1, 'Committees: Meetings', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '634fc5f7-56c8-432f-9af5-548a15ed5b3a'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('634fc5f7-56c8-432f-9af5-548a15ed5b3a', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'ParentCommitteeID', 'One To Many', 1, 1, 'Committees: Committees', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a464a2fc-14f7-440c-8a95-1d61d8a2491d'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a464a2fc-14f7-440c-8a95-1d61d8a2491d', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', 'ArtifactID', 'One To Many', 1, 1, 'Committees: Minutes', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '296da9f1-94f8-4db1-abff-7e3852921ca0'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('296da9f1-94f8-4db1-abff-7e3852921ca0', 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'TypeID', 'One To Many', 1, 1, 'Committees: Committees', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '58e133e8-4c0d-4086-b10b-1346b21925ad'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('58e133e8-4c0d-4086-b10b-1346b21925ad', '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'TermID', 'One To Many', 1, 1, 'Committees: Memberships', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '6b24a4cb-5ba3-436e-bf56-edf8b77bc063'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('6b24a4cb-5ba3-436e-bf56-edf8b77bc063', 'E894F05B-500F-4A86-A1B1-34825C8A9736', '43457B5C-4C33-494F-AC37-FE23C82F536B', 'MotionID', 'One To Many', 1, 1, 'Committees: Votes', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '9c628403-00b2-4525-9de7-52e8042f6397'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('9c628403-00b2-4525-9de7-52e8042f6397', 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'RoleID', 'One To Many', 1, 1, 'Committees: Memberships', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'bc17e58d-dd27-472e-811c-5e3f0ff585d1'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('bc17e58d-dd27-472e-811c-5e3f0ff585d1', 'E0238F34-2837-EF11-86D4-6045BDEE16E6', 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', 'ExtendedEntityID', 'One To Many', 1, 1, 'Committees: Artifact Types', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '58e40074-dc70-4b84-ae08-be5d8ec79fd1'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('58e40074-dc70-4b84-ae08-be5d8ec79fd1', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'PresenterUserID', 'One To Many', 1, 1, 'Committees: Agenda Items', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'ee561259-2557-4efd-b438-33056a90a4ba'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('ee561259-2557-4efd-b438-33056a90a4ba', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '057D3096-6E81-43F8-93A0-B18D95B9D550', 'UserID', 'One To Many', 1, 1, 'Committees: Attendances', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '95e0910f-475a-45f1-af28-15ef7d1c3209'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('95e0910f-475a-45f1-af28-15ef7d1c3209', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'AssignedByUserID', 'One To Many', 1, 1, 'Committees: Action Items', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '515b403e-a0be-4300-9300-f6926025a803'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('515b403e-a0be-4300-9300-f6926025a803', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'UserID', 'One To Many', 1, 1, 'Committees: Memberships', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '0a607a36-b711-4d72-b6e0-05c7c0da2870'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('0a607a36-b711-4d72-b6e0-05c7c0da2870', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'AssignedToUserID', 'One To Many', 1, 1, 'Committees: Action Items', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'e9cbc59d-a583-4a4a-a294-a17bd9d97840'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('e9cbc59d-a583-4a4a-a294-a17bd9d97840', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'UploadedByUserID', 'One To Many', 1, 1, 'Committees: Artifacts', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '608f59dd-aa5a-4aac-bc24-5aae7a85a286'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('608f59dd-aa5a-4aac-bc24-5aae7a85a286', 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'ArtifactTypeID', 'One To Many', 1, 1, 'Committees: Artifacts', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '30775d43-fff3-4481-890f-d2eef2c304e9'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('30775d43-fff3-4481-890f-d2eef2c304e9', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'AgendaItemID', 'One To Many', 1, 1, 'Committees: Motions', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '60d69d9b-8b93-4dab-8b34-a3ec2c64621f'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('60d69d9b-8b93-4dab-8b34-a3ec2c64621f', '029C1632-67EF-49DF-8649-76CA82AB93DC', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'AgendaItemID', 'One To Many', 1, 1, 'Committees: Artifacts', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '51a69f4c-f712-434a-8f3b-4c59b093f525'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('51a69f4c-f712-434a-8f3b-4c59b093f525', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'AgendaItemID', 'One To Many', 1, 1, 'Committees: Action Items', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '8122e03c-e156-4726-a89b-f1a4e9e26d58'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('8122e03c-e156-4726-a89b-f1a4e9e26d58', '029C1632-67EF-49DF-8649-76CA82AB93DC', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'ParentAgendaItemID', 'One To Many', 1, 1, 'Committees: Agenda Items', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b4a55fe0-b789-48e1-a53f-82661b6ee2eb'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b4a55fe0-b789-48e1-a53f-82661b6ee2eb', '53496733-00ED-4311-B3F7-88D51CFD7187', 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', 'ApprovedByMeetingID', 'One To Many', 1, 1, 'Committees: Minutes', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '8f064ee1-24bd-420c-b4ae-7cf0d14c1ec7'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('8f064ee1-24bd-420c-b4ae-7cf0d14c1ec7', '53496733-00ED-4311-B3F7-88D51CFD7187', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'MeetingID', 'One To Many', 1, 1, 'Committees: Agenda Items', 3);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '8ddaec47-5ad9-4644-820d-fa42615788b2'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('8ddaec47-5ad9-4644-820d-fa42615788b2', '53496733-00ED-4311-B3F7-88D51CFD7187', '057D3096-6E81-43F8-93A0-B18D95B9D550', 'MeetingID', 'One To Many', 1, 1, 'Committees: Attendances', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'bd95fb0c-b571-420c-b818-6549e9336166'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('bd95fb0c-b571-420c-b818-6549e9336166', '53496733-00ED-4311-B3F7-88D51CFD7187', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'MeetingID', 'One To Many', 1, 1, 'Committees: Artifacts', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'fbf4f98f-ba63-4679-8182-3735b0a93e7a'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('fbf4f98f-ba63-4679-8182-3735b0a93e7a', '53496733-00ED-4311-B3F7-88D51CFD7187', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'MeetingID', 'One To Many', 1, 1, 'Committees: Action Items', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a2741098-6fc2-4e02-860a-b1b7ee85c1c6'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a2741098-6fc2-4e02-860a-b1b7ee85c1c6', '53496733-00ED-4311-B3F7-88D51CFD7187', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'MeetingID', 'One To Many', 1, 1, 'Committees: Motions', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '9b1aaaf5-6c0d-494e-b1ac-9a34910cddce'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('9b1aaaf5-6c0d-494e-b1ac-9a34910cddce', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'SecondedByMembershipID', 'One To Many', 1, 1, 'Committees: Motions', 3);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b466f50c-3d47-472a-ad62-f059698c7143'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b466f50c-3d47-472a-ad62-f059698c7143', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'MovedByMembershipID', 'One To Many', 1, 1, 'Committees: Motions', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '338d6628-8846-4a06-afbc-6f0a206c6ac9'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('338d6628-8846-4a06-afbc-6f0a206c6ac9', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', '43457B5C-4C33-494F-AC37-FE23C82F536B', 'MembershipID', 'One To Many', 1, 1, 'Committees: Votes', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'fe4983e6-458f-412a-87b1-70b7d90579cf'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('fe4983e6-458f-412a-87b1-70b7d90579cf', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'ActionItemID', 'One To Many', 1, 1, 'Committees: Artifacts', 6);
   END
                              

/* Index for Foreign Keys for ActionItem */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key CommitteeID in table ActionItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ActionItem_CommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[ActionItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ActionItem_CommitteeID ON [Committees].[ActionItem] ([CommitteeID]);

-- Index for foreign key MeetingID in table ActionItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ActionItem_MeetingID' 
    AND object_id = OBJECT_ID('[Committees].[ActionItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ActionItem_MeetingID ON [Committees].[ActionItem] ([MeetingID]);

-- Index for foreign key AgendaItemID in table ActionItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ActionItem_AgendaItemID' 
    AND object_id = OBJECT_ID('[Committees].[ActionItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ActionItem_AgendaItemID ON [Committees].[ActionItem] ([AgendaItemID]);

-- Index for foreign key AssignedToUserID in table ActionItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ActionItem_AssignedToUserID' 
    AND object_id = OBJECT_ID('[Committees].[ActionItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ActionItem_AssignedToUserID ON [Committees].[ActionItem] ([AssignedToUserID]);

-- Index for foreign key AssignedByUserID in table ActionItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ActionItem_AssignedByUserID' 
    AND object_id = OBJECT_ID('[Committees].[ActionItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ActionItem_AssignedByUserID ON [Committees].[ActionItem] ([AssignedByUserID]);

/* SQL text to update entity field related entity name field map for entity field ID 2865A9FA-5093-4517-AB1E-994DD4610A5C */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='2865A9FA-5093-4517-AB1E-994DD4610A5C',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for AgendaItem */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key MeetingID in table AgendaItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_AgendaItem_MeetingID' 
    AND object_id = OBJECT_ID('[Committees].[AgendaItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_AgendaItem_MeetingID ON [Committees].[AgendaItem] ([MeetingID]);

-- Index for foreign key ParentAgendaItemID in table AgendaItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_AgendaItem_ParentAgendaItemID' 
    AND object_id = OBJECT_ID('[Committees].[AgendaItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_AgendaItem_ParentAgendaItemID ON [Committees].[AgendaItem] ([ParentAgendaItemID]);

-- Index for foreign key PresenterUserID in table AgendaItem
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_AgendaItem_PresenterUserID' 
    AND object_id = OBJECT_ID('[Committees].[AgendaItem]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_AgendaItem_PresenterUserID ON [Committees].[AgendaItem] ([PresenterUserID]);

/* Root ID Function SQL for Committees: Agenda Items.ParentAgendaItemID */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: fnAgendaItemParentAgendaItemID_GetRootID
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
------------------------------------------------------------
----- ROOT ID FUNCTION FOR: [AgendaItem].[ParentAgendaItemID]
------------------------------------------------------------
IF OBJECT_ID('[Committees].[fnAgendaItemParentAgendaItemID_GetRootID]', 'IF') IS NOT NULL
    DROP FUNCTION [Committees].[fnAgendaItemParentAgendaItemID_GetRootID];
GO

CREATE FUNCTION [Committees].[fnAgendaItemParentAgendaItemID_GetRootID]
(
    @RecordID uniqueidentifier,
    @ParentID uniqueidentifier
)
RETURNS TABLE
AS
RETURN
(
    WITH CTE_RootParent AS (
        -- Anchor: Start from @ParentID if not null, otherwise start from @RecordID
        SELECT
            [ID],
            [ParentAgendaItemID],
            [ID] AS [RootParentID],
            0 AS [Depth]
        FROM
            [Committees].[AgendaItem]
        WHERE
            [ID] = COALESCE(@ParentID, @RecordID)

        UNION ALL

        -- Recursive: Keep going up the hierarchy until ParentAgendaItemID is NULL
        -- Includes depth counter to prevent infinite loops from circular references
        SELECT
            c.[ID],
            c.[ParentAgendaItemID],
            c.[ID] AS [RootParentID],
            p.[Depth] + 1 AS [Depth]
        FROM
            [Committees].[AgendaItem] c
        INNER JOIN
            CTE_RootParent p ON c.[ID] = p.[ParentAgendaItemID]
        WHERE
            p.[Depth] < 100  -- Prevent infinite loops, max 100 levels
    )
    SELECT TOP 1
        [RootParentID] AS RootID
    FROM
        CTE_RootParent
    WHERE
        [ParentAgendaItemID] IS NULL
    ORDER BY
        [RootParentID]
);
GO


/* SQL text to update entity field related entity name field map for entity field ID 0C9D2583-9B41-44DA-A794-494DF02D16D8 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='0C9D2583-9B41-44DA-A794-494DF02D16D8',
         @RelatedEntityNameFieldMap='PresenterUser'

/* Index for Foreign Keys for ArtifactType */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key ExtendedEntityID in table ArtifactType
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_ArtifactType_ExtendedEntityID' 
    AND object_id = OBJECT_ID('[Committees].[ArtifactType]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_ArtifactType_ExtendedEntityID ON [Committees].[ArtifactType] ([ExtendedEntityID]);

/* SQL text to update entity field related entity name field map for entity field ID 606BBF25-F877-4630-9217-24E8F74C1C93 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='606BBF25-F877-4630-9217-24E8F74C1C93',
         @RelatedEntityNameFieldMap='ExtendedEntity'

/* Index for Foreign Keys for Artifact */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key CommitteeID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_CommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_CommitteeID ON [Committees].[Artifact] ([CommitteeID]);

-- Index for foreign key MeetingID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_MeetingID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_MeetingID ON [Committees].[Artifact] ([MeetingID]);

-- Index for foreign key AgendaItemID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_AgendaItemID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_AgendaItemID ON [Committees].[Artifact] ([AgendaItemID]);

-- Index for foreign key ActionItemID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_ActionItemID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_ActionItemID ON [Committees].[Artifact] ([ActionItemID]);

-- Index for foreign key ArtifactTypeID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_ArtifactTypeID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_ArtifactTypeID ON [Committees].[Artifact] ([ArtifactTypeID]);

-- Index for foreign key UploadedByUserID in table Artifact
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Artifact_UploadedByUserID' 
    AND object_id = OBJECT_ID('[Committees].[Artifact]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Artifact_UploadedByUserID ON [Committees].[Artifact] ([UploadedByUserID]);

/* SQL text to update entity field related entity name field map for entity field ID 23485F05-6C13-4B9D-B0EC-CA23F5AED434 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='23485F05-6C13-4B9D-B0EC-CA23F5AED434',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Attendance */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key MeetingID in table Attendance
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Attendance_MeetingID' 
    AND object_id = OBJECT_ID('[Committees].[Attendance]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Attendance_MeetingID ON [Committees].[Attendance] ([MeetingID]);

-- Index for foreign key UserID in table Attendance
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Attendance_UserID' 
    AND object_id = OBJECT_ID('[Committees].[Attendance]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Attendance_UserID ON [Committees].[Attendance] ([UserID]);

/* SQL text to update entity field related entity name field map for entity field ID 86E398EB-A568-4315-96AC-605C80F56393 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='86E398EB-A568-4315-96AC-605C80F56393',
         @RelatedEntityNameFieldMap='User'

/* SQL text to update entity field related entity name field map for entity field ID F316270A-73FC-4B46-941F-A4933C809C51 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F316270A-73FC-4B46-941F-A4933C809C51',
         @RelatedEntityNameFieldMap='AssignedToUser'

/* Base View SQL for Committees: Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: vwAgendaItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Agenda Items
-----               SCHEMA:      Committees
-----               BASE TABLE:  AgendaItem
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwAgendaItems]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwAgendaItems];
GO

CREATE VIEW [Committees].[vwAgendaItems]
AS
SELECT
    a.*,
    User_PresenterUserID.[Name] AS [PresenterUser],
    root_ParentAgendaItemID.RootID AS [RootParentAgendaItemID]
FROM
    [Committees].[AgendaItem] AS a
LEFT OUTER JOIN
    [${flyway:defaultSchema}].[User] AS User_PresenterUserID
  ON
    [a].[PresenterUserID] = User_PresenterUserID.[ID]
OUTER APPLY
    [Committees].[fnAgendaItemParentAgendaItemID_GetRootID]([a].[ID], [a].[ParentAgendaItemID]) AS root_ParentAgendaItemID
GO
GRANT SELECT ON [Committees].[vwAgendaItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: Permissions for vwAgendaItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwAgendaItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: spCreateAgendaItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR AgendaItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateAgendaItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateAgendaItem];
GO

CREATE PROCEDURE [Committees].[spCreateAgendaItem]
    @ID uniqueidentifier = NULL,
    @MeetingID uniqueidentifier,
    @ParentAgendaItemID uniqueidentifier,
    @Sequence int,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @PresenterUserID uniqueidentifier,
    @DurationMinutes int,
    @ItemType nvarchar(50) = NULL,
    @RelatedDocumentURL nvarchar(1000),
    @Status nvarchar(50) = NULL,
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[AgendaItem]
            (
                [ID],
                [MeetingID],
                [ParentAgendaItemID],
                [Sequence],
                [Title],
                [Description],
                [PresenterUserID],
                [DurationMinutes],
                [ItemType],
                [RelatedDocumentURL],
                [Status],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @MeetingID,
                @ParentAgendaItemID,
                @Sequence,
                @Title,
                @Description,
                @PresenterUserID,
                @DurationMinutes,
                ISNULL(@ItemType, 'Discussion'),
                @RelatedDocumentURL,
                ISNULL(@Status, 'Pending'),
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[AgendaItem]
            (
                [MeetingID],
                [ParentAgendaItemID],
                [Sequence],
                [Title],
                [Description],
                [PresenterUserID],
                [DurationMinutes],
                [ItemType],
                [RelatedDocumentURL],
                [Status],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @MeetingID,
                @ParentAgendaItemID,
                @Sequence,
                @Title,
                @Description,
                @PresenterUserID,
                @DurationMinutes,
                ISNULL(@ItemType, 'Discussion'),
                @RelatedDocumentURL,
                ISNULL(@Status, 'Pending'),
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwAgendaItems] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateAgendaItem] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Agenda Items */

GRANT EXECUTE ON [Committees].[spCreateAgendaItem] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: spUpdateAgendaItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR AgendaItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateAgendaItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateAgendaItem];
GO

CREATE PROCEDURE [Committees].[spUpdateAgendaItem]
    @ID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @ParentAgendaItemID uniqueidentifier,
    @Sequence int,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @PresenterUserID uniqueidentifier,
    @DurationMinutes int,
    @ItemType nvarchar(50),
    @RelatedDocumentURL nvarchar(1000),
    @Status nvarchar(50),
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[AgendaItem]
    SET
        [MeetingID] = @MeetingID,
        [ParentAgendaItemID] = @ParentAgendaItemID,
        [Sequence] = @Sequence,
        [Title] = @Title,
        [Description] = @Description,
        [PresenterUserID] = @PresenterUserID,
        [DurationMinutes] = @DurationMinutes,
        [ItemType] = @ItemType,
        [RelatedDocumentURL] = @RelatedDocumentURL,
        [Status] = @Status,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwAgendaItems] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwAgendaItems]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateAgendaItem] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the AgendaItem table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateAgendaItem]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateAgendaItem];
GO
CREATE TRIGGER [Committees].trgUpdateAgendaItem
ON [Committees].[AgendaItem]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[AgendaItem]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[AgendaItem] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Agenda Items */

GRANT EXECUTE ON [Committees].[spUpdateAgendaItem] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Agenda Items
-- Item: spDeleteAgendaItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR AgendaItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteAgendaItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteAgendaItem];
GO

CREATE PROCEDURE [Committees].[spDeleteAgendaItem]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[AgendaItem]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteAgendaItem] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Agenda Items */

GRANT EXECUTE ON [Committees].[spDeleteAgendaItem] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 324FDEBE-927C-4B10-84C5-2BFDB6B1B32B */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='324FDEBE-927C-4B10-84C5-2BFDB6B1B32B',
         @RelatedEntityNameFieldMap='ArtifactType'

/* Base View SQL for Committees: Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: vwArtifactTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Artifact Types
-----               SCHEMA:      Committees
-----               BASE TABLE:  ArtifactType
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwArtifactTypes]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwArtifactTypes];
GO

CREATE VIEW [Committees].[vwArtifactTypes]
AS
SELECT
    a.*,
    Entity_ExtendedEntityID.[Name] AS [ExtendedEntity]
FROM
    [Committees].[ArtifactType] AS a
LEFT OUTER JOIN
    [${flyway:defaultSchema}].[Entity] AS Entity_ExtendedEntityID
  ON
    [a].[ExtendedEntityID] = Entity_ExtendedEntityID.[ID]
GO
GRANT SELECT ON [Committees].[vwArtifactTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: Permissions for vwArtifactTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwArtifactTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: spCreateArtifactType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR ArtifactType
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateArtifactType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateArtifactType];
GO

CREATE PROCEDURE [Committees].[spCreateArtifactType]
    @ID uniqueidentifier = NULL,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @ExtendedEntityID uniqueidentifier,
    @IconClass nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[ArtifactType]
            (
                [ID],
                [Name],
                [Description],
                [ExtendedEntityID],
                [IconClass]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @Name,
                @Description,
                @ExtendedEntityID,
                @IconClass
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[ArtifactType]
            (
                [Name],
                [Description],
                [ExtendedEntityID],
                [IconClass]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @Name,
                @Description,
                @ExtendedEntityID,
                @IconClass
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwArtifactTypes] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateArtifactType] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Artifact Types */

GRANT EXECUTE ON [Committees].[spCreateArtifactType] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: spUpdateArtifactType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR ArtifactType
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateArtifactType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateArtifactType];
GO

CREATE PROCEDURE [Committees].[spUpdateArtifactType]
    @ID uniqueidentifier,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @ExtendedEntityID uniqueidentifier,
    @IconClass nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[ArtifactType]
    SET
        [Name] = @Name,
        [Description] = @Description,
        [ExtendedEntityID] = @ExtendedEntityID,
        [IconClass] = @IconClass
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwArtifactTypes] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwArtifactTypes]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateArtifactType] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the ArtifactType table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateArtifactType]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateArtifactType];
GO
CREATE TRIGGER [Committees].trgUpdateArtifactType
ON [Committees].[ArtifactType]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[ArtifactType]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[ArtifactType] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Artifact Types */

GRANT EXECUTE ON [Committees].[spUpdateArtifactType] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifact Types
-- Item: spDeleteArtifactType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR ArtifactType
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteArtifactType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteArtifactType];
GO

CREATE PROCEDURE [Committees].[spDeleteArtifactType]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[ArtifactType]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteArtifactType] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Artifact Types */

GRANT EXECUTE ON [Committees].[spDeleteArtifactType] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID E94E5192-6968-453F-856C-874C0F10C220 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='E94E5192-6968-453F-856C-874C0F10C220',
         @RelatedEntityNameFieldMap='AssignedByUser'

/* Base View SQL for Committees: Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: vwAttendances
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Attendances
-----               SCHEMA:      Committees
-----               BASE TABLE:  Attendance
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwAttendances]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwAttendances];
GO

CREATE VIEW [Committees].[vwAttendances]
AS
SELECT
    a.*,
    User_UserID.[Name] AS [User]
FROM
    [Committees].[Attendance] AS a
INNER JOIN
    [${flyway:defaultSchema}].[User] AS User_UserID
  ON
    [a].[UserID] = User_UserID.[ID]
GO
GRANT SELECT ON [Committees].[vwAttendances] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: Permissions for vwAttendances
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwAttendances] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: spCreateAttendance
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Attendance
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateAttendance]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateAttendance];
GO

CREATE PROCEDURE [Committees].[spCreateAttendance]
    @ID uniqueidentifier = NULL,
    @MeetingID uniqueidentifier,
    @UserID uniqueidentifier,
    @AttendanceStatus nvarchar(50) = NULL,
    @JoinedAt datetimeoffset,
    @LeftAt datetimeoffset,
    @Notes nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Attendance]
            (
                [ID],
                [MeetingID],
                [UserID],
                [AttendanceStatus],
                [JoinedAt],
                [LeftAt],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @MeetingID,
                @UserID,
                ISNULL(@AttendanceStatus, 'Expected'),
                @JoinedAt,
                @LeftAt,
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Attendance]
            (
                [MeetingID],
                [UserID],
                [AttendanceStatus],
                [JoinedAt],
                [LeftAt],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @MeetingID,
                @UserID,
                ISNULL(@AttendanceStatus, 'Expected'),
                @JoinedAt,
                @LeftAt,
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwAttendances] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateAttendance] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Attendances */

GRANT EXECUTE ON [Committees].[spCreateAttendance] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: spUpdateAttendance
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Attendance
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateAttendance]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateAttendance];
GO

CREATE PROCEDURE [Committees].[spUpdateAttendance]
    @ID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @UserID uniqueidentifier,
    @AttendanceStatus nvarchar(50),
    @JoinedAt datetimeoffset,
    @LeftAt datetimeoffset,
    @Notes nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Attendance]
    SET
        [MeetingID] = @MeetingID,
        [UserID] = @UserID,
        [AttendanceStatus] = @AttendanceStatus,
        [JoinedAt] = @JoinedAt,
        [LeftAt] = @LeftAt,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwAttendances] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwAttendances]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateAttendance] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Attendance table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateAttendance]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateAttendance];
GO
CREATE TRIGGER [Committees].trgUpdateAttendance
ON [Committees].[Attendance]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Attendance]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Attendance] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Attendances */

GRANT EXECUTE ON [Committees].[spUpdateAttendance] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Attendances
-- Item: spDeleteAttendance
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Attendance
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteAttendance]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteAttendance];
GO

CREATE PROCEDURE [Committees].[spDeleteAttendance]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Attendance]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteAttendance] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Attendances */

GRANT EXECUTE ON [Committees].[spDeleteAttendance] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID EBFA4D58-3A57-422C-9BB2-FD1DF07335A5 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='EBFA4D58-3A57-422C-9BB2-FD1DF07335A5',
         @RelatedEntityNameFieldMap='UploadedByUser'

/* Base View SQL for Committees: Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: vwArtifacts
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Artifacts
-----               SCHEMA:      Committees
-----               BASE TABLE:  Artifact
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwArtifacts]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwArtifacts];
GO

CREATE VIEW [Committees].[vwArtifacts]
AS
SELECT
    a.*,
    Committee_CommitteeID.[Name] AS [Committee],
    ArtifactType_ArtifactTypeID.[Name] AS [ArtifactType],
    User_UploadedByUserID.[Name] AS [UploadedByUser]
FROM
    [Committees].[Artifact] AS a
LEFT OUTER JOIN
    [Committees].[Committee] AS Committee_CommitteeID
  ON
    [a].[CommitteeID] = Committee_CommitteeID.[ID]
INNER JOIN
    [Committees].[ArtifactType] AS ArtifactType_ArtifactTypeID
  ON
    [a].[ArtifactTypeID] = ArtifactType_ArtifactTypeID.[ID]
LEFT OUTER JOIN
    [${flyway:defaultSchema}].[User] AS User_UploadedByUserID
  ON
    [a].[UploadedByUserID] = User_UploadedByUserID.[ID]
GO
GRANT SELECT ON [Committees].[vwArtifacts] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: Permissions for vwArtifacts
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwArtifacts] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: spCreateArtifact
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Artifact
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateArtifact]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateArtifact];
GO

CREATE PROCEDURE [Committees].[spCreateArtifact]
    @ID uniqueidentifier = NULL,
    @CommitteeID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @ActionItemID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @ArtifactTypeID uniqueidentifier,
    @Provider nvarchar(50),
    @ExternalID nvarchar(500),
    @URL nvarchar(2000),
    @MimeType nvarchar(100),
    @FileSize bigint,
    @UploadedByUserID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Artifact]
            (
                [ID],
                [CommitteeID],
                [MeetingID],
                [AgendaItemID],
                [ActionItemID],
                [Title],
                [Description],
                [ArtifactTypeID],
                [Provider],
                [ExternalID],
                [URL],
                [MimeType],
                [FileSize],
                [UploadedByUserID]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @CommitteeID,
                @MeetingID,
                @AgendaItemID,
                @ActionItemID,
                @Title,
                @Description,
                @ArtifactTypeID,
                @Provider,
                @ExternalID,
                @URL,
                @MimeType,
                @FileSize,
                @UploadedByUserID
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Artifact]
            (
                [CommitteeID],
                [MeetingID],
                [AgendaItemID],
                [ActionItemID],
                [Title],
                [Description],
                [ArtifactTypeID],
                [Provider],
                [ExternalID],
                [URL],
                [MimeType],
                [FileSize],
                [UploadedByUserID]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @CommitteeID,
                @MeetingID,
                @AgendaItemID,
                @ActionItemID,
                @Title,
                @Description,
                @ArtifactTypeID,
                @Provider,
                @ExternalID,
                @URL,
                @MimeType,
                @FileSize,
                @UploadedByUserID
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwArtifacts] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateArtifact] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Artifacts */

GRANT EXECUTE ON [Committees].[spCreateArtifact] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: spUpdateArtifact
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Artifact
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateArtifact]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateArtifact];
GO

CREATE PROCEDURE [Committees].[spUpdateArtifact]
    @ID uniqueidentifier,
    @CommitteeID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @ActionItemID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @ArtifactTypeID uniqueidentifier,
    @Provider nvarchar(50),
    @ExternalID nvarchar(500),
    @URL nvarchar(2000),
    @MimeType nvarchar(100),
    @FileSize bigint,
    @UploadedByUserID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Artifact]
    SET
        [CommitteeID] = @CommitteeID,
        [MeetingID] = @MeetingID,
        [AgendaItemID] = @AgendaItemID,
        [ActionItemID] = @ActionItemID,
        [Title] = @Title,
        [Description] = @Description,
        [ArtifactTypeID] = @ArtifactTypeID,
        [Provider] = @Provider,
        [ExternalID] = @ExternalID,
        [URL] = @URL,
        [MimeType] = @MimeType,
        [FileSize] = @FileSize,
        [UploadedByUserID] = @UploadedByUserID
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwArtifacts] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwArtifacts]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateArtifact] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Artifact table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateArtifact]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateArtifact];
GO
CREATE TRIGGER [Committees].trgUpdateArtifact
ON [Committees].[Artifact]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Artifact]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Artifact] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Artifacts */

GRANT EXECUTE ON [Committees].[spUpdateArtifact] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Artifacts
-- Item: spDeleteArtifact
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Artifact
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteArtifact]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteArtifact];
GO

CREATE PROCEDURE [Committees].[spDeleteArtifact]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Artifact]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteArtifact] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Artifacts */

GRANT EXECUTE ON [Committees].[spDeleteArtifact] TO [cdp_Integration]



/* Base View SQL for Committees: Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: vwActionItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Action Items
-----               SCHEMA:      Committees
-----               BASE TABLE:  ActionItem
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwActionItems]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwActionItems];
GO

CREATE VIEW [Committees].[vwActionItems]
AS
SELECT
    a.*,
    Committee_CommitteeID.[Name] AS [Committee],
    User_AssignedToUserID.[Name] AS [AssignedToUser],
    User_AssignedByUserID.[Name] AS [AssignedByUser]
FROM
    [Committees].[ActionItem] AS a
INNER JOIN
    [Committees].[Committee] AS Committee_CommitteeID
  ON
    [a].[CommitteeID] = Committee_CommitteeID.[ID]
INNER JOIN
    [${flyway:defaultSchema}].[User] AS User_AssignedToUserID
  ON
    [a].[AssignedToUserID] = User_AssignedToUserID.[ID]
LEFT OUTER JOIN
    [${flyway:defaultSchema}].[User] AS User_AssignedByUserID
  ON
    [a].[AssignedByUserID] = User_AssignedByUserID.[ID]
GO
GRANT SELECT ON [Committees].[vwActionItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: Permissions for vwActionItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwActionItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: spCreateActionItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR ActionItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateActionItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateActionItem];
GO

CREATE PROCEDURE [Committees].[spCreateActionItem]
    @ID uniqueidentifier = NULL,
    @CommitteeID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @AssignedToUserID uniqueidentifier,
    @AssignedByUserID uniqueidentifier,
    @DueDate date,
    @Priority nvarchar(20) = NULL,
    @Status nvarchar(50) = NULL,
    @CompletedAt datetimeoffset,
    @CompletionNotes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[ActionItem]
            (
                [ID],
                [CommitteeID],
                [MeetingID],
                [AgendaItemID],
                [Title],
                [Description],
                [AssignedToUserID],
                [AssignedByUserID],
                [DueDate],
                [Priority],
                [Status],
                [CompletedAt],
                [CompletionNotes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @CommitteeID,
                @MeetingID,
                @AgendaItemID,
                @Title,
                @Description,
                @AssignedToUserID,
                @AssignedByUserID,
                @DueDate,
                ISNULL(@Priority, 'Medium'),
                ISNULL(@Status, 'Open'),
                @CompletedAt,
                @CompletionNotes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[ActionItem]
            (
                [CommitteeID],
                [MeetingID],
                [AgendaItemID],
                [Title],
                [Description],
                [AssignedToUserID],
                [AssignedByUserID],
                [DueDate],
                [Priority],
                [Status],
                [CompletedAt],
                [CompletionNotes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @CommitteeID,
                @MeetingID,
                @AgendaItemID,
                @Title,
                @Description,
                @AssignedToUserID,
                @AssignedByUserID,
                @DueDate,
                ISNULL(@Priority, 'Medium'),
                ISNULL(@Status, 'Open'),
                @CompletedAt,
                @CompletionNotes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwActionItems] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateActionItem] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Action Items */

GRANT EXECUTE ON [Committees].[spCreateActionItem] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: spUpdateActionItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR ActionItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateActionItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateActionItem];
GO

CREATE PROCEDURE [Committees].[spUpdateActionItem]
    @ID uniqueidentifier,
    @CommitteeID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @AssignedToUserID uniqueidentifier,
    @AssignedByUserID uniqueidentifier,
    @DueDate date,
    @Priority nvarchar(20),
    @Status nvarchar(50),
    @CompletedAt datetimeoffset,
    @CompletionNotes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[ActionItem]
    SET
        [CommitteeID] = @CommitteeID,
        [MeetingID] = @MeetingID,
        [AgendaItemID] = @AgendaItemID,
        [Title] = @Title,
        [Description] = @Description,
        [AssignedToUserID] = @AssignedToUserID,
        [AssignedByUserID] = @AssignedByUserID,
        [DueDate] = @DueDate,
        [Priority] = @Priority,
        [Status] = @Status,
        [CompletedAt] = @CompletedAt,
        [CompletionNotes] = @CompletionNotes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwActionItems] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwActionItems]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateActionItem] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the ActionItem table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateActionItem]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateActionItem];
GO
CREATE TRIGGER [Committees].trgUpdateActionItem
ON [Committees].[ActionItem]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[ActionItem]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[ActionItem] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Action Items */

GRANT EXECUTE ON [Committees].[spUpdateActionItem] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Action Items
-- Item: spDeleteActionItem
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR ActionItem
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteActionItem]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteActionItem];
GO

CREATE PROCEDURE [Committees].[spDeleteActionItem]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[ActionItem]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteActionItem] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Action Items */

GRANT EXECUTE ON [Committees].[spDeleteActionItem] TO [cdp_Integration]



/* Index for Foreign Keys for Committee */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key TypeID in table Committee
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Committee_TypeID' 
    AND object_id = OBJECT_ID('[Committees].[Committee]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Committee_TypeID ON [Committees].[Committee] ([TypeID]);

-- Index for foreign key ParentCommitteeID in table Committee
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Committee_ParentCommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[Committee]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Committee_ParentCommitteeID ON [Committees].[Committee] ([ParentCommitteeID]);

/* Root ID Function SQL for Committees: Committees.ParentCommitteeID */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: fnCommitteeParentCommitteeID_GetRootID
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
------------------------------------------------------------
----- ROOT ID FUNCTION FOR: [Committee].[ParentCommitteeID]
------------------------------------------------------------
IF OBJECT_ID('[Committees].[fnCommitteeParentCommitteeID_GetRootID]', 'IF') IS NOT NULL
    DROP FUNCTION [Committees].[fnCommitteeParentCommitteeID_GetRootID];
GO

CREATE FUNCTION [Committees].[fnCommitteeParentCommitteeID_GetRootID]
(
    @RecordID uniqueidentifier,
    @ParentID uniqueidentifier
)
RETURNS TABLE
AS
RETURN
(
    WITH CTE_RootParent AS (
        -- Anchor: Start from @ParentID if not null, otherwise start from @RecordID
        SELECT
            [ID],
            [ParentCommitteeID],
            [ID] AS [RootParentID],
            0 AS [Depth]
        FROM
            [Committees].[Committee]
        WHERE
            [ID] = COALESCE(@ParentID, @RecordID)

        UNION ALL

        -- Recursive: Keep going up the hierarchy until ParentCommitteeID is NULL
        -- Includes depth counter to prevent infinite loops from circular references
        SELECT
            c.[ID],
            c.[ParentCommitteeID],
            c.[ID] AS [RootParentID],
            p.[Depth] + 1 AS [Depth]
        FROM
            [Committees].[Committee] c
        INNER JOIN
            CTE_RootParent p ON c.[ID] = p.[ParentCommitteeID]
        WHERE
            p.[Depth] < 100  -- Prevent infinite loops, max 100 levels
    )
    SELECT TOP 1
        [RootParentID] AS RootID
    FROM
        CTE_RootParent
    WHERE
        [ParentCommitteeID] IS NULL
    ORDER BY
        [RootParentID]
);
GO


/* SQL text to update entity field related entity name field map for entity field ID 00FF0F42-46B5-4503-9E0C-17118D943995 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='00FF0F42-46B5-4503-9E0C-17118D943995',
         @RelatedEntityNameFieldMap='Type'

/* Index for Foreign Keys for Meeting */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key CommitteeID in table Meeting
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Meeting_CommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[Meeting]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Meeting_CommitteeID ON [Committees].[Meeting] ([CommitteeID]);

/* SQL text to update entity field related entity name field map for entity field ID 0E37E235-B2DF-48D7-8B83-DFBC5CE96D1D */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='0E37E235-B2DF-48D7-8B83-DFBC5CE96D1D',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Membership */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key CommitteeID in table Membership
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Membership_CommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[Membership]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Membership_CommitteeID ON [Committees].[Membership] ([CommitteeID]);

-- Index for foreign key UserID in table Membership
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Membership_UserID' 
    AND object_id = OBJECT_ID('[Committees].[Membership]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Membership_UserID ON [Committees].[Membership] ([UserID]);

-- Index for foreign key RoleID in table Membership
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Membership_RoleID' 
    AND object_id = OBJECT_ID('[Committees].[Membership]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Membership_RoleID ON [Committees].[Membership] ([RoleID]);

-- Index for foreign key TermID in table Membership
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Membership_TermID' 
    AND object_id = OBJECT_ID('[Committees].[Membership]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Membership_TermID ON [Committees].[Membership] ([TermID]);

/* SQL text to update entity field related entity name field map for entity field ID 71CFC564-3920-4491-928F-5C78D5471023 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='71CFC564-3920-4491-928F-5C78D5471023',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Minute */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key ArtifactID in table Minute
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Minute_ArtifactID' 
    AND object_id = OBJECT_ID('[Committees].[Minute]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Minute_ArtifactID ON [Committees].[Minute] ([ArtifactID]);

-- Index for foreign key ApprovedByMeetingID in table Minute
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Minute_ApprovedByMeetingID' 
    AND object_id = OBJECT_ID('[Committees].[Minute]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Minute_ApprovedByMeetingID ON [Committees].[Minute] ([ApprovedByMeetingID]);

/* Index for Foreign Keys for Motion */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key MeetingID in table Motion
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Motion_MeetingID' 
    AND object_id = OBJECT_ID('[Committees].[Motion]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Motion_MeetingID ON [Committees].[Motion] ([MeetingID]);

-- Index for foreign key AgendaItemID in table Motion
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Motion_AgendaItemID' 
    AND object_id = OBJECT_ID('[Committees].[Motion]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Motion_AgendaItemID ON [Committees].[Motion] ([AgendaItemID]);

-- Index for foreign key MovedByMembershipID in table Motion
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Motion_MovedByMembershipID' 
    AND object_id = OBJECT_ID('[Committees].[Motion]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Motion_MovedByMembershipID ON [Committees].[Motion] ([MovedByMembershipID]);

-- Index for foreign key SecondedByMembershipID in table Motion
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Motion_SecondedByMembershipID' 
    AND object_id = OBJECT_ID('[Committees].[Motion]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Motion_SecondedByMembershipID ON [Committees].[Motion] ([SecondedByMembershipID]);

/* Base View SQL for Committees: Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: vwMinutes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Minutes
-----               SCHEMA:      Committees
-----               BASE TABLE:  Minute
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwMinutes]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwMinutes];
GO

CREATE VIEW [Committees].[vwMinutes]
AS
SELECT
    m.*
FROM
    [Committees].[Minute] AS m
GO
GRANT SELECT ON [Committees].[vwMinutes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: Permissions for vwMinutes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMinutes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: spCreateMinute
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Minute
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateMinute]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateMinute];
GO

CREATE PROCEDURE [Committees].[spCreateMinute]
    @ID uniqueidentifier = NULL,
    @ArtifactID uniqueidentifier,
    @ApprovalStatus nvarchar(50) = NULL,
    @ApprovedAt datetimeoffset,
    @ApprovedByMeetingID uniqueidentifier,
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Minute]
            (
                [ID],
                [ArtifactID],
                [ApprovalStatus],
                [ApprovedAt],
                [ApprovedByMeetingID],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @ArtifactID,
                ISNULL(@ApprovalStatus, 'Draft'),
                @ApprovedAt,
                @ApprovedByMeetingID,
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Minute]
            (
                [ArtifactID],
                [ApprovalStatus],
                [ApprovedAt],
                [ApprovedByMeetingID],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ArtifactID,
                ISNULL(@ApprovalStatus, 'Draft'),
                @ApprovedAt,
                @ApprovedByMeetingID,
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwMinutes] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateMinute] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Minutes */

GRANT EXECUTE ON [Committees].[spCreateMinute] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: spUpdateMinute
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Minute
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateMinute]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateMinute];
GO

CREATE PROCEDURE [Committees].[spUpdateMinute]
    @ID uniqueidentifier,
    @ArtifactID uniqueidentifier,
    @ApprovalStatus nvarchar(50),
    @ApprovedAt datetimeoffset,
    @ApprovedByMeetingID uniqueidentifier,
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Minute]
    SET
        [ArtifactID] = @ArtifactID,
        [ApprovalStatus] = @ApprovalStatus,
        [ApprovedAt] = @ApprovedAt,
        [ApprovedByMeetingID] = @ApprovedByMeetingID,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwMinutes] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwMinutes]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateMinute] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Minute table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateMinute]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateMinute];
GO
CREATE TRIGGER [Committees].trgUpdateMinute
ON [Committees].[Minute]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Minute]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Minute] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Minutes */

GRANT EXECUTE ON [Committees].[spUpdateMinute] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Minutes
-- Item: spDeleteMinute
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Minute
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteMinute]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteMinute];
GO

CREATE PROCEDURE [Committees].[spDeleteMinute]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Minute]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteMinute] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Minutes */

GRANT EXECUTE ON [Committees].[spDeleteMinute] TO [cdp_Integration]



/* Base View SQL for Committees: Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: vwMotions
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Motions
-----               SCHEMA:      Committees
-----               BASE TABLE:  Motion
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwMotions]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwMotions];
GO

CREATE VIEW [Committees].[vwMotions]
AS
SELECT
    m.*
FROM
    [Committees].[Motion] AS m
GO
GRANT SELECT ON [Committees].[vwMotions] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: Permissions for vwMotions
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMotions] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: spCreateMotion
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Motion
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateMotion]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateMotion];
GO

CREATE PROCEDURE [Committees].[spCreateMotion]
    @ID uniqueidentifier = NULL,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @Sequence int = NULL,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @MovedByMembershipID uniqueidentifier,
    @SecondedByMembershipID uniqueidentifier,
    @Result nvarchar(50) = NULL,
    @ResultSummary nvarchar(255),
    @YesCount int,
    @NoCount int,
    @AbstainCount int,
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Motion]
            (
                [ID],
                [MeetingID],
                [AgendaItemID],
                [Sequence],
                [Title],
                [Description],
                [MovedByMembershipID],
                [SecondedByMembershipID],
                [Result],
                [ResultSummary],
                [YesCount],
                [NoCount],
                [AbstainCount],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @MeetingID,
                @AgendaItemID,
                ISNULL(@Sequence, 1),
                @Title,
                @Description,
                @MovedByMembershipID,
                @SecondedByMembershipID,
                ISNULL(@Result, 'Pending'),
                @ResultSummary,
                @YesCount,
                @NoCount,
                @AbstainCount,
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Motion]
            (
                [MeetingID],
                [AgendaItemID],
                [Sequence],
                [Title],
                [Description],
                [MovedByMembershipID],
                [SecondedByMembershipID],
                [Result],
                [ResultSummary],
                [YesCount],
                [NoCount],
                [AbstainCount],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @MeetingID,
                @AgendaItemID,
                ISNULL(@Sequence, 1),
                @Title,
                @Description,
                @MovedByMembershipID,
                @SecondedByMembershipID,
                ISNULL(@Result, 'Pending'),
                @ResultSummary,
                @YesCount,
                @NoCount,
                @AbstainCount,
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwMotions] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateMotion] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Motions */

GRANT EXECUTE ON [Committees].[spCreateMotion] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: spUpdateMotion
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Motion
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateMotion]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateMotion];
GO

CREATE PROCEDURE [Committees].[spUpdateMotion]
    @ID uniqueidentifier,
    @MeetingID uniqueidentifier,
    @AgendaItemID uniqueidentifier,
    @Sequence int,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @MovedByMembershipID uniqueidentifier,
    @SecondedByMembershipID uniqueidentifier,
    @Result nvarchar(50),
    @ResultSummary nvarchar(255),
    @YesCount int,
    @NoCount int,
    @AbstainCount int,
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Motion]
    SET
        [MeetingID] = @MeetingID,
        [AgendaItemID] = @AgendaItemID,
        [Sequence] = @Sequence,
        [Title] = @Title,
        [Description] = @Description,
        [MovedByMembershipID] = @MovedByMembershipID,
        [SecondedByMembershipID] = @SecondedByMembershipID,
        [Result] = @Result,
        [ResultSummary] = @ResultSummary,
        [YesCount] = @YesCount,
        [NoCount] = @NoCount,
        [AbstainCount] = @AbstainCount,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwMotions] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwMotions]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateMotion] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Motion table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateMotion]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateMotion];
GO
CREATE TRIGGER [Committees].trgUpdateMotion
ON [Committees].[Motion]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Motion]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Motion] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Motions */

GRANT EXECUTE ON [Committees].[spUpdateMotion] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Motions
-- Item: spDeleteMotion
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Motion
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteMotion]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteMotion];
GO

CREATE PROCEDURE [Committees].[spDeleteMotion]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Motion]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteMotion] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Motions */

GRANT EXECUTE ON [Committees].[spDeleteMotion] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID B1EF042D-2979-47E1-99D0-ECFED377C6ED */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='B1EF042D-2979-47E1-99D0-ECFED377C6ED',
         @RelatedEntityNameFieldMap='ParentCommittee'

/* Base View SQL for Committees: Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: vwMeetings
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Meetings
-----               SCHEMA:      Committees
-----               BASE TABLE:  Meeting
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwMeetings]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwMeetings];
GO

CREATE VIEW [Committees].[vwMeetings]
AS
SELECT
    m.*,
    Committee_CommitteeID.[Name] AS [Committee]
FROM
    [Committees].[Meeting] AS m
INNER JOIN
    [Committees].[Committee] AS Committee_CommitteeID
  ON
    [m].[CommitteeID] = Committee_CommitteeID.[ID]
GO
GRANT SELECT ON [Committees].[vwMeetings] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: Permissions for vwMeetings
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMeetings] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: spCreateMeeting
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Meeting
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateMeeting]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateMeeting];
GO

CREATE PROCEDURE [Committees].[spCreateMeeting]
    @ID uniqueidentifier = NULL,
    @CommitteeID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @StartDateTime datetimeoffset,
    @EndDateTime datetimeoffset,
    @TimeZone nvarchar(50) = NULL,
    @LocationType nvarchar(50) = NULL,
    @LocationText nvarchar(500),
    @VideoProvider nvarchar(50),
    @VideoMeetingID nvarchar(255),
    @VideoJoinURL nvarchar(1000),
    @VideoRecordingURL nvarchar(1000),
    @TranscriptURL nvarchar(1000),
    @Status nvarchar(50) = NULL,
    @CalendarEventID nvarchar(255)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Meeting]
            (
                [ID],
                [CommitteeID],
                [Title],
                [Description],
                [StartDateTime],
                [EndDateTime],
                [TimeZone],
                [LocationType],
                [LocationText],
                [VideoProvider],
                [VideoMeetingID],
                [VideoJoinURL],
                [VideoRecordingURL],
                [TranscriptURL],
                [Status],
                [CalendarEventID]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @CommitteeID,
                @Title,
                @Description,
                @StartDateTime,
                @EndDateTime,
                ISNULL(@TimeZone, 'America/New_York'),
                ISNULL(@LocationType, 'Virtual'),
                @LocationText,
                @VideoProvider,
                @VideoMeetingID,
                @VideoJoinURL,
                @VideoRecordingURL,
                @TranscriptURL,
                ISNULL(@Status, 'Scheduled'),
                @CalendarEventID
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Meeting]
            (
                [CommitteeID],
                [Title],
                [Description],
                [StartDateTime],
                [EndDateTime],
                [TimeZone],
                [LocationType],
                [LocationText],
                [VideoProvider],
                [VideoMeetingID],
                [VideoJoinURL],
                [VideoRecordingURL],
                [TranscriptURL],
                [Status],
                [CalendarEventID]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @CommitteeID,
                @Title,
                @Description,
                @StartDateTime,
                @EndDateTime,
                ISNULL(@TimeZone, 'America/New_York'),
                ISNULL(@LocationType, 'Virtual'),
                @LocationText,
                @VideoProvider,
                @VideoMeetingID,
                @VideoJoinURL,
                @VideoRecordingURL,
                @TranscriptURL,
                ISNULL(@Status, 'Scheduled'),
                @CalendarEventID
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwMeetings] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateMeeting] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Meetings */

GRANT EXECUTE ON [Committees].[spCreateMeeting] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: spUpdateMeeting
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Meeting
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateMeeting]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateMeeting];
GO

CREATE PROCEDURE [Committees].[spUpdateMeeting]
    @ID uniqueidentifier,
    @CommitteeID uniqueidentifier,
    @Title nvarchar(255),
    @Description nvarchar(MAX),
    @StartDateTime datetimeoffset,
    @EndDateTime datetimeoffset,
    @TimeZone nvarchar(50),
    @LocationType nvarchar(50),
    @LocationText nvarchar(500),
    @VideoProvider nvarchar(50),
    @VideoMeetingID nvarchar(255),
    @VideoJoinURL nvarchar(1000),
    @VideoRecordingURL nvarchar(1000),
    @TranscriptURL nvarchar(1000),
    @Status nvarchar(50),
    @CalendarEventID nvarchar(255)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Meeting]
    SET
        [CommitteeID] = @CommitteeID,
        [Title] = @Title,
        [Description] = @Description,
        [StartDateTime] = @StartDateTime,
        [EndDateTime] = @EndDateTime,
        [TimeZone] = @TimeZone,
        [LocationType] = @LocationType,
        [LocationText] = @LocationText,
        [VideoProvider] = @VideoProvider,
        [VideoMeetingID] = @VideoMeetingID,
        [VideoJoinURL] = @VideoJoinURL,
        [VideoRecordingURL] = @VideoRecordingURL,
        [TranscriptURL] = @TranscriptURL,
        [Status] = @Status,
        [CalendarEventID] = @CalendarEventID
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwMeetings] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwMeetings]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateMeeting] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Meeting table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateMeeting]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateMeeting];
GO
CREATE TRIGGER [Committees].trgUpdateMeeting
ON [Committees].[Meeting]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Meeting]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Meeting] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Meetings */

GRANT EXECUTE ON [Committees].[spUpdateMeeting] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Meetings
-- Item: spDeleteMeeting
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Meeting
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteMeeting]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteMeeting];
GO

CREATE PROCEDURE [Committees].[spDeleteMeeting]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Meeting]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteMeeting] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Meetings */

GRANT EXECUTE ON [Committees].[spDeleteMeeting] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 248D9518-DB0C-47DF-B3DE-217561A2A149 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='248D9518-DB0C-47DF-B3DE-217561A2A149',
         @RelatedEntityNameFieldMap='User'

/* Base View SQL for Committees: Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: vwCommittees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Committees
-----               SCHEMA:      Committees
-----               BASE TABLE:  Committee
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwCommittees]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwCommittees];
GO

CREATE VIEW [Committees].[vwCommittees]
AS
SELECT
    c.*,
    Type_TypeID.[Name] AS [Type],
    Committee_ParentCommitteeID.[Name] AS [ParentCommittee],
    root_ParentCommitteeID.RootID AS [RootParentCommitteeID]
FROM
    [Committees].[Committee] AS c
INNER JOIN
    [Committees].[Type] AS Type_TypeID
  ON
    [c].[TypeID] = Type_TypeID.[ID]
LEFT OUTER JOIN
    [Committees].[Committee] AS Committee_ParentCommitteeID
  ON
    [c].[ParentCommitteeID] = Committee_ParentCommitteeID.[ID]
OUTER APPLY
    [Committees].[fnCommitteeParentCommitteeID_GetRootID]([c].[ID], [c].[ParentCommitteeID]) AS root_ParentCommitteeID
GO
GRANT SELECT ON [Committees].[vwCommittees] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: Permissions for vwCommittees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwCommittees] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: spCreateCommittee
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Committee
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateCommittee]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateCommittee];
GO

CREATE PROCEDURE [Committees].[spCreateCommittee]
    @ID uniqueidentifier = NULL,
    @Name nvarchar(255),
    @Description nvarchar(MAX),
    @TypeID uniqueidentifier,
    @ParentCommitteeID uniqueidentifier,
    @OrganizationID uniqueidentifier,
    @CharterDocumentURL nvarchar(1000),
    @MissionStatement nvarchar(MAX),
    @Status nvarchar(50) = NULL,
    @IsPublic bit = NULL,
    @FormationDate date,
    @DissolutionDate date
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Committee]
            (
                [ID],
                [Name],
                [Description],
                [TypeID],
                [ParentCommitteeID],
                [OrganizationID],
                [CharterDocumentURL],
                [MissionStatement],
                [Status],
                [IsPublic],
                [FormationDate],
                [DissolutionDate]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @Name,
                @Description,
                @TypeID,
                @ParentCommitteeID,
                @OrganizationID,
                @CharterDocumentURL,
                @MissionStatement,
                ISNULL(@Status, 'Active'),
                ISNULL(@IsPublic, 1),
                @FormationDate,
                @DissolutionDate
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Committee]
            (
                [Name],
                [Description],
                [TypeID],
                [ParentCommitteeID],
                [OrganizationID],
                [CharterDocumentURL],
                [MissionStatement],
                [Status],
                [IsPublic],
                [FormationDate],
                [DissolutionDate]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @Name,
                @Description,
                @TypeID,
                @ParentCommitteeID,
                @OrganizationID,
                @CharterDocumentURL,
                @MissionStatement,
                ISNULL(@Status, 'Active'),
                ISNULL(@IsPublic, 1),
                @FormationDate,
                @DissolutionDate
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwCommittees] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateCommittee] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Committees */

GRANT EXECUTE ON [Committees].[spCreateCommittee] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: spUpdateCommittee
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Committee
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateCommittee]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateCommittee];
GO

CREATE PROCEDURE [Committees].[spUpdateCommittee]
    @ID uniqueidentifier,
    @Name nvarchar(255),
    @Description nvarchar(MAX),
    @TypeID uniqueidentifier,
    @ParentCommitteeID uniqueidentifier,
    @OrganizationID uniqueidentifier,
    @CharterDocumentURL nvarchar(1000),
    @MissionStatement nvarchar(MAX),
    @Status nvarchar(50),
    @IsPublic bit,
    @FormationDate date,
    @DissolutionDate date
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Committee]
    SET
        [Name] = @Name,
        [Description] = @Description,
        [TypeID] = @TypeID,
        [ParentCommitteeID] = @ParentCommitteeID,
        [OrganizationID] = @OrganizationID,
        [CharterDocumentURL] = @CharterDocumentURL,
        [MissionStatement] = @MissionStatement,
        [Status] = @Status,
        [IsPublic] = @IsPublic,
        [FormationDate] = @FormationDate,
        [DissolutionDate] = @DissolutionDate
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwCommittees] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwCommittees]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateCommittee] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Committee table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateCommittee]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateCommittee];
GO
CREATE TRIGGER [Committees].trgUpdateCommittee
ON [Committees].[Committee]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Committee]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Committee] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Committees */

GRANT EXECUTE ON [Committees].[spUpdateCommittee] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Committees
-- Item: spDeleteCommittee
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Committee
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteCommittee]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteCommittee];
GO

CREATE PROCEDURE [Committees].[spDeleteCommittee]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Committee]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteCommittee] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Committees */

GRANT EXECUTE ON [Committees].[spDeleteCommittee] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 130E9F80-8EC7-438E-B7FB-B4352DC5A626 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='130E9F80-8EC7-438E-B7FB-B4352DC5A626',
         @RelatedEntityNameFieldMap='Role'

/* SQL text to update entity field related entity name field map for entity field ID A4220189-68AB-4334-93E1-E1DE962238D3 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='A4220189-68AB-4334-93E1-E1DE962238D3',
         @RelatedEntityNameFieldMap='Term'

/* Base View SQL for Committees: Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: vwMemberships
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Memberships
-----               SCHEMA:      Committees
-----               BASE TABLE:  Membership
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwMemberships]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwMemberships];
GO

CREATE VIEW [Committees].[vwMemberships]
AS
SELECT
    m.*,
    Committee_CommitteeID.[Name] AS [Committee],
    User_UserID.[Name] AS [User],
    Role_RoleID.[Name] AS [Role],
    Term_TermID.[Name] AS [Term]
FROM
    [Committees].[Membership] AS m
INNER JOIN
    [Committees].[Committee] AS Committee_CommitteeID
  ON
    [m].[CommitteeID] = Committee_CommitteeID.[ID]
INNER JOIN
    [${flyway:defaultSchema}].[User] AS User_UserID
  ON
    [m].[UserID] = User_UserID.[ID]
INNER JOIN
    [Committees].[Role] AS Role_RoleID
  ON
    [m].[RoleID] = Role_RoleID.[ID]
LEFT OUTER JOIN
    [Committees].[Term] AS Term_TermID
  ON
    [m].[TermID] = Term_TermID.[ID]
GO
GRANT SELECT ON [Committees].[vwMemberships] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: Permissions for vwMemberships
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMemberships] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: spCreateMembership
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Membership
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateMembership]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateMembership];
GO

CREATE PROCEDURE [Committees].[spCreateMembership]
    @ID uniqueidentifier = NULL,
    @CommitteeID uniqueidentifier,
    @UserID uniqueidentifier,
    @RoleID uniqueidentifier,
    @TermID uniqueidentifier,
    @StartDate date,
    @EndDate date,
    @Status nvarchar(50) = NULL,
    @EndReason nvarchar(100),
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Membership]
            (
                [ID],
                [CommitteeID],
                [UserID],
                [RoleID],
                [TermID],
                [StartDate],
                [EndDate],
                [Status],
                [EndReason],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @CommitteeID,
                @UserID,
                @RoleID,
                @TermID,
                @StartDate,
                @EndDate,
                ISNULL(@Status, 'Active'),
                @EndReason,
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Membership]
            (
                [CommitteeID],
                [UserID],
                [RoleID],
                [TermID],
                [StartDate],
                [EndDate],
                [Status],
                [EndReason],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @CommitteeID,
                @UserID,
                @RoleID,
                @TermID,
                @StartDate,
                @EndDate,
                ISNULL(@Status, 'Active'),
                @EndReason,
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwMemberships] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateMembership] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Memberships */

GRANT EXECUTE ON [Committees].[spCreateMembership] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: spUpdateMembership
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Membership
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateMembership]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateMembership];
GO

CREATE PROCEDURE [Committees].[spUpdateMembership]
    @ID uniqueidentifier,
    @CommitteeID uniqueidentifier,
    @UserID uniqueidentifier,
    @RoleID uniqueidentifier,
    @TermID uniqueidentifier,
    @StartDate date,
    @EndDate date,
    @Status nvarchar(50),
    @EndReason nvarchar(100),
    @Notes nvarchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Membership]
    SET
        [CommitteeID] = @CommitteeID,
        [UserID] = @UserID,
        [RoleID] = @RoleID,
        [TermID] = @TermID,
        [StartDate] = @StartDate,
        [EndDate] = @EndDate,
        [Status] = @Status,
        [EndReason] = @EndReason,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwMemberships] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwMemberships]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateMembership] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Membership table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateMembership]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateMembership];
GO
CREATE TRIGGER [Committees].trgUpdateMembership
ON [Committees].[Membership]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Membership]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Membership] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Memberships */

GRANT EXECUTE ON [Committees].[spUpdateMembership] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Memberships
-- Item: spDeleteMembership
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Membership
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteMembership]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteMembership];
GO

CREATE PROCEDURE [Committees].[spDeleteMembership]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Membership]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteMembership] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Memberships */

GRANT EXECUTE ON [Committees].[spDeleteMembership] TO [cdp_Integration]



/* Index for Foreign Keys for Role */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------


/* Index for Foreign Keys for Term */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key CommitteeID in table Term
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Term_CommitteeID' 
    AND object_id = OBJECT_ID('[Committees].[Term]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Term_CommitteeID ON [Committees].[Term] ([CommitteeID]);

/* SQL text to update entity field related entity name field map for entity field ID C2C83172-81E6-4B75-805F-B0E4F814E811 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='C2C83172-81E6-4B75-805F-B0E4F814E811',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Type */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------


/* Index for Foreign Keys for Vote */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------
-- Index for foreign key MotionID in table Vote
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Vote_MotionID' 
    AND object_id = OBJECT_ID('[Committees].[Vote]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Vote_MotionID ON [Committees].[Vote] ([MotionID]);

-- Index for foreign key MembershipID in table Vote
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IDX_AUTO_MJ_FKEY_Vote_MembershipID' 
    AND object_id = OBJECT_ID('[Committees].[Vote]')
)
CREATE INDEX IDX_AUTO_MJ_FKEY_Vote_MembershipID ON [Committees].[Vote] ([MembershipID]);

/* Base View SQL for Committees: Roles */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: vwRoles
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Roles
-----               SCHEMA:      Committees
-----               BASE TABLE:  Role
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwRoles]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwRoles];
GO

CREATE VIEW [Committees].[vwRoles]
AS
SELECT
    r.*
FROM
    [Committees].[Role] AS r
GO
GRANT SELECT ON [Committees].[vwRoles] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Roles */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: Permissions for vwRoles
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwRoles] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Roles */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: spCreateRole
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateRole]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateRole];
GO

CREATE PROCEDURE [Committees].[spCreateRole]
    @ID uniqueidentifier = NULL,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @IsOfficer bit = NULL,
    @IsVotingRole bit = NULL,
    @DefaultPermissionsJSON nvarchar(MAX),
    @Sequence int = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Role]
            (
                [ID],
                [Name],
                [Description],
                [IsOfficer],
                [IsVotingRole],
                [DefaultPermissionsJSON],
                [Sequence]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @Name,
                @Description,
                ISNULL(@IsOfficer, 0),
                ISNULL(@IsVotingRole, 1),
                @DefaultPermissionsJSON,
                ISNULL(@Sequence, 100)
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Role]
            (
                [Name],
                [Description],
                [IsOfficer],
                [IsVotingRole],
                [DefaultPermissionsJSON],
                [Sequence]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @Name,
                @Description,
                ISNULL(@IsOfficer, 0),
                ISNULL(@IsVotingRole, 1),
                @DefaultPermissionsJSON,
                ISNULL(@Sequence, 100)
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwRoles] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateRole] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Roles */

GRANT EXECUTE ON [Committees].[spCreateRole] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Roles */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: spUpdateRole
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateRole]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateRole];
GO

CREATE PROCEDURE [Committees].[spUpdateRole]
    @ID uniqueidentifier,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @IsOfficer bit,
    @IsVotingRole bit,
    @DefaultPermissionsJSON nvarchar(MAX),
    @Sequence int
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Role]
    SET
        [Name] = @Name,
        [Description] = @Description,
        [IsOfficer] = @IsOfficer,
        [IsVotingRole] = @IsVotingRole,
        [DefaultPermissionsJSON] = @DefaultPermissionsJSON,
        [Sequence] = @Sequence
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwRoles] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwRoles]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateRole] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Role table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateRole]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateRole];
GO
CREATE TRIGGER [Committees].trgUpdateRole
ON [Committees].[Role]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Role]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Role] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Roles */

GRANT EXECUTE ON [Committees].[spUpdateRole] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Roles */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Roles
-- Item: spDeleteRole
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteRole]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteRole];
GO

CREATE PROCEDURE [Committees].[spDeleteRole]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Role]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteRole] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Roles */

GRANT EXECUTE ON [Committees].[spDeleteRole] TO [cdp_Integration]



/* Base View SQL for Committees: Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: vwTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Types
-----               SCHEMA:      Committees
-----               BASE TABLE:  Type
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwTypes]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwTypes];
GO

CREATE VIEW [Committees].[vwTypes]
AS
SELECT
    t.*
FROM
    [Committees].[Type] AS t
GO
GRANT SELECT ON [Committees].[vwTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: Permissions for vwTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: spCreateType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Type
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateType];
GO

CREATE PROCEDURE [Committees].[spCreateType]
    @ID uniqueidentifier = NULL,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @IsStandards bit = NULL,
    @DefaultTermMonths int,
    @IconClass nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Type]
            (
                [ID],
                [Name],
                [Description],
                [IsStandards],
                [DefaultTermMonths],
                [IconClass]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @Name,
                @Description,
                ISNULL(@IsStandards, 0),
                @DefaultTermMonths,
                @IconClass
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Type]
            (
                [Name],
                [Description],
                [IsStandards],
                [DefaultTermMonths],
                [IconClass]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @Name,
                @Description,
                ISNULL(@IsStandards, 0),
                @DefaultTermMonths,
                @IconClass
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwTypes] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateType] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Types */

GRANT EXECUTE ON [Committees].[spCreateType] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: spUpdateType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Type
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateType];
GO

CREATE PROCEDURE [Committees].[spUpdateType]
    @ID uniqueidentifier,
    @Name nvarchar(100),
    @Description nvarchar(MAX),
    @IsStandards bit,
    @DefaultTermMonths int,
    @IconClass nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Type]
    SET
        [Name] = @Name,
        [Description] = @Description,
        [IsStandards] = @IsStandards,
        [DefaultTermMonths] = @DefaultTermMonths,
        [IconClass] = @IconClass
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwTypes] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwTypes]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateType] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Type table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateType]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateType];
GO
CREATE TRIGGER [Committees].trgUpdateType
ON [Committees].[Type]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Type]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Type] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Types */

GRANT EXECUTE ON [Committees].[spUpdateType] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Types
-- Item: spDeleteType
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Type
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteType]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteType];
GO

CREATE PROCEDURE [Committees].[spDeleteType]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Type]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteType] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Types */

GRANT EXECUTE ON [Committees].[spDeleteType] TO [cdp_Integration]



/* Base View SQL for Committees: Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: vwVotes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Votes
-----               SCHEMA:      Committees
-----               BASE TABLE:  Vote
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwVotes]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwVotes];
GO

CREATE VIEW [Committees].[vwVotes]
AS
SELECT
    v.*
FROM
    [Committees].[Vote] AS v
GO
GRANT SELECT ON [Committees].[vwVotes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: Permissions for vwVotes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwVotes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: spCreateVote
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Vote
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateVote]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateVote];
GO

CREATE PROCEDURE [Committees].[spCreateVote]
    @ID uniqueidentifier = NULL,
    @MotionID uniqueidentifier,
    @MembershipID uniqueidentifier,
    @VoteValue nvarchar(20),
    @Notes nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Vote]
            (
                [ID],
                [MotionID],
                [MembershipID],
                [VoteValue],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @MotionID,
                @MembershipID,
                @VoteValue,
                @Notes
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Vote]
            (
                [MotionID],
                [MembershipID],
                [VoteValue],
                [Notes]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @MotionID,
                @MembershipID,
                @VoteValue,
                @Notes
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwVotes] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateVote] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Votes */

GRANT EXECUTE ON [Committees].[spCreateVote] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: spUpdateVote
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Vote
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateVote]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateVote];
GO

CREATE PROCEDURE [Committees].[spUpdateVote]
    @ID uniqueidentifier,
    @MotionID uniqueidentifier,
    @MembershipID uniqueidentifier,
    @VoteValue nvarchar(20),
    @Notes nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Vote]
    SET
        [MotionID] = @MotionID,
        [MembershipID] = @MembershipID,
        [VoteValue] = @VoteValue,
        [Notes] = @Notes
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwVotes] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwVotes]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateVote] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Vote table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateVote]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateVote];
GO
CREATE TRIGGER [Committees].trgUpdateVote
ON [Committees].[Vote]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Vote]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Vote] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Votes */

GRANT EXECUTE ON [Committees].[spUpdateVote] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Votes
-- Item: spDeleteVote
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Vote
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteVote]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteVote];
GO

CREATE PROCEDURE [Committees].[spDeleteVote]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Vote]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteVote] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Votes */

GRANT EXECUTE ON [Committees].[spDeleteVote] TO [cdp_Integration]



/* Base View SQL for Committees: Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: vwTerms
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees: Terms
-----               SCHEMA:      Committees
-----               BASE TABLE:  Term
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwTerms]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwTerms];
GO

CREATE VIEW [Committees].[vwTerms]
AS
SELECT
    t.*,
    Committee_CommitteeID.[Name] AS [Committee]
FROM
    [Committees].[Term] AS t
INNER JOIN
    [Committees].[Committee] AS Committee_CommitteeID
  ON
    [t].[CommitteeID] = Committee_CommitteeID.[ID]
GO
GRANT SELECT ON [Committees].[vwTerms] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Committees: Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: Permissions for vwTerms
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwTerms] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees: Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: spCreateTerm
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Term
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateTerm]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateTerm];
GO

CREATE PROCEDURE [Committees].[spCreateTerm]
    @ID uniqueidentifier = NULL,
    @CommitteeID uniqueidentifier,
    @Name nvarchar(100),
    @StartDate date,
    @EndDate date,
    @Status nvarchar(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @InsertedRow TABLE ([ID] UNIQUEIDENTIFIER)
    
    IF @ID IS NOT NULL
    BEGIN
        -- User provided a value, use it
        INSERT INTO [Committees].[Term]
            (
                [ID],
                [CommitteeID],
                [Name],
                [StartDate],
                [EndDate],
                [Status]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @ID,
                @CommitteeID,
                @Name,
                @StartDate,
                @EndDate,
                ISNULL(@Status, 'Active')
            )
    END
    ELSE
    BEGIN
        -- No value provided, let database use its default (e.g., NEWSEQUENTIALID())
        INSERT INTO [Committees].[Term]
            (
                [CommitteeID],
                [Name],
                [StartDate],
                [EndDate],
                [Status]
            )
        OUTPUT INSERTED.[ID] INTO @InsertedRow
        VALUES
            (
                @CommitteeID,
                @Name,
                @StartDate,
                @EndDate,
                ISNULL(@Status, 'Active')
            )
    END
    -- return the new record from the base view, which might have some calculated fields
    SELECT * FROM [Committees].[vwTerms] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateTerm] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Committees: Terms */

GRANT EXECUTE ON [Committees].[spCreateTerm] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees: Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: spUpdateTerm
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Term
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateTerm]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateTerm];
GO

CREATE PROCEDURE [Committees].[spUpdateTerm]
    @ID uniqueidentifier,
    @CommitteeID uniqueidentifier,
    @Name nvarchar(100),
    @StartDate date,
    @EndDate date,
    @Status nvarchar(50)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Term]
    SET
        [CommitteeID] = @CommitteeID,
        [Name] = @Name,
        [StartDate] = @StartDate,
        [EndDate] = @EndDate,
        [Status] = @Status
    WHERE
        [ID] = @ID

    -- Check if the update was successful
    IF @@ROWCOUNT = 0
        -- Nothing was updated, return no rows, but column structure from base view intact, semantically correct this way.
        SELECT TOP 0 * FROM [Committees].[vwTerms] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwTerms]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateTerm] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Term table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateTerm]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateTerm];
GO
CREATE TRIGGER [Committees].trgUpdateTerm
ON [Committees].[Term]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE
        [Committees].[Term]
    SET
        __mj_UpdatedAt = GETUTCDATE()
    FROM
        [Committees].[Term] AS _organicTable
    INNER JOIN
        INSERTED AS I ON
        _organicTable.[ID] = I.[ID];
END;
GO
        

/* spUpdate Permissions for Committees: Terms */

GRANT EXECUTE ON [Committees].[spUpdateTerm] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees: Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees: Terms
-- Item: spDeleteTerm
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Term
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteTerm]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteTerm];
GO

CREATE PROCEDURE [Committees].[spDeleteTerm]
    @ID uniqueidentifier
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM
        [Committees].[Term]
    WHERE
        [ID] = @ID


    -- Check if the delete was successful
    IF @@ROWCOUNT = 0
        SELECT NULL AS [ID] -- Return NULL for all primary key fields to indicate no record was deleted
    ELSE
        SELECT @ID AS [ID] -- Return the primary key values to indicate we successfully deleted the record
END
GO
GRANT EXECUTE ON [Committees].[spDeleteTerm] TO [cdp_Integration]
    

/* spDelete Permissions for Committees: Terms */

GRANT EXECUTE ON [Committees].[spDeleteTerm] TO [cdp_Integration]



/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '19eac8c7-44c1-44a4-9e42-2541b6f59b69'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'Type')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '19eac8c7-44c1-44a4-9e42-2541b6f59b69',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100029,
            'Type',
            'Type',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd3007ba4-567d-4916-b668-502b15ce6a80'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'ParentCommittee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd3007ba4-567d-4916-b668-502b15ce6a80',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100030,
            'ParentCommittee',
            'Parent Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9a42ce81-e7dc-4a35-85e0-b0d122ef4415'  OR 
               (EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F' AND Name = 'RootParentCommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9a42ce81-e7dc-4a35-85e0-b0d122ef4415',
            '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', -- Entity: Committees: Committees
            100031,
            'RootParentCommitteeID',
            'Root Parent Committee ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd8f3ae46-28ce-4bcd-a50b-ba37261981ed'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd8f3ae46-28ce-4bcd-a50b-ba37261981ed',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100033,
            'Committee',
            'Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8232e397-5c6f-46e5-9c73-6000f2b44ae9'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'ArtifactType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8232e397-5c6f-46e5-9c73-6000f2b44ae9',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100034,
            'ArtifactType',
            'Artifact Type',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8c8b8544-aadf-4d2e-8624-08edd11b0fb0'  OR 
               (EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF' AND Name = 'UploadedByUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8c8b8544-aadf-4d2e-8624-08edd11b0fb0',
            '4494C5F2-E37E-4351-B933-133B7AE38EAF', -- Entity: Committees: Artifacts
            100035,
            'UploadedByUser',
            'Uploaded By User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '28c52367-ebbd-4a0c-a3f9-e096f3dd277d'  OR 
               (EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '28c52367-ebbd-4a0c-a3f9-e096f3dd277d',
            '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', -- Entity: Committees: Terms
            100017,
            'Committee',
            'Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '9a282054-c871-4ec2-a92f-195abfd4e00f'  OR 
               (EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95' AND Name = 'ExtendedEntity')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9a282054-c871-4ec2-a92f-195abfd4e00f',
            'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', -- Entity: Committees: Artifact Types
            100015,
            'ExtendedEntity',
            'Extended Entity',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '8e18dee9-4287-4932-9fe1-77c7dac433ef'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'PresenterUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8e18dee9-4287-4932-9fe1-77c7dac433ef',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100029,
            'PresenterUser',
            'Presenter User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'e1889f55-ae17-44c9-91a7-041b4f1df310'  OR 
               (EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC' AND Name = 'RootParentAgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e1889f55-ae17-44c9-91a7-041b4f1df310',
            '029C1632-67EF-49DF-8649-76CA82AB93DC', -- Entity: Committees: Agenda Items
            100030,
            'RootParentAgendaItemID',
            'Root Parent Agenda Item ID',
            NULL,
            'uniqueidentifier',
            16,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '792cb5ea-f8ab-4e17-98c4-1bdacb86e50d'  OR 
               (EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '792cb5ea-f8ab-4e17-98c4-1bdacb86e50d',
            '53496733-00ED-4311-B3F7-88D51CFD7187', -- Entity: Committees: Meetings
            100037,
            'Committee',
            'Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'b404548b-c0ed-42ce-a145-e967a04754f5'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b404548b-c0ed-42ce-a145-e967a04754f5',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100025,
            'Committee',
            'Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7b201ac3-66e7-421d-82c7-061f670394e8'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'User')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7b201ac3-66e7-421d-82c7-061f670394e8',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100026,
            'User',
            'User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'd6b8d2d9-612e-45a8-a377-f13e2491fead'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'Role')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd6b8d2d9-612e-45a8-a377-f13e2491fead',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100027,
            'Role',
            'Role',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '44395d60-e56a-427a-bf82-c377133be05b'  OR 
               (EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9' AND Name = 'Term')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '44395d60-e56a-427a-bf82-c377133be05b',
            'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', -- Entity: Committees: Memberships
            100028,
            'Term',
            'Term',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '3b73ab69-44e3-4fdc-bd81-459d18a817ad'  OR 
               (EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550' AND Name = 'User')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3b73ab69-44e3-4fdc-bd81-459d18a817ad',
            '057D3096-6E81-43F8-93A0-B18D95B9D550', -- Entity: Committees: Attendances
            100019,
            'User',
            'User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'ad89b2fd-0592-44a0-a7b8-002c6ddeec6e'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ad89b2fd-0592-44a0-a7b8-002c6ddeec6e',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100031,
            'Committee',
            'Committee',
            NULL,
            'nvarchar',
            510,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '5b107626-1b17-47a1-b7b9-f875bd318065'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'AssignedToUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5b107626-1b17-47a1-b7b9-f875bd318065',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100032,
            'AssignedToUser',
            'Assigned To User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            0,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '4d7670a6-3bc1-405b-b839-ae504707b7a0'  OR 
               (EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217' AND Name = 'AssignedByUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4d7670a6-3bc1-405b-b839-ae504707b7a0',
            'A0401025-8B02-4C18-BEAB-F27A30F2E217', -- Entity: Committees: Action Items
            100033,
            'AssignedByUser',
            'Assigned By User',
            NULL,
            'nvarchar',
            200,
            0,
            0,
            1,
            'null',
            0,
            0,
            1,
            NULL,
            NULL,
            0,
            0,
            0,
            0,
            0,
            0,
            'Search'
         )
      END

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '64B0A6C4-B897-4F03-B926-B3081D1B12D9'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '64B0A6C4-B897-4F03-B926-B3081D1B12D9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'DD98FB29-646D-4567-8D24-2DCA48AD576C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '10005E68-1A18-4DDE-9578-0B591FBA97A8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8232E397-5C6F-46E5-9C73-6000F2B44AE9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8C8B8544-AADF-4D2E-8624-08EDD11B0FB0'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '64B0A6C4-B897-4F03-B926-B3081D1B12D9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'DD98FB29-646D-4567-8D24-2DCA48AD576C'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '59D9D150-04B2-46F6-9A39-DE73263C5F39'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '9B4EE4B0-4E0E-469E-AD25-7EB7FF5B5DD6'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8232E397-5C6F-46E5-9C73-6000F2B44AE9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8C8B8544-AADF-4D2E-8624-08EDD11B0FB0'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '3B73AB69-44E3-4FDC-BD81-459D18A817AD'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '39A1A6F2-81D8-4CAF-92EE-89E44B67261D'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '247C2C4A-C896-4FE2-8DBF-A17E86514F7B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '32712F81-6202-48C1-8270-1553FBAAE1C9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3B73AB69-44E3-4FDC-BD81-459D18A817AD'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '39A1A6F2-81D8-4CAF-92EE-89E44B67261D'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '3B73AB69-44E3-4FDC-BD81-459D18A817AD'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '1F35BB86-8C8D-4F04-81F3-F4FB4D360EB6'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '1F35BB86-8C8D-4F04-81F3-F4FB4D360EB6'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '997BB7FB-6488-46AD-8C9A-DA11A591D158'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '47AA5760-EF2B-4925-993D-A583F6C7D263'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '1F35BB86-8C8D-4F04-81F3-F4FB4D360EB6'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'FE8A9E1D-088D-43B4-ACD0-06092871C631'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'FE8A9E1D-088D-43B4-ACD0-06092871C631'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6F10AF2C-5FC5-42ED-ACC7-B96D18FC4397'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AD89B2FD-0592-44A0-A7B8-002C6DDEEC6E'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5B107626-1B17-47A1-B7B9-F875BD318065'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'FE8A9E1D-088D-43B4-ACD0-06092871C631'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'AD89B2FD-0592-44A0-A7B8-002C6DDEEC6E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '5B107626-1B17-47A1-B7B9-F875BD318065'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4D7670A6-3BC1-405B-B839-AE504707B7A0'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '97755269-3F04-4435-A6E9-BB49C82E24C5'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AE0B8596-DE99-4DDD-BF37-F3934509F579'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '97755269-3F04-4435-A6E9-BB49C82E24C5'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '76ABC9D8-0F88-456B-A2A1-320191FC4046'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8E18DEE9-4287-4932-9FE1-77C7DAC433EF'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '97755269-3F04-4435-A6E9-BB49C82E24C5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '76ABC9D8-0F88-456B-A2A1-320191FC4046'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8E18DEE9-4287-4932-9FE1-77C7DAC433EF'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Definition',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AB18119E-CB23-44E3-A5E6-D0B534BA3B7B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Definition',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1F35BB86-8C8D-4F04-81F3-F4FB4D360EB6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Definition',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '997BB7FB-6488-46AD-8C9A-DA11A591D158'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Definition',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '47AA5760-EF2B-4925-993D-A583F6C7D263'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Configuration',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '606BBF25-F877-4630-9217-24E8F74C1C93'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Configuration',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9A282054-C871-4EC2-A92F-195ABFD4E00F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0233B96D-CC5C-4480-971F-4825CD86AE98'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0A730314-4215-44A5-8E47-E6A2CD37E792'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-file-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('91c1d851-a5e3-41d5-a192-fba6c6aa5abe', 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', 'FieldCategoryInfo', '{"Artifact Type Definition":{"icon":"fa fa-file-alt","description":"Core properties that define each artifact type, such as name, description and UI icon"},"Extension Configuration":{"icon":"fa fa-puzzle-piece","description":"Settings for optional one‑to‑one extension entities that add type‑specific fields"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields automatically managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('18a1e18a-4ffa-4305-85c0-0ed2ce81625d', 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95', 'FieldCategoryIcons', '{"Artifact Type Definition":"fa fa-file-alt","Extension Configuration":"fa fa-puzzle-piece","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'B8DE1802-B7A7-47F3-8A2B-727E105DFA95'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E2BA2BD4-8937-4AD3-B424-3DC0A3E95292'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F52BB8D8-9F2E-4CFD-8231-835D60A4C14E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '828165AC-85B4-48E6-945B-D23C19293767'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '97755269-3F04-4435-A6E9-BB49C82E24C5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '20471AF0-CB83-4F06-AF5A-1CE740400384'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Item Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2C9EAAC5-14B9-4CF1-8A2B-9416E1909FB4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '76ABC9D8-0F88-456B-A2A1-320191FC4046'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AE0B8596-DE99-4DDD-BF37-F3934509F579'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Duration Minutes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F66F028C-D91F-4989-B5B5-7A0A42FFB4B4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '29EE005C-ECB6-47C4-8A98-54220DC08E47'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Related Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '13DCA502-39D7-4D85-9A8D-8F45D62AD8B9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Context',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4808166B-7E80-4809-8142-6B2655C92D78'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Context',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0C9D2583-9B41-44DA-A794-494DF02D16D8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Context',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8E18DEE9-4287-4932-9FE1-77C7DAC433EF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Hierarchy',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '10749745-8328-4B16-963C-7B47E163223A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Hierarchy',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E1889F55-AE17-44C9-91A7-041B4F1DF310'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '029C1632-67EF-49DF-8649-76CA82AB93DC'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('46d9f7c7-49f9-47c7-84c0-d87d5215b6cc', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'FieldCategoryInfo', '{"Agenda Item Details":{"icon":"fa fa-align-left","description":"Core properties describing each agenda item, including title, description, type, status, ordering, duration, notes, and related documents."},"Assignment & Context":{"icon":"fa fa-user","description":"Links the agenda item to its meeting and assigns the presenter responsible for it."},"Item Hierarchy":{"icon":"fa fa-sitemap","description":"Fields that define parent‑child relationships between agenda items for nested structures."},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields used by the system to track record creation and updates."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('d3279edf-6106-40d8-8c3f-1466712431f4', '029C1632-67EF-49DF-8649-76CA82AB93DC', 'FieldCategoryIcons', '{"Agenda Item Details":"fa fa-align-left","Assignment & Context":"fa fa-user","Item Hierarchy":"fa fa-sitemap","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '029C1632-67EF-49DF-8649-76CA82AB93DC'
      

/* Set categories for 18 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FE8A9E1D-088D-43B4-ACD0-06092871C631'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '14ADCF1A-3C6D-4D82-B497-D34C14039D60'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Priority',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0EAB9FDB-B4FC-49D0-A72D-0CB15692B7EE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6FC8E0BE-C7DC-4F9C-BAE7-2AF74F59565A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assignee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5B107626-1B17-47A1-B7B9-F875BD318065'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assignee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F316270A-73FC-4B46-941F-A4933C809C51'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned By Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4D7670A6-3BC1-405B-B839-AE504707B7A0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E94E5192-6968-453F-856C-874C0F10C220'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AD89B2FD-0592-44A0-A7B8-002C6DDEEC6E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'References',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2865A9FA-5093-4517-AB1E-994DD4610A5C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'References',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F3E47DC5-2AA8-49FA-AE34-BA8C5DE344E1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'References',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9D28509D-C35B-4130-A85C-744808DBCA9F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline',
       GeneratedFormSection = 'Category',
       DisplayName = 'Due Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6F10AF2C-5FC5-42ED-ACC7-B96D18FC4397'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completed At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B10B1272-088B-4E5A-B73F-F7AD1908B14E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completion Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2490453F-8238-4F19-B5CA-CC6BD90D3AB3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '87918C6F-DB0D-4213-A06D-4AFF36DEFC27'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '259FA741-0D2D-4023-931A-7E0488AD9A20'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6AFD89A1-6DDB-4BCB-BB7B-266C1431106C'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-tasks */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-tasks', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('f63feec0-0d29-46c4-a96d-82ed7d57793f', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'FieldCategoryInfo', '{"Action Item Details":{"icon":"fa fa-tasks","description":"Core description, priority and status of the action item"},"Assignment":{"icon":"fa fa-user-check","description":"People and committee responsible for assigning and executing the item"},"References":{"icon":"fa fa-link","description":"Links to related committee, meeting and agenda records"},"Timeline":{"icon":"fa fa-calendar-alt","description":"Key dates and notes related to due and completion of the item"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields and primary identifier"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('e8b1b9fd-3853-430f-9226-83901c51510c', 'A0401025-8B02-4C18-BEAB-F27A30F2E217', 'FieldCategoryIcons', '{"Action Item Details":"fa fa-tasks","Assignment":"fa fa-user-check","References":"fa fa-link","Timeline":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'A0401025-8B02-4C18-BEAB-F27A30F2E217'
      

/* Set categories for 10 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant Info',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C323246D-B1E6-482C-9795-E69F68FB8B74'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant Info',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7B4E62E1-D72C-4A61-827B-95DAA4F75BCF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant Info',
       GeneratedFormSection = 'Category',
       DisplayName = 'User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '86E398EB-A568-4315-96AC-605C80F56393'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant Info',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3B73AB69-44E3-4FDC-BD81-459D18A817AD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Attendance Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '39A1A6F2-81D8-4CAF-92EE-89E44B67261D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Joined At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '247C2C4A-C896-4FE2-8DBF-A17E86514F7B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Left At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '32712F81-6202-48C1-8270-1553FBAAE1C9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F50AD38E-81BE-4615-BF03-5CD5F21EFED9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3FB3EE9-9EB7-4563-B605-B77058CE978B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '437C355D-F859-41C7-B44F-1FF71A090D42'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '057D3096-6E81-43F8-93A0-B18D95B9D550'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('d94f57af-30af-48e4-815a-490df39595c7', '057D3096-6E81-43F8-93A0-B18D95B9D550', 'FieldCategoryInfo', '{"Participant Info":{"icon":"fa fa-users","description":"Identifiers linking the attendance to a meeting and participant"},"Attendance Record":{"icon":"fa fa-calendar-check","description":"Details of the attendee''s status, timestamps, and any notes"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C8FC85DE-8545-4809-94A1-E6A1B044DDB5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '23485F05-6C13-4B9D-B0EC-CA23F5AED434'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4F07C31E-90C5-41BE-A2A0-8DB938B86D84'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '69315205-A3A0-47E8-984B-60F27223DF61'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Action Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3B91AE95-6472-4009-A119-937D80369508'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '64B0A6C4-B897-4F03-B926-B3081D1B12D9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0EEB9F49-69F3-436D-84EA-DB3FF68E50E1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '324FDEBE-927C-4B10-84C5-2BFDB6B1B32B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8232E397-5C6F-46E5-9C73-6000F2B44AE9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DD98FB29-646D-4567-8D24-2DCA48AD576C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'External ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '59D9D150-04B2-46F6-9A39-DE73263C5F39'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '9B4EE4B0-4E0E-469E-AD25-7EB7FF5B5DD6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'MIME Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8E85F690-C77D-4AD9-85C1-DDDC7F376DD6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'File Size',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '10005E68-1A18-4DDE-9578-0B591FBA97A8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EBFA4D58-3A57-422C-9BB2-FD1DF07335A5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8C8B8544-AADF-4D2E-8624-08EDD11B0FB0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D8F3AE46-28CE-4BCD-A50B-BA37261981ED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '58AC2445-6D8B-47A6-B9D7-FBCCBBCCE7D1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EA65CF63-0258-4C8A-A238-64643B969A6E'
   AND AutoUpdateCategory = 1

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('d89fe6ca-61f3-4d41-8943-f60aef79db59', '057D3096-6E81-43F8-93A0-B18D95B9D550', 'FieldCategoryIcons', '{"Participant Info":"fa fa-users","Attendance Record":"fa fa-calendar-check","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '057D3096-6E81-43F8-93A0-B18D95B9D550'
      

/* Set entity icon to fa fa-file */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '4494C5F2-E37E-4351-B933-133B7AE38EAF'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('a1e4a9a7-6a5b-4747-83ec-8568f5559a47', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'FieldCategoryInfo', '{"Artifact Details":{"icon":"fa fa-file-alt","description":"Core information about the artifact such as title, description, and type."},"Storage Information":{"icon":"fa fa-cloud","description":"Location and technical details of the stored file including provider, URL, MIME type, and size."},"Related Entities":{"icon":"fa fa-link","description":"Links to related committee, meeting, agenda, action items, and uploader information."},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed fields for record identification and audit timestamps."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('2da9f20f-17a4-4112-a41c-a56bf6f2b06e', '4494C5F2-E37E-4351-B933-133B7AE38EAF', 'FieldCategoryIcons', '{"Artifact Details":"fa fa-file-alt","Storage Information":"fa fa-cloud","Related Entities":"fa fa-link","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '4494C5F2-E37E-4351-B933-133B7AE38EAF'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '90182C9E-D7CA-4907-A15C-7C071D0E89D9'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '90182C9E-D7CA-4907-A15C-7C071D0E89D9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5F778039-E446-4714-B4F0-934F538CD47B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'CA4AB088-65F9-4407-B88B-9250CAF6FBAA'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '19EAC8C7-44C1-44A4-9E42-2541B6F59B69'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D3007BA4-567D-4916-B668-502B15CE6A80'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '90182C9E-D7CA-4907-A15C-7C071D0E89D9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '60BF74FE-9D09-4874-96EB-1784517E7915'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '5F778039-E446-4714-B4F0-934F538CD47B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '19EAC8C7-44C1-44A4-9E42-2541B6F59B69'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D3007BA4-567D-4916-B668-502B15CE6A80'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '1E3F7311-D0E2-4327-BAEC-EFF89986FA0A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '1E3F7311-D0E2-4327-BAEC-EFF89986FA0A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '84C20D0F-1DD3-4B47-A1B7-4A103D38A08D'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '33FCB8B1-9FE4-4ED3-A9E0-AC2BECF12C00'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '25043A66-FEF3-46DD-B436-2C90CCB68C25'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '792CB5EA-F8AB-4E17-98C4-1BDACB86E50D'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '1E3F7311-D0E2-4327-BAEC-EFF89986FA0A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7822945F-5A8F-4F49-A748-94B1B2E79321'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'EBAA606C-0E74-4333-B884-F646BF8B5AA5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F1A46C9A-F36B-45C9-99FF-8639C38059B4'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '792CB5EA-F8AB-4E17-98C4-1BDACB86E50D'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '479A73EB-D652-43E1-B5F9-C1EBDDCFCFCC'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'FC60B5C3-204D-45D1-9F83-C7FF347BD1D8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '479A73EB-D652-43E1-B5F9-C1EBDDCFCFCC'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '046787B1-F7CA-47B5-9812-AC1DADF57E1D'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2C3BBEBC-150A-4720-87C2-1B70982B9353'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '479A73EB-D652-43E1-B5F9-C1EBDDCFCFCC'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '046787B1-F7CA-47B5-9812-AC1DADF57E1D'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2C3BBEBC-150A-4720-87C2-1B70982B9353'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '7B201AC3-66E7-421D-82C7-061F670394E8'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8479FD77-EADC-43A0-910D-44EAF70BEC67'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '733ED814-1DAD-4D7C-8777-3956AAAC6E12'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F38B780A-BB02-4166-8A2F-494B44BF86ED'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'B404548B-C0ED-42CE-A145-E967A04754F5'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '7B201AC3-66E7-421D-82C7-061F670394E8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D6B8D2D9-612E-45A8-A377-F13E2491FEAD'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F38B780A-BB02-4166-8A2F-494B44BF86ED'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'B404548B-C0ED-42CE-A145-E967A04754F5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7B201AC3-66E7-421D-82C7-061F670394E8'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D6B8D2D9-612E-45A8-A377-F13E2491FEAD'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '44395D60-E56A-427A-BF82-C377133BE05B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D5715D77-8FBF-4606-8139-499EF0B0E6C5'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '91F802DF-3C50-48AF-9C72-46973EB16B58'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '81F02F9C-2A7B-466D-BF0A-A229FFA96544'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4C6B79AF-CAB0-4D9B-A284-1AF3994AE16A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Moved By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '646104DF-9A6C-480E-A2F5-7CBA04FE1977'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Seconded By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2A7C68E0-EDEE-49D3-926A-FC8FADFB25EF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FC60B5C3-204D-45D1-9F83-C7FF347BD1D8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '479A73EB-D652-43E1-B5F9-C1EBDDCFCFCC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A6013279-980C-4409-9E37-02274CCFA65F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '046787B1-F7CA-47B5-9812-AC1DADF57E1D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result Summary',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2C3BBEBC-150A-4720-87C2-1B70982B9353'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Yes Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E1155BC9-6F20-423D-84EA-0D6DE805DC6C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'No Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8CA3AFDE-951A-4774-AB96-B9E9F0471BFD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Abstain Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E9EE7E51-7B63-42A3-B525-C09DF3C6131F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9D061A12-1F6B-4695-8EBB-708543EF0E3A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '467772FB-FF74-4F79-8C9D-9C764EA620D4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CB76271D-23D6-4944-9C05-CB0BCB90444C'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-gavel */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-gavel', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'E894F05B-500F-4A86-A1B1-34825C8A9736'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('1c42e3ac-a666-4503-bd4c-7b606b2e8a6c', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'FieldCategoryInfo', '{"Motion Details":{"icon":"fa fa-gavel","description":"Core information of the motion such as title, description, and ordering."},"Agenda & Participants":{"icon":"fa fa-users","description":"Links to the meeting, agenda item, and members who moved and seconded the motion."},"Voting Outcome":{"icon":"fa fa-poll","description":"Result of the vote and detailed vote counts and notes."},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit fields including identifiers and timestamps."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('fbc64b0a-79af-44cf-8947-3119c6eb6b5c', 'E894F05B-500F-4A86-A1B1-34825C8A9736', 'FieldCategoryIcons', '{"Motion Details":"fa fa-gavel","Agenda & Participants":"fa fa-users","Voting Outcome":"fa fa-poll","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'E894F05B-500F-4A86-A1B1-34825C8A9736'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '08E40458-E0C0-4576-8497-EC47E55D9BF4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '71CFC564-3920-4491-928F-5C78D5471023'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '248D9518-DB0C-47DF-B3DE-217561A2A149'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '130E9F80-8EC7-438E-B7FB-B4352DC5A626'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A4220189-68AB-4334-93E1-E1DE962238D3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8479FD77-EADC-43A0-910D-44EAF70BEC67'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '733ED814-1DAD-4D7C-8777-3956AAAC6E12'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F38B780A-BB02-4166-8A2F-494B44BF86ED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Reason',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '86862BDF-CC08-4AE2-873B-E91028804EAF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Descriptive Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E518E5B7-DD3E-4439-9143-C0ABFCBF3B67'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BFCEF62F-5366-4031-984B-A589822269C2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '633D83DF-B035-45AE-B3AB-5C114E189070'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Descriptive Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B404548B-C0ED-42CE-A145-E967A04754F5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Descriptive Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7B201AC3-66E7-421D-82C7-061F670394E8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Descriptive Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D6B8D2D9-612E-45A8-A377-F13E2491FEAD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Descriptive Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '44395D60-E56A-427A-BF82-C377133BE05B'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('05a3fc67-ac6e-400f-bc8b-5d2a3f1cfa1e', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'FieldCategoryInfo', '{"Membership Core":{"icon":"fa fa-link","description":"Key identifiers linking a membership to its committee, user, role, and term"},"Schedule & Status":{"icon":"fa fa-calendar","description":"Temporal information and current state of the membership"},"Descriptive Details":{"icon":"fa fa-info-circle","description":"Human‑readable names and additional comments for the membership"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields automatically managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('f2442708-0d00-4ded-ba24-e2c8cfbf690c', 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9', 'FieldCategoryIcons', '{"Membership Core":"fa fa-link","Schedule & Status":"fa fa-calendar","Descriptive Details":"fa fa-info-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'D84F3E7B-81F4-473C-AF22-8EACBFC467A9'
      

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E2AFEB24-A8F2-47A3-82F0-85A2CD2D44E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0E37E235-B2DF-48D7-8B83-DFBC5CE96D1D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '792CB5EA-F8AB-4E17-98C4-1BDACB86E50D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1E3F7311-D0E2-4327-BAEC-EFF89986FA0A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '123ADC87-EC2B-4ED0-9B33-ECFA547C41FD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '25043A66-FEF3-46DD-B436-2C90CCB68C25'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Calendar Event ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E67EA2E6-942C-4B3C-8AE8-04D069D7E9DA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '84C20D0F-1DD3-4B47-A1B7-4A103D38A08D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '33FCB8B1-9FE4-4ED3-A9E0-AC2BECF12C00'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Time Zone',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D1A5E34A-B11B-4E44-9E3B-C29262E71A19'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E0A4B53F-6319-4DE0-A76B-F5C28A2BC22B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location Details',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7822945F-5A8F-4F49-A748-94B1B2E79321'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EBAA606C-0E74-4333-B884-F646BF8B5AA5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Meeting ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F1A46C9A-F36B-45C9-99FF-8639C38059B4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Join URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '35DF8179-9935-47E4-BD42-63DEE8663FF3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Recording URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '2B7D4B6D-53D5-4BB8-8F15-60195959E849'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Media',
       GeneratedFormSection = 'Category',
       DisplayName = 'Transcript URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '3D1903AE-47E0-44F2-97C0-2C214EBAAF49'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D4D9A7C1-819C-4DFA-9BC2-7BA57C945CF5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B3D15733-9070-486D-9E04-BB90FD6024F0'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar-check */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-check', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '53496733-00ED-4311-B3F7-88D51CFD7187'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('fc528779-81d5-41fe-b88a-0ca1be1f4c9f', '53496733-00ED-4311-B3F7-88D51CFD7187', 'FieldCategoryInfo', '{"Meeting Details":{"icon":"fa fa-file-alt","description":"Core meeting information such as title, description, status, and associated committee"},"Schedule":{"icon":"fa fa-calendar-alt","description":"Timing details including start/end times and the applicable time zone"},"Venue & Media":{"icon":"fa fa-video","description":"Location format and video‑conferencing details, including provider, join link, recording and transcript"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields for record creation and updates"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('511e867e-5673-48a0-94da-4e6c358e0009', '53496733-00ED-4311-B3F7-88D51CFD7187', 'FieldCategoryIcons', '{"Meeting Details":"fa fa-file-alt","Schedule":"fa fa-calendar-alt","Venue & Media":"fa fa-video","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '53496733-00ED-4311-B3F7-88D51CFD7187'
      

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B924630D-E263-42DB-B168-874761B8F3A4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AC5D9F28-AD2A-4ED1-8C69-9E1917E0FDCE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1ECD44E8-4BBB-4501-9D30-DEAA1A7536FB'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approval Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F7A7DFDD-7354-4E7E-9B9C-6A8124B19254'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D5715D77-8FBF-4606-8139-499EF0B0E6C5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved By Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5B0E28A0-9AF6-40FD-A1D2-66CD335934C5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0DE2BE57-7A6C-40D1-805C-E5CA7783B2A5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6C92863C-65B0-4F08-AE45-162244B67054'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-clipboard */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-clipboard', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('c3f00999-51e9-457b-b0fb-d4ca72546325', 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', 'FieldCategoryInfo', '{"Minutes Record":{"icon":"fa fa-file-alt","description":"Core identifier and artifact link with optional notes for the minutes"},"Approval Tracking":{"icon":"fa fa-check-circle","description":"Status, timestamps, and meeting reference for minutes approval"},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit fields"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('2a1da0a6-6702-4689-b43f-bfd9e0bb44ee', 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C', 'FieldCategoryIcons', '{"Minutes Record":"fa fa-file-alt","Approval Tracking":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: supporting, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'B8CDF74D-3151-435E-9C8F-1C9EF6BD3F7C'
      

/* Set categories for 17 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4FFF7265-892B-461B-A163-69142CE72C85'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2D10ED2A-4987-4509-9F2E-3B008C210069'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '89F0DC94-9C29-4F3C-A766-3AB388638410'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identity & Classification',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '90182C9E-D7CA-4907-A15C-7C071D0E89D9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identity & Classification',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3CA5D450-5B6D-4F32-A23F-A58723406CD8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identity & Classification',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '00FF0F42-46B5-4503-9E0C-17118D943995'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identity & Classification',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '19EAC8C7-44C1-44A4-9E42-2541B6F59B69'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Hierarchy',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B1EF042D-2979-47E1-99D0-ECFED377C6ED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Hierarchy',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3007BA4-567D-4916-B668-502B15CE6A80'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Hierarchy',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9A42CE81-E7DC-4A35-85E0-B0D122EF4415'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance',
       GeneratedFormSection = 'Category',
       DisplayName = 'Organization',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0C543168-B506-468F-A519-BD16B3DD2729'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance',
       GeneratedFormSection = 'Category',
       DisplayName = 'Charter Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '5DD40045-5D26-4CD5-AEF6-D2297ED37836'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance',
       GeneratedFormSection = 'Category',
       DisplayName = 'Mission Statement',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '60BF74FE-9D09-4874-96EB-1784517E7915'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Lifecycle',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5F778039-E446-4714-B4F0-934F538CD47B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Lifecycle',
       GeneratedFormSection = 'Category',
       DisplayName = 'Publicly Visible',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2B94B8FB-EEE9-4308-A369-E69DB39A7FF0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Lifecycle',
       GeneratedFormSection = 'Category',
       DisplayName = 'Formation Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CA4AB088-65F9-4407-B88B-9250CAF6FBAA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Lifecycle',
       GeneratedFormSection = 'Category',
       DisplayName = 'Dissolution Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EEB36783-F18E-4269-B05D-3F6A8B0741B1'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('00b203f2-0d11-4dbc-80f1-cc663ae7da81', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'FieldCategoryInfo', '{"Identity & Classification":{"icon":"fa fa-id-badge","description":"Core identifiers and classification details that define the committee"},"Structure & Hierarchy":{"icon":"fa fa-sitemap","description":"Fields that establish parent‑child relationships and hierarchical positioning"},"Governance":{"icon":"fa fa-file-contract","description":"Organizational ownership, charter documentation, and mission statement"},"Lifecycle":{"icon":"fa fa-calendar-alt","description":"Operational status, visibility flag, and key dates in the committee’s life"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('1d003a89-1af6-45da-bba3-4e1bb91695f6', '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F', 'FieldCategoryIcons', '{"Identity & Classification":"fa fa-id-badge","Structure & Hierarchy":"fa fa-sitemap","Governance":"fa fa-file-contract","Lifecycle":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '7B21610C-29F9-47B3-B416-0FDE8FD7FB1F'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '281E889C-4006-4FAF-9312-F50DE18FDE57'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '281E889C-4006-4FAF-9312-F50DE18FDE57'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '02F147CE-2929-4578-8B21-4344312AEE1B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4DADE5A7-AA2F-4A5F-AE18-ECDA2F2692B5'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '358E4278-1140-4E71-864E-B15033567581'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '28C52367-EBBD-4A0C-A3F9-E096F3DD277D'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '281E889C-4006-4FAF-9312-F50DE18FDE57'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '358E4278-1140-4E71-864E-B15033567581'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '28C52367-EBBD-4A0C-A3F9-E096F3DD277D'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'ACC49C65-EA5F-4A07-A674-C613ABDA8507'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'ACC49C65-EA5F-4A07-A674-C613ABDA8507'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E79E9CB2-6E5B-4214-B60A-85524296ABDD'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4120DD7E-1631-4F2B-A12C-FC6216DE0978'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'ACC49C65-EA5F-4A07-A674-C613ABDA8507'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'E79E9CB2-6E5B-4214-B60A-85524296ABDD'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '0A14E518-0D92-48A2-B09C-F5296BBE43EF'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0A14E518-0D92-48A2-B09C-F5296BBE43EF'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4E1887EF-78F2-417D-9AD0-AF2FA7694F27'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0A14E518-0D92-48A2-B09C-F5296BBE43EF'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '9BB18BDF-4C8C-4340-95DB-10EB7A03B507'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '9BB18BDF-4C8C-4340-95DB-10EB7A03B507'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '20A277E9-9ED7-4807-8E7D-23AEAD059415'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'DEB69BAB-C7FB-40A5-908E-07008D1A7E49'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '9BB18BDF-4C8C-4340-95DB-10EB7A03B507'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 7 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Vote',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0A14E518-0D92-48A2-B09C-F5296BBE43EF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4E1887EF-78F2-417D-9AD0-AF2FA7694F27'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Motion',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '38798F35-87D3-411E-8E32-302812CF8C0E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Entities',
       GeneratedFormSection = 'Category',
       DisplayName = 'Membership',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9F3A07BD-829F-4334-BD8F-6092ED8D78A0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7BD8780E-EB72-4C61-B4E5-0171668D88A2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C4912618-291F-4936-A954-C2F200AFB714'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '41C6CA97-F1C1-4564-ADE2-1BF441FD8833'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-gavel */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-gavel', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '43457B5C-4C33-494F-AC37-FE23C82F536B'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('4be66d68-aeeb-472f-b3b4-ee51b01d8027', '43457B5C-4C33-494F-AC37-FE23C82F536B', 'FieldCategoryInfo', '{"Vote Details":{"icon":"fa fa-clipboard","description":"Individual vote result and optional explanatory notes"},"Related Entities":{"icon":"fa fa-link","description":"Links the vote to the specific motion and member"},"System Metadata":{"icon":"fa fa-cog","description":"Audit timestamps and record identifier"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('5c31302f-fd72-44f5-9f64-4e09a81d0fb5', '43457B5C-4C33-494F-AC37-FE23C82F536B', 'FieldCategoryIcons', '{"Vote Details":"fa fa-clipboard","Related Entities":"fa fa-link","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: supporting, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '43457B5C-4C33-494F-AC37-FE23C82F536B'
      

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '999BE9A4-8E02-4666-8579-98AB911343B8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'ACC49C65-EA5F-4A07-A674-C613ABDA8507'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E79E9CB2-6E5B-4214-B60A-85524296ABDD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Is Standards',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6F5747AB-58B6-4237-B8DE-88627E215996'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Term (Months)',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5BC34CDC-B66E-4A34-98F6-780DE9C1D180'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4120DD7E-1631-4F2B-A12C-FC6216DE0978'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5ECC1715-F17F-4B3C-A591-F330EE5A7D68'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '15C37811-A643-482C-9A6D-48239A144594'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users-cog */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users-cog', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('2db717fb-e7f0-4615-bbbe-05fa9154cd28', 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', 'FieldCategoryInfo', '{"Committee Type Details":{"icon":"fa fa-list-alt","description":"Defines attributes of a committee type such as name, description, standards flag, default term and UI icon."},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields for tracking creation and modification."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('38e43700-c0f9-49d8-a833-f57b3c4ed4f6', 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA', 'FieldCategoryIcons', '{"Committee Type Details":"fa fa-list-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'E10E8DF7-67A9-43E4-9581-1792CEAE4AFA'
      

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '82D7BFDC-CBEE-4C73-AEEB-E5359CCEE565'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9BB18BDF-4C8C-4340-95DB-10EB7A03B507'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7C799C9D-5F0C-4125-BB55-CBA8EC9F886A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Officer Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '20A277E9-9ED7-4807-8E7D-23AEAD059415'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Voting Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DEB69BAB-C7FB-40A5-908E-07008D1A7E49'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Display Order',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '083A214C-AB05-4646-A33E-374211C17E2B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Permissions',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Permissions',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '704456B4-2ABA-4D78-9BBD-5F4E16592D9E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C933FD87-6B56-42DC-9F41-80C26ADA778D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '18EBA7EC-BB0B-44A5-B732-1B49304005A6'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users-cog */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users-cog', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('f6bc4a3e-8cc2-4a4e-93ff-645b83d3f17e', 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', 'FieldCategoryInfo', '{"Role Basics":{"icon":"fa fa-id-badge","description":"Core attributes that identify and describe a committee role, including name, description, order, and authority flags"},"Permissions":{"icon":"fa fa-sliders-h","description":"JSON configuration that defines the default permissions associated with the role"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('9e6e8e41-3a00-4430-b62c-fef56799ae02', 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D', 'FieldCategoryIcons', '{"Role Basics":"fa fa-id-badge","Permissions":"fa fa-sliders-h","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'F5DF73D6-A95F-4C90-A29D-4427B9D1180D'
      

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C615B152-F7CD-440E-B4A6-717AF5969F88'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C2C83172-81E6-4B75-805F-B0E4F814E811'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '281E889C-4006-4FAF-9312-F50DE18FDE57'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '02F147CE-2929-4578-8B21-4344312AEE1B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4DADE5A7-AA2F-4A5F-AE18-ECDA2F2692B5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '358E4278-1140-4E71-864E-B15033567581'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EA5C88A7-174F-4B20-926D-A51416BEF0BE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C54D413C-3B8C-4A00-ACCB-082FB5F1A0B8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '28C52367-EBBD-4A0C-A3F9-E096F3DD277D'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('7657e824-a5d0-4d14-9caa-220ce20302d2', '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', 'FieldCategoryInfo', '{"Term Basics":{"icon":"fa fa-info-circle","description":"Core descriptive information about the term such as name, associated committee, and status"},"Term Schedule":{"icon":"fa fa-calendar-alt","description":"Temporal details linking the term to its committee and defining its start and end dates"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('afb9ca3f-4458-491a-9df7-6284d7755e68', '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD', 'FieldCategoryIcons', '{"Term Basics":"fa fa-info-circle","Term Schedule":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '2F1FCB74-B53A-4C0A-BAC0-2A80D48FDEFD'
      

