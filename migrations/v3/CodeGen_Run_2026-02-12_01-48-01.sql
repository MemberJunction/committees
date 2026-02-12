/* SQL generated to create new entity Roles__Committees */

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
         '32c673dd-8f97-4753-8e4a-1419195ac68b',
         'Roles__Committees',
         NULL,
         NULL,
         '__Committees',
         'Role',
         'vwRoles__Committees',
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
                       VALUES ('f281d081-c0f3-45e4-b10f-20d611e109a0', 'Committees', 'Generated for schema', 'Committees', 'committees', 1)

/* SQL generated to add new entity Roles__Committees to application ID: 'f281d081-c0f3-45e4-b10f-20d611e109a0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('f281d081-c0f3-45e4-b10f-20d611e109a0', '32c673dd-8f97-4753-8e4a-1419195ac68b', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'f281d081-c0f3-45e4-b10f-20d611e109a0'))

/* SQL generated to add new permission for entity Roles__Committees for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('32c673dd-8f97-4753-8e4a-1419195ac68b', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Roles__Committees for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('32c673dd-8f97-4753-8e4a-1419195ac68b', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Roles__Committees for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('32c673dd-8f97-4753-8e4a-1419195ac68b', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Memberships */

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
         '0c1a3f45-4826-422c-a738-c8cdd73ef216',
         'Memberships',
         NULL,
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
   

/* SQL generated to add new entity Memberships to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '0c1a3f45-4826-422c-a738-c8cdd73ef216', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Memberships for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0c1a3f45-4826-422c-a738-c8cdd73ef216', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Memberships for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0c1a3f45-4826-422c-a738-c8cdd73ef216', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Memberships for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0c1a3f45-4826-422c-a738-c8cdd73ef216', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Meetings */

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
         '4f0e90b8-1200-44b4-b0a0-abea0063a38a',
         'Meetings',
         NULL,
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
   

/* SQL generated to add new entity Meetings to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '4f0e90b8-1200-44b4-b0a0-abea0063a38a', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Meetings for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4f0e90b8-1200-44b4-b0a0-abea0063a38a', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Meetings for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4f0e90b8-1200-44b4-b0a0-abea0063a38a', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Meetings for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4f0e90b8-1200-44b4-b0a0-abea0063a38a', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Agenda Items */

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
         '4151cf22-6113-4eb7-a68b-4fcf507076e9',
         'Agenda Items',
         NULL,
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
   

/* SQL generated to add new entity Agenda Items to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '4151cf22-6113-4eb7-a68b-4fcf507076e9', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Agenda Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4151cf22-6113-4eb7-a68b-4fcf507076e9', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Agenda Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4151cf22-6113-4eb7-a68b-4fcf507076e9', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Agenda Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('4151cf22-6113-4eb7-a68b-4fcf507076e9', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Attendances */

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
         'e9e43080-dca7-4fc6-bc99-36ca32823754',
         'Attendances',
         NULL,
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
   

/* SQL generated to add new entity Attendances to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', 'e9e43080-dca7-4fc6-bc99-36ca32823754', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Attendances for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e9e43080-dca7-4fc6-bc99-36ca32823754', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Attendances for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e9e43080-dca7-4fc6-bc99-36ca32823754', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Attendances for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('e9e43080-dca7-4fc6-bc99-36ca32823754', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Action Items */

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
         '3e90c344-4933-4806-bf1f-3c6560194eaf',
         'Action Items',
         NULL,
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
   

/* SQL generated to add new entity Action Items to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '3e90c344-4933-4806-bf1f-3c6560194eaf', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Action Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('3e90c344-4933-4806-bf1f-3c6560194eaf', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Action Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('3e90c344-4933-4806-bf1f-3c6560194eaf', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Action Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('3e90c344-4933-4806-bf1f-3c6560194eaf', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Artifact Types */

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
         'ceaa52cb-5ad8-4953-a89b-1fb670ac6665',
         'Artifact Types',
         NULL,
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
   

/* SQL generated to add new entity Artifact Types to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', 'ceaa52cb-5ad8-4953-a89b-1fb670ac6665', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Artifact Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('ceaa52cb-5ad8-4953-a89b-1fb670ac6665', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Artifact Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('ceaa52cb-5ad8-4953-a89b-1fb670ac6665', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Artifact Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('ceaa52cb-5ad8-4953-a89b-1fb670ac6665', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Artifacts */

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
         '38268920-bb6d-4ca3-a8d4-4e1650136c4f',
         'Artifacts',
         NULL,
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
   

/* SQL generated to add new entity Artifacts to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '38268920-bb6d-4ca3-a8d4-4e1650136c4f', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Artifacts for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('38268920-bb6d-4ca3-a8d4-4e1650136c4f', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Artifacts for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('38268920-bb6d-4ca3-a8d4-4e1650136c4f', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Artifacts for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('38268920-bb6d-4ca3-a8d4-4e1650136c4f', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Minutes */

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
         '2013541c-019f-43ac-a5cb-2a900d6c8529',
         'Minutes',
         NULL,
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
   

/* SQL generated to add new entity Minutes to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '2013541c-019f-43ac-a5cb-2a900d6c8529', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Minutes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2013541c-019f-43ac-a5cb-2a900d6c8529', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Minutes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2013541c-019f-43ac-a5cb-2a900d6c8529', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Minutes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2013541c-019f-43ac-a5cb-2a900d6c8529', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Motions */

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
         '962a7df7-2c9b-4e8a-9517-9bc889c3b8a3',
         'Motions',
         NULL,
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
   

/* SQL generated to add new entity Motions to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '962a7df7-2c9b-4e8a-9517-9bc889c3b8a3', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Motions for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('962a7df7-2c9b-4e8a-9517-9bc889c3b8a3', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Motions for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('962a7df7-2c9b-4e8a-9517-9bc889c3b8a3', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Motions for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('962a7df7-2c9b-4e8a-9517-9bc889c3b8a3', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Votes */

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
         'a9f591e7-8ec5-4ab2-a8de-83cdebf3a291',
         'Votes',
         NULL,
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
   

/* SQL generated to add new entity Votes to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', 'a9f591e7-8ec5-4ab2-a8de-83cdebf3a291', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Votes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a9f591e7-8ec5-4ab2-a8de-83cdebf3a291', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Votes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a9f591e7-8ec5-4ab2-a8de-83cdebf3a291', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Votes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a9f591e7-8ec5-4ab2-a8de-83cdebf3a291', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Types */

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
         'cbb5e3e6-89c1-40e6-96c7-eee986a17e49',
         'Types',
         NULL,
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
   

/* SQL generated to add new entity Types to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', 'cbb5e3e6-89c1-40e6-96c7-eee986a17e49', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('cbb5e3e6-89c1-40e6-96c7-eee986a17e49', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('cbb5e3e6-89c1-40e6-96c7-eee986a17e49', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('cbb5e3e6-89c1-40e6-96c7-eee986a17e49', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Committees */

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
         'dc2089e8-354b-4152-8ad1-e4fe92d1c7d9',
         'Committees',
         NULL,
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
   

/* SQL generated to add new entity Committees to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', 'dc2089e8-354b-4152-8ad1-e4fe92d1c7d9', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Committees for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dc2089e8-354b-4152-8ad1-e4fe92d1c7d9', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dc2089e8-354b-4152-8ad1-e4fe92d1c7d9', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dc2089e8-354b-4152-8ad1-e4fe92d1c7d9', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL generated to create new entity Terms */

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
         '43aa9286-a5f4-4bc8-9077-e72ca2cad6c1',
         'Terms',
         NULL,
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
   

