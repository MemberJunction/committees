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
         '8c4deb50-eaa3-4d1d-96fa-69855e94fabb',
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
                       VALUES ('76059f1b-43c4-4bb7-ad13-bb344d3b2414', 'Committees', 'Generated for schema', 'Committees', 'committees', 1)

/* SQL generated to add new entity Roles__Committees to application ID: '76059f1b-43c4-4bb7-ad13-bb344d3b2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059f1b-43c4-4bb7-ad13-bb344d3b2414', '8c4deb50-eaa3-4d1d-96fa-69855e94fabb', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059f1b-43c4-4bb7-ad13-bb344d3b2414'))

/* SQL generated to add new permission for entity Roles__Committees for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('8c4deb50-eaa3-4d1d-96fa-69855e94fabb', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Roles__Committees for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('8c4deb50-eaa3-4d1d-96fa-69855e94fabb', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Roles__Committees for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('8c4deb50-eaa3-4d1d-96fa-69855e94fabb', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'dab17c3a-3af0-44d2-8435-6f1bb9bd63c6',
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
   

/* SQL generated to add new entity Memberships to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'dab17c3a-3af0-44d2-8435-6f1bb9bd63c6', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Memberships for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dab17c3a-3af0-44d2-8435-6f1bb9bd63c6', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Memberships for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dab17c3a-3af0-44d2-8435-6f1bb9bd63c6', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Memberships for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('dab17c3a-3af0-44d2-8435-6f1bb9bd63c6', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '9dd138ce-1012-426c-905c-21cc127ecf54',
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
   

/* SQL generated to add new entity Meetings to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '9dd138ce-1012-426c-905c-21cc127ecf54', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Meetings for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9dd138ce-1012-426c-905c-21cc127ecf54', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Meetings for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9dd138ce-1012-426c-905c-21cc127ecf54', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Meetings for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9dd138ce-1012-426c-905c-21cc127ecf54', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'a060eedc-4ce6-4f98-b5a0-6cc827a07f74',
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
   

/* SQL generated to add new entity Agenda Items to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'a060eedc-4ce6-4f98-b5a0-6cc827a07f74', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Agenda Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a060eedc-4ce6-4f98-b5a0-6cc827a07f74', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Agenda Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a060eedc-4ce6-4f98-b5a0-6cc827a07f74', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Agenda Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a060eedc-4ce6-4f98-b5a0-6cc827a07f74', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '0bea5a05-1563-40c8-a66d-5818a6dc0afb',
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
   

/* SQL generated to add new entity Attendances to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '0bea5a05-1563-40c8-a66d-5818a6dc0afb', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Attendances for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0bea5a05-1563-40c8-a66d-5818a6dc0afb', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Attendances for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0bea5a05-1563-40c8-a66d-5818a6dc0afb', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Attendances for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('0bea5a05-1563-40c8-a66d-5818a6dc0afb', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '58956235-749e-4c97-a218-eb3414648113',
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
   

/* SQL generated to add new entity Action Items to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '58956235-749e-4c97-a218-eb3414648113', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Action Items for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('58956235-749e-4c97-a218-eb3414648113', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Action Items for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('58956235-749e-4c97-a218-eb3414648113', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Action Items for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('58956235-749e-4c97-a218-eb3414648113', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '9ca38b49-7a62-4e36-9e83-beca984024e5',
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
   

/* SQL generated to add new entity Artifact Types to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '9ca38b49-7a62-4e36-9e83-beca984024e5', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Artifact Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9ca38b49-7a62-4e36-9e83-beca984024e5', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Artifact Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9ca38b49-7a62-4e36-9e83-beca984024e5', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Artifact Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('9ca38b49-7a62-4e36-9e83-beca984024e5', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'c56ce165-9e35-443b-a834-1c5dcb985655',
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
   

/* SQL generated to add new entity Artifacts to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'c56ce165-9e35-443b-a834-1c5dcb985655', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Artifacts for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c56ce165-9e35-443b-a834-1c5dcb985655', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Artifacts for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c56ce165-9e35-443b-a834-1c5dcb985655', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Artifacts for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c56ce165-9e35-443b-a834-1c5dcb985655', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'a272b72a-c037-4949-99a6-8977f8b65f8a',
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
   

/* SQL generated to add new entity Minutes to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'a272b72a-c037-4949-99a6-8977f8b65f8a', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Minutes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a272b72a-c037-4949-99a6-8977f8b65f8a', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Minutes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a272b72a-c037-4949-99a6-8977f8b65f8a', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Minutes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a272b72a-c037-4949-99a6-8977f8b65f8a', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '2f36056d-2c3d-48ce-91fb-8851116b56ec',
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
   

/* SQL generated to add new entity Motions to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '2f36056d-2c3d-48ce-91fb-8851116b56ec', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Motions for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f36056d-2c3d-48ce-91fb-8851116b56ec', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Motions for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f36056d-2c3d-48ce-91fb-8851116b56ec', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Motions for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('2f36056d-2c3d-48ce-91fb-8851116b56ec', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'c358aa46-ad4f-4a39-97b1-be8d39961a81',
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
   

/* SQL generated to add new entity Votes to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'c358aa46-ad4f-4a39-97b1-be8d39961a81', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Votes for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c358aa46-ad4f-4a39-97b1-be8d39961a81', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Votes for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c358aa46-ad4f-4a39-97b1-be8d39961a81', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Votes for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('c358aa46-ad4f-4a39-97b1-be8d39961a81', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '5aaf7977-1a4b-4c1a-906d-f503eefc40e1',
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
   

/* SQL generated to add new entity Types to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '5aaf7977-1a4b-4c1a-906d-f503eefc40e1', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Types for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('5aaf7977-1a4b-4c1a-906d-f503eefc40e1', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Types for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('5aaf7977-1a4b-4c1a-906d-f503eefc40e1', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Types for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('5aaf7977-1a4b-4c1a-906d-f503eefc40e1', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         '33eef424-1ffd-42a5-a5fe-790578057915',
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
   

/* SQL generated to add new entity Committees to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', '33eef424-1ffd-42a5-a5fe-790578057915', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Committees for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('33eef424-1ffd-42a5-a5fe-790578057915', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Committees for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('33eef424-1ffd-42a5-a5fe-790578057915', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Committees for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('33eef424-1ffd-42a5-a5fe-790578057915', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

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
         'a2ae180e-ebe2-436e-b894-44e1f6419c79',
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
   

/* SQL generated to add new entity Terms to application ID: '76059F1B-43C4-4BB7-AD13-BB344D3B2414' */
INSERT INTO ${flyway:defaultSchema}.ApplicationEntity
                                       (ApplicationID, EntityID, Sequence) VALUES
                                       ('76059F1B-43C4-4BB7-AD13-BB344D3B2414', 'a2ae180e-ebe2-436e-b894-44e1f6419c79', (SELECT ISNULL(MAX(Sequence),0)+1 FROM ${flyway:defaultSchema}.ApplicationEntity WHERE ApplicationID = '76059F1B-43C4-4BB7-AD13-BB344D3B2414'))

/* SQL generated to add new permission for entity Terms for role UI */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a2ae180e-ebe2-436e-b894-44e1f6419c79', 'E0AFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 0, 0, 0)

/* SQL generated to add new permission for entity Terms for role Developer */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a2ae180e-ebe2-436e-b894-44e1f6419c79', 'DEAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 0)