/* SQL generated to add new entity Terms to application ID: 'F281D081-C0F3-45E4-B10F-20D611E109A0' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('F281D081-C0F3-45E4-B10F-20D611E109A0', '43aa9286-a5f4-4bc8-9077-e72ca2cad6c1', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = 'F281D081-C0F3-45E4-B10F-20D611E109A0'))

/* SQL generated to add new permission for entity Terms for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43aa9286-a5f4-4bc8-9077-e72ca2cad6c1', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Terms for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43aa9286-a5f4-4bc8-9077-e72ca2cad6c1', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Terms for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('43aa9286-a5f4-4bc8-9077-e72ca2cad6c1', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '76046b90-013b-42d5-9489-46015bd94f53'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'ID')
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
            '76046b90-013b-42d5-9489-46015bd94f53',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = 'c5c78aa5-7ce7-4e41-854f-82fa0ac161aa'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'Name')
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
            'c5c78aa5-7ce7-4e41-854f-82fa0ac161aa',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = '9af4e5de-d748-4c05-a408-52a15b15d89d'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'Description')
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
            '9af4e5de-d748-4c05-a408-52a15b15d89d',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = '6d03949d-abdb-4e87-98e0-616624f75bfc'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'IsOfficer')
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
            '6d03949d-abdb-4e87-98e0-616624f75bfc',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = '3587903d-8015-43b0-8ba3-adee78c50d43'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'IsVotingRole')
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
            '3587903d-8015-43b0-8ba3-adee78c50d43',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = 'b70c5dd7-b837-443e-9bb5-289b146d3286'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'DefaultPermissionsJSON')
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
            'b70c5dd7-b837-443e-9bb5-289b146d3286',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = 'df885889-9ea9-4dd9-bc6c-51e0d87e00f2'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = 'Sequence')
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
            'df885889-9ea9-4dd9-bc6c-51e0d87e00f2',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = 'f357e8a4-f0f8-48f9-b23c-937b7d706e9b'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = '__mj_CreatedAt')
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
            'f357e8a4-f0f8-48f9-b23c-937b7d706e9b',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = '79ce4e16-13cd-43fc-8675-ae917940f5b3'  OR 
               (EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B' AND Name = '__mj_UpdatedAt')
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
            '79ce4e16-13cd-43fc-8675-ae917940f5b3',
            '32C673DD-8F97-4753-8E4A-1419195AC68B', -- Entity: Roles__Committees
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
         WHERE ID = '429e9203-8946-4217-a5a1-d7d47c8ae786'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'ID')
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
            '429e9203-8946-4217-a5a1-d7d47c8ae786',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = '4b092636-0174-4277-925b-17b22e6ba23a'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'Name')
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
            '4b092636-0174-4277-925b-17b22e6ba23a',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = '3287d6bd-bc9c-4b5f-9de5-8c89c6b1ae7f'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'Description')
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
            '3287d6bd-bc9c-4b5f-9de5-8c89c6b1ae7f',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = 'f9525d70-2dc6-4c67-9573-a61167cac60e'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'ExtendedEntityID')
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
            'f9525d70-2dc6-4c67-9573-a61167cac60e',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = 'e352951d-630d-4a57-894e-25a78402521e'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'IconClass')
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
            'e352951d-630d-4a57-894e-25a78402521e',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = 'c7ecc380-ecd9-4186-93a9-c002391b1c6c'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = '__mj_CreatedAt')
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
            'c7ecc380-ecd9-4186-93a9-c002391b1c6c',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = '2a357ab1-16ad-40c6-9266-fe763d6a0f75'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = '__mj_UpdatedAt')
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
            '2a357ab1-16ad-40c6-9266-fe763d6a0f75',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = '7a7aec30-6a42-4efe-88b0-3f2b33eaafca'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'ID')
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
            '7a7aec30-6a42-4efe-88b0-3f2b33eaafca',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = '56fc0715-a63f-4997-bdbd-094bc9823ca2'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'ArtifactID')
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
            '56fc0715-a63f-4997-bdbd-094bc9823ca2',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F',
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
         WHERE ID = '5d758641-8c44-4c62-b279-a42309256c92'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'ApprovalStatus')
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
            '5d758641-8c44-4c62-b279-a42309256c92',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = '263ab9ce-2501-4eba-ac7a-9c99f0a6f098'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'ApprovedAt')
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
            '263ab9ce-2501-4eba-ac7a-9c99f0a6f098',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = '665f19c2-b4fa-4e3e-a595-f6d1440f132e'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'ApprovedByMeetingID')
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
            '665f19c2-b4fa-4e3e-a595-f6d1440f132e',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = 'aa46bb09-ee8f-4ffd-b049-804e8687420a'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = 'Notes')
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
            'aa46bb09-ee8f-4ffd-b049-804e8687420a',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = 'a6b955a3-62fc-4a94-847a-de7fead9f3b0'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = '__mj_CreatedAt')
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
            'a6b955a3-62fc-4a94-847a-de7fead9f3b0',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = 'e7103e80-4623-4e39-ba49-2a34a92d741f'  OR 
               (EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529' AND Name = '__mj_UpdatedAt')
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
            'e7103e80-4623-4e39-ba49-2a34a92d741f',
            '2013541C-019F-43AC-A5CB-2A900D6C8529', -- Entity: Minutes
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
         WHERE ID = '2faf3816-ec9e-41e6-b93d-61adf9c28fed'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'ID')
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
            '2faf3816-ec9e-41e6-b93d-61adf9c28fed',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '9e2df1bc-6f97-4911-955e-399c4d3de1e1'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'MeetingID')
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
            '9e2df1bc-6f97-4911-955e-399c4d3de1e1',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = 'e740890c-5282-465e-83bf-690ee8bbb5c8'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'UserID')
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
            'e740890c-5282-465e-83bf-690ee8bbb5c8',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '647ffd3b-f2a1-4c62-a586-991e7d4283e9'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'AttendanceStatus')
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
            '647ffd3b-f2a1-4c62-a586-991e7d4283e9',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '96f0b29f-9c92-406b-bf75-c8640e30c7db'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'JoinedAt')
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
            '96f0b29f-9c92-406b-bf75-c8640e30c7db',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '1b4077b0-f486-4812-9f93-8da3ca48d786'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'LeftAt')
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
            '1b4077b0-f486-4812-9f93-8da3ca48d786',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '31d3f6db-c459-4933-9a5f-125a93cd6d06'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'Notes')
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
            '31d3f6db-c459-4933-9a5f-125a93cd6d06',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = '9031f16a-a489-4daf-b385-068ea13d5ed3'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = '__mj_CreatedAt')
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
            '9031f16a-a489-4daf-b385-068ea13d5ed3',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = 'e7aa929f-c677-4a58-b111-dfcb587dbcdb'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = '__mj_UpdatedAt')
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
            'e7aa929f-c677-4a58-b111-dfcb587dbcdb',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = 'edb72cee-c690-44f1-8f80-ac4395a33777'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'ID')
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
            'edb72cee-c690-44f1-8f80-ac4395a33777',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'e512d567-c562-4ba0-bdb1-c93ba3c4479e'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'CommitteeID')
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
            'e512d567-c562-4ba0-bdb1-c93ba3c4479e',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = '51757e1a-d188-4b2b-8ddc-b5463260027b'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'MeetingID')
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
            '51757e1a-d188-4b2b-8ddc-b5463260027b',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = 'fbd4cca1-3205-4c33-965c-243703d659e8'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'AgendaItemID')
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
            'fbd4cca1-3205-4c33-965c-243703d659e8',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
            '4151CF22-6113-4EB7-A68B-4FCF507076E9',
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
         WHERE ID = '899b9f1f-0017-463b-9bd0-3bff35d9939a'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'Title')
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
            '899b9f1f-0017-463b-9bd0-3bff35d9939a',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '82093026-c643-4198-86af-309cd8a797e4'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'Description')
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
            '82093026-c643-4198-86af-309cd8a797e4',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '8e20f89c-628e-446e-82db-329f58a65c86'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'AssignedToUserID')
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
            '8e20f89c-628e-446e-82db-329f58a65c86',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'b936bf96-5af4-4f72-94dc-6eb38a5cc829'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'AssignedByUserID')
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
            'b936bf96-5af4-4f72-94dc-6eb38a5cc829',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '69021984-c498-4591-bc1c-dc7e8d9bbd12'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'DueDate')
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
            '69021984-c498-4591-bc1c-dc7e8d9bbd12',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '35f3f541-69cc-4bad-8e56-1ae8367fe64c'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'Priority')
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
            '35f3f541-69cc-4bad-8e56-1ae8367fe64c',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'ad5095fc-94f5-420a-a034-427dce44fe56'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'Status')
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
            'ad5095fc-94f5-420a-a034-427dce44fe56',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'b37848b1-25e2-4a3d-b4a1-32fb3132331e'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'CompletedAt')
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
            'b37848b1-25e2-4a3d-b4a1-32fb3132331e',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'e33d3c7a-b983-4c22-a284-5b50f5728f55'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'CompletionNotes')
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
            'e33d3c7a-b983-4c22-a284-5b50f5728f55',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '2478c714-2d3b-4509-a18f-90d3acbc4bc0'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = '__mj_CreatedAt')
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
            '2478c714-2d3b-4509-a18f-90d3acbc4bc0',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '576eda45-35ae-41b5-b4dc-c9a744275636'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = '__mj_UpdatedAt')
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
            '576eda45-35ae-41b5-b4dc-c9a744275636',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = 'edbaeb25-3a3e-496b-8c28-e166025fbeff'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'ID')
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
            'edbaeb25-3a3e-496b-8c28-e166025fbeff',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'a3ea0422-7d53-4bb5-950d-fe9fb5cdff35'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'CommitteeID')
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
            'a3ea0422-7d53-4bb5-950d-fe9fb5cdff35',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = '79c4820a-adfd-4415-82f8-6e1fac7a4fc0'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'MeetingID')
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
            '79c4820a-adfd-4415-82f8-6e1fac7a4fc0',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = 'bf2ed164-1264-4148-8f91-eb0365b732c6'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'AgendaItemID')
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
            'bf2ed164-1264-4148-8f91-eb0365b732c6',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
            '4151CF22-6113-4EB7-A68B-4FCF507076E9',
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
         WHERE ID = '78c2b798-24b5-431a-94a9-bfbe47c3c1f2'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'ActionItemID')
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
            '78c2b798-24b5-431a-94a9-bfbe47c3c1f2',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
            '3E90C344-4933-4806-BF1F-3C6560194EAF',
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
         WHERE ID = '10abe17e-3491-44eb-a7a3-efcd51676f7c'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'Title')
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
            '10abe17e-3491-44eb-a7a3-efcd51676f7c',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'd3c34fa9-1f1b-41af-ab6f-6438ee23881a'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'Description')
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
            'd3c34fa9-1f1b-41af-ab6f-6438ee23881a',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'aa70cd20-6fab-4b89-bfce-981d908b963f'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'ArtifactTypeID')
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
            'aa70cd20-6fab-4b89-bfce-981d908b963f',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665',
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
         WHERE ID = 'ed09e7d0-b90c-491f-a09a-001841c68c4f'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'Provider')
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
            'ed09e7d0-b90c-491f-a09a-001841c68c4f',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'd3fa6aa0-db39-4fbb-b99c-52d8a65a7810'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'ExternalID')
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
            'd3fa6aa0-db39-4fbb-b99c-52d8a65a7810',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'fd387711-0b8c-4520-ac3a-12eaac2e9c92'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'URL')
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
            'fd387711-0b8c-4520-ac3a-12eaac2e9c92',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'd6951ad2-1c7b-4687-af80-679516a01bad'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'MimeType')
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
            'd6951ad2-1c7b-4687-af80-679516a01bad',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = '39ac244c-ff99-4918-a996-ebe526e69ddc'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'FileSize')
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
            '39ac244c-ff99-4918-a996-ebe526e69ddc',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = '68af3f33-a826-480f-8f71-b6da1f71e39f'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'UploadedByUserID')
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
            '68af3f33-a826-480f-8f71-b6da1f71e39f',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'd59364fa-6411-4e1f-8bdb-7312f9002c5e'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = '__mj_CreatedAt')
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
            'd59364fa-6411-4e1f-8bdb-7312f9002c5e',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'c6490984-6f63-4192-b21d-449dc686d4fb'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = '__mj_UpdatedAt')
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
            'c6490984-6f63-4192-b21d-449dc686d4fb',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = '648fe03f-d125-4c51-b452-f82d03e91a89'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'ID')
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
            '648fe03f-d125-4c51-b452-f82d03e91a89',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'aea623e3-46b9-4cb0-85ba-474184c073c6'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'MeetingID')
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
            'aea623e3-46b9-4cb0-85ba-474184c073c6',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = 'e4c82bba-6395-4ba6-bf23-4d0414b76929'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'ParentAgendaItemID')
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
            'e4c82bba-6395-4ba6-bf23-4d0414b76929',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
            '4151CF22-6113-4EB7-A68B-4FCF507076E9',
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
         WHERE ID = '5131215d-c99f-46b1-83a8-6ec17313e561'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'Sequence')
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
            '5131215d-c99f-46b1-83a8-6ec17313e561',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'c1ea7e3b-1b60-40c2-b874-81eefc75692a'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'Title')
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
            'c1ea7e3b-1b60-40c2-b874-81eefc75692a',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '51dcfe4a-bfe0-4005-8241-2c3b6bbc0fe8'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'Description')
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
            '51dcfe4a-bfe0-4005-8241-2c3b6bbc0fe8',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'ae8db5c3-1daf-437f-a89e-26537c3eaa38'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'PresenterUserID')
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
            'ae8db5c3-1daf-437f-a89e-26537c3eaa38',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'b020d553-c85e-400e-af8f-4772eaa3a749'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'DurationMinutes')
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
            'b020d553-c85e-400e-af8f-4772eaa3a749',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '6907a706-5a46-4cf1-b462-dbd2ea98984e'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'ItemType')
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
            '6907a706-5a46-4cf1-b462-dbd2ea98984e',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '2b476c37-d370-45a8-abfa-34cda25e10c9'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'RelatedDocumentURL')
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
            '2b476c37-d370-45a8-abfa-34cda25e10c9',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '5784cfdb-b13a-4809-932d-d1a6eaebf013'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'Status')
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
            '5784cfdb-b13a-4809-932d-d1a6eaebf013',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '74c7586a-dc7e-47e4-95d8-635e0da42c2c'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'Notes')
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
            '74c7586a-dc7e-47e4-95d8-635e0da42c2c',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'a06505eb-af37-405b-aff8-d2342b7af642'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = '__mj_CreatedAt')
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
            'a06505eb-af37-405b-aff8-d2342b7af642',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = 'e65f9d57-9d84-4489-add8-8f39e25b2d56'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = '__mj_UpdatedAt')
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
            'e65f9d57-9d84-4489-add8-8f39e25b2d56',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '5128af3f-3d5d-4da2-9f52-9ff6e6ef24f7'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = 'ID')
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
            '5128af3f-3d5d-4da2-9f52-9ff6e6ef24f7',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
         WHERE ID = '7e3de908-0405-42d6-a668-6e8cb0e11563'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = 'MotionID')
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
            '7e3de908-0405-42d6-a668-6e8cb0e11563',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3',
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
         WHERE ID = 'fff8d590-d518-473c-854e-ae6278055322'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = 'MembershipID')
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
            'fff8d590-d518-473c-854e-ae6278055322',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
            '0C1A3F45-4826-422C-A738-C8CDD73EF216',
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
         WHERE ID = 'f4f9286e-390f-4577-b3f5-5002876081a0'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = 'VoteValue')
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
            'f4f9286e-390f-4577-b3f5-5002876081a0',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
         WHERE ID = '4a738c2c-4e78-43b5-9577-5cddf28ee2dd'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = 'Notes')
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
            '4a738c2c-4e78-43b5-9577-5cddf28ee2dd',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
         WHERE ID = '3c3f21a1-0b87-427e-bfaf-d4cbc1f390e4'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = '__mj_CreatedAt')
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
            '3c3f21a1-0b87-427e-bfaf-d4cbc1f390e4',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
         WHERE ID = '058e9514-988d-43ef-8647-e0e8fd2f0e23'  OR 
               (EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291' AND Name = '__mj_UpdatedAt')
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
            '058e9514-988d-43ef-8647-e0e8fd2f0e23',
            'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', -- Entity: Votes
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
         WHERE ID = '6f417242-e8cf-4eb8-93c4-25319ce3de8e'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'ID')
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
            '6f417242-e8cf-4eb8-93c4-25319ce3de8e',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '81d18ac6-015d-4251-a004-274ac8f12572'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'MeetingID')
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
            '81d18ac6-015d-4251-a004-274ac8f12572',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A',
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
         WHERE ID = '204773f8-752c-4b41-b1c7-44da08891688'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'AgendaItemID')
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
            '204773f8-752c-4b41-b1c7-44da08891688',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
            '4151CF22-6113-4EB7-A68B-4FCF507076E9',
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
         WHERE ID = 'b5c43d18-d385-4d60-8719-b9b701007d06'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'Sequence')
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
            'b5c43d18-d385-4d60-8719-b9b701007d06',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '8a626d61-46c3-48fa-aade-d7781855bb8e'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'Title')
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
            '8a626d61-46c3-48fa-aade-d7781855bb8e',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '20d4ea8d-aeee-4ea9-8604-1ca64c7b9b25'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'Description')
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
            '20d4ea8d-aeee-4ea9-8604-1ca64c7b9b25',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'b88842c9-cbca-4eaa-875b-264eeaec2b28'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'MovedByMembershipID')
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
            'b88842c9-cbca-4eaa-875b-264eeaec2b28',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
            '0C1A3F45-4826-422C-A738-C8CDD73EF216',
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
         WHERE ID = '3b4969bb-d331-4dde-a7b4-13d4f72ece97'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'SecondedByMembershipID')
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
            '3b4969bb-d331-4dde-a7b4-13d4f72ece97',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
            '0C1A3F45-4826-422C-A738-C8CDD73EF216',
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
         WHERE ID = '14b613dd-1c88-48ed-9a98-a1ba051c932b'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'Result')
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
            '14b613dd-1c88-48ed-9a98-a1ba051c932b',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'c091342c-7567-4999-a8f8-d91fe06c5aa2'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'ResultSummary')
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
            'c091342c-7567-4999-a8f8-d91fe06c5aa2',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'f9f5eb96-6194-4009-aedb-bd539adcb559'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'YesCount')
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
            'f9f5eb96-6194-4009-aedb-bd539adcb559',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'ec196124-91e8-4e5d-97e3-e60d2cdd9d9b'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'NoCount')
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
            'ec196124-91e8-4e5d-97e3-e60d2cdd9d9b',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '901a886c-8d97-45cb-ac26-53dade59dbb2'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'AbstainCount')
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
            '901a886c-8d97-45cb-ac26-53dade59dbb2',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'cddd6394-6868-4250-a7e4-dce2b5d32922'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = 'Notes')
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
            'cddd6394-6868-4250-a7e4-dce2b5d32922',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '9ad95461-28d3-4093-bea6-5669f8e2c06d'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = '__mj_CreatedAt')
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
            '9ad95461-28d3-4093-bea6-5669f8e2c06d',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = '11f7f5e2-435d-4b0f-8531-f26c827fd884'  OR 
               (EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3' AND Name = '__mj_UpdatedAt')
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
            '11f7f5e2-435d-4b0f-8531-f26c827fd884',
            '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', -- Entity: Motions
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
         WHERE ID = 'aea46008-bf67-464a-92c5-0d172bbc0e61'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'ID')
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
            'aea46008-bf67-464a-92c5-0d172bbc0e61',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'f4c89ac2-2e65-4c30-ae72-894e40d0ee37'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'CommitteeID')
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
            'f4c89ac2-2e65-4c30-ae72-894e40d0ee37',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = 'caa978b3-c4ef-443f-887e-cbdb76e3c98e'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'Title')
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
            'caa978b3-c4ef-443f-887e-cbdb76e3c98e',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '5b77d367-16f2-4e21-839f-7354e1b9e4d2'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'Description')
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
            '5b77d367-16f2-4e21-839f-7354e1b9e4d2',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'aace04dd-a26e-48fe-9428-f87066bfb9af'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'StartDateTime')
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
            'aace04dd-a26e-48fe-9428-f87066bfb9af',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'd3a3dec3-8aff-4b2a-b250-8462bd8db9ee'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'EndDateTime')
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
            'd3a3dec3-8aff-4b2a-b250-8462bd8db9ee',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '6d04a486-0d3e-4353-b47e-14150e048963'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'TimeZone')
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
            '6d04a486-0d3e-4353-b47e-14150e048963',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '43688f9e-d65e-4943-8322-b69f2047f9b9'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'LocationType')
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
            '43688f9e-d65e-4943-8322-b69f2047f9b9',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '33d918ab-fc3e-4643-914f-3ea0f2364884'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'LocationText')
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
            '33d918ab-fc3e-4643-914f-3ea0f2364884',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '4fdbfd4a-4f59-45ac-a916-859271104eb9'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'VideoProvider')
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
            '4fdbfd4a-4f59-45ac-a916-859271104eb9',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'a26ac8bc-2939-43e2-87dc-c571bb23f07e'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'VideoMeetingID')
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
            'a26ac8bc-2939-43e2-87dc-c571bb23f07e',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'b79d3ca3-5eeb-4dbb-8409-903890c32332'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'VideoJoinURL')
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
            'b79d3ca3-5eeb-4dbb-8409-903890c32332',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '710506cb-8a5f-4726-b330-021d450baa8a'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'VideoRecordingURL')
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
            '710506cb-8a5f-4726-b330-021d450baa8a',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '458a785b-571f-42f4-814c-f6a73dd28751'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'TranscriptURL')
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
            '458a785b-571f-42f4-814c-f6a73dd28751',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '061be887-a91b-4f23-b4fd-4d4fd1290c43'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'Status')
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
            '061be887-a91b-4f23-b4fd-4d4fd1290c43',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '88ba9b26-3204-4153-a21f-f489843264f2'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'CalendarEventID')
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
            '88ba9b26-3204-4153-a21f-f489843264f2',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '71cd13c0-6eef-460c-b4c0-b75bdcc349f1'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = '__mj_CreatedAt')
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
            '71cd13c0-6eef-460c-b4c0-b75bdcc349f1',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'cb27708c-ace8-48d2-912a-88ec81831af8'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = '__mj_UpdatedAt')
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
            'cb27708c-ace8-48d2-912a-88ec81831af8',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = '2d13e307-05ac-4a54-99bd-dd55112cae9a'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'ID')
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
            '2d13e307-05ac-4a54-99bd-dd55112cae9a',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = 'cc3b28ff-fb12-460c-9a8c-3f52e0d39870'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'CommitteeID')
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
            'cc3b28ff-fb12-460c-9a8c-3f52e0d39870',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = 'bcfeebad-4142-4766-8ccd-5e41e7c354b1'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'UserID')
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
            'bcfeebad-4142-4766-8ccd-5e41e7c354b1',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '98f28b96-b361-49dd-a9b7-f5cf2c1d01b2'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'RoleID')
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
            '98f28b96-b361-49dd-a9b7-f5cf2c1d01b2',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
            '32C673DD-8F97-4753-8E4A-1419195AC68B',
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
         WHERE ID = 'b32f8b39-c32d-44c5-a048-dc5c538c1254'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'TermID')
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
            'b32f8b39-c32d-44c5-a048-dc5c538c1254',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1',
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
         WHERE ID = 'b51ce2b0-e1d5-4fb6-852d-241415367298'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'StartDate')
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
            'b51ce2b0-e1d5-4fb6-852d-241415367298',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '5176ca81-9f17-433c-ae92-222f5a3cf1d8'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'EndDate')
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
            '5176ca81-9f17-433c-ae92-222f5a3cf1d8',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '452f82dd-53a7-4a15-9d6d-fded4e9785f3'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'Status')
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
            '452f82dd-53a7-4a15-9d6d-fded4e9785f3',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '2f558ae3-601b-4068-82c5-f95da9d752a9'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'EndReason')
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
            '2f558ae3-601b-4068-82c5-f95da9d752a9',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = 'fadfca36-3a6d-4df6-b916-d33a2b8dee26'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'Notes')
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
            'fadfca36-3a6d-4df6-b916-d33a2b8dee26',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '137005ac-9c79-4b77-abe5-4c1b9d5d687b'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = '__mj_CreatedAt')
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
            '137005ac-9c79-4b77-abe5-4c1b9d5d687b',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '0e8ec2df-d67c-4609-b1d4-e110fdad6430'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = '__mj_UpdatedAt')
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
            '0e8ec2df-d67c-4609-b1d4-e110fdad6430',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '5df40da0-f886-4523-a285-5b0c980685e8'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'ID')
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
            '5df40da0-f886-4523-a285-5b0c980685e8',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '53f490ed-6c6d-4607-b737-5bc6ff18b2ff'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'Name')
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
            '53f490ed-6c6d-4607-b737-5bc6ff18b2ff',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = 'b4a8641e-b057-48b1-b1b0-c48db66a432d'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'Description')
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
            'b4a8641e-b057-48b1-b1b0-c48db66a432d',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '94a230bc-b4ec-4e17-8c72-c8a2b428e6d7'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'TypeID')
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
            '94a230bc-b4ec-4e17-8c72-c8a2b428e6d7',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49',
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
         WHERE ID = '182f4a2a-81de-48ab-b60f-62868d7f0213'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'ParentCommitteeID')
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
            '182f4a2a-81de-48ab-b60f-62868d7f0213',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = 'b6380fee-bf2c-43d3-9b12-fa000304f3b2'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'OrganizationID')
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
            'b6380fee-bf2c-43d3-9b12-fa000304f3b2',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '5f2699af-c7b1-4602-b814-144254f609f4'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'CharterDocumentURL')
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
            '5f2699af-c7b1-4602-b814-144254f609f4',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = 'fe5078bd-a381-4e00-8ad4-4f8d48617063'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'MissionStatement')
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
            'fe5078bd-a381-4e00-8ad4-4f8d48617063',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = 'f499c30c-80cd-426f-a9ca-8688a12e2e19'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'Status')
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
            'f499c30c-80cd-426f-a9ca-8688a12e2e19',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '69277535-1854-4fc3-9072-9e0855a80922'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'IsPublic')
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
            '69277535-1854-4fc3-9072-9e0855a80922',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '73f04f4d-c02a-4290-a4fe-879c6cf43929'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'FormationDate')
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
            '73f04f4d-c02a-4290-a4fe-879c6cf43929',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '6e5e1b98-a6ad-4f2c-adaf-215335172ecb'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'DissolutionDate')
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
            '6e5e1b98-a6ad-4f2c-adaf-215335172ecb',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '4c578023-78df-4665-a0ea-6114e8a2c9da'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = '__mj_CreatedAt')
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
            '4c578023-78df-4665-a0ea-6114e8a2c9da',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '5e02dff5-7c58-485c-b12f-54035236cb05'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = '__mj_UpdatedAt')
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
            '5e02dff5-7c58-485c-b12f-54035236cb05',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '368eaf24-f81d-4600-adcd-63a96bc2463e'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'ID')
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
            '368eaf24-f81d-4600-adcd-63a96bc2463e',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = '93d0067b-3d57-46a2-b525-1d66a17563e8'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'CommitteeID')
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
            '93d0067b-3d57-46a2-b525-1d66a17563e8',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9',
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
         WHERE ID = 'bead29f3-100c-4d7d-9c09-8d4e75cb3793'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'Name')
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
            'bead29f3-100c-4d7d-9c09-8d4e75cb3793',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = 'c177555b-2012-4482-9fb0-cfbd6771a4b0'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'StartDate')
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
            'c177555b-2012-4482-9fb0-cfbd6771a4b0',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = 'e128500b-ff90-41c6-bd37-99c40b983425'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'EndDate')
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
            'e128500b-ff90-41c6-bd37-99c40b983425',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = 'd1f3f05d-9431-4090-8fec-e2b3fc1281d7'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'Status')
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
            'd1f3f05d-9431-4090-8fec-e2b3fc1281d7',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = '18faad55-b3e1-419b-9b45-0049d54555f7'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = '__mj_CreatedAt')
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
            '18faad55-b3e1-419b-9b45-0049d54555f7',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = '5e3b0f15-b6fc-47c0-9598-13b1290be02a'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = '__mj_UpdatedAt')
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
            '5e3b0f15-b6fc-47c0-9598-13b1290be02a',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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
         WHERE ID = 'ef2d3db4-9fb0-4cc4-a8e2-170ef0f6b26d'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'ID')
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
            'ef2d3db4-9fb0-4cc4-a8e2-170ef0f6b26d',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = '0e48ad2a-f596-46a9-8169-7406f2dc6a6a'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'Name')
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
            '0e48ad2a-f596-46a9-8169-7406f2dc6a6a',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = '29ab93cf-8985-40db-9370-0dc42d84f890'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'Description')
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
            '29ab93cf-8985-40db-9370-0dc42d84f890',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = 'b69bf7e3-8167-4398-9990-18a1cbaf3e5c'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'IsStandards')
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
            'b69bf7e3-8167-4398-9990-18a1cbaf3e5c',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = 'ae3088c8-5f3f-4472-8c0a-6a6c3058c5e4'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'DefaultTermMonths')
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
            'ae3088c8-5f3f-4472-8c0a-6a6c3058c5e4',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = 'ef04b44f-1a57-46fc-9b3e-f519fee058e9'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = 'IconClass')
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
            'ef04b44f-1a57-46fc-9b3e-f519fee058e9',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = 'd9162fcc-2188-43e0-b6aa-f4660c281071'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = '__mj_CreatedAt')
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
            'd9162fcc-2188-43e0-b6aa-f4660c281071',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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
         WHERE ID = '500c629c-6ad8-43f8-bd7f-52b15aed7cda'  OR 
               (EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49' AND Name = '__mj_UpdatedAt')
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
            '500c629c-6ad8-43f8-bd7f-52b15aed7cda',
            'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', -- Entity: Types
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

/* SQL text to insert entity field value with ID cd082646-b240-4233-89f8-e89f151ca025 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('cd082646-b240-4233-89f8-e89f151ca025', 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID bab7a0ca-d14c-45c9-8f1b-a113de5c15e9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('bab7a0ca-d14c-45c9-8f1b-a113de5c15e9', 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 17568eb2-099d-4a21-8f3a-b09d3a4cc0d1 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('17568eb2-099d-4a21-8f3a-b09d3a4cc0d1', 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7', 3, 'Upcoming', 'Upcoming')

/* SQL text to update ValueListType for entity field ID D1F3F05D-9431-4090-8FEC-E2B3FC1281D7 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='D1F3F05D-9431-4090-8FEC-E2B3FC1281D7'

/* SQL text to insert entity field value with ID f77c5203-f7ab-4eba-8241-168adec5d2ff */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f77c5203-f7ab-4eba-8241-168adec5d2ff', '452F82DD-53A7-4A15-9D6D-FDED4E9785F3', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID 38bf0a0e-23bc-4e30-890f-09fbe1319164 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('38bf0a0e-23bc-4e30-890f-09fbe1319164', '452F82DD-53A7-4A15-9D6D-FDED4E9785F3', 2, 'Ended', 'Ended')