/* SQL generated to add new permission for entity Terms for role Integration */
INSERT INTO ${flyway:defaultSchema}.EntityPermission
                                                   (EntityID, RoleID, CanRead, CanCreate, CanUpdate, CanDelete) VALUES
                                                   ('a2ae180e-ebe2-436e-b894-44e1f6419c79', 'DFAFCCEC-6A37-EF11-86D4-000D3A4E707E', 1, 1, 1, 1)

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Artifact */
ALTER TABLE [Committees].[Artifact] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Meeting */
ALTER TABLE [Committees].[Meeting] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Term */
ALTER TABLE [Committees].[Term] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Attendance */
ALTER TABLE [Committees].[Attendance] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Role */
ALTER TABLE [Committees].[Role] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.AgendaItem */
ALTER TABLE [Committees].[AgendaItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Membership */
ALTER TABLE [Committees].[Membership] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Committee */
ALTER TABLE [Committees].[Committee] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Motion */
ALTER TABLE [Committees].[Motion] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Minute */
ALTER TABLE [Committees].[Minute] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Vote */
ALTER TABLE [Committees].[Vote] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ArtifactType */
ALTER TABLE [Committees].[ArtifactType] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.ActionItem */
ALTER TABLE [Committees].[ActionItem] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_CreatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_CreatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to add special date field __mj_UpdatedAt to entity Committees.Type */
ALTER TABLE [Committees].[Type] ADD __mj_UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE()

/* SQL text to insert new entity field */

      IF NOT EXISTS (
         SELECT 1 FROM [${flyway:defaultSchema}].EntityField 
         WHERE ID = '2b8e03fe-e927-4785-a16a-9439c6739362'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2b8e03fe-e927-4785-a16a-9439c6739362',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'f228db95-98f1-4941-8d18-9308c0610db4'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f228db95-98f1-4941-8d18-9308c0610db4',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = 'b3ecf32f-47f6-418b-bb7e-2579310654d6'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b3ecf32f-47f6-418b-bb7e-2579310654d6',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = 'b29a521a-bfc8-4b6b-924f-672b27da9ffc'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b29a521a-bfc8-4b6b-924f-672b27da9ffc',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74',
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
         WHERE ID = '562a2e00-4538-4596-8852-9d64aa23494d'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'ActionItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '562a2e00-4538-4596-8852-9d64aa23494d',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
            '58956235-749E-4C97-A218-EB3414648113',
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
         WHERE ID = '0487c5ab-be52-4f03-a003-1216d6d181d8'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0487c5ab-be52-4f03-a003-1216d6d181d8',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '93ad3cf3-ec1a-4f07-ad87-ed6e8195276f'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '93ad3cf3-ec1a-4f07-ad87-ed6e8195276f',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'f87c6fae-5fa7-439b-a5bd-c8bf6cbf4f12'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'ArtifactTypeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f87c6fae-5fa7-439b-a5bd-c8bf6cbf4f12',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
            '9CA38B49-7A62-4E36-9E83-BECA984024E5',
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
         WHERE ID = 'eac7579c-f9ce-4b6d-8872-9203a0e5a4ba'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'Provider')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'eac7579c-f9ce-4b6d-8872-9203a0e5a4ba',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '60d9c48e-1d0d-4618-aa36-7de51690c82b'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'ExternalID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '60d9c48e-1d0d-4618-aa36-7de51690c82b',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'd37a0576-6152-43da-9bc7-1593751b2c76'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'URL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd37a0576-6152-43da-9bc7-1593751b2c76',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '03c32276-c213-4250-a5c0-9910f737fb8c'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'MimeType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '03c32276-c213-4250-a5c0-9910f737fb8c',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'fdf0eebb-600b-4b1e-8f84-7d7c9462e6f9'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'FileSize')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'fdf0eebb-600b-4b1e-8f84-7d7c9462e6f9',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '62f03116-a54b-4feb-8eb0-7ce19964314e'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'UploadedByUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '62f03116-a54b-4feb-8eb0-7ce19964314e',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '9d262407-cf57-492f-807a-23d8534e1c95'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9d262407-cf57-492f-807a-23d8534e1c95',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '8b841447-ea1e-4d2e-ae39-f13406488c7e'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8b841447-ea1e-4d2e-ae39-f13406488c7e',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'e9fe3749-4eb3-40cb-a05d-89c0bec6f215'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e9fe3749-4eb3-40cb-a05d-89c0bec6f215',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'badcd53f-50c1-43f7-8263-fe4989a05ea0'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'badcd53f-50c1-43f7-8263-fe4989a05ea0',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = 'e2da1627-44f7-4907-aa15-f828ab1f98fd'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e2da1627-44f7-4907-aa15-f828ab1f98fd',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '91921c43-936a-40ef-85e4-ea5b2fc22fdd'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '91921c43-936a-40ef-85e4-ea5b2fc22fdd',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'daaa3870-f32e-4d54-9ed8-e469685a441c'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'StartDateTime')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'daaa3870-f32e-4d54-9ed8-e469685a441c',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '3709f094-12ff-4fad-953f-99e53b07e9f2'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'EndDateTime')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3709f094-12ff-4fad-953f-99e53b07e9f2',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '6c2ff101-f20a-4134-9555-8afba3e69e57'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'TimeZone')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6c2ff101-f20a-4134-9555-8afba3e69e57',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'c5ed8156-5792-41b4-ad28-dc9058e38661'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'LocationType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c5ed8156-5792-41b4-ad28-dc9058e38661',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '68f89695-50bf-437b-9185-39f296b405a6'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'LocationText')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '68f89695-50bf-437b-9185-39f296b405a6',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'db819990-57bc-4607-b847-b47af8ca52e6'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'VideoProvider')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'db819990-57bc-4607-b847-b47af8ca52e6',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '62443f59-8128-401d-be89-1ae54b715311'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'VideoMeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '62443f59-8128-401d-be89-1ae54b715311',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '5cd2d762-450a-4497-9c4d-3c28d0ec2728'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'VideoJoinURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5cd2d762-450a-4497-9c4d-3c28d0ec2728',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '34f35a36-f343-4383-aa5d-08668fd74183'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'VideoRecordingURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '34f35a36-f343-4383-aa5d-08668fd74183',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '9be33d72-10c6-46fd-b4d4-747c63c7ca0b'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'TranscriptURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9be33d72-10c6-46fd-b4d4-747c63c7ca0b',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '947e511b-cc57-41ab-9e6a-b16d290a79c1'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '947e511b-cc57-41ab-9e6a-b16d290a79c1',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'c4aedcbb-c042-4e1a-8b0c-51d616cb0309'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'CalendarEventID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c4aedcbb-c042-4e1a-8b0c-51d616cb0309',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '1050e5e0-7ccf-4a49-ad91-77ae04bf218f'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1050e5e0-7ccf-4a49-ad91-77ae04bf218f',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '76666814-c26f-4b2a-9f25-eb338e261ef5'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '76666814-c26f-4b2a-9f25-eb338e261ef5',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = 'd6969941-297e-4923-9776-f90457ce1529'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd6969941-297e-4923-9776-f90457ce1529',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '8055d132-d018-4a31-8e1e-082b14bd37f6'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8055d132-d018-4a31-8e1e-082b14bd37f6',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = '8e21793f-d4a8-418c-8368-bcce5848b16a'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8e21793f-d4a8-418c-8368-bcce5848b16a',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = 'dc110d22-110c-47ed-a277-06c17decbc2c'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'StartDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'dc110d22-110c-47ed-a277-06c17decbc2c',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '6c823395-9111-4917-8897-8e676595f4ca'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'EndDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6c823395-9111-4917-8897-8e676595f4ca',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '63290696-eab2-41b5-adc8-aaf480890187'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '63290696-eab2-41b5-adc8-aaf480890187',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '3fdaa185-5090-488e-9291-1fcaea6abafd'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3fdaa185-5090-488e-9291-1fcaea6abafd',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '95a9967d-8ab3-4d6b-8b3f-9ffcd94f346b'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '95a9967d-8ab3-4d6b-8b3f-9ffcd94f346b',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '7fcced97-1984-4b85-b514-1418c7803a8d'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7fcced97-1984-4b85-b514-1418c7803a8d',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '81b86292-3fc8-49e5-8a94-48c1252b0d32'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '81b86292-3fc8-49e5-8a94-48c1252b0d32',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = 'da1e0ef7-2927-4e3c-ab01-ed59c60c0b4a'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'UserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'da1e0ef7-2927-4e3c-ab01-ed59c60c0b4a',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '562a5e9b-19d1-488d-a8f4-c49f2f2f0ff5'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'AttendanceStatus')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '562a5e9b-19d1-488d-a8f4-c49f2f2f0ff5',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '2203f9d4-fc9b-4b33-a8f1-440bac0fa587'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'JoinedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2203f9d4-fc9b-4b33-a8f1-440bac0fa587',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '9e8fcca4-65a0-48ec-8a5d-826a3992919b'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'LeftAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9e8fcca4-65a0-48ec-8a5d-826a3992919b',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '8867c0ea-47b3-4f28-81df-ba21a3b61e3b'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8867c0ea-47b3-4f28-81df-ba21a3b61e3b',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '2aab365f-9262-4b91-959a-d7225d67621b'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2aab365f-9262-4b91-959a-d7225d67621b',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = 'eebd1d9b-9485-4838-86c3-dd566cb31057'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'eebd1d9b-9485-4838-86c3-dd566cb31057',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '0655502a-2d2f-48a8-acd4-e89ec84db5d2'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0655502a-2d2f-48a8-acd4-e89ec84db5d2',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = '6021af47-038a-4659-a061-26b3f013f7e5'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6021af47-038a-4659-a061-26b3f013f7e5',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = 'db2a20da-cbb9-4834-8489-24ca1496eac0'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'db2a20da-cbb9-4834-8489-24ca1496eac0',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = 'd874fc4b-601a-4c85-9228-63f253e2615e'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'IsOfficer')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd874fc4b-601a-4c85-9228-63f253e2615e',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = 'ad6d8b74-4e24-48db-9fdd-80d5d3a41452'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'IsVotingRole')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ad6d8b74-4e24-48db-9fdd-80d5d3a41452',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = 'e18e92c9-0600-408a-bfc2-41fe35ecf93d'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'DefaultPermissionsJSON')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e18e92c9-0600-408a-bfc2-41fe35ecf93d',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = '49d543e0-dca6-4779-9579-32dde3ba5d4d'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '49d543e0-dca6-4779-9579-32dde3ba5d4d',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = '73c5f7b8-0391-4abf-aa5d-2decfe27ae57'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '73c5f7b8-0391-4abf-aa5d-2decfe27ae57',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = '13974bd1-28fd-49d1-9f30-1d10603de0e4'  OR 
               (EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '13974bd1-28fd-49d1-9f30-1d10603de0e4',
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', -- Entity: Roles__Committees
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
         WHERE ID = '2e0ffbb3-2c0a-42f5-9e53-7fa9fa801dbd'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2e0ffbb3-2c0a-42f5-9e53-7fa9fa801dbd',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '9170a796-46ef-42b2-acec-0831d764a0c6'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9170a796-46ef-42b2-acec-0831d764a0c6',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = 'c4a7ab77-efc6-45aa-8012-8e887a4ee884'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'ParentAgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c4a7ab77-efc6-45aa-8012-8e887a4ee884',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74',
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
         WHERE ID = '91852417-ddc3-4dfe-bdab-b99f53747e19'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '91852417-ddc3-4dfe-bdab-b99f53747e19',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '1f54a8ac-4d3f-4b31-ab76-2004a81be006'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1f54a8ac-4d3f-4b31-ab76-2004a81be006',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '3f7bc7c1-811e-482a-ab06-7af1dba89b7f'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3f7bc7c1-811e-482a-ab06-7af1dba89b7f',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = 'e06a579b-f809-4e5b-9444-b0ca36e5b196'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'PresenterUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e06a579b-f809-4e5b-9444-b0ca36e5b196',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = 'ddcd9393-8454-436b-96c4-c06509600897'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'DurationMinutes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ddcd9393-8454-436b-96c4-c06509600897',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = 'd0875e87-c93c-4a9e-a4f0-e28ab0541926'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'ItemType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd0875e87-c93c-4a9e-a4f0-e28ab0541926',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = 'aa219081-7298-470f-bac6-033e0ba7c24e'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'RelatedDocumentURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'aa219081-7298-470f-bac6-033e0ba7c24e',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '4c5d299b-0314-4923-83cb-79379c88aeab'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4c5d299b-0314-4923-83cb-79379c88aeab',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '0f64d108-03a9-4a36-a459-59621c3649f1'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0f64d108-03a9-4a36-a459-59621c3649f1',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '3b1732dc-39b7-4531-97b3-9287082b9939'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3b1732dc-39b7-4531-97b3-9287082b9939',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '40ca214f-bd52-4f23-addb-dd193aa7ecbf'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '40ca214f-bd52-4f23-addb-dd193aa7ecbf',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '72221ab9-ef18-473e-ba79-8cc6b1ec530d'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '72221ab9-ef18-473e-ba79-8cc6b1ec530d',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'f521dd11-5044-4666-8ae1-506eb1081ddf'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f521dd11-5044-4666-8ae1-506eb1081ddf',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = 'db4d851b-9934-444d-b140-c147235ee41b'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'UserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'db4d851b-9934-444d-b140-c147235ee41b',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'addfd080-69a1-4686-88f2-8e1c340a3175'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'RoleID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'addfd080-69a1-4686-88f2-8e1c340a3175',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
            '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB',
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
         WHERE ID = '05441b0c-61e7-4183-b68f-6f9f95677432'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'TermID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '05441b0c-61e7-4183-b68f-6f9f95677432',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
            'A2AE180E-EBE2-436E-B894-44E1F6419C79',
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
         WHERE ID = '11885fbe-2c2b-45ae-ae87-06164611f6e4'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'StartDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '11885fbe-2c2b-45ae-ae87-06164611f6e4',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'c7c74822-3415-497b-b9ab-c239ccd50a31'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'EndDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c7c74822-3415-497b-b9ab-c239ccd50a31',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '2c157d2f-e854-44cb-9ac5-1dfa93aa60de'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2c157d2f-e854-44cb-9ac5-1dfa93aa60de',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'd1d44a3f-2358-4ff7-ac5f-0eabc554cfcf'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'EndReason')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd1d44a3f-2358-4ff7-ac5f-0eabc554cfcf',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'cd71924a-c451-4c95-a582-1eb7f4f31cb3'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cd71924a-c451-4c95-a582-1eb7f4f31cb3',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '36480f23-4a20-439d-ad06-6ca965cea78e'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '36480f23-4a20-439d-ad06-6ca965cea78e',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '06c7a796-dbe4-456b-81c5-4823fc1b539e'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '06c7a796-dbe4-456b-81c5-4823fc1b539e',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '32db8561-15a8-42f7-9f25-bfbc82eb087f'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '32db8561-15a8-42f7-9f25-bfbc82eb087f',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '0c0fa649-be1f-48d7-a062-8b6e4bab8d25'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0c0fa649-be1f-48d7-a062-8b6e4bab8d25',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '937329be-7d34-4efe-b5d8-b43c41ded658'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '937329be-7d34-4efe-b5d8-b43c41ded658',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '0b6a2524-cc35-453e-8e7d-8d70873b7aaf'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'TypeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '0b6a2524-cc35-453e-8e7d-8d70873b7aaf',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1',
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
         WHERE ID = 'dee19092-ec4b-4a89-b268-c19cc4429774'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'ParentCommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'dee19092-ec4b-4a89-b268-c19cc4429774',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = 'cfb67ed6-b6bf-4b0f-ace0-df76ebc32979'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'OrganizationID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cfb67ed6-b6bf-4b0f-ace0-df76ebc32979',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '34981ead-9104-45df-9722-280dcf3bbb8a'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'CharterDocumentURL')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '34981ead-9104-45df-9722-280dcf3bbb8a',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '7f18e0b6-d801-4e8e-9b97-45a16934b4b3'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'MissionStatement')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7f18e0b6-d801-4e8e-9b97-45a16934b4b3',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '4e7ce97d-cedc-4ab4-8428-60b7ecd94b97'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4e7ce97d-cedc-4ab4-8428-60b7ecd94b97',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '73b33aad-75c3-4b45-a153-303bffb9cc40'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'IsPublic')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '73b33aad-75c3-4b45-a153-303bffb9cc40',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = 'a6ddeb54-1ecb-4d09-a363-8cb0af36b0b2'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'FormationDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a6ddeb54-1ecb-4d09-a363-8cb0af36b0b2',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '2731837b-7e83-48c9-9cd6-76bc4aac7b69'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'DissolutionDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2731837b-7e83-48c9-9cd6-76bc4aac7b69',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = 'f2a37fe4-09fd-45e2-9f45-ad3ee6cb9e42'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f2a37fe4-09fd-45e2-9f45-ad3ee6cb9e42',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = 'd042601f-eddc-4651-abca-547a5b902eae'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd042601f-eddc-4651-abca-547a5b902eae',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = 'a3e2db0f-0af5-4cd6-98af-2c112ae44dd9'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a3e2db0f-0af5-4cd6-98af-2c112ae44dd9',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '53973888-050e-4166-a218-f1088ff55d06'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '53973888-050e-4166-a218-f1088ff55d06',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = '293cdde5-0db2-4393-9628-aac91cccd3af'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '293cdde5-0db2-4393-9628-aac91cccd3af',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74',
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
         WHERE ID = '45af7fad-5a56-4011-8f20-b8dca337c805'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'Sequence')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '45af7fad-5a56-4011-8f20-b8dca337c805',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = 'bffccfbc-3d11-4cc3-9788-32822ea1bd27'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'bffccfbc-3d11-4cc3-9788-32822ea1bd27',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = 'cf1b46f0-8f30-49a4-bae2-65fafa7c8e13'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cf1b46f0-8f30-49a4-bae2-65fafa7c8e13',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = 'f9859c54-d92e-4098-ba6f-9c0f08ef7fe0'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'MovedByMembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f9859c54-d92e-4098-ba6f-9c0f08ef7fe0',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6',
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
         WHERE ID = 'ac77e6a8-50a2-4eae-bdf9-9f9e45c145b1'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'SecondedByMembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ac77e6a8-50a2-4eae-bdf9-9f9e45c145b1',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6',
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
         WHERE ID = '6c514688-791e-4c69-a0ad-50dba404c8ee'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'Result')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6c514688-791e-4c69-a0ad-50dba404c8ee',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '4805ee6a-7660-4f27-bde2-e898352ed0c5'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'ResultSummary')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '4805ee6a-7660-4f27-bde2-e898352ed0c5',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '3aad644e-9d95-413d-a664-e256a733900a'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'YesCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3aad644e-9d95-413d-a664-e256a733900a',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = 'b49bf515-f515-482a-b52f-1e97d77e46a8'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'NoCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b49bf515-f515-482a-b52f-1e97d77e46a8',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '75be4772-5238-4129-b02a-50dfdc86e50e'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'AbstainCount')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '75be4772-5238-4129-b02a-50dfdc86e50e',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '5590e9ec-d130-4906-a76d-709e8c2e42bb'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5590e9ec-d130-4906-a76d-709e8c2e42bb',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '69ecf6bc-a209-4784-8575-c67258e439ff'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '69ecf6bc-a209-4784-8575-c67258e439ff',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = 'c5dd9a0c-5958-45a9-a485-c6295430d38c'  OR 
               (EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c5dd9a0c-5958-45a9-a485-c6295430d38c',
            '2F36056D-2C3D-48CE-91FB-8851116B56EC', -- Entity: Motions
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
         WHERE ID = '1dfa70be-2125-416a-b7a7-65e0e0e1ff37'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1dfa70be-2125-416a-b7a7-65e0e0e1ff37',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = '47c92887-806d-4617-a1b0-d47bbe10d62b'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'ArtifactID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '47c92887-806d-4617-a1b0-d47bbe10d62b',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
            'C56CE165-9E35-443B-A834-1C5DCB985655',
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
         WHERE ID = '96278246-02da-4c56-a35d-ab691cc3d33b'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'ApprovalStatus')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '96278246-02da-4c56-a35d-ab691cc3d33b',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = 'd90231a4-f822-40de-bac0-94bdaff34ba1'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'ApprovedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd90231a4-f822-40de-bac0-94bdaff34ba1',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = '714fbc24-6edc-452f-8203-891ac6d95447'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'ApprovedByMeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '714fbc24-6edc-452f-8203-891ac6d95447',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = '2d951924-88b5-44a6-bb98-3a53d520508a'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2d951924-88b5-44a6-bb98-3a53d520508a',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = '91e51663-00a7-4e12-838f-b78e4cc1bd6d'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '91e51663-00a7-4e12-838f-b78e4cc1bd6d',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = 'b322b636-b0f9-4dc8-8edb-200b17259de2'  OR 
               (EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b322b636-b0f9-4dc8-8edb-200b17259de2',
            'A272B72A-C037-4949-99A6-8977F8B65F8A', -- Entity: Minutes
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
         WHERE ID = '1815b943-a584-40ea-9277-1e9d77295e2f'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1815b943-a584-40ea-9277-1e9d77295e2f',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
         WHERE ID = 'e845f31e-496a-4ad2-9545-05391e6ef8b0'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = 'MotionID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e845f31e-496a-4ad2-9545-05391e6ef8b0',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
            '2F36056D-2C3D-48CE-91FB-8851116B56EC',
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
         WHERE ID = '214c3df0-abc0-4a48-a323-3c924d8fe244'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = 'MembershipID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '214c3df0-abc0-4a48-a323-3c924d8fe244',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6',
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
         WHERE ID = '8c27bd12-dae9-4148-8d6e-beebc2346fe1'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = 'VoteValue')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8c27bd12-dae9-4148-8d6e-beebc2346fe1',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
         WHERE ID = 'f3b21119-b14e-4312-8dc5-01a1855ba7a2'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = 'Notes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f3b21119-b14e-4312-8dc5-01a1855ba7a2',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
         WHERE ID = 'ddb9b491-2e83-435c-9c41-dfaeef77887b'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ddb9b491-2e83-435c-9c41-dfaeef77887b',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
         WHERE ID = '9eeaf698-bc20-43b0-8e83-bf7946b7b5d1'  OR 
               (EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9eeaf698-bc20-43b0-8e83-bf7946b7b5d1',
            'C358AA46-AD4F-4A39-97B1-BE8D39961A81', -- Entity: Votes
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
         WHERE ID = '3b9f7b0c-c6e9-499f-afac-087c1763bc58'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3b9f7b0c-c6e9-499f-afac-087c1763bc58',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = 'cd6b6c32-184a-449d-9bf0-98c49fce6ac9'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cd6b6c32-184a-449d-9bf0-98c49fce6ac9',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = '42cb72fe-5871-43f5-8866-675abe6717bc'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '42cb72fe-5871-43f5-8866-675abe6717bc',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = '7e5390c0-1532-4f23-9cbd-210e87dddfcf'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'ExtendedEntityID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7e5390c0-1532-4f23-9cbd-210e87dddfcf',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = '28074781-d8d9-47f0-a1bd-31d5e928e1b0'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'IconClass')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '28074781-d8d9-47f0-a1bd-31d5e928e1b0',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = '3725463a-43aa-4237-8e6e-7609bcd3ffcf'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3725463a-43aa-4237-8e6e-7609bcd3ffcf',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = 'a6a65c3d-9b4b-4fd4-86bc-a06fbf060277'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a6a65c3d-9b4b-4fd4-86bc-a06fbf060277',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = 'eebb825e-8fdd-4c2d-8409-af8a803fd4ec'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'eebb825e-8fdd-4c2d-8409-af8a803fd4ec',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '1acff630-ca07-4528-bb66-933247e8ad32'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'CommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '1acff630-ca07-4528-bb66-933247e8ad32',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
            '33EEF424-1FFD-42A5-A5FE-790578057915',
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
         WHERE ID = 'aa43786a-a5dd-44f4-aace-f3f68e27806d'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'MeetingID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'aa43786a-a5dd-44f4-aace-f3f68e27806d',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
            '9DD138CE-1012-426C-905C-21CC127ECF54',
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
         WHERE ID = '8d6743ae-6786-4f88-b3b0-ce07aaee6ec1'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'AgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8d6743ae-6786-4f88-b3b0-ce07aaee6ec1',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74',
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
         WHERE ID = 'd3e14946-9a04-4a39-bd25-3f137f6a7939'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'Title')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd3e14946-9a04-4a39-bd25-3f137f6a7939',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'cd466efb-0ad8-46cc-a469-8b1d45aff410'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cd466efb-0ad8-46cc-a469-8b1d45aff410',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'ecb9cc89-7453-4266-b7ec-b22a5541e3ef'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'AssignedToUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ecb9cc89-7453-4266-b7ec-b22a5541e3ef',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'cff8b1a0-bf52-4ae2-8693-a90fe3037cc5'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'AssignedByUserID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'cff8b1a0-bf52-4ae2-8693-a90fe3037cc5',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '9b2d7260-d956-499b-b022-e3362031bf29'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'DueDate')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '9b2d7260-d956-499b-b022-e3362031bf29',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'd7164083-43fa-487b-ac68-7e2a03adf30c'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'Priority')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd7164083-43fa-487b-ac68-7e2a03adf30c',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '6c0f75bf-003b-4211-8abf-37a7994c9005'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'Status')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '6c0f75bf-003b-4211-8abf-37a7994c9005',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'f890f636-9f21-40cc-8296-920309f46cef'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'CompletedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f890f636-9f21-40cc-8296-920309f46cef',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'b6554fbb-2489-4c76-b327-4a9224649c2d'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'CompletionNotes')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'b6554fbb-2489-4c76-b327-4a9224649c2d',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'c1781a9e-1684-41ec-8379-316c600aa92f'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'c1781a9e-1684-41ec-8379-316c600aa92f',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '7b802102-28e2-491f-9144-c43dde8aa6ad'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7b802102-28e2-491f-9144-c43dde8aa6ad',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = 'bc139f61-2927-4bff-a9d7-bc7c668fae6d'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'ID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'bc139f61-2927-4bff-a9d7-bc7c668fae6d',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = 'a4cf9951-0300-4517-9b68-d3184186a844'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'Name')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a4cf9951-0300-4517-9b68-d3184186a844',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = 'e9db03dc-f775-4ad5-862f-5abb4dda22a0'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'Description')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e9db03dc-f775-4ad5-862f-5abb4dda22a0',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = '3f30b872-96d6-4836-baa5-4e0258bbef45'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'IsStandards')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3f30b872-96d6-4836-baa5-4e0258bbef45',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = '7000ea37-8dfa-42dd-8a56-bce05eb437f2'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'DefaultTermMonths')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7000ea37-8dfa-42dd-8a56-bce05eb437f2',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = 'ba197517-12d2-4504-b7e3-240e29955ed4'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = 'IconClass')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'ba197517-12d2-4504-b7e3-240e29955ed4',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = 'a0de2889-a8d0-4514-8a3e-9d32c80d5e3b'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = '__mj_CreatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a0de2889-a8d0-4514-8a3e-9d32c80d5e3b',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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
         WHERE ID = '54c8b3b6-dd0f-4bab-8d4f-e8a22344068b'  OR 
               (EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1' AND Name = '__mj_UpdatedAt')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '54c8b3b6-dd0f-4bab-8d4f-e8a22344068b',
            '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', -- Entity: Types
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

/* SQL text to insert entity field value with ID 84279fb3-236b-4379-83a0-c1eba0f12109 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('84279fb3-236b-4379-83a0-c1eba0f12109', '63290696-EAB2-41B5-ADC8-AAF480890187', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID a721264c-ea29-41c5-b3d3-937087115418 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a721264c-ea29-41c5-b3d3-937087115418', '63290696-EAB2-41B5-ADC8-AAF480890187', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID ca447690-cfb6-4078-bfb4-b1420072c3a4 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ca447690-cfb6-4078-bfb4-b1420072c3a4', '63290696-EAB2-41B5-ADC8-AAF480890187', 3, 'Upcoming', 'Upcoming')

/* SQL text to update ValueListType for entity field ID 63290696-EAB2-41B5-ADC8-AAF480890187 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='63290696-EAB2-41B5-ADC8-AAF480890187'

/* SQL text to insert entity field value with ID 9648f108-ecf2-4400-b5d9-6cbfb21106aa */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('9648f108-ecf2-4400-b5d9-6cbfb21106aa', '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID 88c25274-5bbf-4035-b937-59544d60b33e */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('88c25274-5bbf-4035-b937-59544d60b33e', '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE', 2, 'Ended', 'Ended')

/* SQL text to insert entity field value with ID 9c472d85-68b9-42e2-92b5-68b1bc42f410 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('9c472d85-68b9-42e2-92b5-68b1bc42f410', '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 928387f4-396d-49e1-b62e-676ae764c9cd */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('928387f4-396d-49e1-b62e-676ae764c9cd', '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE', 4, 'Suspended', 'Suspended')

/* SQL text to update ValueListType for entity field ID 2C157D2F-E854-44CB-9AC5-1DFA93AA60DE */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='2C157D2F-E854-44CB-9AC5-1DFA93AA60DE'

/* SQL text to insert entity field value with ID 2fd7f56d-6792-4a65-a074-3819a45b9818 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2fd7f56d-6792-4a65-a074-3819a45b9818', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 1, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID b3c076d8-8464-4e65-b51d-d3b70341e792 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b3c076d8-8464-4e65-b51d-d3b70341e792', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 2, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 05d8ef45-7e51-4648-b07b-da8320d0ead8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('05d8ef45-7e51-4648-b07b-da8320d0ead8', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 3, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID b097c7ce-2b43-4625-b524-ce17c2175950 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b097c7ce-2b43-4625-b524-ce17c2175950', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID 160aa29e-76d6-4204-9635-67bfa6551234 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('160aa29e-76d6-4204-9635-67bfa6551234', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 5, 'Postponed', 'Postponed')

/* SQL text to insert entity field value with ID 8877a142-95b8-4df2-baca-02952174b1e4 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8877a142-95b8-4df2-baca-02952174b1e4', '947E511B-CC57-41AB-9E6A-B16D290A79C1', 6, 'Scheduled', 'Scheduled')

/* SQL text to update ValueListType for entity field ID 947E511B-CC57-41AB-9E6A-B16D290A79C1 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='947E511B-CC57-41AB-9E6A-B16D290A79C1'

/* SQL text to insert entity field value with ID 2c3edf25-ec24-4f18-8423-5af8b22d7c31 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2c3edf25-ec24-4f18-8423-5af8b22d7c31', 'C5ED8156-5792-41B4-AD28-DC9058E38661', 1, 'Hybrid', 'Hybrid')

/* SQL text to insert entity field value with ID 8d9fd2f3-9edb-48e1-bdd9-fe6b34122bfe */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8d9fd2f3-9edb-48e1-bdd9-fe6b34122bfe', 'C5ED8156-5792-41B4-AD28-DC9058E38661', 2, 'InPerson', 'InPerson')

/* SQL text to insert entity field value with ID 5b418c89-8f38-4684-a5d1-2d569680d05f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('5b418c89-8f38-4684-a5d1-2d569680d05f', 'C5ED8156-5792-41B4-AD28-DC9058E38661', 3, 'Virtual', 'Virtual')

/* SQL text to update ValueListType for entity field ID C5ED8156-5792-41B4-AD28-DC9058E38661 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='C5ED8156-5792-41B4-AD28-DC9058E38661'

/* SQL text to insert entity field value with ID c53d85cb-17d4-4105-80d4-408cabc9f461 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c53d85cb-17d4-4105-80d4-408cabc9f461', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 1, 'Action', 'Action')

/* SQL text to insert entity field value with ID ade7fb9b-96b4-4cdc-83c8-dc57c6f0cfa8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ade7fb9b-96b4-4cdc-83c8-dc57c6f0cfa8', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 2, 'Discussion', 'Discussion')

/* SQL text to insert entity field value with ID 1ebfe626-eb1d-4949-b0b3-4dc45348d739 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('1ebfe626-eb1d-4949-b0b3-4dc45348d739', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 3, 'Information', 'Information')

/* SQL text to insert entity field value with ID d72f4e00-7420-4bd9-9522-e199d9b79687 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('d72f4e00-7420-4bd9-9522-e199d9b79687', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 4, 'Other', 'Other')

/* SQL text to insert entity field value with ID 9257638e-b4b4-4576-91d1-f63e0193be9f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('9257638e-b4b4-4576-91d1-f63e0193be9f', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 5, 'Report', 'Report')

/* SQL text to insert entity field value with ID a3e97131-d7c1-44da-bf5c-33114c4e8024 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a3e97131-d7c1-44da-bf5c-33114c4e8024', 'D0875E87-C93C-4A9E-A4F0-E28AB0541926', 6, 'Vote', 'Vote')

/* SQL text to update ValueListType for entity field ID D0875E87-C93C-4A9E-A4F0-E28AB0541926 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='D0875E87-C93C-4A9E-A4F0-E28AB0541926'

/* SQL text to insert entity field value with ID 2e1bfc01-8620-41e1-a941-a86e3bb5f971 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2e1bfc01-8620-41e1-a941-a86e3bb5f971', '4C5D299B-0314-4923-83CB-79379C88AEAB', 1, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 5d24f0eb-87b6-4d23-83af-4ecf29552772 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('5d24f0eb-87b6-4d23-83af-4ecf29552772', '4C5D299B-0314-4923-83CB-79379C88AEAB', 2, 'Discussed', 'Discussed')

/* SQL text to insert entity field value with ID ae09936d-d25c-44d9-a2f2-166d7b931afb */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ae09936d-d25c-44d9-a2f2-166d7b931afb', '4C5D299B-0314-4923-83CB-79379C88AEAB', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 6d50faed-892b-43f2-9d8d-03f9eaf07288 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('6d50faed-892b-43f2-9d8d-03f9eaf07288', '4C5D299B-0314-4923-83CB-79379C88AEAB', 4, 'Skipped', 'Skipped')

/* SQL text to insert entity field value with ID b0f4346a-9bdb-457d-a40a-e80dfd807ade */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b0f4346a-9bdb-457d-a40a-e80dfd807ade', '4C5D299B-0314-4923-83CB-79379C88AEAB', 5, 'Tabled', 'Tabled')

/* SQL text to update ValueListType for entity field ID 4C5D299B-0314-4923-83CB-79379C88AEAB */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='4C5D299B-0314-4923-83CB-79379C88AEAB'

/* SQL text to insert entity field value with ID b72ef4ae-812b-4489-8709-2374d98823a9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b72ef4ae-812b-4489-8709-2374d98823a9', '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID 6ce24ad0-55bd-4bc5-8b43-0467fade284b */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('6ce24ad0-55bd-4bc5-8b43-0467fade284b', '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5', 2, 'Excused', 'Excused')

/* SQL text to insert entity field value with ID 963dc26d-7fb4-495a-9efc-196c85522ba9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('963dc26d-7fb4-495a-9efc-196c85522ba9', '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5', 3, 'Expected', 'Expected')

/* SQL text to insert entity field value with ID b0ded290-7698-4821-b6b1-1b91af8a0e9e */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b0ded290-7698-4821-b6b1-1b91af8a0e9e', '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5', 4, 'Partial', 'Partial')

/* SQL text to insert entity field value with ID 72acb5d1-bce7-47ca-ae63-55ac8f1be36d */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('72acb5d1-bce7-47ca-ae63-55ac8f1be36d', '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5', 5, 'Present', 'Present')

/* SQL text to update ValueListType for entity field ID 562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5'

/* SQL text to insert entity field value with ID b6432ac1-9c2e-4455-a232-e5a148f03565 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b6432ac1-9c2e-4455-a232-e5a148f03565', 'D7164083-43FA-487B-AC68-7E2A03ADF30C', 1, 'Critical', 'Critical')

/* SQL text to insert entity field value with ID ce8f5063-dfa7-4f34-a6d3-5ab56ec7abb9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('ce8f5063-dfa7-4f34-a6d3-5ab56ec7abb9', 'D7164083-43FA-487B-AC68-7E2A03ADF30C', 2, 'High', 'High')

/* SQL text to insert entity field value with ID 99f983f8-392d-4cb9-a294-1d53f88d0306 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('99f983f8-392d-4cb9-a294-1d53f88d0306', 'D7164083-43FA-487B-AC68-7E2A03ADF30C', 3, 'Low', 'Low')

/* SQL text to insert entity field value with ID 4f5fdf5e-0f35-46d5-8a24-2064e6485d93 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('4f5fdf5e-0f35-46d5-8a24-2064e6485d93', 'D7164083-43FA-487B-AC68-7E2A03ADF30C', 4, 'Medium', 'Medium')

/* SQL text to update ValueListType for entity field ID D7164083-43FA-487B-AC68-7E2A03ADF30C */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='D7164083-43FA-487B-AC68-7E2A03ADF30C'

/* SQL text to insert entity field value with ID a531f17d-a894-4c42-9be3-47eb7d969630 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a531f17d-a894-4c42-9be3-47eb7d969630', '6C0F75BF-003B-4211-8ABF-37A7994C9005', 1, 'Blocked', 'Blocked')

/* SQL text to insert entity field value with ID a31e03d1-9d07-4a61-b2a1-d016a4cf5b35 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a31e03d1-9d07-4a61-b2a1-d016a4cf5b35', '6C0F75BF-003B-4211-8ABF-37A7994C9005', 2, 'Cancelled', 'Cancelled')

/* SQL text to insert entity field value with ID 0b0644df-7b2e-4204-aa1f-1639f13e4182 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('0b0644df-7b2e-4204-aa1f-1639f13e4182', '6C0F75BF-003B-4211-8ABF-37A7994C9005', 3, 'Completed', 'Completed')

/* SQL text to insert entity field value with ID 66e722ad-8f64-45dd-a4b2-da9b98f0c2fe */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('66e722ad-8f64-45dd-a4b2-da9b98f0c2fe', '6C0F75BF-003B-4211-8ABF-37A7994C9005', 4, 'InProgress', 'InProgress')

/* SQL text to insert entity field value with ID 45fbcf03-b15b-48cf-bba1-fda61be20937 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('45fbcf03-b15b-48cf-bba1-fda61be20937', '6C0F75BF-003B-4211-8ABF-37A7994C9005', 5, 'Open', 'Open')

/* SQL text to update ValueListType for entity field ID 6C0F75BF-003B-4211-8ABF-37A7994C9005 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='6C0F75BF-003B-4211-8ABF-37A7994C9005'

/* SQL text to insert entity field value with ID 52ad7831-b9f3-4a1f-90dd-aa66b9a67feb */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('52ad7831-b9f3-4a1f-90dd-aa66b9a67feb', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 1, 'Box', 'Box')

/* SQL text to insert entity field value with ID aa9cfb42-4c3d-420b-b694-3ab99ada6081 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('aa9cfb42-4c3d-420b-b694-3ab99ada6081', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 2, 'Dropbox', 'Dropbox')

/* SQL text to insert entity field value with ID 3d9ddd75-dde6-4911-8389-0c37e738ca9b */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('3d9ddd75-dde6-4911-8389-0c37e738ca9b', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 3, 'GoogleDrive', 'GoogleDrive')

/* SQL text to insert entity field value with ID a705c924-6861-4cc5-93d0-0d3c1c6c1516 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a705c924-6861-4cc5-93d0-0d3c1c6c1516', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 4, 'OneDrive', 'OneDrive')

/* SQL text to insert entity field value with ID 8f43d190-4dd8-47bb-aa05-5655e5b0994a */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8f43d190-4dd8-47bb-aa05-5655e5b0994a', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 5, 'SharePoint', 'SharePoint')

/* SQL text to insert entity field value with ID 2145acbb-2841-41e1-94a1-4f59dff2edf9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2145acbb-2841-41e1-94a1-4f59dff2edf9', 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA', 6, 'URL', 'URL')

/* SQL text to update ValueListType for entity field ID EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA'

/* SQL text to insert entity field value with ID 30e8c9ee-8180-4d2a-88a9-a9d09aef2fd8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('30e8c9ee-8180-4d2a-88a9-a9d09aef2fd8', '96278246-02DA-4C56-A35D-AB691CC3D33B', 1, 'Approved', 'Approved')

/* SQL text to insert entity field value with ID e05bb107-06c2-4533-acc4-3cf7546fd13c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('e05bb107-06c2-4533-acc4-3cf7546fd13c', '96278246-02DA-4C56-A35D-AB691CC3D33B', 2, 'Draft', 'Draft')

/* SQL text to insert entity field value with ID d50f6d52-729c-470d-a32b-65c24f97dbc1 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('d50f6d52-729c-470d-a32b-65c24f97dbc1', '96278246-02DA-4C56-A35D-AB691CC3D33B', 3, 'PendingApproval', 'PendingApproval')

/* SQL text to insert entity field value with ID 37a0a6cf-b685-46d5-a105-c9a5ba94f45a */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('37a0a6cf-b685-46d5-a105-c9a5ba94f45a', '96278246-02DA-4C56-A35D-AB691CC3D33B', 4, 'Rejected', 'Rejected')

/* SQL text to update ValueListType for entity field ID 96278246-02DA-4C56-A35D-AB691CC3D33B */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='96278246-02DA-4C56-A35D-AB691CC3D33B'

/* SQL text to insert entity field value with ID 4a17efc8-9049-4156-a28e-de490dd57cf8 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('4a17efc8-9049-4156-a28e-de490dd57cf8', '6C514688-791E-4C69-A0AD-50DBA404C8EE', 1, 'Failed', 'Failed')

/* SQL text to insert entity field value with ID 3665d2ac-4590-44be-a7b5-cdfdfb992fa9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('3665d2ac-4590-44be-a7b5-cdfdfb992fa9', '6C514688-791E-4C69-A0AD-50DBA404C8EE', 2, 'Passed', 'Passed')

/* SQL text to insert entity field value with ID a91d9305-5317-4a5f-8733-1cd30551c9b3 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('a91d9305-5317-4a5f-8733-1cd30551c9b3', '6C514688-791E-4C69-A0AD-50DBA404C8EE', 3, 'Pending', 'Pending')

/* SQL text to insert entity field value with ID 2aee7646-5191-4297-887d-c5369cfb7fc5 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('2aee7646-5191-4297-887d-c5369cfb7fc5', '6C514688-791E-4C69-A0AD-50DBA404C8EE', 4, 'Tabled', 'Tabled')

/* SQL text to insert entity field value with ID 8929f0e9-b2ad-4980-8480-6f23495f0d40 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('8929f0e9-b2ad-4980-8480-6f23495f0d40', '6C514688-791E-4C69-A0AD-50DBA404C8EE', 5, 'Withdrawn', 'Withdrawn')

/* SQL text to update ValueListType for entity field ID 6C514688-791E-4C69-A0AD-50DBA404C8EE */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='6C514688-791E-4C69-A0AD-50DBA404C8EE'

/* SQL text to insert entity field value with ID aeb49c3a-575d-4f7e-bf28-26827c411cad */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('aeb49c3a-575d-4f7e-bf28-26827c411cad', '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1', 1, 'Absent', 'Absent')

/* SQL text to insert entity field value with ID c3f6e26c-8b16-4286-ace2-fff20c9d4b3f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('c3f6e26c-8b16-4286-ace2-fff20c9d4b3f', '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1', 2, 'Abstain', 'Abstain')

/* SQL text to insert entity field value with ID f49cde94-afc9-4d4f-9bd3-a8b556011638 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('f49cde94-afc9-4d4f-9bd3-a8b556011638', '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1', 3, 'No', 'No')

/* SQL text to insert entity field value with ID 94176722-5a3f-4b32-9406-98b50acb007f */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('94176722-5a3f-4b32-9406-98b50acb007f', '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1', 4, 'Yes', 'Yes')

/* SQL text to update ValueListType for entity field ID 8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1'

/* SQL text to insert entity field value with ID 864c00d1-535f-4c9e-b8b2-550b1b35bf75 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('864c00d1-535f-4c9e-b8b2-550b1b35bf75', '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97', 1, 'Active', 'Active')

/* SQL text to insert entity field value with ID d0312b92-0056-4128-97bf-c776df4bcab9 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('d0312b92-0056-4128-97bf-c776df4bcab9', '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97', 2, 'Dissolved', 'Dissolved')

/* SQL text to insert entity field value with ID b4ab0eec-4ba6-43cb-b56c-4a94d67a51d6 */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('b4ab0eec-4ba6-43cb-b56c-4a94d67a51d6', '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97', 3, 'Inactive', 'Inactive')

/* SQL text to insert entity field value with ID eaeef5a6-29aa-41f2-8eec-79253b48897c */
INSERT INTO [${flyway:defaultSchema}].EntityFieldValue
                                       (ID, EntityFieldID, Sequence, Value, Code)
                                    VALUES
                                       ('eaeef5a6-29aa-41f2-8eec-79253b48897c', '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97', 4, 'Pending', 'Pending')

/* SQL text to update ValueListType for entity field ID 4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97 */
UPDATE [${flyway:defaultSchema}].EntityField SET ValueListType='List' WHERE ID='4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97'

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'f9ae1e60-4c8a-4fba-8ce1-0586910491a2'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('f9ae1e60-4c8a-4fba-8ce1-0586910491a2', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'A272B72A-C037-4949-99A6-8977F8B65F8A', 'ArtifactID', 'One To Many', 1, 1, 'Minutes', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'd3929d87-ea10-4ac7-9f5a-47500f8580df'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('d3929d87-ea10-4ac7-9f5a-47500f8580df', '9DD138CE-1012-426C-905C-21CC127ECF54', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'MeetingID', 'One To Many', 1, 1, 'Motions', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'aee91259-a3e2-42f7-acf5-00a3971326da'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('aee91259-a3e2-42f7-acf5-00a3971326da', '9DD138CE-1012-426C-905C-21CC127ECF54', '58956235-749E-4C97-A218-EB3414648113', 'MeetingID', 'One To Many', 1, 1, 'Action Items', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'b9a4eead-b950-4dfd-9d11-2e5e7e75f48d'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('b9a4eead-b950-4dfd-9d11-2e5e7e75f48d', '9DD138CE-1012-426C-905C-21CC127ECF54', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'MeetingID', 'One To Many', 1, 1, 'Agenda Items', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'e6d86a69-ba83-48f6-9581-55ce145c3677'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('e6d86a69-ba83-48f6-9581-55ce145c3677', '9DD138CE-1012-426C-905C-21CC127ECF54', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'MeetingID', 'One To Many', 1, 1, 'Artifacts', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'f3985fe9-d52f-4635-a12a-305b4b0168a2'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('f3985fe9-d52f-4635-a12a-305b4b0168a2', '9DD138CE-1012-426C-905C-21CC127ECF54', '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', 'MeetingID', 'One To Many', 1, 1, 'Attendances', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '00d462d4-7268-49ee-bc92-7fba8f9e72c8'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('00d462d4-7268-49ee-bc92-7fba8f9e72c8', '9DD138CE-1012-426C-905C-21CC127ECF54', 'A272B72A-C037-4949-99A6-8977F8B65F8A', 'ApprovedByMeetingID', 'One To Many', 1, 1, 'Minutes', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '71e254ee-4071-4cbc-800f-3e80c9d1469c'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('71e254ee-4071-4cbc-800f-3e80c9d1469c', 'A2AE180E-EBE2-436E-B894-44E1F6419C79', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'TermID', 'One To Many', 1, 1, 'Memberships', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '8ccc57bf-0519-4885-94c6-40b7cbe5d981'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('8ccc57bf-0519-4885-94c6-40b7cbe5d981', 'E0238F34-2837-EF11-86D4-6045BDEE16E6', '9CA38B49-7A62-4E36-9E83-BECA984024E5', 'ExtendedEntityID', 'One To Many', 1, 1, 'Artifact Types', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'f82652ae-fba9-4167-89ca-2df4d546276a'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('f82652ae-fba9-4167-89ca-2df4d546276a', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'UploadedByUserID', 'One To Many', 1, 1, 'Artifacts', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'd21cd093-2922-4c72-bf1a-9aa279b9e739'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('d21cd093-2922-4c72-bf1a-9aa279b9e739', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', 'UserID', 'One To Many', 1, 1, 'Attendances', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'bd84c88e-bb33-4e0c-af63-a317e4771431'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('bd84c88e-bb33-4e0c-af63-a317e4771431', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '58956235-749E-4C97-A218-EB3414648113', 'AssignedByUserID', 'One To Many', 1, 1, 'Action Items', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'cf976aa6-2cf6-4652-a404-1fc54e4470d4'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('cf976aa6-2cf6-4652-a404-1fc54e4470d4', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'PresenterUserID', 'One To Many', 1, 1, 'Agenda Items', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '5cb56d29-b5a9-4b8c-9573-903aa5b012e7'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('5cb56d29-b5a9-4b8c-9573-903aa5b012e7', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', '58956235-749E-4C97-A218-EB3414648113', 'AssignedToUserID', 'One To Many', 1, 1, 'Action Items', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '2017f51e-b82e-4c75-82c5-992ad79156d6'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('2017f51e-b82e-4c75-82c5-992ad79156d6', 'E1238F34-2837-EF11-86D4-6045BDEE16E6', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'UserID', 'One To Many', 1, 1, 'Memberships', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'f56dc11d-28c9-4332-b754-8f7477d3245e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('f56dc11d-28c9-4332-b754-8f7477d3245e', '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'RoleID', 'One To Many', 1, 1, 'Memberships', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '7fd600f0-d165-4ae8-9de2-f50866dde20a'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('7fd600f0-d165-4ae8-9de2-f50866dde20a', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'ParentAgendaItemID', 'One To Many', 1, 1, 'Agenda Items', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '04a799fd-3810-4a5d-9e9a-1da2eb0681aa'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('04a799fd-3810-4a5d-9e9a-1da2eb0681aa', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'AgendaItemID', 'One To Many', 1, 1, 'Artifacts', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '942f69b5-5592-4e0f-ac5d-33ae07c73118'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('942f69b5-5592-4e0f-ac5d-33ae07c73118', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'AgendaItemID', 'One To Many', 1, 1, 'Motions', 2);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'cfc6d9d9-1d11-4748-86f1-e8adcc74cdb0'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('cfc6d9d9-1d11-4748-86f1-e8adcc74cdb0', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', '58956235-749E-4C97-A218-EB3414648113', 'AgendaItemID', 'One To Many', 1, 1, 'Action Items', 4);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '5b9945e3-b0fc-4994-b8f6-aec36c169b6d'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('5b9945e3-b0fc-4994-b8f6-aec36c169b6d', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'SecondedByMembershipID', 'One To Many', 1, 1, 'Motions', 3);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '9cfcf8ee-85f4-43fe-914c-905fe3caa56b'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('9cfcf8ee-85f4-43fe-914c-905fe3caa56b', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'MovedByMembershipID', 'One To Many', 1, 1, 'Motions', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '3e0df0e8-bb01-4638-a3eb-08faa6032ca8'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('3e0df0e8-bb01-4638-a3eb-08faa6032ca8', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'C358AA46-AD4F-4A39-97B1-BE8D39961A81', 'MembershipID', 'One To Many', 1, 1, 'Votes', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'ae0f2e95-7fdb-44ff-80a2-6b49e28cd132'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('ae0f2e95-7fdb-44ff-80a2-6b49e28cd132', '33EEF424-1FFD-42A5-A5FE-790578057915', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'CommitteeID', 'One To Many', 1, 1, 'Memberships', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '314364fd-f74c-4f50-9a78-13a1c093b400'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('314364fd-f74c-4f50-9a78-13a1c093b400', '33EEF424-1FFD-42A5-A5FE-790578057915', 'A2AE180E-EBE2-436E-B894-44E1F6419C79', 'CommitteeID', 'One To Many', 1, 1, 'Terms', 1);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'f9e22f72-9f7f-4ade-9bd8-35ec54143922'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('f9e22f72-9f7f-4ade-9bd8-35ec54143922', '33EEF424-1FFD-42A5-A5FE-790578057915', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'CommitteeID', 'One To Many', 1, 1, 'Artifacts', 4);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '497d6c81-3006-4a34-ac47-cd021dbbb79e'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('497d6c81-3006-4a34-ac47-cd021dbbb79e', '33EEF424-1FFD-42A5-A5FE-790578057915', '58956235-749E-4C97-A218-EB3414648113', 'CommitteeID', 'One To Many', 1, 1, 'Action Items', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'cb4340b0-8ffd-498f-96fa-9d3db40bf496'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('cb4340b0-8ffd-498f-96fa-9d3db40bf496', '33EEF424-1FFD-42A5-A5FE-790578057915', '33EEF424-1FFD-42A5-A5FE-790578057915', 'ParentCommitteeID', 'One To Many', 1, 1, 'Committees', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '6d082841-9857-415e-af92-7fec0aacd625'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('6d082841-9857-415e-af92-7fec0aacd625', '33EEF424-1FFD-42A5-A5FE-790578057915', '9DD138CE-1012-426C-905C-21CC127ECF54', 'CommitteeID', 'One To Many', 1, 1, 'Meetings', 1);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '3206d46e-b265-422e-a8aa-1fb59444b446'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('3206d46e-b265-422e-a8aa-1fb59444b446', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'C358AA46-AD4F-4A39-97B1-BE8D39961A81', 'MotionID', 'One To Many', 1, 1, 'Votes', 2);
   END
                              

/* SQL text to create Entitiy Relationships */

   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'e2a5d881-3f17-4463-8b16-eab8a85d1c77'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('e2a5d881-3f17-4463-8b16-eab8a85d1c77', '9CA38B49-7A62-4E36-9E83-BECA984024E5', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'ArtifactTypeID', 'One To Many', 1, 1, 'Artifacts', 5);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = '0d9d5009-e66c-40e0-ae0e-475e37d59f13'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('0d9d5009-e66c-40e0-ae0e-475e37d59f13', '58956235-749E-4C97-A218-EB3414648113', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'ActionItemID', 'One To Many', 1, 1, 'Artifacts', 6);
   END
                              
   IF NOT EXISTS (
      SELECT 1
      FROM [${flyway:defaultSchema}].EntityRelationship
      WHERE ID = 'a30f83d6-53d4-4ee8-add4-4e968c77e236'
   )
   BEGIN
      INSERT INTO ${flyway:defaultSchema}.EntityRelationship (ID, EntityID, RelatedEntityID, RelatedEntityJoinField, Type, BundleInAPI, DisplayInForm, DisplayName, Sequence)
                              VALUES ('a30f83d6-53d4-4ee8-add4-4e968c77e236', '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', '33EEF424-1FFD-42A5-A5FE-790578057915', 'TypeID', 'One To Many', 1, 1, 'Committees', 2);
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

/* SQL text to update entity field related entity name field map for entity field ID 1ACFF630-CA07-4528-BB66-933247E8AD32 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='1ACFF630-CA07-4528-BB66-933247E8AD32',
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


/* SQL text to update entity field related entity name field map for entity field ID E06A579B-F809-4E5B-9444-B0CA36E5B196 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='E06A579B-F809-4E5B-9444-B0CA36E5B196',
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

/* SQL text to update entity field related entity name field map for entity field ID 7E5390C0-1532-4F23-9CBD-210E87DDDFCF */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='7E5390C0-1532-4F23-9CBD-210E87DDDFCF',
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

/* SQL text to update entity field related entity name field map for entity field ID F228DB95-98F1-4941-8D18-9308C0610DB4 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F228DB95-98F1-4941-8D18-9308C0610DB4',
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

/* SQL text to update entity field related entity name field map for entity field ID DA1E0EF7-2927-4E3C-AB01-ED59C60C0B4A */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='DA1E0EF7-2927-4E3C-AB01-ED59C60C0B4A',
         @RelatedEntityNameFieldMap='User'

/* SQL text to update entity field related entity name field map for entity field ID ECB9CC89-7453-4266-B7EC-B22A5541E3EF */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='ECB9CC89-7453-4266-B7EC-B22A5541E3EF',
         @RelatedEntityNameFieldMap='AssignedToUser'

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



/* SQL text to update entity field related entity name field map for entity field ID F87C6FAE-5FA7-439B-A5BD-C8BF6CBF4F12 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F87C6FAE-5FA7-439B-A5BD-C8BF6CBF4F12',
         @RelatedEntityNameFieldMap='ArtifactType'

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



/* SQL text to update entity field related entity name field map for entity field ID 62F03116-A54B-4FEB-8EB0-7CE19964314E */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='62F03116-A54B-4FEB-8EB0-7CE19964314E',
         @RelatedEntityNameFieldMap='UploadedByUser'

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



/* SQL text to update entity field related entity name field map for entity field ID CFF8B1A0-BF52-4AE2-8693-A90FE3037CC5 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='CFF8B1A0-BF52-4AE2-8693-A90FE3037CC5',
         @RelatedEntityNameFieldMap='AssignedByUser'

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


/* SQL text to update entity field related entity name field map for entity field ID 0B6A2524-CC35-453E-8E7D-8D70873B7AAF */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='0B6A2524-CC35-453E-8E7D-8D70873B7AAF',
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

/* SQL text to update entity field related entity name field map for entity field ID BADCD53F-50C1-43F7-8263-FE4989A05EA0 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='BADCD53F-50C1-43F7-8263-FE4989A05EA0',
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

/* SQL text to update entity field related entity name field map for entity field ID F521DD11-5044-4666-8AE1-506EB1081DDF */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='F521DD11-5044-4666-8AE1-506EB1081DDF',
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



/* SQL text to update entity field related entity name field map for entity field ID DEE19092-EC4B-4A89-B268-C19CC4429774 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='DEE19092-EC4B-4A89-B268-C19CC4429774',
         @RelatedEntityNameFieldMap='ParentCommittee'

/* SQL text to update entity field related entity name field map for entity field ID DB4D851B-9934-444D-B140-C147235EE41B */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='DB4D851B-9934-444D-B140-C147235EE41B',
         @RelatedEntityNameFieldMap='User'

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



/* SQL text to update entity field related entity name field map for entity field ID ADDFD080-69A1-4686-88F2-8E1C340A3175 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='ADDFD080-69A1-4686-88F2-8E1C340A3175',
         @RelatedEntityNameFieldMap='Role'

/* SQL text to update entity field related entity name field map for entity field ID 05441B0C-61E7-4183-B68F-6F9F95677432 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='05441B0C-61E7-4183-B68F-6F9F95677432',
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

/* SQL text to update entity field related entity name field map for entity field ID 8055D132-D018-4A31-8E1E-082B14BD37F6 */
EXEC [${flyway:defaultSchema}].spUpdateEntityFieldRelatedEntityNameFieldMap
         @EntityFieldID='8055D132-D018-4A31-8E1E-082B14BD37F6',
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
         WHERE ID = '969a5bd6-01ab-48a7-8509-53973971adad'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '969a5bd6-01ab-48a7-8509-53973971adad',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = '48c00a38-f152-4b28-8233-a332f0263c03'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'ArtifactType')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '48c00a38-f152-4b28-8233-a332f0263c03',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'fbd6d915-9e1e-486a-9eab-0d0b103dd349'  OR 
               (EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655' AND Name = 'UploadedByUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'fbd6d915-9e1e-486a-9eab-0d0b103dd349',
            'C56CE165-9E35-443B-A834-1C5DCB985655', -- Entity: Artifacts
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
         WHERE ID = 'f7c1b104-2122-4feb-931d-3ace05e50a8f'  OR 
               (EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'f7c1b104-2122-4feb-931d-3ace05e50a8f',
            '9DD138CE-1012-426C-905C-21CC127ECF54', -- Entity: Meetings
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
         WHERE ID = '3970f71d-faca-4bac-baf3-0a9b68ff6db9'  OR 
               (EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '3970f71d-faca-4bac-baf3-0a9b68ff6db9',
            'A2AE180E-EBE2-436E-B894-44E1F6419C79', -- Entity: Terms
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
         WHERE ID = '30fed217-65f5-4f87-8ed4-ad954f7f2a24'  OR 
               (EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB' AND Name = 'User')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '30fed217-65f5-4f87-8ed4-ad954f7f2a24',
            '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', -- Entity: Attendances
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
         WHERE ID = '02c0bcb5-0671-4b6e-a29d-974473bf01d8'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'PresenterUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '02c0bcb5-0671-4b6e-a29d-974473bf01d8',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = '7e3de547-bd46-4341-8afc-6de0003f0cd8'  OR 
               (EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74' AND Name = 'RootParentAgendaItemID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7e3de547-bd46-4341-8afc-6de0003f0cd8',
            'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', -- Entity: Agenda Items
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
         WHERE ID = 'e5f343ec-3a11-407d-888b-ca19d0048205'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'e5f343ec-3a11-407d-888b-ca19d0048205',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = 'd7efdfdc-6062-4a84-bc9a-b6afc60d4a31'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'User')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'd7efdfdc-6062-4a84-bc9a-b6afc60d4a31',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '5bb70562-0cca-44cb-bc50-8bb7d503f8d3'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'Role')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '5bb70562-0cca-44cb-bc50-8bb7d503f8d3',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '2ee3e96d-f3d3-4c01-b76d-35ba560e8708'  OR 
               (EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6' AND Name = 'Term')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2ee3e96d-f3d3-4c01-b76d-35ba560e8708',
            'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', -- Entity: Memberships
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
         WHERE ID = '7a2c21ed-8110-4521-ac25-7b375ce76ad8'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'Type')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7a2c21ed-8110-4521-ac25-7b375ce76ad8',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '2a1ff95d-503b-4d47-bc0e-fe79e66c983f'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'ParentCommittee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '2a1ff95d-503b-4d47-bc0e-fe79e66c983f',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = 'a18af811-5832-4047-8a44-6892fe24083d'  OR 
               (EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915' AND Name = 'RootParentCommitteeID')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            'a18af811-5832-4047-8a44-6892fe24083d',
            '33EEF424-1FFD-42A5-A5FE-790578057915', -- Entity: Committees
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
         WHERE ID = '758cda79-cfd4-4a4e-92d3-74752feeb0a6'  OR 
               (EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5' AND Name = 'ExtendedEntity')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '758cda79-cfd4-4a4e-92d3-74752feeb0a6',
            '9CA38B49-7A62-4E36-9E83-BECA984024E5', -- Entity: Artifact Types
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
         WHERE ID = '7b4ce212-77ad-4965-9c3f-b94cb009dfe9'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'Committee')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '7b4ce212-77ad-4965-9c3f-b94cb009dfe9',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '71e74542-18f5-4bf2-b913-8e82cfa2f6ba'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'AssignedToUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '71e74542-18f5-4bf2-b913-8e82cfa2f6ba',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
         WHERE ID = '8d6835a6-8b4f-4c72-abbc-69cf4a654168'  OR 
               (EntityID = '58956235-749E-4C97-A218-EB3414648113' AND Name = 'AssignedByUser')
         -- check to make sure we're not inserting a duplicate entity field metadata record
      )
      BEGIN
         INSERT INTO [${flyway:defaultSchema}].EntityField
         (
            ID,
            EntityID,
            Sequence,
            Name,
            DisplayName,
            Description,
            Type,
            Length,
            Precision,
            Scale,
            AllowsNull,
            DefaultValue,
            AutoIncrement,
            AllowUpdateAPI,
            IsVirtual,
            RelatedEntityID,
            RelatedEntityFieldName,
            IsNameField,
            IncludeInUserSearchAPI,
            IncludeRelatedEntityNameFieldInBaseView,
            DefaultInView,
            IsPrimaryKey,
            IsUnique,
            RelatedEntityDisplayType
         )
         VALUES
         (
            '8d6835a6-8b4f-4c72-abbc-69cf4a654168',
            '58956235-749E-4C97-A218-EB3414648113', -- Entity: Action Items
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
            WHERE ID = 'CD6B6C32-184A-449D-9BF0-98C49FCE6AC9'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'CD6B6C32-184A-449D-9BF0-98C49FCE6AC9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '42CB72FE-5871-43F5-8866-675ABE6717BC'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '28074781-D8D9-47F0-A1BD-31D5E928E1B0'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'CD6B6C32-184A-449D-9BF0-98C49FCE6AC9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '42CB72FE-5871-43F5-8866-675ABE6717BC'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '30FED217-65F5-4F87-8ED4-AD954F7F2A24'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2203F9D4-FC9B-4B33-A8F1-440BAC0FA587'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '9E8FCCA4-65A0-48EC-8A5D-826A3992919B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '30FED217-65F5-4F87-8ED4-AD954F7F2A24'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '30FED217-65F5-4F87-8ED4-AD954F7F2A24'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '0487C5AB-BE52-4F03-A003-1216D6D181D8'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0487C5AB-BE52-4F03-A003-1216D6D181D8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D37A0576-6152-43DA-9BC7-1593751B2C76'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '48C00A38-F152-4B28-8233-A332F0263C03'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'FBD6D915-9E1E-486A-9EAB-0D0B103DD349'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0487C5AB-BE52-4F03-A003-1216D6D181D8'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '60D9C48E-1D0D-4618-AA36-7DE51690C82B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D37A0576-6152-43DA-9BC7-1593751B2C76'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '48C00A38-F152-4B28-8233-A332F0263C03'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'FBD6D915-9E1E-486A-9EAB-0D0B103DD349'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'D3E14946-9A04-4A39-BD25-3F137F6A7939'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D3E14946-9A04-4A39-BD25-3F137F6A7939'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '9B2D7260-D956-499B-B022-E3362031BF29'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D7164083-43FA-487B-AC68-7E2A03ADF30C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6C0F75BF-003B-4211-8ABF-37A7994C9005'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '7B4CE212-77AD-4965-9C3F-B94CB009DFE9'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '71E74542-18F5-4BF2-B913-8E82CFA2F6BA'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D3E14946-9A04-4A39-BD25-3F137F6A7939'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7B4CE212-77AD-4965-9C3F-B94CB009DFE9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '71E74542-18F5-4BF2-B913-8E82CFA2F6BA'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8D6835A6-8B4F-4C72-ABBC-69CF4A654168'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '1F54A8AC-4D3F-4B31-AB76-2004A81BE006'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '91852417-DDC3-4DFE-BDAB-B99F53747E19'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '1F54A8AC-4D3F-4B31-AB76-2004A81BE006'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D0875E87-C93C-4A9E-A4F0-E28AB0541926'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4C5D299B-0314-4923-83CB-79379C88AEAB'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '02C0BCB5-0671-4B6E-A29D-974473BF01D8'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '1F54A8AC-4D3F-4B31-AB76-2004A81BE006'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D0875E87-C93C-4A9E-A4F0-E28AB0541926'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4C5D299B-0314-4923-83CB-79379C88AEAB'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '02C0BCB5-0671-4B6E-A29D-974473BF01D8'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 18 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EEBB825E-8FDD-4C2D-8409-AF8A803FD4EC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C1781A9E-1684-41EC-8379-316C600AA92F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7B802102-28E2-491F-9144-C43DDE8AA6AD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D3E14946-9A04-4A39-BD25-3F137F6A7939'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CD466EFB-0AD8-46CC-A469-8B1D45AFF410'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Priority',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D7164083-43FA-487B-AC68-7E2A03ADF30C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Action Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6C0F75BF-003B-4211-8ABF-37A7994C9005'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1ACFF630-CA07-4528-BB66-933247E8AD32'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7B4CE212-77AD-4965-9C3F-B94CB009DFE9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned To',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'ECB9CC89-7453-4266-B7EC-B22A5541E3EF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned To User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '71E74542-18F5-4BF2-B913-8E82CFA2F6BA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CFF8B1A0-BF52-4AE2-8693-A90FE3037CC5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Assignment & Ownership',
       GeneratedFormSection = 'Category',
       DisplayName = 'Assigned By User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8D6835A6-8B4F-4C72-ABBC-69CF4A654168'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AA43786A-A5DD-44F4-AACE-F3F68E27806D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8D6743AE-6786-4F88-B3B0-CE07AAEE6EC1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Due Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9B2D7260-D956-499B-B022-E3362031BF29'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completed At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F890F636-9F21-40CC-8296-920309F46CEF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Progress',
       GeneratedFormSection = 'Category',
       DisplayName = 'Completion Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B6554FBB-2489-4C76-B327-4A9224649C2D'
   AND AutoUpdateCategory = 1

/* Set categories for 10 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7FCCED97-1984-4B85-B514-1418C7803A8D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '81B86292-3FC8-49E5-8A94-48C1252B0D32'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'User ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DA1E0EF7-2927-4E3C-AB01-ED59C60C0B4A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Participant & Meeting',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '30FED217-65F5-4F87-8ED4-AD954F7F2A24'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Attendance Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '562A5E9B-19D1-488D-A8F4-C49F2F2F0FF5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Joined At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2203F9D4-FC9B-4B33-A8F1-440BAC0FA587'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Left At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9E8FCCA4-65A0-48EC-8A5D-826A3992919B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Attendance Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8867C0EA-47B3-4F28-81DF-BA21A3B61E3B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2AAB365F-9262-4B91-959A-D7225D67621B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EEBD1D9B-9485-4838-86C3-DD566CB31057'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-tasks */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-tasks', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '58956235-749E-4C97-A218-EB3414648113'
            

/* Set entity icon to fa fa-user-check */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-user-check', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('43daa400-e915-46fe-9589-0b734c90b892', '58956235-749E-4C97-A218-EB3414648113', 'FieldCategoryInfo', '{"Action Overview":{"icon":"fa fa-tasks","description":"Core information about the action item such as title, description, priority and current status"},"Assignment & Ownership":{"icon":"fa fa-users","description":"Details of the committee and users responsible for creating and executing the action"},"Schedule & Progress":{"icon":"fa fa-calendar-alt","description":"Timing, meeting context and progress tracking fields for the action item"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields and primary identifier managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('5b4f42e0-2b03-4cbc-ba24-9877c198b5ee', '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', 'FieldCategoryInfo', '{"Attendance Details":{"icon":"fa fa-calendar-check","description":"Status and timing information for each participant''s meeting attendance"},"Participant & Meeting":{"icon":"fa fa-user-friends","description":"Identifiers linking the attendance record to a user and a meeting"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields and primary key"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('aba063da-2e0f-4a19-b85f-c7350d529bf2', '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB', 'FieldCategoryIcons', '{"Attendance Details":"fa fa-calendar-check","Participant & Meeting":"fa fa-user-friends","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('6e93793b-a769-496e-ac6f-58b389375749', '58956235-749E-4C97-A218-EB3414648113', 'FieldCategoryIcons', '{"Action Overview":"fa fa-tasks","Assignment & Ownership":"fa fa-users","Schedule & Progress":"fa fa-calendar-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '0BEA5A05-1563-40C8-A66D-5818A6DC0AFB'
      

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '58956235-749E-4C97-A218-EB3414648113'
      

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CD6B6C32-184A-449D-9BF0-98C49FCE6AC9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '42CB72FE-5871-43F5-8866-675ABE6717BC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Artifact Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '28074781-D8D9-47F0-A1BD-31D5E928E1B0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3B9F7B0C-C6E9-499F-AFAC-087C1763BC58'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7E5390C0-1532-4F23-9CBD-210E87DDDFCF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Extension Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Extended Entity Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '758CDA79-CFD4-4A4E-92D3-74752FEEB0A6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3725463A-43AA-4237-8E6E-7609BCD3FFCF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A6A65C3D-9B4B-4FD4-86BC-A06FBF060277'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-file-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '9CA38B49-7A62-4E36-9E83-BECA984024E5'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('a22c0814-fd5b-400a-bfb3-2e8a0d501522', '9CA38B49-7A62-4E36-9E83-BECA984024E5', 'FieldCategoryInfo', '{"Artifact Type Details":{"icon":"fa fa-info-circle","description":"Basic descriptive fields that define the artifact type’s name, description and UI icon"},"Extension Settings":{"icon":"fa fa-cogs","description":"Configuration for optional extension entities that can add custom fields to the artifact type"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields tracking creation and modification timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('5bdcd0f1-d8c2-4a97-be9b-b12be6db4ada', '9CA38B49-7A62-4E36-9E83-BECA984024E5', 'FieldCategoryIcons', '{"Artifact Type Details":"fa fa-info-circle","Extension Settings":"fa fa-cogs","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '9CA38B49-7A62-4E36-9E83-BECA984024E5'
      

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2B8E03FE-E927-4785-A16A-9439C6739362'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F228DB95-98F1-4941-8D18-9308C0610DB4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B3ECF32F-47F6-418B-BB7E-2579310654D6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B29A521A-BFC8-4B6B-924F-672B27DA9FFC'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Action Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '562A2E00-4538-4596-8852-9D64AA23494D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F87C6FAE-5FA7-439B-A5BD-C8BF6CBF4F12'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '62F03116-A54B-4FEB-8EB0-7CE19964314E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '969A5BD6-01AB-48A7-8509-53973971ADAD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Associations',
       GeneratedFormSection = 'Category',
       DisplayName = 'Uploaded By User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FBD6D915-9E1E-486A-9EAB-0D0B103DD349'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'General Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0487C5AB-BE52-4F03-A003-1216D6D181D8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'General Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '93AD3CF3-EC1A-4F07-AD87-ED6E8195276F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'General Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'EAC7579C-F9CE-4B6D-8872-9203A0E5A4BA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'General Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '48C00A38-F152-4B28-8233-A332F0263C03'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'File Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'External ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '60D9C48E-1D0D-4618-AA36-7DE51690C82B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'File Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = 'D37A0576-6152-43DA-9BC7-1593751B2C76'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'File Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'MIME Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '03C32276-C213-4250-A5C0-9910F737FB8C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'File Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'File Size',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'FDF0EEBB-600B-4B1E-8F84-7D7C9462E6F9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9D262407-CF57-492F-807A-23D8534E1C95'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8B841447-EA1E-4D2E-AE39-F13406488C7E'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-file-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'C56CE165-9E35-443B-A834-1C5DCB985655'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('25087332-0f95-49b5-a287-d975f6ca837d', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'FieldCategoryInfo', '{"General Information":{"icon":"fa fa-info-circle","description":"Core descriptive fields such as title, description, provider and artifact type"},"File Details":{"icon":"fa fa-file","description":"Technical attributes of the stored file, including link, MIME type, size and external identifier"},"Associations":{"icon":"fa fa-link","description":"Links to related entities like committee, meeting, agenda item, action item and uploader"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields and primary identifier"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('5a9a99ab-7ba8-4d79-aa55-4edef4fa7e8c', 'C56CE165-9E35-443B-A834-1C5DCB985655', 'FieldCategoryIcons', '{"General Information":"fa fa-info-circle","File Details":"fa fa-file","Associations":"fa fa-link","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'C56CE165-9E35-443B-A834-1C5DCB985655'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9170A796-46EF-42B2-ACEC-0831D764A0C6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C4A7AB77-EFC6-45AA-8012-8E887A4EE884'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7E3DE547-BD46-4341-8AFC-6DE0003F0CD8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '91852417-DDC3-4DFE-BDAB-B99F53747E19'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Content',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1F54A8AC-4D3F-4B31-AB76-2004A81BE006'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Content',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3F7BC7C1-811E-482A-AB06-7AF1DBA89B7F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Content',
       GeneratedFormSection = 'Category',
       DisplayName = 'Item Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D0875E87-C93C-4A9E-A4F0-E28AB0541926'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Content',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4C5D299B-0314-4923-83CB-79379C88AEAB'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Agenda Content',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0F64D108-03A9-4A36-A459-59621C3649F1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E06A579B-F809-4E5B-9444-B0CA36E5B196'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Presenter User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '02C0BCB5-0671-4B6E-A29D-974473BF01D8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Duration Minutes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DDCD9393-8454-436B-96C4-C06509600897'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Presentation Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Related Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = 'AA219081-7298-470F-BAC6-033E0BA7C24E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2E0FFBB3-2C0A-42F5-9E53-7FA9FA801DBD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3B1732DC-39B7-4531-97B3-9287082B9939'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '40CA214F-BD52-4F23-ADDB-DD193AA7ECBF'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-list-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-list-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('9e583636-ef10-4031-b246-fa416bf3e374', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'FieldCategoryInfo', '{"Agenda Structure":{"icon":"fa fa-list-ol","description":"Hierarchy and ordering fields that place the item within a meeting agenda"},"Agenda Content":{"icon":"fa fa-align-left","description":"Core descriptive fields that define what the agenda item is and its current state"},"Presentation Details":{"icon":"fa fa-microphone","description":"Information about who presents, timing, and supporting documents for the item"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('e5f95185-7051-4f76-ae65-ee6920deffa3', 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74', 'FieldCategoryIcons', '{"Agenda Structure":"fa fa-list-ol","Agenda Content":"fa fa-align-left","Presentation Details":"fa fa-microphone","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'A060EEDC-4CE6-4F98-B5A0-6CC827A07F74'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '0C0FA649-BE1F-48D7-A062-8B6E4BAB8D25'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '0C0FA649-BE1F-48D7-A062-8B6E4BAB8D25'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'A6DDEB54-1ECB-4D09-A363-8CB0AF36B0B2'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '7A2C21ED-8110-4521-AC25-7B375CE76AD8'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2A1FF95D-503B-4D47-BC0E-FE79E66C983F'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '0C0FA649-BE1F-48D7-A062-8B6E4BAB8D25'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7F18E0B6-D801-4E8E-9B97-45A16934B4B3'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '7A2C21ED-8110-4521-AC25-7B375CE76AD8'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2A1FF95D-503B-4D47-BC0E-FE79E66C983F'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'D7EFDFDC-6062-4A84-BC9A-B6AFC60D4A31'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '11885FBE-2C2B-45AE-AE87-06164611F6E4'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C7C74822-3415-497B-B9AB-C239CCD50A31'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E5F343EC-3A11-407D-888B-CA19D0048205'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D7EFDFDC-6062-4A84-BC9A-B6AFC60D4A31'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '5BB70562-0CCA-44CB-BC50-8BB7D503F8D3'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '2EE3E96D-F3D3-4C01-B76D-35BA560E8708'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'E5F343EC-3A11-407D-888B-CA19D0048205'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'D7EFDFDC-6062-4A84-BC9A-B6AFC60D4A31'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '5BB70562-0CCA-44CB-BC50-8BB7D503F8D3'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2EE3E96D-F3D3-4C01-B76D-35BA560E8708'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'BFFCCFBC-3D11-4CC3-9788-32822EA1BD27'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '45AF7FAD-5A56-4011-8F20-B8DCA337C805'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'BFFCCFBC-3D11-4CC3-9788-32822EA1BD27'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6C514688-791E-4C69-A0AD-50DBA404C8EE'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '4805EE6A-7660-4F27-BDE2-E898352ED0C5'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'BFFCCFBC-3D11-4CC3-9788-32822EA1BD27'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '6C514688-791E-4C69-A0AD-50DBA404C8EE'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '4805EE6A-7660-4F27-BDE2-E898352ED0C5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'E2DA1627-44F7-4907-AA15-F828AB1F98FD'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'E2DA1627-44F7-4907-AA15-F828AB1F98FD'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'DAAA3870-F32E-4D54-9ED8-E469685A441C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'C5ED8156-5792-41B4-AD28-DC9058E38661'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '947E511B-CC57-41AB-9E6A-B16D290A79C1'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F7C1B104-2122-4FEB-931D-3ACE05E50A8F'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'E2DA1627-44F7-4907-AA15-F828AB1F98FD'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '68F89695-50BF-437B-9185-39F296B405A6'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '62443F59-8128-401D-BE89-1AE54B715311'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'C4AEDCBB-C042-4E1A-8B0C-51D616CB0309'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'F7C1B104-2122-4FEB-931D-3ACE05E50A8F'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '96278246-02DA-4C56-A35D-AB691CC3D33B'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '96278246-02DA-4C56-A35D-AB691CC3D33B'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D90231A4-F822-40DE-BAC0-94BDAFF34BA1'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '96278246-02DA-4C56-A35D-AB691CC3D33B'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '2D951924-88B5-44A6-BB98-3A53D520508A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 17 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '32DB8561-15A8-42F7-9F25-BFBC82EB087F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F2A37FE4-09FD-45E2-9F45-AD3EE6CB9E42'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D042601F-EDDC-4651-ABCA-547A5B902EAE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0C0FA649-BE1F-48D7-A062-8B6E4BAB8D25'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '937329BE-7D34-4EFE-B5D8-B43C41DED658'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0B6A2524-CC35-453E-8E7D-8D70873B7AAF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Overview',
       GeneratedFormSection = 'Category',
       DisplayName = 'Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7A2C21ED-8110-4521-AC25-7B375CE76AD8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Organizational Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Organization',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CFB67ED6-B6BF-4B0F-ACE0-DF76EBC32979'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Organizational Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DEE19092-EC4B-4A89-B268-C19CC4429774'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Organizational Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Parent Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2A1FF95D-503B-4D47-BC0E-FE79E66C983F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Organizational Structure',
       GeneratedFormSection = 'Category',
       DisplayName = 'Root Parent Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A18AF811-5832-4047-8A44-6892FE24083D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Charter Document URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '34981EAD-9104-45DF-9722-280DCF3BBB8A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Mission Statement',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7F18E0B6-D801-4E8E-9B97-45A16934B4B3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4E7CE97D-CEDC-4AB4-8428-60B7ECD94B97'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Public',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '73B33AAD-75C3-4B45-A153-303BFFB9CC40'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Formation Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A6DDEB54-1ECB-4D09-A363-8CB0AF36B0B2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Governance & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Dissolution Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2731837B-7E83-48C9-9CD6-76BC4AAC7B69'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '33EEF424-1FFD-42A5-A5FE-790578057915'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('ea10b087-cdb4-43b2-9ecb-ec0db1580af1', '33EEF424-1FFD-42A5-A5FE-790578057915', 'FieldCategoryInfo', '{"Committee Overview":{"icon":"fa fa-info-circle","description":"Core identifying information including name, description, and type data"},"Organizational Structure":{"icon":"fa fa-sitemap","description":"Relationships to parent organization and hierarchical committee links"},"Governance & Status":{"icon":"fa fa-gavel","description":"Charter, mission, status flags, public visibility, and key dates"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields managed by the system"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('8e9b8196-3153-40e2-aa44-2ba911bebba9', '33EEF424-1FFD-42A5-A5FE-790578057915', 'FieldCategoryIcons', '{"Committee Overview":"fa fa-info-circle","Organizational Structure":"fa fa-sitemap","Governance & Status":"fa fa-gavel","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '33EEF424-1FFD-42A5-A5FE-790578057915'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A3E2DB0F-0AF5-4CD6-98AF-2C112AE44DD9'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '69ECF6BC-A209-4784-8575-C67258E439FF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C5DD9A0C-5958-45A9-A485-C6295430D38C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Procedural Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '53973888-050E-4166-A218-F1088FF55D06'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Procedural Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Agenda Item',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '293CDDE5-0DB2-4393-9628-AAC91CCCD3AF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Procedural Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Moved By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F9859C54-D92E-4098-BA6F-9C0F08EF7FE0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Procedural Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Seconded By',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AC77E6A8-50A2-4EAE-BDF9-9F9E45C145B1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Procedural Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '45AF7FAD-5A56-4011-8F20-B8DCA337C805'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BFFCCFBC-3D11-4CC3-9788-32822EA1BD27'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CF1B46F0-8F30-49A4-BAE2-65FAFA7C8E13'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Motion Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5590E9EC-D130-4906-A76D-709E8C2E42BB'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Results',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6C514688-791E-4C69-A0AD-50DBA404C8EE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Results',
       GeneratedFormSection = 'Category',
       DisplayName = 'Result Summary',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '4805EE6A-7660-4F27-BDE2-E898352ED0C5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Results',
       GeneratedFormSection = 'Category',
       DisplayName = 'Yes Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3AAD644E-9D95-413D-A664-E256A733900A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Results',
       GeneratedFormSection = 'Category',
       DisplayName = 'No Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B49BF515-F515-482A-B52F-1E97D77E46A8'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Voting Results',
       GeneratedFormSection = 'Category',
       DisplayName = 'Abstain Count',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '75BE4772-5238-4129-B02A-50DFDC86E50E'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-gavel */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-gavel', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '2F36056D-2C3D-48CE-91FB-8851116B56EC'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('af0a771c-df59-4f6b-9275-23cab7af9ad6', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'FieldCategoryInfo', '{"Motion Details":{"icon":"fa fa-file-alt","description":"Core information describing the motion, including title, full text and any notes"},"Procedural Information":{"icon":"fa fa-users","description":"Contextual data linking the motion to meetings, agenda items, and the members who moved or seconded it"},"Voting Results":{"icon":"fa fa-check-circle","description":"Outcome of the vote together with counts and a human‑readable summary"},"System Metadata":{"icon":"fa fa-cog","description":"Audit and technical fields such as identifiers and timestamps"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('81f8dd76-634c-496c-a9cc-fd88f8e0a886', '2F36056D-2C3D-48CE-91FB-8851116B56EC', 'FieldCategoryIcons', '{"Motion Details":"fa fa-file-alt","Procedural Information":"fa fa-users","Voting Results":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '2F36056D-2C3D-48CE-91FB-8851116B56EC'
      

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1DFA70BE-2125-416A-B7A7-65E0E0E1FF37'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Artifact',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '47C92887-806D-4617-A1B0-D47BBE10D62B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Minutes Record',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2D951924-88B5-44A6-BB98-3A53D520508A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approval Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '96278246-02DA-4C56-A35D-AB691CC3D33B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D90231A4-F822-40DE-BAC0-94BDAFF34BA1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Approval Tracking',
       GeneratedFormSection = 'Category',
       DisplayName = 'Approved By Meeting',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '714FBC24-6EDC-452F-8203-891AC6D95447'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '91E51663-00A7-4E12-838F-B78E4CC1BD6D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'B322B636-B0F9-4DC8-8EDB-200B17259DE2'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-file-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-file-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'A272B72A-C037-4949-99A6-8977F8B65F8A'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('f9fbfb3f-036a-418b-8780-c6d5e7c8d04d', 'A272B72A-C037-4949-99A6-8977F8B65F8A', 'FieldCategoryInfo', '{"Minutes Record":{"icon":"fa fa-sticky-note","description":"Core identifier, linked artifact, and free‑form notes for the minutes."},"Approval Tracking":{"icon":"fa fa-check-circle","description":"Status, timestamp, and meeting reference that capture the approval workflow of the minutes."},"System Metadata":{"icon":"fa fa-cog","description":"Audit fields automatically maintained by the system for creation and update times."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('721a5623-88d6-4bb4-836b-0e63dbdff414', 'A272B72A-C037-4949-99A6-8977F8B65F8A', 'FieldCategoryIcons', '{"Minutes Record":"fa fa-sticky-note","Approval Tracking":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: supporting, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'A272B72A-C037-4949-99A6-8977F8B65F8A'
      

/* Set categories for 16 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Membership ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '72221AB9-EF18-473E-BA79-8CC6B1EC530D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F521DD11-5044-4666-8AE1-506EB1081DDF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'User',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DB4D851B-9934-444D-B140-C147235EE41B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'ADDFD080-69A1-4686-88F2-8E1C340A3175'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Membership Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '05441B0C-61E7-4183-B68F-6F9F95677432'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '11885FBE-2C2B-45AE-AE87-06164611F6E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C7C74822-3415-497B-B9AB-C239CCD50A31'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2C157D2F-E854-44CB-9AC5-1DFA93AA60DE'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Timeline & Status',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Reason',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D1D44A3F-2358-4FF7-AC5F-0EABC554CFCF'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'CD71924A-C451-4C95-A582-1EB7F4F31CB3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E5F343EC-3A11-407D-888B-CA19D0048205'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'User Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D7EFDFDC-6062-4A84-BC9A-B6AFC60D4A31'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Role Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '5BB70562-0CCA-44CB-BC50-8BB7D503F8D3'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Related Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '2EE3E96D-F3D3-4C01-B76D-35BA560E8708'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '36480F23-4A20-439D-AD06-6CA965CEA78E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '06C7A796-DBE4-456B-81C5-4823FC1B539E'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-handshake */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-handshake', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('1d36edae-3153-47f5-84fa-e92c9e12d94a', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'FieldCategoryInfo', '{"Membership Details":{"icon":"fa fa-users","description":"Core identifiers linking a membership to its committee, user, role, and optional term"},"Timeline & Status":{"icon":"fa fa-calendar-alt","description":"Key dates and current status information for the membership"},"Related Information":{"icon":"fa fa-address-card","description":"Human‑readable names of related entities and any additional notes"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit timestamps for creation and updates"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('4bb24765-8d0c-4ef7-a628-a0da9b20279d', 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6', 'FieldCategoryIcons', '{"Membership Details":"fa fa-users","Timeline & Status":"fa fa-calendar-alt","Related Information":"fa fa-address-card","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'DAB17C3A-3AF0-44D2-8435-6F1BB9BD63C6'
      

/* Set categories for 19 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E9FE3749-4EB3-40CB-A05D-89C0BEC6F215'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BADCD53F-50C1-43F7-8263-FE4989A05EA0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F7C1B104-2122-4FEB-931D-3ACE05E50A8F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Title',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E2DA1627-44F7-4907-AA15-F828AB1F98FD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '91921C43-936A-40EF-85E4-EA5B2FC22FDD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Meeting Core',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '947E511B-CC57-41AB-9E6A-B16D290A79C1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DAAA3870-F32E-4D54-9ED8-E469685A441C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date & Time',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3709F094-12FF-4FAD-953F-99E53B07E9F2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule & Timing',
       GeneratedFormSection = 'Category',
       DisplayName = 'Time Zone',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6C2FF101-F20A-4134-9555-8AFBA3E69E57'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location Type',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C5ED8156-5792-41B4-AD28-DC9058E38661'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Location',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '68F89695-50BF-437B-9185-39F296B405A6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Provider',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DB819990-57BC-4607-B847-B47AF8CA52E6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Meeting ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '62443F59-8128-401D-BE89-1AE54B715311'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Join URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '5CD2D762-450A-4497-9C4D-3C28D0EC2728'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Video Recording URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '34F35A36-F343-4383-AA5D-08668FD74183'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Transcript URL',
       ExtendedType = 'URL',
       CodeType = NULL
   WHERE ID = '9BE33D72-10C6-46FD-B4D4-747C63C7CA0B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Venue & Access',
       GeneratedFormSection = 'Category',
       DisplayName = 'Calendar Event ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'C4AEDCBB-C042-4E1A-8B0C-51D616CB0309'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1050E5E0-7CCF-4A49-AD91-77AE04BF218F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '76666814-C26F-4B2A-9F25-EB338E261EF5'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-calendar */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '9DD138CE-1012-426C-905C-21CC127ECF54'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('1c1074d7-2591-4de6-85cb-f82cb9ff05ce', '9DD138CE-1012-426C-905C-21CC127ECF54', 'FieldCategoryInfo', '{"Meeting Core":{"icon":"fa fa-file-alt","description":"Essential meeting information such as title, description, status, and associated committee."},"Schedule & Timing":{"icon":"fa fa-calendar-alt","description":"Date, time, and timezone details that define when the meeting occurs."},"Venue & Access":{"icon":"fa fa-map-marker-alt","description":"Location format, physical address, and video‑conferencing details for attending the meeting."},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields for record identification and change tracking."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('49b32690-26a1-4613-8aa3-2e21aa18d116', '9DD138CE-1012-426C-905C-21CC127ECF54', 'FieldCategoryIcons', '{"Meeting Core":"fa fa-file-alt","Schedule & Timing":"fa fa-calendar-alt","Venue & Access":"fa fa-map-marker-alt","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: primary, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '9DD138CE-1012-426C-905C-21CC127ECF54'
      

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '8E21793F-D4A8-418C-8368-BCCE5848B16A'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8E21793F-D4A8-418C-8368-BCCE5848B16A'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'DC110D22-110C-47ED-A277-06C17DECBC2C'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6C823395-9111-4917-8897-8E676595F4CA'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '63290696-EAB2-41B5-ADC8-AAF480890187'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3970F71D-FACA-4BAC-BAF3-0A9B68FF6DB9'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8E21793F-D4A8-418C-8368-BCCE5848B16A'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '63290696-EAB2-41B5-ADC8-AAF480890187'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '3970F71D-FACA-4BAC-BAF3-0A9B68FF6DB9'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'F3B21119-B14E-4312-8DC5-01A1855BA7A2'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = '6021AF47-038A-4659-A061-26B3F013F7E5'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '6021AF47-038A-4659-A061-26B3F013F7E5'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'D874FC4B-601A-4C85-9228-63F253E2615E'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'AD6D8B74-4E24-48DB-9FDD-80D5D3A41452'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '49D543E0-DCA6-4779-9579-32DDE3BA5D4D'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = '6021AF47-038A-4659-A061-26B3F013F7E5'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set field properties for entity */

            UPDATE [${flyway:defaultSchema}].EntityField
            SET IsNameField = 1
            WHERE ID = 'A4CF9951-0300-4517-9B68-D3184186A844'
            AND AutoUpdateIsNameField = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'A4CF9951-0300-4517-9B68-D3184186A844'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '3F30B872-96D6-4836-BAA5-4E0258BBEF45'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = '7000EA37-8DFA-42DD-8A56-BCE05EB437F2'
            AND AutoUpdateDefaultInView = 1
         

            UPDATE [${flyway:defaultSchema}].EntityField
            SET DefaultInView = 1
            WHERE ID = 'BA197517-12D2-4504-B7E3-240E29955ED4'
            AND AutoUpdateDefaultInView = 1
         

               UPDATE [${flyway:defaultSchema}].EntityField
               SET IncludeInUserSearchAPI = 1
               WHERE ID = 'A4CF9951-0300-4517-9B68-D3184186A844'
               AND AutoUpdateIncludeInUserSearchAPI = 1
            

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '0655502A-2D2F-48A8-ACD4-E89EC84DB5D2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '73C5F7B8-0391-4ABF-AA5D-2DECFE27AE57'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '13974BD1-28FD-49D1-9F30-1D10603DE0E4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6021AF47-038A-4659-A061-26B3F013F7E5'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DB2A20DA-CBB9-4834-8489-24CA1496EAC0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Sequence',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '49D543E0-DCA6-4779-9579-32DDE3BA5D4D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Officer Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D874FC4B-601A-4C85-9228-63F253E2615E'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Voting Role',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'AD6D8B74-4E24-48DB-9FDD-80D5D3A41452'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Role Settings',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Permissions',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E18E92C9-0600-408A-BFC2-41FE35ECF93D'
   AND AutoUpdateCategory = 1

/* Set categories for 9 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'D6969941-297E-4923-9776-F90457CE1529'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8055D132-D018-4A31-8E1E-082B14BD37F6'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Term Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8E21793F-D4A8-418C-8368-BCCE5848B16A'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'Start Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DC110D22-110C-47ED-A277-06C17DECBC2C'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Schedule',
       GeneratedFormSection = 'Category',
       DisplayName = 'End Date',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '6C823395-9111-4917-8897-8E676595F4CA'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Status',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '63290696-EAB2-41B5-ADC8-AAF480890187'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3FDAA185-5090-488E-9291-1FCAEA6ABAFD'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '95A9967D-8AB3-4D6B-8B3F-9FFCD94F346B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Core Information',
       GeneratedFormSection = 'Category',
       DisplayName = 'Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3970F71D-FACA-4BAC-BAF3-0A9B68FF6DB9'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB'
            

/* Set categories for 8 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BC139F61-2927-4BFF-A9D7-BC7C668FAE6D'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Name',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A4CF9951-0300-4517-9B68-D3184186A844'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Description',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E9DB03DC-F775-4AD5-862F-5ABB4DDA22A0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Is Standards Committee',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '3F30B872-96D6-4836-BAA5-4E0258BBEF45'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Default Term (Months)',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '7000EA37-8DFA-42DD-8A56-BCE05EB437F2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Committee Type Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Icon Class',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'BA197517-12D2-4504-B7E3-240E29955ED4'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'A0DE2889-A8D0-4514-8A3E-9D32C80D5E3B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '54C8B3B6-DD0F-4BAB-8D4F-E8A22344068B'
   AND AutoUpdateCategory = 1

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('eabc1fa7-142c-4a8a-93f1-470c40e9aa36', '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', 'FieldCategoryInfo', '{"Role Details":{"icon":"fa fa-id-badge","description":"Core identification and ordering information for committee roles"},"Role Settings":{"icon":"fa fa-sliders-h","description":"Flags and default permission settings that define role behavior"},"System Metadata":{"icon":"fa fa-cog","description":"Technical audit fields and primary key of the record"}}', GETUTCDATE(), GETUTCDATE())
         

/* Set entity icon to fa fa-calendar-alt */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-calendar-alt', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79'
            

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('e99f2c6e-9677-4e90-bccc-8f012051bef7', '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB', 'FieldCategoryIcons', '{"Role Details":"fa fa-id-badge","Role Settings":"fa fa-sliders-h","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '8C4DEB50-EAA3-4D1D-96FA-69855E94FABB'
      

/* Set entity icon to fa fa-users */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-users', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('193b066a-b92d-4fcd-9bba-c6df87595ff9', 'A2AE180E-EBE2-436E-B894-44E1F6419C79', 'FieldCategoryInfo', '{"Core Information":{"icon":"fa fa-info-circle","description":"Key details identifying the term, its status, and associated committee."},"Schedule":{"icon":"fa fa-calendar","description":"Temporal bounds of the term and reference to its committee."},"System Metadata":{"icon":"fa fa-cog","description":"Audit and technical fields managed by the system."}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('08f88907-97ad-4ef6-bc63-dc244d5ba493', 'A2AE180E-EBE2-436E-B894-44E1F6419C79', 'FieldCategoryIcons', '{"Core Information":"fa fa-info-circle","Schedule":"fa fa-calendar","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('b852236b-560f-4ee1-b55a-f92d71ff8b6b', '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', 'FieldCategoryInfo', '{"Committee Type Details":{"icon":"fa fa-info-circle","description":"Core attributes defining each committee type, including name, description, standards flag, default term and UI icon"},"System Metadata":{"icon":"fa fa-cog","description":"System-managed audit fields tracking record creation and updates"}}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'A2AE180E-EBE2-436E-B894-44E1F6419C79'
      

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('a943cb28-5e07-410c-8cb4-c155cd83d2fe', '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1', 'FieldCategoryIcons', '{"Committee Type Details":"fa fa-info-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=0 for NEW entity (category: reference, confidence: high) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 0, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = '5AAF7977-1A4B-4C1A-906D-F503EEFC40E1'
      

/* Set categories for 7 fields */
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'ID',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '1815B943-A584-40EA-9277-1E9D77295E2F'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Motion',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'E845F31E-496A-4AD2-9545-05391E6EF8B0'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Member',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '214C3DF0-ABC0-4A48-A323-3C924D8FE244'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Vote',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '8C27BD12-DAE9-4148-8D6E-BEEBC2346FE1'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'Vote Details',
       GeneratedFormSection = 'Category',
       DisplayName = 'Notes',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'F3B21119-B14E-4312-8DC5-01A1855BA7A2'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Created At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = 'DDB9B491-2E83-435C-9C41-DFAEEF77887B'
   AND AutoUpdateCategory = 1
UPDATE [${flyway:defaultSchema}].EntityField
   SET Category = 'System Metadata',
       GeneratedFormSection = 'Category',
       DisplayName = 'Updated At',
       ExtendedType = NULL,
       CodeType = NULL
   WHERE ID = '9EEAF698-BC20-43B0-8E83-BF7946B7B5D1'
   AND AutoUpdateCategory = 1

/* Set entity icon to fa fa-balance-scale */

               UPDATE [${flyway:defaultSchema}].Entity
               SET Icon = 'fa fa-balance-scale', __mj_UpdatedAt = GETUTCDATE()
               WHERE ID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81'
            

/* Insert FieldCategoryInfo setting for entity */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('a41e6ed6-22a9-42e6-aaba-ff7d1ddf0083', 'C358AA46-AD4F-4A39-97B1-BE8D39961A81', 'FieldCategoryInfo', '{"Vote Details":{"icon":"fa fa-check-circle","description":"Core voting information linking a member to a motion, including the choice and any notes"},"System Metadata":{"icon":"fa fa-cog","description":"System‑managed audit fields and record identifier"}}', GETUTCDATE(), GETUTCDATE())
         

/* Insert FieldCategoryIcons setting (legacy) */

            INSERT INTO [${flyway:defaultSchema}].EntitySetting (ID, EntityID, Name, Value, __mj_CreatedAt, __mj_UpdatedAt)
            VALUES ('c619a748-3710-4e87-9b9f-f52d264c7e4c', 'C358AA46-AD4F-4A39-97B1-BE8D39961A81', 'FieldCategoryIcons', '{"Vote Details":"fa fa-check-circle","System Metadata":"fa fa-cog"}', GETUTCDATE(), GETUTCDATE())
         

/* Set DefaultForNewUser=1 for NEW entity (category: supporting, confidence: medium) */

         UPDATE [${flyway:defaultSchema}].ApplicationEntity
         SET DefaultForNewUser = 1, __mj_UpdatedAt = GETUTCDATE()
         WHERE EntityID = 'C358AA46-AD4F-4A39-97B1-BE8D39961A81'
      