/* SQL text to insert entity field value with ID 3f8c37a5-1291-4bb1-b729-54dedf41aa81 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('3f8c37a5-1291-4bb1-b729-54dedf41aa81', '452F82DD-53A7-4A15-9D6D-FDED4E9785F3', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 89b49eed-8f03-42d4-9f55-8548844dcf78 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('89b49eed-8f03-42d4-9f55-8548844dcf78', '452F82DD-53A7-4A15-9D6D-FDED4E9785F3', 4, 'Suspended', 'Suspended')

/* SQL text to update ValueListType for entity field ID 452F82DD-53A7-4A15-9D6D-FDED4E9785F3 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='452F82DD-53A7-4A15-9D6D-FDED4E9785F3'

/* SQL text to insert entity field value with ID 88a68914-5fc6-4ba8-bc0d-49fbf00435a2 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('88a68914-5fc6-4ba8-bc0d-49fbf00435a2', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 1, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID 772aa238-e6ca-429e-b691-3357c11c7bbc */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('772aa238-e6ca-429e-b691-3357c11c7bbc', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 3e32d345-0aee-4dd0-b553-1e51e11ab8ed */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('3e32d345-0aee-4dd0-b553-1e51e11ab8ed', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 3, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID bffc0ed4-932b-443d-b05d-cd101156250c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('bffc0ed4-932b-443d-b05d-cd101156250c', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID 909108b3-4b23-48d5-8c37-6ad8a3d08786 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('909108b3-4b23-48d5-8c37-6ad8a3d08786', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 5, 'Postponed', 'Postponed')

/* SQL text to insert entity field value with ID 2c7cd535-c7ad-4e86-80c9-9125ded2241d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2c7cd535-c7ad-4e86-80c9-9125ded2241d', '061BE887-A91B-4F23-B4FD-4D4FD1290C43', 6, 'Scheduled', 'Scheduled')

/* SQL text to update ValueListType for entity field ID 061BE887-A91B-4F23-B4FD-4D4FD1290C43 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='061BE887-A91B-4F23-B4FD-4D4FD1290C43'

/* SQL text to insert entity field value with ID 35e0cc93-19ad-4d9b-acbd-e48b743d708c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('35e0cc93-19ad-4d9b-acbd-e48b743d708c', '43688F9E-D65E-4943-8322-B69F2047F9B9', 1, 'Hybrid', 'Hybrid')

/* SQL text to insert entity field value with ID 068200cb-f650-462f-b411-e86a0761bd64 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('068200cb-f650-462f-b411-e86a0761bd64', '43688F9E-D65E-4943-8322-B69F2047F9B9', 2, 'InPerson', 'InPerson')

/* SQL text to insert entity field value with ID d452ca8f-0e49-49fc-9c74-04088b2543a3 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('d452ca8f-0e49-49fc-9c74-04088b2543a3', '43688F9E-D65E-4943-8322-B69F2047F9B9', 3, 'Virtual', 'Virtual')

/* SQL text to update ValueListType for entity field ID 43688F9E-D65E-4943-8322-B69F2047F9B9 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='43688F9E-D65E-4943-8322-B69F2047F9B9'

/* SQL text to insert entity field value with ID 94b52aa7-e63e-40f9-9af8-6dae5b065534 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('94b52aa7-e63e-40f9-9af8-6dae5b065534', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 1, 'Action', 'Action')

/* SQL text to insert entity field value with ID 371146a8-f94f-4961-917e-851c63bc3894 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('371146a8-f94f-4961-917e-851c63bc3894', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 2, 'Discussion', 'Discussion')

/* SQL text to insert entity field value with ID ea16bce6-f1a5-47c6-8936-69ca0e7ebe08 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ea16bce6-f1a5-47c6-8936-69ca0e7ebe08', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 3, 'Information', 'Information')

/* SQL text to insert entity field value with ID 552fb954-bd7c-401f-9dfb-be1ab1ed4cd8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('552fb954-bd7c-401f-9dfb-be1ab1ed4cd8', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 4, 'Other', 'Other')

/* SQL text to insert entity field value with ID c3c8fedc-9f7b-4a30-b333-8042a35a4707 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c3c8fedc-9f7b-4a30-b333-8042a35a4707', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 5, 'Report', 'Report')

/* SQL text to insert entity field value with ID aba99fbd-330c-44c3-a911-a078ba616dd0 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('aba99fbd-330c-44c3-a911-a078ba616dd0', '6907A706-5A46-4CF1-B462-DBD2EA98984E', 6, 'Vote', 'Vote')

/* SQL text to update ValueListType for entity field ID 6907A706-5A46-4CF1-B462-DBD2EA98984E */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='6907A706-5A46-4CF1-B462-DBD2EA98984E'

/* SQL text to insert entity field value with ID acabfb41-d560-4fad-a9ca-4d4f6261d746 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('acabfb41-d560-4fad-a9ca-4d4f6261d746', '5784CFDB-B13A-4809-932D-D1A6EAEBF013', 1, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 52c0bd07-168c-4bd8-a5fa-71ffe39474cd */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('52c0bd07-168c-4bd8-a5fa-71ffe39474cd', '5784CFDB-B13A-4809-932D-D1A6EAEBF013', 2, 'Discussed', 'Discussed')

/* SQL text to insert entity field value with ID 47e38718-a147-4dcb-a4c7-8f8a8e3e97d6 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('47e38718-a147-4dcb-a4c7-8f8a8e3e97d6', '5784CFDB-B13A-4809-932D-D1A6EAEBF013', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 0a6c54bf-def0-4ca0-bd77-5924400e53e3 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0a6c54bf-def0-4ca0-bd77-5924400e53e3', '5784CFDB-B13A-4809-932D-D1A6EAEBF013', 4, 'Skipped', 'Skipped')

/* SQL text to insert entity field value with ID 2d064cc3-87f4-4388-aec1-5530f1f04355 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2d064cc3-87f4-4388-aec1-5530f1f04355', '5784CFDB-B13A-4809-932D-D1A6EAEBF013', 5, 'Tabled', 'Tabled')

/* SQL text to update ValueListType for entity field ID 5784CFDB-B13A-4809-932D-D1A6EAEBF013 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='5784CFDB-B13A-4809-932D-D1A6EAEBF013'

/* SQL text to insert entity field value with ID ab24fa87-2cbf-48e7-bca8-927994e47fbf */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ab24fa87-2cbf-48e7-bca8-927994e47fbf', '647FFD3B-F2A1-4C62-A586-991E7D4283E9', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID c02380ae-8533-42cd-92d0-88c18503c296 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c02380ae-8533-42cd-92d0-88c18503c296', '647FFD3B-F2A1-4C62-A586-991E7D4283E9', 2, 'Excused', 'Excused')

/* SQL text to insert entity field value with ID 7fbad464-4a4b-459f-a627-ba5c8e7e8111 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('7fbad464-4a4b-459f-a627-ba5c8e7e8111', '647FFD3B-F2A1-4C62-A586-991E7D4283E9', 3, 'Expected', 'Expected')

/* SQL text to insert entity field value with ID 1f8ac8b6-bab7-4e71-8337-c2f8e41409e8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('1f8ac8b6-bab7-4e71-8337-c2f8e41409e8', '647FFD3B-F2A1-4C62-A586-991E7D4283E9', 4, 'Partial', 'Partial')

/* SQL text to insert entity field value with ID 2af9e9b6-599b-4dbf-897c-6a63d1f4a887 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2af9e9b6-599b-4dbf-897c-6a63d1f4a887', '647FFD3B-F2A1-4C62-A586-991E7D4283E9', 5, 'Present', 'Present')

/* SQL text to update ValueListType for entity field ID 647FFD3B-F2A1-4C62-A586-991E7D4283E9 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='647FFD3B-F2A1-4C62-A586-991E7D4283E9'

/* SQL text to insert entity field value with ID 410ca883-1986-49ce-985b-3ce4be9ccc23 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('410ca883-1986-49ce-985b-3ce4be9ccc23', '35F3F541-69CC-4BAD-8E56-1AE8367FE64C', 1, 'Critical', 'Critical')

/* SQL text to insert entity field value with ID 9340b097-856d-4594-8aaf-218a8708e426 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('9340b097-856d-4594-8aaf-218a8708e426', '35F3F541-69CC-4BAD-8E56-1AE8367FE64C', 2, 'High', 'High')

/* SQL text to insert entity field value with ID 51291499-b05f-4fe2-b686-7428faa53514 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('51291499-b05f-4fe2-b686-7428faa53514', '35F3F541-69CC-4BAD-8E56-1AE8367FE64C', 3, 'Low', 'Low')

/* SQL text to insert entity field value with ID f0f25825-8fa0-4544-bf57-e151ede6a520 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f0f25825-8fa0-4544-bf57-e151ede6a520', '35F3F541-69CC-4BAD-8E56-1AE8367FE64C', 4, 'Medium', 'Medium')

/* SQL text to update ValueListType for entity field ID 35F3F541-69CC-4BAD-8E56-1AE8367FE64C */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='35F3F541-69CC-4BAD-8E56-1AE8367FE64C'

/* SQL text to insert entity field value with ID 26d28cbe-0dd7-47d8-bb86-c8ccdef15a24 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('26d28cbe-0dd7-47d8-bb86-c8ccdef15a24', 'AD5095FC-94F5-420A-A034-427DCE44FE56', 1, 'Blocked', 'Blocked')

/* SQL text to insert entity field value with ID 0251af6a-f798-4cdd-a16f-ece6e0336f32 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0251af6a-f798-4cdd-a16f-ece6e0336f32', 'AD5095FC-94F5-420A-A034-427DCE44FE56', 2, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID 476f974b-f987-4406-937d-39e1ba7ccf0b */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('476f974b-f987-4406-937d-39e1ba7ccf0b', 'AD5095FC-94F5-420A-A034-427DCE44FE56', 3, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 6e0c98eb-7120-4800-a5bd-43b64d99524c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('6e0c98eb-7120-4800-a5bd-43b64d99524c', 'AD5095FC-94F5-420A-A034-427DCE44FE56', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID 3e0b8e3f-c52c-4b75-8fff-a5abe77fd294 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('3e0b8e3f-c52c-4b75-8fff-a5abe77fd294', 'AD5095FC-94F5-420A-A034-427DCE44FE56', 5, 'Open', 'Open')

/* SQL text to update ValueListType for entity field ID AD5095FC-94F5-420A-A034-427DCE44FE56 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='AD5095FC-94F5-420A-A034-427DCE44FE56'

/* SQL text to insert entity field value with ID cf10e050-7016-41f4-8667-d49521ade9ff */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('cf10e050-7016-41f4-8667-d49521ade9ff', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 1, 'Box', 'Box')

/* SQL text to insert entity field value with ID 1939b502-0179-4f05-875e-8110f296bded */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('1939b502-0179-4f05-875e-8110f296bded', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 2, 'Dropbox', 'Dropbox')

/* SQL text to insert entity field value with ID 99e2f1e3-58b7-4313-b524-8c9b7c884acc */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('99e2f1e3-58b7-4313-b524-8c9b7c884acc', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 3, 'GoogleDrive', 'GoogleDrive')

/* SQL text to insert entity field value with ID 16f0ec8e-aa4f-4344-b930-b84ae45b5a32 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('16f0ec8e-aa4f-4344-b930-b84ae45b5a32', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 4, 'OneDrive', 'OneDrive')

/* SQL text to insert entity field value with ID 408d8cb2-7a36-49ae-b96f-9108ca4bc7be */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('408d8cb2-7a36-49ae-b96f-9108ca4bc7be', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 5, 'SharePoint', 'SharePoint')

/* SQL text to insert entity field value with ID 1da9430d-9ef4-4305-90ad-5fc61e35a5f0 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('1da9430d-9ef4-4305-90ad-5fc61e35a5f0', 'ED09E7D0-B90C-491F-A09A-001841C68C4F', 6, 'URL', 'URL')

/* SQL text to update ValueListType for entity field ID ED09E7D0-B90C-491F-A09A-001841C68C4F */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='ED09E7D0-B90C-491F-A09A-001841C68C4F'

/* SQL text to insert entity field value with ID b54cae73-0e95-4c36-b0f8-1f127c0c8e50 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b54cae73-0e95-4c36-b0f8-1f127c0c8e50', '5D758641-8C44-4C62-B279-A42309256C92', 1, 'Approved', 'Approved')

/* SQL text to insert entity field value with ID eea645b8-b97a-4477-b3a3-c9f976c18522 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('eea645b8-b97a-4477-b3a3-c9f976c18522', '5D758641-8C44-4C62-B279-A42309256C92', 2, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID f30bbe48-91fe-4093-a4ca-f51385687f44 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f30bbe48-91fe-4093-a4ca-f51385687f44', '5D758641-8C44-4C62-B279-A42309256C92', 3, 'PendingApproval', 'PendingApproval')

/* SQL text to insert entity field value with ID 53c8aec0-5d00-4e70-8409-597794334d3a */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('53c8aec0-5d00-4e70-8409-597794334d3a', '5D758641-8C44-4C62-B279-A42309256C92', 4, 'Rejected', 'Rejected')

/* SQL text to update ValueListType for entity field ID 5D758641-8C44-4C62-B279-A42309256C92 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='5D758641-8C44-4C62-B279-A42309256C92'

/* SQL text to insert entity field value with ID 970e8bd4-65fe-445f-bd8e-49a6ae00d46c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('970e8bd4-65fe-445f-bd8e-49a6ae00d46c', '14B613DD-1C88-48ED-9A98-A1BA051C932B', 1, 'Failed', 'Failed')

/* SQL text to insert entity field value with ID 0a6f9667-ac97-4cee-83c9-5e63b18a2d8f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0a6f9667-ac97-4cee-83c9-5e63b18a2d8f', '14B613DD-1C88-48ED-9A98-A1BA051C932B', 2, 'Passed', 'Passed')

/* SQL text to insert entity field value with ID 151ed86b-eebc-4fb7-87db-6d776361b79b */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('151ed86b-eebc-4fb7-87db-6d776361b79b', '14B613DD-1C88-48ED-9A98-A1BA051C932B', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID fcaac129-0627-476e-b554-965d83140638 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('fcaac129-0627-476e-b554-965d83140638', '14B613DD-1C88-48ED-9A98-A1BA051C932B', 4, 'Tabled', 'Tabled')

/* SQL text to insert entity field value with ID 2872ab79-2b99-44ae-abe2-7d21f4d1a6a5 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2872ab79-2b99-44ae-abe2-7d21f4d1a6a5', '14B613DD-1C88-48ED-9A98-A1BA051C932B', 5, 'Withdrawn', 'Withdrawn')

/* SQL text to update ValueListType for entity field ID 14B613DD-1C88-48ED-9A98-A1BA051C932B */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='14B613DD-1C88-48ED-9A98-A1BA051C932B'

/* SQL text to insert entity field value with ID b781786e-97d7-450e-bbf8-9e6f3734f320 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b781786e-97d7-450e-bbf8-9e6f3734f320', 'F4F9286E-390F-4577-B3F5-5002876081A0', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID 848e6bd9-b439-41c7-b81a-d89cc63fc25f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('848e6bd9-b439-41c7-b81a-d89cc63fc25f', 'F4F9286E-390F-4577-B3F5-5002876081A0', 2, 'Abstain', 'Abstain')

/* SQL text to insert entity field value with ID 86701c48-343f-4318-99e5-0e8a334bc8ce */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('86701c48-343f-4318-99e5-0e8a334bc8ce', 'F4F9286E-390F-4577-B3F5-5002876081A0', 3, 'No', 'No')

/* SQL text to insert entity field value with ID 177d73f8-4fa8-435e-aea1-0270b60546df */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('177d73f8-4fa8-435e-aea1-0270b60546df', 'F4F9286E-390F-4577-B3F5-5002876081A0', 4, 'Yes', 'Yes')

/* SQL text to update ValueListType for entity field ID F4F9286E-390F-4577-B3F5-5002876081A0 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='F4F9286E-390F-4577-B3F5-5002876081A0'

/* SQL text to insert entity field value with ID fe6c2fc3-f1b8-4b67-9468-90eeeb6a323d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('fe6c2fc3-f1b8-4b67-9468-90eeeb6a323d', 'F499C30C-80CD-426F-A9CA-8688A12E2E19', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID 0152c1f3-89a3-4c6f-8aa9-7a03b0025296 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0152c1f3-89a3-4c6f-8aa9-7a03b0025296', 'F499C30C-80CD-426F-A9CA-8688A12E2E19', 2, 'Dissolved', 'Dissolved')

/* SQL text to insert entity field value with ID 8e945704-2a37-4f58-aafd-494d1920c44c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8e945704-2a37-4f58-aafd-494d1920c44c', 'F499C30C-80CD-426F-A9CA-8688A12E2E19', 3, 'Inactive', 'Inactive')

/* SQL text to insert entity field value with ID d76c7359-73fe-4365-8197-cce411858338 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('d76c7359-73fe-4365-8197-cce411858338', 'F499C30C-80CD-426F-A9CA-8688A12E2E19', 4, 'Pending', 'Pending')

/* SQL text to update ValueListType for entity field ID F499C30C-80CD-426F-A9CA-8688A12E2E19 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='F499C30C-80CD-426F-A9CA-8688A12E2E19'

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '623efb4f-34d0-436d-9ce9-991fc9e8eb1c'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('623efb4f-34d0-436d-9ce9-991fc9e8eb1c', '32C673DD-8F97-4753-8E4A-1419195AC68B', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'RoleID', 'One To Many', 1, 1, 'Memberships', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '9de39509-2d94-4c59-a9d7-fabb9ceb004e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('9de39509-2d94-4c59-a9d7-fabb9ceb004e', 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'ArtifactTypeID', 'One To Many', 1, 1, 'Artifacts', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b3ee88f3-cb4b-4de2-9cc9-f731038cf184'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b3ee88f3-cb4b-4de2-9cc9-f731038cf184', '3E90C344-4933-4806-BF1F-3C6560194EAF', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'ActionItemID', 'One To Many', 1, 1, 'Artifacts', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b1cd333f-4478-4c4d-8b50-e70776df3b5f'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b1cd333f-4478-4c4d-8b50-e70776df3b5f', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', '2013541C-019F-43AC-A5CB-2A900D6C8529', 'ArtifactID', 'One To Many', 1, 1, 'Minutes', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'c656a5e6-4f01-41a8-a9f9-cee6eaaf1dec'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('c656a5e6-4f01-41a8-a9f9-cee6eaaf1dec', '4151CF22-6113-4EB7-A68B-4FCF507076E9', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'AgendaItemID', 'One To Many', 1, 1, 'Action Items', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'fb656316-ba89-4d66-9df2-beaccc531ef6'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('fb656316-ba89-4d66-9df2-beaccc531ef6', '4151CF22-6113-4EB7-A68B-4FCF507076E9', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'AgendaItemID', 'One To Many', 1, 1, 'Motions', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b14e6b85-108d-4b7a-8c31-46ab5bb3bcb8'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b14e6b85-108d-4b7a-8c31-46ab5bb3bcb8', '4151CF22-6113-4EB7-A68B-4FCF507076E9', '4151CF22-6113-4EB7-A68B-4FCF507076E9', 'ParentAgendaItemID', 'One To Many', 1, 1, 'Agenda Items', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '22c905f1-7f76-4131-8793-5bd75b0b7def'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('22c905f1-7f76-4131-8793-5bd75b0b7def', '4151CF22-6113-4EB7-A68B-4FCF507076E9', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'AgendaItemID', 'One To Many', 1, 1, 'Artifacts', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'fe667a6a-0924-410d-a853-f7d69deedd8e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('fe667a6a-0924-410d-a853-f7d69deedd8e', 'E0238F34-2837-EF11-86D4-6045BDEE16E6', 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', 'ExtendedEntityID', 'One To Many', 1, 1, 'Artifact Types', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '2c2d2385-0262-4396-aee6-ddb39d5ac812'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('2c2d2385-0262-4396-aee6-ddb39d5ac812', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'UploadedByUserID', 'One To Many', 1, 1, 'Artifacts', 4);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'd6215dbf-c746-49df-8d79-edcd9d77f4f0'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('d6215dbf-c746-49df-8d79-edcd9d77f4f0', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'UserID', 'One To Many', 1, 1, 'Memberships', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '884893de-bc18-424b-b1cb-4f1adbb6414b'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('884893de-bc18-424b-b1cb-4f1adbb6414b', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'E9E43080-DCA7-4FC6-BC99-36CA32823754', 'UserID', 'One To Many', 1, 1, 'Attendances', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a471a09a-99cb-495c-a3b4-4873ceb4f1f6'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a471a09a-99cb-495c-a3b4-4873ceb4f1f6', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'AssignedByUserID', 'One To Many', 1, 1, 'Action Items', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'd95d2168-8ecd-4984-a7cf-9b46b74a3712'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('d95d2168-8ecd-4984-a7cf-9b46b74a3712', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '4151CF22-6113-4EB7-A68B-4FCF507076E9', 'PresenterUserID', 'One To Many', 1, 1, 'Agenda Items', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '0b9b0dc6-448b-4fdb-b799-35d9dabe44f0'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('0b9b0dc6-448b-4fdb-b799-35d9dabe44f0', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'AssignedToUserID', 'One To Many', 1, 1, 'Action Items', 3);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'ebac71d9-3372-4bf4-8286-e5f593b1459c'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('ebac71d9-3372-4bf4-8286-e5f593b1459c', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', 'MotionID', 'One To Many', 1, 1, 'Votes', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '10aadcb8-1aa2-44df-a405-bda6d59b1bfd'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('10aadcb8-1aa2-44df-a405-bda6d59b1bfd', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'MeetingID', 'One To Many', 1, 1, 'Action Items', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '0426a1db-08e8-455e-b2d0-ad14be3c49da'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('0426a1db-08e8-455e-b2d0-ad14be3c49da', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', '2013541C-019F-43AC-A5CB-2A900D6C8529', 'ApprovedByMeetingID', 'One To Many', 1, 1, 'Minutes', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'c36e550e-cbe0-4c30-8411-1b4cc9fe9294'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('c36e550e-cbe0-4c30-8411-1b4cc9fe9294', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', 'E9E43080-DCA7-4FC6-BC99-36CA32823754', 'MeetingID', 'One To Many', 1, 1, 'Attendances', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '44c77d6c-0670-47de-8fc3-7be86be180e1'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('44c77d6c-0670-47de-8fc3-7be86be180e1', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'MeetingID', 'One To Many', 1, 1, 'Motions', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'dcdc2120-bc9a-4f73-ba1e-6d1ff68c844d'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('dcdc2120-bc9a-4f73-ba1e-6d1ff68c844d', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'MeetingID', 'One To Many', 1, 1, 'Artifacts', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '672001bd-f4fa-4ffe-adde-4edde74ac25e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('672001bd-f4fa-4ffe-adde-4edde74ac25e', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', '4151CF22-6113-4EB7-A68B-4FCF507076E9', 'MeetingID', 'One To Many', 1, 1, 'Agenda Items', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '120a17d5-ddee-465d-9569-704683c62590'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('120a17d5-ddee-465d-9569-704683c62590', '0C1A3F45-4826-422C-A738-C8CDD73EF216', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'MovedByMembershipID', 'One To Many', 1, 1, 'Motions', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a733ea70-858b-41bd-b2ab-831bf648f39a'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a733ea70-858b-41bd-b2ab-831bf648f39a', '0C1A3F45-4826-422C-A738-C8CDD73EF216', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'SecondedByMembershipID', 'One To Many', 1, 1, 'Motions', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '69afcbfd-6ec9-43d8-b7b7-f5a616b904a0'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('69afcbfd-6ec9-43d8-b7b7-f5a616b904a0', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', 'MembershipID', 'One To Many', 1, 1, 'Votes', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '181a3a5b-2c4d-4f9c-a015-3330e0227cfb'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('181a3a5b-2c4d-4f9c-a015-3330e0227cfb', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'CommitteeID', 'One To Many', 1, 1, 'Action Items', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '298b96a7-987b-407f-9091-090c335eb91f'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('298b96a7-987b-407f-9091-090c335eb91f', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'CommitteeID', 'One To Many', 1, 1, 'Artifacts', 6);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '9606b196-dcca-4ea3-a5e3-c0eccab93f5e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('9606b196-dcca-4ea3-a5e3-c0eccab93f5e', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', 'CommitteeID', 'One To Many', 1, 1, 'Terms', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '8b15db4e-99d9-4e02-8dfd-532ebeb5b1f5'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('8b15db4e-99d9-4e02-8dfd-532ebeb5b1f5', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'CommitteeID', 'One To Many', 1, 1, 'Memberships', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '3740f050-f06a-45e9-a736-efb011107e28'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('3740f050-f06a-45e9-a736-efb011107e28', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', 'ParentCommitteeID', 'One To Many', 1, 1, 'Committees', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '4de7028d-af0f-4d7f-88a7-3800a0bee778'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('4de7028d-af0f-4d7f-88a7-3800a0bee778', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', 'CommitteeID', 'One To Many', 1, 1, 'Meetings', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '834d5eac-3326-4a0f-9711-99052935e97b'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('834d5eac-3326-4a0f-9711-99052935e97b', '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'TermID', 'One To Many', 1, 1, 'Memberships', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '444e5cca-6eae-4181-a622-32c3e8da7b81'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('444e5cca-6eae-4181-a622-32c3e8da7b81', 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', 'TypeID', 'One To Many', 1, 1, 'Committees', 2);
   END
                              

/* Index for Foreign Keys for ActionItem */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
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

/* SQL text to update entity field related entity name field map for entity field ID E512D567-C562-4BA0-BDB1-C93BA3C4479E */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='E512D567-C562-4BA0-BDB1-C93BA3C4479E',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for AgendaItem */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
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

/* Root ID Function SQL for Agenda Items.ParentAgendaItemID */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
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


/* SQL text to update entity field related entity name field map for entity field ID AE8DB5C3-1DAF-437F-A89E-26537C3EAA38 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='AE8DB5C3-1DAF-437F-A89E-26537C3EAA38',
         @RelatedEntityNameFieldMap='PresenterUser'

/* Index for Foreign Keys for ArtifactType */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
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

/* SQL text to update entity field related entity name field map for entity field ID F9525D70-2DC6-4C67-9573-A61167CAC60E */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F9525D70-2DC6-4C67-9573-A61167CAC60E',
         @RelatedEntityNameFieldMap='ExtendedEntity'

/* Index for Foreign Keys for Artifact */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
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

/* SQL text to update entity field related entity name field map for entity field ID A3EA0422-7D53-4BB5-950D-FE9FB5CDFF35 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='A3EA0422-7D53-4BB5-950D-FE9FB5CDFF35',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Attendance */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
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

/* SQL text to update entity field related entity name field map for entity field ID E740890C-5282-465E-83BF-690EE8BBB5C8 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='E740890C-5282-465E-83BF-690EE8BBB5C8',
         @RelatedEntityNameFieldMap='User'

/* Base View SQL for Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
-- Item: vwAgendaItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Agenda Items
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
    

/* Base View Permissions SQL for Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
-- Item: Permissions for vwAgendaItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwAgendaItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
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
    

/* spCreate Permissions for Agenda Items */

GRANT EXECUTE ON [Committees].[spCreateAgendaItem] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
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
        

/* spUpdate Permissions for Agenda Items */

GRANT EXECUTE ON [Committees].[spUpdateAgendaItem] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Agenda Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Agenda Items
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
    

/* spDelete Permissions for Agenda Items */

GRANT EXECUTE ON [Committees].[spDeleteAgendaItem] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 8E20F89C-628E-446E-82DB-329F58A65C86 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='8E20F89C-628E-446E-82DB-329F58A65C86',
         @RelatedEntityNameFieldMap='AssignedToUser'

/* Base View SQL for Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
-- Item: vwArtifactTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Artifact Types
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
    

/* Base View Permissions SQL for Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
-- Item: Permissions for vwArtifactTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwArtifactTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
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
    

/* spCreate Permissions for Artifact Types */

GRANT EXECUTE ON [Committees].[spCreateArtifactType] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
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
        

/* spUpdate Permissions for Artifact Types */

GRANT EXECUTE ON [Committees].[spUpdateArtifactType] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Artifact Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifact Types
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
    

/* spDelete Permissions for Artifact Types */

GRANT EXECUTE ON [Committees].[spDeleteArtifactType] TO [cdp_Integration]



/* Base View SQL for Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
-- Item: vwAttendances
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Attendances
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
    

/* Base View Permissions SQL for Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
-- Item: Permissions for vwAttendances
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwAttendances] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
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
    

/* spCreate Permissions for Attendances */

GRANT EXECUTE ON [Committees].[spCreateAttendance] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
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
        

/* spUpdate Permissions for Attendances */

GRANT EXECUTE ON [Committees].[spUpdateAttendance] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Attendances */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Attendances
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
    

/* spDelete Permissions for Attendances */

GRANT EXECUTE ON [Committees].[spDeleteAttendance] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID AA70CD20-6FAB-4B89-BFCE-981D908B963F */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='AA70CD20-6FAB-4B89-BFCE-981D908B963F',
         @RelatedEntityNameFieldMap='ArtifactType'

/* SQL text to update entity field related entity name field map for entity field ID B936BF96-5AF4-4F72-94DC-6EB38A5CC829 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='B936BF96-5AF4-4F72-94DC-6EB38A5CC829',
         @RelatedEntityNameFieldMap='AssignedByUser'

/* SQL text to update entity field related entity name field map for entity field ID 68AF3F33-A826-480F-8F71-B6DA1F71E39F */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='68AF3F33-A826-480F-8F71-B6DA1F71E39F',
         @RelatedEntityNameFieldMap='UploadedByUser'

/* Base View SQL for Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
-- Item: vwArtifacts
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Artifacts
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
    

/* Base View Permissions SQL for Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
-- Item: Permissions for vwArtifacts
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwArtifacts] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
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
    

/* spCreate Permissions for Artifacts */

GRANT EXECUTE ON [Committees].[spCreateArtifact] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
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
        

/* spUpdate Permissions for Artifacts */

GRANT EXECUTE ON [Committees].[spUpdateArtifact] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Artifacts */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Artifacts
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
    

/* spDelete Permissions for Artifacts */

GRANT EXECUTE ON [Committees].[spDeleteArtifact] TO [cdp_Integration]



/* Base View SQL for Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
-- Item: vwActionItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Action Items
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
    

/* Base View Permissions SQL for Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
-- Item: Permissions for vwActionItems
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwActionItems] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
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
    

/* spCreate Permissions for Action Items */

GRANT EXECUTE ON [Committees].[spCreateActionItem] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
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
        

/* spUpdate Permissions for Action Items */

GRANT EXECUTE ON [Committees].[spUpdateActionItem] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Action Items */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Action Items
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
    

/* spDelete Permissions for Action Items */

GRANT EXECUTE ON [Committees].[spDeleteActionItem] TO [cdp_Integration]



/* Index for Foreign Keys for Committee */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
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

/* Root ID Function SQL for Committees.ParentCommitteeID */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
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


/* SQL text to update entity field related entity name field map for entity field ID 94A230BC-B4EC-4E17-8C72-C8A2B428E6D7 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='94A230BC-B4EC-4E17-8C72-C8A2B428E6D7',
         @RelatedEntityNameFieldMap='Type'

/* Index for Foreign Keys for Meeting */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
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

/* SQL text to update entity field related entity name field map for entity field ID F4C89AC2-2E65-4C30-AE72-894E40D0EE37 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F4C89AC2-2E65-4C30-AE72-894E40D0EE37',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Membership */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
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

/* SQL text to update entity field related entity name field map for entity field ID CC3B28FF-FB12-460C-9A8C-3F52E0D39870 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='CC3B28FF-FB12-460C-9A8C-3F52E0D39870',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Minute */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
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
-- Entity: Motions
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

/* Base View SQL for Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
-- Item: vwMinutes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Minutes
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
    

/* Base View Permissions SQL for Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
-- Item: Permissions for vwMinutes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMinutes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
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
    

/* spCreate Permissions for Minutes */

GRANT EXECUTE ON [Committees].[spCreateMinute] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
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
        

/* spUpdate Permissions for Minutes */

GRANT EXECUTE ON [Committees].[spUpdateMinute] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Minutes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Minutes
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
    

/* spDelete Permissions for Minutes */

GRANT EXECUTE ON [Committees].[spDeleteMinute] TO [cdp_Integration]



/* Base View SQL for Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Motions
-- Item: vwMotions
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Motions
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
    

/* Base View Permissions SQL for Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Motions
-- Item: Permissions for vwMotions
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMotions] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Motions
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
    

/* spCreate Permissions for Motions */

GRANT EXECUTE ON [Committees].[spCreateMotion] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Motions
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
        

/* spUpdate Permissions for Motions */

GRANT EXECUTE ON [Committees].[spUpdateMotion] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Motions */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Motions
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
    

/* spDelete Permissions for Motions */

GRANT EXECUTE ON [Committees].[spDeleteMotion] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 182F4A2A-81DE-48AB-B60F-62868D7F0213 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='182F4A2A-81DE-48AB-B60F-62868D7F0213',
         @RelatedEntityNameFieldMap='ParentCommittee'

/* SQL text to update entity field related entity name field map for entity field ID BCFEEBAD-4142-4766-8CCD-5E41E7C354B1 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='BCFEEBAD-4142-4766-8CCD-5E41E7C354B1',
         @RelatedEntityNameFieldMap='User'

/* Base View SQL for Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
-- Item: vwMeetings
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Meetings
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
    

/* Base View Permissions SQL for Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
-- Item: Permissions for vwMeetings
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMeetings] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
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
    

/* spCreate Permissions for Meetings */

GRANT EXECUTE ON [Committees].[spCreateMeeting] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
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
        

/* spUpdate Permissions for Meetings */

GRANT EXECUTE ON [Committees].[spUpdateMeeting] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Meetings */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Meetings
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
    

/* spDelete Permissions for Meetings */

GRANT EXECUTE ON [Committees].[spDeleteMeeting] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID 98F28B96-B361-49DD-A9B7-F5CF2C1D01B2 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='98F28B96-B361-49DD-A9B7-F5CF2C1D01B2',
         @RelatedEntityNameFieldMap='Role'

/* Base View SQL for Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
-- Item: vwCommittees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Committees
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
    

/* Base View Permissions SQL for Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
-- Item: Permissions for vwCommittees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwCommittees] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
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
    

/* spCreate Permissions for Committees */

GRANT EXECUTE ON [Committees].[spCreateCommittee] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
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
        

/* spUpdate Permissions for Committees */

GRANT EXECUTE ON [Committees].[spUpdateCommittee] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Committees
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
    

/* spDelete Permissions for Committees */

GRANT EXECUTE ON [Committees].[spDeleteCommittee] TO [cdp_Integration]



/* SQL text to update entity field related entity name field map for entity field ID B32F8B39-C32D-44C5-A048-DC5C538C1254 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='B32F8B39-C32D-44C5-A048-DC5C538C1254',
         @RelatedEntityNameFieldMap='Term'

/* Base View SQL for Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
-- Item: vwMemberships
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Memberships
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
    Role__Committees_RoleID.[Name] AS [Role],
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
    [Committees].[Role] AS Role__Committees_RoleID
  ON
    [m].[RoleID] = Role__Committees_RoleID.[ID]
LEFT OUTER JOIN
    [Committees].[Term] AS Term_TermID
  ON
    [m].[TermID] = Term_TermID.[ID]
GO
GRANT SELECT ON [Committees].[vwMemberships] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
-- Item: Permissions for vwMemberships
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwMemberships] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
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
    

/* spCreate Permissions for Memberships */

GRANT EXECUTE ON [Committees].[spCreateMembership] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
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
        

/* spUpdate Permissions for Memberships */

GRANT EXECUTE ON [Committees].[spUpdateMembership] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Memberships */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Memberships
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
    

/* spDelete Permissions for Memberships */

GRANT EXECUTE ON [Committees].[spDeleteMembership] TO [cdp_Integration]



/* Index for Foreign Keys for Role */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------


/* Index for Foreign Keys for Term */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
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

/* SQL text to update entity field related entity name field map for entity field ID 93D0067B-3D57-46A2-B525-1D66A17563E8 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='93D0067B-3D57-46A2-B525-1D66A17563E8',
         @RelatedEntityNameFieldMap='Committee'

/* Index for Foreign Keys for Type */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
-- Item: Index for Foreign Keys
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------


/* Index for Foreign Keys for Vote */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
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

/* Base View SQL for Roles__Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: vwRoles__Committees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Roles__Committees
-----               SCHEMA:      Committees
-----               BASE TABLE:  Role
-----               PRIMARY KEY: ID
------------------------------------------------------------
IF OBJECT_ID('[Committees].[vwRoles__Committees]', 'V') IS NOT NULL
    DROP VIEW [Committees].[vwRoles__Committees];
GO

CREATE VIEW [Committees].[vwRoles__Committees]
AS
SELECT
    r.*
FROM
    [Committees].[Role] AS r
GO
GRANT SELECT ON [Committees].[vwRoles__Committees] TO [cdp_UI], [cdp_Developer], [cdp_Integration]
    

/* Base View Permissions SQL for Roles__Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: Permissions for vwRoles__Committees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwRoles__Committees] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Roles__Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: spCreateRole__Committees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- CREATE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spCreateRole__Committees]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spCreateRole__Committees];
GO

CREATE PROCEDURE [Committees].[spCreateRole__Committees]
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
    SELECT * FROM [Committees].[vwRoles__Committees] WHERE [ID] = (SELECT [ID] FROM @InsertedRow)
END
GO
GRANT EXECUTE ON [Committees].[spCreateRole__Committees] TO [cdp_Developer], [cdp_Integration]
    

/* spCreate Permissions for Roles__Committees */

GRANT EXECUTE ON [Committees].[spCreateRole__Committees] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Roles__Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: spUpdateRole__Committees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- UPDATE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spUpdateRole__Committees]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spUpdateRole__Committees];
GO

CREATE PROCEDURE [Committees].[spUpdateRole__Committees]
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
        SELECT TOP 0 * FROM [Committees].[vwRoles__Committees] WHERE 1=0
    ELSE
        -- Return the updated record so the caller can see the updated values and any calculated fields
        SELECT
                                        *
                                    FROM
                                        [Committees].[vwRoles__Committees]
                                    WHERE
                                        [ID] = @ID
                                    
END
GO

GRANT EXECUTE ON [Committees].[spUpdateRole__Committees] TO [cdp_Developer], [cdp_Integration]
GO

------------------------------------------------------------
----- TRIGGER FOR __mj_UpdatedAt field for the Role table
------------------------------------------------------------
IF OBJECT_ID('[Committees].[trgUpdateRole__Committees]', 'TR') IS NOT NULL
    DROP TRIGGER [Committees].[trgUpdateRole__Committees];
GO
CREATE TRIGGER [Committees].trgUpdateRole__Committees
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
        

/* spUpdate Permissions for Roles__Committees */

GRANT EXECUTE ON [Committees].[spUpdateRole__Committees] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Roles__Committees */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Roles__Committees
-- Item: spDeleteRole__Committees
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- DELETE PROCEDURE FOR Role
------------------------------------------------------------
IF OBJECT_ID('[Committees].[spDeleteRole__Committees]', 'P') IS NOT NULL
    DROP PROCEDURE [Committees].[spDeleteRole__Committees];
GO

CREATE PROCEDURE [Committees].[spDeleteRole__Committees]
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
GRANT EXECUTE ON [Committees].[spDeleteRole__Committees] TO [cdp_Integration]
    

/* spDelete Permissions for Roles__Committees */

GRANT EXECUTE ON [Committees].[spDeleteRole__Committees] TO [cdp_Integration]



/* Base View SQL for Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
-- Item: vwTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Types
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
    

/* Base View Permissions SQL for Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
-- Item: Permissions for vwTypes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwTypes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
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
    

/* spCreate Permissions for Types */

GRANT EXECUTE ON [Committees].[spCreateType] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
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
        

/* spUpdate Permissions for Types */

GRANT EXECUTE ON [Committees].[spUpdateType] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Types */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Types
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
    

/* spDelete Permissions for Types */

GRANT EXECUTE ON [Committees].[spDeleteType] TO [cdp_Integration]



/* Base View SQL for Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
-- Item: vwVotes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Votes
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
    

/* Base View Permissions SQL for Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
-- Item: Permissions for vwVotes
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwVotes] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
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
    

/* spCreate Permissions for Votes */

GRANT EXECUTE ON [Committees].[spCreateVote] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
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
        

/* spUpdate Permissions for Votes */

GRANT EXECUTE ON [Committees].[spUpdateVote] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Votes */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Votes
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
    

/* spDelete Permissions for Votes */

GRANT EXECUTE ON [Committees].[spDeleteVote] TO [cdp_Integration]



/* Base View SQL for Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
-- Item: vwTerms
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

------------------------------------------------------------
----- BASE VIEW FOR ENTITY:      Terms
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
    

/* Base View Permissions SQL for Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
-- Item: Permissions for vwTerms
--
-- This was generated by the MemberJunction CodeGen tool.
-- This file should NOT be edited by hand.
-----------------------------------------------------------------

GRANT SELECT ON [Committees].[vwTerms] TO [cdp_UI], [cdp_Developer], [cdp_Integration]

/* spCreate SQL for Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
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
    

/* spCreate Permissions for Terms */

GRANT EXECUTE ON [Committees].[spCreateTerm] TO [cdp_Developer], [cdp_Integration]



/* spUpdate SQL for Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
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
        

/* spUpdate Permissions for Terms */

GRANT EXECUTE ON [Committees].[spUpdateTerm] TO [cdp_Developer], [cdp_Integration]



/* spDelete SQL for Terms */
-----------------------------------------------------------------
-- SQL Code Generation
-- Entity: Terms
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
    

/* spDelete Permissions for Terms */

GRANT EXECUTE ON [Committees].[spDeleteTerm] TO [cdp_Integration]



/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = 'a116194f-7442-4e80-9f0b-01b1515446c3'  OR 
               (EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665' AND Name = 'ExtendedEntity')
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
            'a116194f-7442-4e80-9f0b-01b1515446c3',
            'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', -- Entity: Artifact Types
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
         WHERE ID = 'aa7ab36d-6cc1-4f52-8f6c-4b5d9504935f'  OR 
               (EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754' AND Name = 'User')
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
            'aa7ab36d-6cc1-4f52-8f6c-4b5d9504935f',
            'E9E43080-DCA7-4FC6-BC99-36CA32823754', -- Entity: Attendances
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
         WHERE ID = 'c46f1e75-32a9-4829-9e38-c42b587c147a'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'Committee')
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
            'c46f1e75-32a9-4829-9e38-c42b587c147a',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '4d227225-ac00-43db-959f-b94abdd33bb5'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'AssignedToUser')
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
            '4d227225-ac00-43db-959f-b94abdd33bb5',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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
         WHERE ID = '2af7f4ba-bfe9-4ff8-8781-dc8599b4a7e9'  OR 
               (EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF' AND Name = 'AssignedByUser')
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
            '2af7f4ba-bfe9-4ff8-8781-dc8599b4a7e9',
            '3E90C344-4933-4806-BF1F-3C6560194EAF', -- Entity: Action Items
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

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '7fa8d89c-d2b5-4aa4-9f64-19288d2f5903'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'Committee')
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
            '7fa8d89c-d2b5-4aa4-9f64-19288d2f5903',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = '935660b8-b13b-4ba9-ba3d-5731d6291c3b'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'ArtifactType')
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
            '935660b8-b13b-4ba9-ba3d-5731d6291c3b',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = 'e62bf729-350e-46cb-ad98-b5d515441f3a'  OR 
               (EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F' AND Name = 'UploadedByUser')
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
            'e62bf729-350e-46cb-ad98-b5d515441f3a',
            '38268920-BB6D-4CA3-A8D4-4E1650136C4F', -- Entity: Artifacts
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
         WHERE ID = '3c9a73e3-502e-4795-8e3b-b8457089ceed'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'PresenterUser')
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
            '3c9a73e3-502e-4795-8e3b-b8457089ceed',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '2edaae07-35ba-4311-82df-6a5605d3e9b6'  OR 
               (EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9' AND Name = 'RootParentAgendaItemID')
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
            '2edaae07-35ba-4311-82df-6a5605d3e9b6',
            '4151CF22-6113-4EB7-A68B-4FCF507076E9', -- Entity: Agenda Items
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
         WHERE ID = '302ea50c-dc0f-4964-ac2e-31d8f5ae201e'  OR 
               (EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A' AND Name = 'Committee')
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
            '302ea50c-dc0f-4964-ac2e-31d8f5ae201e',
            '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', -- Entity: Meetings
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
         WHERE ID = 'efdbef8a-3d1d-4e42-b838-63c13992bc81'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'Committee')
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
            'efdbef8a-3d1d-4e42-b838-63c13992bc81',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '66a63da0-d211-4316-a777-99d387d09eed'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'User')
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
            '66a63da0-d211-4316-a777-99d387d09eed',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = '0743122b-a026-450b-88a3-cd5da8980ae8'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'Role')
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
            '0743122b-a026-450b-88a3-cd5da8980ae8',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = 'b3868f65-1a82-44ac-bb86-ae4c211aa371'  OR 
               (EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216' AND Name = 'Term')
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
            'b3868f65-1a82-44ac-bb86-ae4c211aa371',
            '0C1A3F45-4826-422C-A738-C8CDD73EF216', -- Entity: Memberships
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
         WHERE ID = 'e42b55d7-f207-4555-bb13-168da626408e'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'Type')
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
            'e42b55d7-f207-4555-bb13-168da626408e',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '13424fc5-9799-497e-84c6-bda1038b989a'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'ParentCommittee')
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
            '13424fc5-9799-497e-84c6-bda1038b989a',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '40e1b1b1-6b5a-443e-8ca5-c43a138c7b66'  OR 
               (EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9' AND Name = 'RootParentCommitteeID')
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
            '40e1b1b1-6b5a-443e-8ca5-c43a138c7b66',
            'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', -- Entity: Committees
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
         WHERE ID = '32e5aa87-3c1a-4e47-a3ad-949de29efc11'  OR 
               (EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1' AND Name = 'Committee')
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
            '32e5aa87-3c1a-4e47-a3ad-949de29efc11',
            '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', -- Entity: Terms
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

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '899B9F1F-0017-463B-9BD0-3BFF35D9939A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '899B9F1F-0017-463B-9BD0-3BFF35D9939A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '69021984-C498-4591-BC1C-DC7E8D9BBD12'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '35F3F541-69CC-4BAD-8E56-1AE8367FE64C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AD5095FC-94F5-420A-A034-427DCE44FE56'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C46F1E75-32A9-4829-9E38-C42B587C147A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4D227225-AC00-43DB-959F-B94ABDD33BB5'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '899B9F1F-0017-463B-9BD0-3BFF35D9939A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '35F3F541-69CC-4BAD-8E56-1AE8367FE64C'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'AD5095FC-94F5-420A-A034-427DCE44FE56'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'C46F1E75-32A9-4829-9E38-C42B587C147A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4D227225-AC00-43DB-959F-B94ABDD33BB5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2AF7F4BA-BFE9-4FF8-8781-DC8599B4A7E9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'AA7AB36D-6CC1-4F52-8F6C-4B5D9504935F'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '647FFD3B-F2A1-4C62-A586-991E7D4283E9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '96F0B29F-9C92-406B-BF75-C8640E30C7DB'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '1B4077B0-F486-4812-9F93-8DA3CA48D786'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AA7AB36D-6CC1-4F52-8F6C-4B5D9504935F'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '647FFD3B-F2A1-4C62-A586-991E7D4283E9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'AA7AB36D-6CC1-4F52-8F6C-4B5D9504935F'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '4B092636-0174-4277-925B-17B22E6BA23A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4B092636-0174-4277-925B-17B22E6BA23A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3287D6BD-BC9C-4B5F-9DE5-8C89C6B1AE7F'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E352951D-630D-4A57-894E-25A78402521E'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4B092636-0174-4277-925B-17B22E6BA23A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '3287D6BD-BC9C-4B5F-9DE5-8C89C6B1AE7F'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'C1EA7E3B-1B60-40C2-B874-81EEFC75692A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5131215D-C99F-46B1-83A8-6EC17313E561'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C1EA7E3B-1B60-40C2-B874-81EEFC75692A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'B020D553-C85E-400E-AF8F-4772EAA3A749'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6907A706-5A46-4CF1-B462-DBD2EA98984E'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5784CFDB-B13A-4809-932D-D1A6EAEBF013'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3C9A73E3-502E-4795-8E3B-B8457089CEED'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'C1EA7E3B-1B60-40C2-B874-81EEFC75692A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '6907A706-5A46-4CF1-B462-DBD2EA98984E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '5784CFDB-B13A-4809-932D-D1A6EAEBF013'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '3C9A73E3-502E-4795-8E3B-B8457089CEED'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '10ABE17E-3491-44EB-A7A3-EFCD51676F7C'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '10ABE17E-3491-44EB-A7A3-EFCD51676F7C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'ED09E7D0-B90C-491F-A09A-001841C68C4F'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '7FA8D89C-D2B5-4AA4-9F64-19288D2F5903'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '935660B8-B13B-4BA9-BA3D-5731D6291C3B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E62BF729-350E-46CB-AD98-B5D515441F3A'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '10ABE17E-3491-44EB-A7A3-EFCD51676F7C'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'ED09E7D0-B90C-491F-A09A-001841C68C4F'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D3FA6AA0-DB39-4FBB-B99C-52D8A65A7810'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7FA8D89C-D2B5-4AA4-9F64-19288D2F5903'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '935660B8-B13B-4BA9-BA3D-5731D6291C3B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'E62BF729-350E-46CB-AD98-B5D515441F3A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 18 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EDB72CEE-C690-44F1-8F80-AC4395A33777'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2478C714-2D3B-4509-A18F-90D3ACBC4BC0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '576EDA45-35AE-41B5-B4DC-C9A744275636'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '899B9F1F-0017-463B-9BD0-3BFF35D9939A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '82093026-C643-4198-86AF-309CD8A797E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Priority',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '35F3F541-69CC-4BAD-8E56-1AE8367FE64C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AD5095FC-94F5-420A-A034-427DCE44FE56'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E512D567-C562-4BA0-BDB1-C93BA3C4479E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C46F1E75-32A9-4829-9E38-C42B587C147A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned To',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8E20F89C-628E-446E-82DB-329F58A65C86'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assignee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4D227225-AC00-43DB-959F-B94ABDD33BB5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B936BF96-5AF4-4F72-94DC-6EB38A5CC829'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Responsibility',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assignor',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2AF7F4BA-BFE9-4FF8-8781-DC8599B4A7E9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '51757E1A-D188-4B2B-8DDC-B5463260027B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FBD4CCA1-3205-4C33-965C-243703D659E8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Due Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '69021984-C498-4591-BC1C-DC7E8D9BBD12'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completed At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B37848B1-25E2-4A3D-B4A1-32FB3132331E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completion Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E33D3C7A-B983-4C22-A284-5B50F5728F55'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-tasks */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-tasks', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '3E90C344-4933-4806-BF1F-3C6560194EAF'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('53d490de-5e92-4316-9f3d-16eb10e8b5c4', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'FieldCategoryInfo', '{"Action Core":{"icon":"fa fa-tasks","description":"Core details of the action item including title, description, priority, and current status."},"Assignment & Responsibility":{"icon":"fa fa-user-friends","description":"Information about the committee and users responsible for assigning and executing the action."},"Schedule & Progress":{"icon":"fa fa-calendar-alt","description":"Timing details, related meeting agenda, due dates, completion timestamp, and notes."},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields tracking record creation and updates."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('54c4f2ca-2847-42dc-bd16-00abda798eeb', '3E90C344-4933-4806-BF1F-3C6560194EAF', 'FieldCategoryIcons', '{"Action Core":"fa fa-tasks","Assignment & Responsibility":"fa fa-user-friends","Schedule & Progress":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '3E90C344-4933-4806-BF1F-3C6560194EAF'
      

/* Set categories for 10 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2FAF3816-EC9E-41E6-B93D-61ADF9C28FED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9E2DF1BC-6F97-4911-955E-399C4D3DE1E1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'User ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E740890C-5282-465E-83BF-690EE8BBB5C8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AA7AB36D-6CC1-4F52-8F6C-4B5D9504935F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Attendance Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '647FFD3B-F2A1-4C62-A586-991E7D4283E9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Joined At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '96F0B29F-9C92-406B-BF75-C8640E30C7DB'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Left At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1B4077B0-F486-4812-9F93-8DA3CA48D786'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '31D3F6DB-C459-4933-9A5F-125A93CD6D06'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9031F16A-A489-4DAF-B385-068EA13D5ED3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E7AA929F-C677-4A58-B111-DFCB587DBCDB'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar-check */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-check', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('896185b6-c79d-4e7d-932e-9ee073de9b93', 'E9E43080-DCA7-4FC6-BC99-36CA32823754', 'FieldCategoryInfo', '{"Attendance Details":{"icon":"fa fa-check-circle","description":"Core attendance information such as status, join/leave times, and notes."},"Participant & Meeting":{"icon":"fa fa-user-friends","description":"Identifiers linking the attendance record to a specific meeting and participant."},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields and primary identifier."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('1cceccf1-584d-4df6-ae84-a2662b5b854c', 'E9E43080-DCA7-4FC6-BC99-36CA32823754', 'FieldCategoryIcons', '{"Attendance Details":"fa fa-check-circle","Participant & Meeting":"fa fa-user-friends","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '429E9203-8946-4217-A5A1-D7D47C8AE786'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C7ECC380-ECD9-4186-93A9-C002391B1C6C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2A357AB1-16AD-40C6-9266-FE763D6A0F75'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Attributes',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4B092636-0174-4277-925B-17B22E6BA23A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Attributes',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3287D6BD-BC9C-4B5F-9DE5-8C89C6B1AE7F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Attributes',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E352951D-630D-4A57-894E-25A78402521E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Configuration',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F9525D70-2DC6-4C67-9573-A61167CAC60E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Configuration',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A116194F-7442-4E80-9F0B-01B1515446C3'
   AND AutoUpdateCategory = 1

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'E9E43080-DCA7-4FC6-BC99-36CA32823754'
      

/* Set entity icon to fa fa-file-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('e3f84797-85a8-412b-a2fa-aa56763a55c5', 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', 'FieldCategoryInfo', '{"Core Attributes":{"icon":"fa fa-info-circle","description":"Fundamental definition fields for the artifact type, such as name, description, and UI icon"},"Extension Configuration":{"icon":"fa fa-puzzle-piece","description":"Settings that link the artifact type to an optional extension entity for additional custom fields"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed automatically by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('cda2a42b-1c08-43b5-8294-3916591ea1f8', 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665', 'FieldCategoryIcons', '{"Core Attributes":"fa fa-info-circle","Extension Configuration":"fa fa-puzzle-piece","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'CEAA52CB-5AD8-4953-A89B-1FB670AC6665'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '648FE03F-D125-4C51-B452-F82D03E91A89'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AEA623E3-46B9-4CB0-85BA-474184C073C6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E4C82BBA-6395-4BA6-BF23-4D0414B76929'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2EDAAE07-35BA-4311-82DF-6A5605D3E9B6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5131215D-C99F-46B1-83A8-6EC17313E561'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C1EA7E3B-1B60-40C2-B874-81EEFC75692A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '51DCFE4A-BFE0-4005-8241-2C3B6BBC0FE8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Item Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6907A706-5A46-4CF1-B462-DBD2EA98984E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Item Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5784CFDB-B13A-4809-932D-D1A6EAEBF013'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation & Resources',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AE8DB5C3-1DAF-437F-A89E-26537C3EAA38'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation & Resources',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3C9A73E3-502E-4795-8E3B-B8457089CEED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation & Resources',
       GeneratedFormSection = 'Category',
       DisplayName = 'Duration Minutes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B020D553-C85E-400E-AF8F-4772EAA3A749'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation & Resources',
       GeneratedFormSection = 'Category',
       DisplayName = 'Related Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '2B476C37-D370-45A8-ABFA-34CDA25E10C9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation & Resources',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '74C7586A-DC7E-47E4-95D8-635E0DA42C2C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A06505EB-AF37-405B-AFF8-D2342B7AF642'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E65F9D57-9D84-4489-ADD8-8F39E25B2D56'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar-check */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-check', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '4151CF22-6113-4EB7-A68B-4FCF507076E9'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('0a90969f-3361-4849-b097-258c52b74de7', '4151CF22-6113-4EB7-A68B-4FCF507076E9', 'FieldCategoryInfo', '{"Agenda Structure":{"icon":"fa fa-sitemap","description":"Hierarchy and ordering information linking agenda items to meetings and parent items"},"Item Details":{"icon":"fa fa-file-alt","description":"Core descriptive fields such as title, description, type, and current status"},"Presentation & Resources":{"icon":"fa fa-chalkboard-teacher","description":"Presenter information, timing, attached documents, and discussion notes"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('ccceb111-9983-4fdb-a6e8-3daddde56654', '4151CF22-6113-4EB7-A68B-4FCF507076E9', 'FieldCategoryIcons', '{"Agenda Structure":"fa fa-sitemap","Item Details":"fa fa-file-alt","Presentation & Resources":"fa fa-chalkboard-teacher","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '4151CF22-6113-4EB7-A68B-4FCF507076E9'
      

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EDBAEB25-3A3E-496B-8C28-E166025FBEFF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A3EA0422-7D53-4BB5-950D-FE9FB5CDFF35'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '79C4820A-ADFD-4415-82F8-6E1FAC7A4FC0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BF2ED164-1264-4148-8F91-EB0365B732C6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Action Item ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '78C2B798-24B5-431A-94A9-BFBE47C3C1F2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '10ABE17E-3491-44EB-A7A3-EFCD51676F7C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3C34FA9-1F1B-41AF-AB6F-6438EE23881A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AA70CD20-6FAB-4B89-BFCE-981D908B963F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '935660B8-B13B-4BA9-BA3D-5731D6291C3B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'ED09E7D0-B90C-491F-A09A-001841C68C4F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'External ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3FA6AA0-DB39-4FBB-B99C-52D8A65A7810'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = 'FD387711-0B8C-4520-AC3A-12EAAC2E9C92'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'MIME Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D6951AD2-1C7B-4687-AF80-679516A01BAD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Storage Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'File Size',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '39AC244C-FF99-4918-A996-EBE526E69DDC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '68AF3F33-A826-480F-8F71-B6DA1F71E39F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E62BF729-350E-46CB-AD98-B5D515441F3A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D59364FA-6411-4E1F-8BDB-7312F9002C5E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C6490984-6F63-4192-B21D-449DC686D4FB'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7FA8D89C-D2B5-4AA4-9F64-19288D2F5903'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-paperclip */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-paperclip', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('9025cd96-f45d-472f-a540-ba4bff572397', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'FieldCategoryInfo', '{"Artifact Details":{"icon":"fa fa-file-alt","description":"Core information describing the artifact, such as title, description, and type"},"Storage Information":{"icon":"fa fa-cloud","description":"Details about where the artifact is stored, including provider, external ID, URL, MIME type, and size"},"Associations":{"icon":"fa fa-link","description":"Optional links connecting the artifact to committees, meetings, agenda items, or action items"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed fields for identification, audit timestamps, and uploader information"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('729b2a8f-97eb-48d3-ad7f-b19858ec0269', '38268920-BB6D-4CA3-A8D4-4E1650136C4F', 'FieldCategoryIcons', '{"Artifact Details":"fa fa-file-alt","Storage Information":"fa fa-cloud","Associations":"fa fa-link","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: supporting, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '38268920-BB6D-4CA3-A8D4-4E1650136C4F'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '53F490ED-6C6D-4607-B737-5BC6FF18B2FF'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '53F490ED-6C6D-4607-B737-5BC6FF18B2FF'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F499C30C-80CD-426F-A9CA-8688A12E2E19'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '69277535-1854-4FC3-9072-9E0855A80922'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '73F04F4D-C02A-4290-A4FE-879C6CF43929'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E42B55D7-F207-4555-BB13-168DA626408E'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '53F490ED-6C6D-4607-B737-5BC6FF18B2FF'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'FE5078BD-A381-4E00-8AD4-4F8D48617063'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F499C30C-80CD-426F-A9CA-8688A12E2E19'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'E42B55D7-F207-4555-BB13-168DA626408E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '13424FC5-9799-497E-84C6-BDA1038B989A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '66A63DA0-D211-4316-A777-99D387D09EED'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'B51CE2B0-E1D5-4FB6-852D-241415367298'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5176CA81-9F17-433C-AE92-222F5A3CF1D8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '452F82DD-53A7-4A15-9D6D-FDED4E9785F3'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'EFDBEF8A-3D1D-4E42-B838-63C13992BC81'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '66A63DA0-D211-4316-A777-99D387D09EED'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0743122B-A026-450B-88A3-CD5DA8980AE8'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '452F82DD-53A7-4A15-9D6D-FDED4E9785F3'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'EFDBEF8A-3D1D-4E42-B838-63C13992BC81'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '66A63DA0-D211-4316-A777-99D387D09EED'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0743122B-A026-450B-88A3-CD5DA8980AE8'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'B3868F65-1A82-44AC-BB86-AE4C211AA371'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'CAA978B3-C4EF-443F-887E-CBDB76E3C98E'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'CAA978B3-C4EF-443F-887E-CBDB76E3C98E'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AACE04DD-A26E-48FE-9428-F87066BFB9AF'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D3A3DEC3-8AFF-4B2A-B250-8462BD8DB9EE'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '43688F9E-D65E-4943-8322-B69F2047F9B9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '061BE887-A91B-4F23-B4FD-4D4FD1290C43'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '302EA50C-DC0F-4964-AC2E-31D8F5AE201E'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'CAA978B3-C4EF-443F-887E-CBDB76E3C98E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '33D918AB-FC3E-4643-914F-3EA0F2364884'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4FDBFD4A-4F59-45AC-A916-859271104EB9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'A26AC8BC-2939-43E2-87DC-C571BB23F07E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '061BE887-A91B-4F23-B4FD-4D4FD1290C43'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '302EA50C-DC0F-4964-AC2E-31D8F5AE201E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '5D758641-8C44-4C62-B279-A42309256C92'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5D758641-8C44-4C62-B279-A42309256C92'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '263AB9CE-2501-4EBA-AC7A-9C99F0A6F098'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '5D758641-8C44-4C62-B279-A42309256C92'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '8A626D61-46C3-48FA-AADE-D7781855BB8E'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'B5C43D18-D385-4D60-8719-B9B701007D06'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8A626D61-46C3-48FA-AADE-D7781855BB8E'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '14B613DD-1C88-48ED-9A98-A1BA051C932B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C091342C-7567-4999-A8F8-D91FE06C5AA2'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8A626D61-46C3-48FA-AADE-D7781855BB8E'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '14B613DD-1C88-48ED-9A98-A1BA051C932B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'C091342C-7567-4999-A8F8-D91FE06C5AA2'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6F417242-E8CF-4EB8-93C4-25319CE3DE8E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9AD95461-28D3-4093-BEA6-5669F8E2C06D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '11F7F5E2-435D-4B0F-8531-F26C827FD884'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8A626D61-46C3-48FA-AADE-D7781855BB8E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '20D4EA8D-AEEE-4EA9-8604-1CA64C7B9B25'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B5C43D18-D385-4D60-8719-B9B701007D06'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CDDD6394-6868-4250-A7E4-DCE2B5D32922'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Session & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '81D18AC6-015D-4251-A004-274AC8F12572'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Session & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '204773F8-752C-4B41-B1C7-44DA08891688'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Session & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Moved By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B88842C9-CBCA-4EAA-875B-264EEAEC2B28'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Session & Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Seconded By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3B4969BB-D331-4DDE-A7B4-13D4F72ECE97'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '14B613DD-1C88-48ED-9A98-A1BA051C932B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result Summary',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C091342C-7567-4999-A8F8-D91FE06C5AA2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Yes Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F9F5EB96-6194-4009-AEDB-BD539ADCB559'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'No Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EC196124-91E8-4E5D-97E3-E60D2CDD9D9B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Outcome',
       GeneratedFormSection = 'Category',
       DisplayName = 'Abstain Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '901A886C-8D97-45CB-AC26-53DADE59DBB2'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-gavel */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-gavel', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('b38198f6-3d33-4e7e-bee7-e951670f019b', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'FieldCategoryInfo', '{"Motion Information":{"icon":"fa fa-file-alt","description":"Core details of the motion including title, description, order, and notes"},"Session & Participants":{"icon":"fa fa-users","description":"Context of the meeting and agenda item, plus members who moved and seconded the motion"},"Voting Outcome":{"icon":"fa fa-check-circle","description":"Results of the vote, including status, summary, and individual vote counts"},"System Metadata":{"icon":"fa fa-cog","description":"Technical fields for record identification and audit timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('eb9334c6-c228-46c8-9c41-1bf50892abe9', '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3', 'FieldCategoryIcons', '{"Motion Information":"fa fa-file-alt","Session & Participants":"fa fa-users","Voting Outcome":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '962A7DF7-2C9B-4E8A-9517-9BC889C3B8A3'
      

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AEA46008-BF67-464A-92C5-0D172BBC0E61'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '71CD13C0-6EEF-460C-B4C0-B75BDCC349F1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CB27708C-ACE8-48D2-912A-88EC81831AF8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F4C89AC2-2E65-4C30-AE72-894E40D0EE37'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '302EA50C-DC0F-4964-AC2E-31D8F5AE201E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CAA978B3-C4EF-443F-887E-CBDB76E3C98E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5B77D367-16F2-4E21-839F-7354E1B9E4D2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Basics',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '061BE887-A91B-4F23-B4FD-4D4FD1290C43'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AACE04DD-A26E-48FE-9428-F87066BFB9AF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3A3DEC3-8AFF-4B2A-B250-8462BD8DB9EE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'Time Zone',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6D04A486-0D3E-4353-B47E-14150E048963'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '43688F9E-D65E-4943-8322-B69F2047F9B9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location Details',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '33D918AB-FC3E-4643-914F-3EA0F2364884'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4FDBFD4A-4F59-45AC-A916-859271104EB9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Video & Recording',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Meeting ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A26AC8BC-2939-43E2-87DC-C571BB23F07E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Video & Recording',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Join URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = 'B79D3CA3-5EEB-4DBB-8409-903890C32332'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Video & Recording',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Recording URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '710506CB-8A5F-4726-B330-021D450BAA8A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Video & Recording',
       GeneratedFormSection = 'Category',
       DisplayName = 'Transcript URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '458A785B-571F-42F4-814C-F6A73DD28751'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Video & Recording',
       GeneratedFormSection = 'Category',
       DisplayName = 'Calendar Event ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '88BA9B26-3204-4153-A21F-F489843264F2'
   AND AutoUpdateCategory = 1

/* Set categories for 17 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5DF40DA0-F886-4523-A285-5B0C980685E8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4C578023-78DF-4665-A0EA-6114E8A2C9DA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5E02DFF5-7C58-485C-B12F-54035236CB05'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '53F490ED-6C6D-4607-B737-5BC6FF18B2FF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B4A8641E-B057-48B1-B1B0-C48DB66A432D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Mission Statement',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FE5078BD-A381-4E00-8AD4-4F8D48617063'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F499C30C-80CD-426F-A9CA-8688A12E2E19'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Public',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '69277535-1854-4FC3-9072-9E0855A80922'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Organization',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B6380FEE-BF2C-43D3-9B12-FA000304F3B2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Type ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '94A230BC-B4EC-4E17-8C72-C8A2B428E6D7'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E42B55D7-F207-4555-BB13-168DA626408E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '182F4A2A-81DE-48AB-B60F-62868D7F0213'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '13424FC5-9799-497E-84C6-BDA1038B989A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Structure & Relationships',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '40E1B1B1-6B5A-443E-8CA5-C43A138C7B66'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Documents',
       GeneratedFormSection = 'Category',
       DisplayName = 'Charter Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '5F2699AF-C7B1-4602-B814-144254F609F4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Documents',
       GeneratedFormSection = 'Category',
       DisplayName = 'Formation Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '73F04F4D-C02A-4290-A4FE-879C6CF43929'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Documents',
       GeneratedFormSection = 'Category',
       DisplayName = 'Dissolution Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6E5E1B98-A6AD-4F2C-ADAF-215335172ECB'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar-check */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-check', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A'
            

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minute Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7A7AEC30-6A42-4EFE-88B0-3F2B33EAAFCA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minute Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '56FC0715-A63F-4997-BDBD-094BC9823CA2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minute Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AA46BB09-EE8F-4FFD-B049-804E8687420A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approval Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5D758641-8C44-4C62-B279-A42309256C92'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '263AB9CE-2501-4EBA-AC7A-9C99F0A6F098'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved By Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '665F19C2-B4FA-4E3E-A595-F6D1440F132E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A6B955A3-62FC-4A94-847A-DE7FEAD9F3B0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E7103E80-4623-4E39-BA49-2A34A92D741F'
   AND AutoUpdateCategory = 1

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('7a5a325f-27db-4d62-8fa6-598903a88be6', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', 'FieldCategoryInfo', '{"Meeting Basics":{"icon":"fa fa-clipboard-list","description":"Core identifying information about the meeting, including title, description, status, and associated committee."},"Schedule & Timing":{"icon":"fa fa-calendar","description":"Date, time, and timezone details that define when the meeting occurs."},"Venue & Access":{"icon":"fa fa-map-marker-alt","description":"Physical or virtual location settings, including format, address, and video platform."},"Video & Recording":{"icon":"fa fa-video","description":"Video‑conference identifiers, join links, recordings, transcripts, and calendar integration."},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields used by the system for tracking record creation and updates."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('3596fb2e-a97e-4df7-81ce-c95f1824ad80', '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A', 'FieldCategoryIcons', '{"Meeting Basics":"fa fa-clipboard-list","Schedule & Timing":"fa fa-calendar","Venue & Access":"fa fa-map-marker-alt","Video & Recording":"fa fa-video","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9'
            

/* Set entity icon to fa fa-clipboard */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-clipboard', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '2013541C-019F-43AC-A5CB-2A900D6C8529'
            

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '4F0E90B8-1200-44B4-B0A0-ABEA0063A38A'
      

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('a5e4c272-6994-47d6-8d23-eaba76be5a94', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', 'FieldCategoryInfo', '{"Committee Details":{"icon":"fa fa-info-circle","description":"Core descriptive attributes of the committee such as name, description, mission, status, and visibility"},"Structure & Relationships":{"icon":"fa fa-sitemap","description":"Hierarchical and organizational links, including types and parent committee relationships"},"Governance & Documents":{"icon":"fa fa-file-alt","description":"Governance information, charter document link, and key formation or dissolution dates"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields and primary identifier used by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('649ba8f6-0893-4d9b-bce8-a066d398865f', '2013541C-019F-43AC-A5CB-2A900D6C8529', 'FieldCategoryInfo', '{"Minute Record":{"icon":"fa fa-file-alt","description":"Core details of the minutes including identifier, linked artifact, and freeform notes."},"Approval Tracking":{"icon":"fa fa-check-circle","description":"Information about the approval status, timestamps, and related meeting."},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit timestamps."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('10319d91-7575-46d6-8f8a-0b5dbe975d77', 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9', 'FieldCategoryIcons', '{"Committee Details":"fa fa-info-circle","Structure & Relationships":"fa fa-sitemap","Governance & Documents":"fa fa-file-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('f9c18a15-2694-4cea-b051-5f9fc0c59df5', '2013541C-019F-43AC-A5CB-2A900D6C8529', 'FieldCategoryIcons', '{"Minute Record":"fa fa-file-alt","Approval Tracking":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: supporting, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '2013541C-019F-43AC-A5CB-2A900D6C8529'
      

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'DC2089E8-354B-4152-8AD1-E4FE92D1C7D9'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2D13E307-05AC-4A54-99BD-DD55112CAE9A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CC3B28FF-FB12-460C-9A8C-3F52E0D39870'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EFDBEF8A-3D1D-4E42-B838-63C13992BC81'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BCFEEBAD-4142-4766-8CCD-5E41E7C354B1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '66A63DA0-D211-4316-A777-99D387D09EED'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '98F28B96-B361-49DD-A9B7-F5CF2C1D01B2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0743122B-A026-450B-88A3-CD5DA8980AE8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B32F8B39-C32D-44C5-A048-DC5C538C1254'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Participants',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B3868F65-1A82-44AC-BB86-AE4C211AA371'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Duration & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B51CE2B0-E1D5-4FB6-852D-241415367298'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Duration & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5176CA81-9F17-433C-AE92-222F5A3CF1D8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Duration & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '452F82DD-53A7-4A15-9D6D-FDED4E9785F3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Duration & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Reason',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2F558AE3-601B-4068-82C5-F95DA9D752A9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Duration & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FADFCA36-3A6D-4DF6-B916-D33A2B8DEE26'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '137005AC-9C79-4B77-ABE5-4C1B9D5D687B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0E8EC2DF-D67C-4609-B1D4-E110FDAD6430'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-handshake */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-handshake', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '0C1A3F45-4826-422C-A738-C8CDD73EF216'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('844e4b60-f7e6-4def-b91a-7c84593019fc', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'FieldCategoryInfo', '{"Membership Participants":{"icon":"fa fa-users","description":"Identifiers and descriptive names linking a user, role, committee, and optional term together"},"Membership Duration & Status":{"icon":"fa fa-calendar-alt","description":"Temporal data and current status information that defines the life‑cycle of the membership"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields tracking creation and modification timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('30ba3b59-fc37-4531-a622-a555f57510e5', '0C1A3F45-4826-422C-A738-C8CDD73EF216', 'FieldCategoryIcons', '{"Membership Participants":"fa fa-users","Membership Duration & Status":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '0C1A3F45-4826-422C-A738-C8CDD73EF216'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'BEAD29F3-100C-4D7D-9C09-8D4E75CB3793'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'BEAD29F3-100C-4D7D-9C09-8D4E75CB3793'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C177555B-2012-4482-9FB0-CFBD6771A4B0'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E128500B-FF90-41C6-BD37-99C40B983425'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '32E5AA87-3C1A-4E47-A3AD-949DE29EFC11'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'BEAD29F3-100C-4D7D-9C09-8D4E75CB3793'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '32E5AA87-3C1A-4E47-A3AD-949DE29EFC11'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '0E48AD2A-F596-46A9-8169-7406F2DC6A6A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0E48AD2A-F596-46A9-8169-7406F2DC6A6A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '29AB93CF-8985-40DB-9370-0DC42D84F890'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'EF04B44F-1A57-46FC-9B3E-F519FEE058E9'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0E48AD2A-F596-46A9-8169-7406F2DC6A6A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '29AB93CF-8985-40DB-9370-0DC42D84F890'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'F4F9286E-390F-4577-B3F5-5002876081A0'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F4F9286E-390F-4577-B3F5-5002876081A0'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4A738C2C-4E78-43B5-9577-5CDDF28EE2DD'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F4F9286E-390F-4577-B3F5-5002876081A0'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'C5C78AA5-7CE7-4E41-854F-82FA0AC161AA'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C5C78AA5-7CE7-4E41-854F-82FA0AC161AA'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6D03949D-ABDB-4E87-98E0-616624F75BFC'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3587903D-8015-43B0-8BA3-ADEE78C50D43'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'DF885889-9EA9-4DD9-BC6C-51E0D87E00F2'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'C5C78AA5-7CE7-4E41-854F-82FA0AC161AA'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '9AF4E5DE-D748-4C05-A408-52A15B15D89D'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EF2D3DB4-9FB0-4CC4-A8E2-170EF0F6B26D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0E48AD2A-F596-46A9-8169-7406F2DC6A6A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '29AB93CF-8985-40DB-9370-0DC42D84F890'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Is Standards',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B69BF7E3-8167-4398-9990-18A1CBAF3E5C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Term Months',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AE3088C8-5F3F-4472-8C0A-6A6C3058C5E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EF04B44F-1A57-46FC-9B3E-F519FEE058E9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D9162FCC-2188-43E0-B6AA-F4660C281071'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '500C629C-6AD8-43F8-BD7F-52B15AED7CDA'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('3e5ba8e3-6069-4ddd-8012-8f08573f8d06', 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', 'FieldCategoryInfo', '{"Committee Type Details":{"icon":"fa fa-tag","description":"Key attributes that define each committee type, including name, description, standards flag, default term length, and UI icon"},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit and tracking fields"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('9c902590-1191-4cc0-af5d-ac2bf7f96862', 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49', 'FieldCategoryIcons', '{"Committee Type Details":"fa fa-tag","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'CBB5E3E6-89C1-40E6-96C7-EEE986A17E49'
      

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identifiers',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '368EAF24-F81D-4600-ADCD-63A96BC2463E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identifiers',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '93D0067B-3D57-46A2-B525-1D66A17563E8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Identifiers',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '32E5AA87-3C1A-4E47-A3AD-949DE29EFC11'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BEAD29F3-100C-4D7D-9C09-8D4E75CB3793'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C177555B-2012-4482-9FB0-CFBD6771A4B0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E128500B-FF90-41C6-BD37-99C40B983425'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Term Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D1F3F05D-9431-4090-8FEC-E2B3FC1281D7'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '18FAAD55-B3E1-419B-9B45-0049D54555F7'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5E3B0F15-B6FC-47C0-9598-13B1290BE02A'
   AND AutoUpdateCategory = 1

/* Set categories for 7 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Motion',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7E3DE908-0405-42D6-A668-6E8CB0E11563'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Member',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FFF8D590-D518-473C-854E-AE6278055322'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Vote',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F4F9286E-390F-4577-B3F5-5002876081A0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4A738C2C-4E78-43B5-9577-5CDDF28EE2DD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5128AF3F-3D5D-4DA2-9F52-9FF6E6EF24F7'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3C3F21A1-0B87-427E-BFAF-D4CBC1F390E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '058E9514-988D-43EF-8647-E0E8FD2F0E23'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-balance-scale */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-balance-scale', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291'
            

/* Set entity icon to fa fa-calendar */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('155f81cc-74c4-48b8-ac67-b23fd8cfe024', 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', 'FieldCategoryInfo', '{"Vote Record":{"icon":"fa fa-balance-scale","description":"Core voting information including motion, member, selected option, and any notes"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit and identifier fields"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('59b88e6b-67af-4a03-91b9-1679fc8c56eb', '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', 'FieldCategoryInfo', '{"Identifiers":{"icon":"fa fa-key","description":"Primary key and linking identifiers for the term and its committee"},"Term Details":{"icon":"fa fa-calendar-alt","description":"Core information about the term including name, dates, and current status"},"System Metadata":{"icon":"fa fa-cog","description":"Audit timestamps for record creation and last update"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('266f9c80-4492-4aed-81ba-11e02f1f7584', 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291', 'FieldCategoryIcons', '{"Vote Record":"fa fa-balance-scale","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'A9F591E7-8EC5-4AB2-A8DE-83CDEBF3A291'
      

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('bea2421d-ea84-49fd-87cd-0917fbd1658e', '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1', 'FieldCategoryIcons', '{"Identifiers":"fa fa-key","Term Details":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '43AA9286-A5F4-4BC8-9077-E72CA2CAD6C1'
      

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '76046B90-013B-42D5-9489-46015BD94F53'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C5C78AA5-7CE7-4E41-854F-82FA0AC161AA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9AF4E5DE-D748-4C05-A408-52A15B15D89D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Display Order',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DF885889-9EA9-4DD9-BC6C-51E0D87E00F2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Officer Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6D03949D-ABDB-4E87-98E0-616624F75BFC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Voting Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3587903D-8015-43B0-8BA3-ADEE78C50D43'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Permissions',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B70C5DD7-B837-443E-9BB5-289B146D3286'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F357E8A4-F0F8-48F9-B23C-937B7D706E9B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '79CE4E16-13CD-43FC-8675-AE917940F5B3'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '32C673DD-8F97-4753-8E4A-1419195AC68B'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('aa26f3f3-3809-4b0e-b091-ad142d420580', '32C673DD-8F97-4753-8E4A-1419195AC68B', 'FieldCategoryInfo', '{"Role Details":{"icon":"fa fa-id-badge","description":"Core information defining the role name, description, identifier, and display order"},"Role Settings":{"icon":"fa fa-sliders-h","description":"Configuration flags and default permissions for the role"},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('52ce3de3-ed7a-4cc4-8f07-62d102ddc885', '32C673DD-8F97-4753-8E4A-1419195AC68B', 'FieldCategoryIcons', '{"Role Details":"fa fa-id-badge","Role Settings":"fa fa-sliders-h","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '32C673DD-8F97-4753-8E4A-1419195AC68B'
      

