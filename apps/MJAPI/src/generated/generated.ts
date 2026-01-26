/********************************************************************************
* ALL ENTITIES - TypeGraphQL Type Class Definition - AUTO GENERATED FILE
* Generated Entities and Resolvers for Server
*
*   >>> DO NOT MODIFY THIS FILE!!!!!!!!!!!!
*   >>> YOUR CHANGES WILL BE OVERWRITTEN
*   >>> THE NEXT TIME THIS FILE IS GENERATED
*
**********************************************************************************/
import { Arg, Ctx, Int, Query, Resolver, Field, Float, ObjectType, FieldResolver, Root, InputType, Mutation,
            PubSub, PubSubEngine, ResolverBase, RunViewByIDInput, RunViewByNameInput, RunDynamicViewInput,
            AppContext, KeyValuePairInput, DeleteOptionsInput, GraphQLTimestamp as Timestamp,
            GetReadOnlyDataSource, GetReadWriteDataSource, GetReadOnlyProvider, GetReadWriteProvider } from '@memberjunction/server';
import { SQLServerDataProvider } from '@memberjunction/sqlserver-dataprovider';
import { Metadata, EntityPermissionType, CompositeKey, UserInfo } from '@memberjunction/core'

import { MaxLength } from 'class-validator';
import * as mj_core_schema_server_object_types from '@memberjunction/server'


import { ActionItemEntity, AgendaItemEntity, ArtifactEntity, AttendanceEntity, CommitteeEntity, MeetingEntity, MembershipEntity, Role__CommitteesEntity, TermEntity, TypeEntity } from 'mj_generatedentities';
    

//****************************************************************************
// ENTITY CLASS for Action Items
//****************************************************************************
@ObjectType({ description: `Tasks and action items assigned from committees or meetings` })
export class CommitteesActionItem_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    CommitteeID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    MeetingID?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    AgendaItemID?: string;
        
    @Field({description: `Title of the action item`}) 
    @MaxLength(510)
    Title: string;
        
    @Field({nullable: true, description: `Detailed description of what needs to be done`}) 
    Description?: string;
        
    @Field() 
    @MaxLength(16)
    AssignedToUserID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    AssignedByUserID?: string;
        
    @Field({nullable: true, description: `Due date for completion`}) 
    @MaxLength(3)
    DueDate?: Date;
        
    @Field({description: `Priority level: Low, Medium, High, Critical`}) 
    @MaxLength(40)
    Priority: string;
        
    @Field({description: `Current status: Open, InProgress, Blocked, Completed, Cancelled`}) 
    @MaxLength(100)
    Status: string;
        
    @Field({nullable: true, description: `Timestamp when the action item was completed`}) 
    @MaxLength(10)
    CompletedAt?: Date;
        
    @Field({nullable: true, description: `Notes about how the item was completed`}) 
    CompletionNotes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Committee: string;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    Meeting?: string;
        
    @Field() 
    @MaxLength(200)
    AssignedToUser: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    AssignedByUser?: string;
        
    @Field(() => [CommitteesArtifact_])
    Artifacts_ActionItemIDArray: CommitteesArtifact_[]; // Link to Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Action Items
//****************************************************************************
@InputType()
export class CreateCommitteesActionItemInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    MeetingID: string | null;

    @Field({ nullable: true })
    AgendaItemID: string | null;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    AssignedToUserID?: string;

    @Field({ nullable: true })
    AssignedByUserID: string | null;

    @Field({ nullable: true })
    DueDate: Date | null;

    @Field({ nullable: true })
    Priority?: string;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    CompletedAt: Date | null;

    @Field({ nullable: true })
    CompletionNotes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Action Items
//****************************************************************************
@InputType()
export class UpdateCommitteesActionItemInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    MeetingID?: string | null;

    @Field({ nullable: true })
    AgendaItemID?: string | null;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    AssignedToUserID?: string;

    @Field({ nullable: true })
    AssignedByUserID?: string | null;

    @Field({ nullable: true })
    DueDate?: Date | null;

    @Field({ nullable: true })
    Priority?: string;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    CompletedAt?: Date | null;

    @Field({ nullable: true })
    CompletionNotes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Action Items
//****************************************************************************
@ObjectType()
export class RunCommitteesActionItemViewResult {
    @Field(() => [CommitteesActionItem_])
    Results: CommitteesActionItem_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesActionItem_)
export class CommitteesActionItemResolver extends ResolverBase {
    @Query(() => RunCommitteesActionItemViewResult)
    async RunCommitteesActionItemViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesActionItemViewResult)
    async RunCommitteesActionItemViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesActionItemViewResult)
    async RunCommitteesActionItemDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Action Items';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesActionItem_, { nullable: true })
    async CommitteesActionItem(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesActionItem_ | null> {
        this.CheckUserReadPermissions('Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Action Items', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesArtifact_])
    async Artifacts_ActionItemIDArray(@Root() committeesactionitem_: CommitteesActionItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [ActionItemID]='${committeesactionitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesActionItem_)
    async CreateCommitteesActionItem(
        @Arg('input', () => CreateCommitteesActionItemInput) input: CreateCommitteesActionItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Action Items', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesActionItem_)
    async UpdateCommitteesActionItem(
        @Arg('input', () => UpdateCommitteesActionItemInput) input: UpdateCommitteesActionItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Action Items', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesActionItem_)
    async DeleteCommitteesActionItem(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Action Items', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Agenda Items
//****************************************************************************
@ObjectType({ description: `Structured agenda items for meetings with hierarchy support` })
export class CommitteesAgendaItem_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    MeetingID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    ParentAgendaItemID?: string;
        
    @Field(() => Int, {description: `Display order within the meeting agenda`}) 
    Sequence: number;
        
    @Field({description: `Title of the agenda item`}) 
    @MaxLength(510)
    Title: string;
        
    @Field({nullable: true, description: `Detailed description of the agenda item`}) 
    Description?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    PresenterUserID?: string;
        
    @Field(() => Int, {nullable: true, description: `Estimated duration in minutes`}) 
    DurationMinutes?: number;
        
    @Field({description: `Type of item: Information, Discussion, Action, Vote, Report, Other`}) 
    @MaxLength(100)
    ItemType: string;
        
    @Field({nullable: true, description: `URL to related document for this item`}) 
    @MaxLength(2000)
    RelatedDocumentURL?: string;
        
    @Field({description: `Current status: Pending, Discussed, Tabled, Completed, Skipped`}) 
    @MaxLength(100)
    Status: string;
        
    @Field({nullable: true, description: `Discussion notes and outcomes captured during the meeting`}) 
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Meeting: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    PresenterUser?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    RootParentAgendaItemID?: string;
        
    @Field(() => [CommitteesActionItem_])
    ActionItems_AgendaItemIDArray: CommitteesActionItem_[]; // Link to ActionItems
    
    @Field(() => [CommitteesAgendaItem_])
    AgendaItems_ParentAgendaItemIDArray: CommitteesAgendaItem_[]; // Link to AgendaItems
    
    @Field(() => [CommitteesArtifact_])
    Artifacts_AgendaItemIDArray: CommitteesArtifact_[]; // Link to Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Agenda Items
//****************************************************************************
@InputType()
export class CreateCommitteesAgendaItemInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    ParentAgendaItemID: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    PresenterUserID: string | null;

    @Field(() => Int, { nullable: true })
    DurationMinutes: number | null;

    @Field({ nullable: true })
    ItemType?: string;

    @Field({ nullable: true })
    RelatedDocumentURL: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Agenda Items
//****************************************************************************
@InputType()
export class UpdateCommitteesAgendaItemInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    ParentAgendaItemID?: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    PresenterUserID?: string | null;

    @Field(() => Int, { nullable: true })
    DurationMinutes?: number | null;

    @Field({ nullable: true })
    ItemType?: string;

    @Field({ nullable: true })
    RelatedDocumentURL?: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Agenda Items
//****************************************************************************
@ObjectType()
export class RunCommitteesAgendaItemViewResult {
    @Field(() => [CommitteesAgendaItem_])
    Results: CommitteesAgendaItem_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesAgendaItem_)
export class CommitteesAgendaItemResolver extends ResolverBase {
    @Query(() => RunCommitteesAgendaItemViewResult)
    async RunCommitteesAgendaItemViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesAgendaItemViewResult)
    async RunCommitteesAgendaItemViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesAgendaItemViewResult)
    async RunCommitteesAgendaItemDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Agenda Items';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesAgendaItem_, { nullable: true })
    async CommitteesAgendaItem(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesAgendaItem_ | null> {
        this.CheckUserReadPermissions('Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Agenda Items', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesActionItem_])
    async ActionItems_AgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [AgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesAgendaItem_])
    async AgendaItems_ParentAgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [ParentAgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Agenda Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Artifacts_AgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [AgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesAgendaItem_)
    async CreateCommitteesAgendaItem(
        @Arg('input', () => CreateCommitteesAgendaItemInput) input: CreateCommitteesAgendaItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Agenda Items', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesAgendaItem_)
    async UpdateCommitteesAgendaItem(
        @Arg('input', () => UpdateCommitteesAgendaItemInput) input: UpdateCommitteesAgendaItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Agenda Items', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesAgendaItem_)
    async DeleteCommitteesAgendaItem(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Agenda Items', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Artifacts
//****************************************************************************
@ObjectType({ description: `Links to external documents and files from various providers` })
export class CommitteesArtifact_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    CommitteeID?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    MeetingID?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    AgendaItemID?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    ActionItemID?: string;
        
    @Field({description: `Display title for the artifact`}) 
    @MaxLength(510)
    Title: string;
        
    @Field({nullable: true, description: `Description of the artifact contents`}) 
    Description?: string;
        
    @Field({description: `Storage provider: GoogleDrive, SharePoint, Box, OneDrive, Dropbox, URL`}) 
    @MaxLength(100)
    Provider: string;
        
    @Field({nullable: true, description: `Provider-specific document or file ID`}) 
    @MaxLength(1000)
    ExternalID?: string;
        
    @Field({description: `Direct URL to access the artifact`}) 
    @MaxLength(4000)
    URL: string;
        
    @Field({nullable: true, description: `MIME type of the file`}) 
    @MaxLength(200)
    MimeType?: string;
        
    @Field(() => Int, {nullable: true, description: `File size in bytes`}) 
    FileSize?: number;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    UploadedByUserID?: string;
        
    @Field({description: `Type of artifact: Document, Spreadsheet, Presentation, Minutes, Agenda, Recording, Transcript, Image, Other`}) 
    @MaxLength(100)
    ArtifactType: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    Committee?: string;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    Meeting?: string;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    ActionItem?: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    UploadedByUser?: string;
        
}

//****************************************************************************
// INPUT TYPE for Artifacts
//****************************************************************************
@InputType()
export class CreateCommitteesArtifactInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    CommitteeID: string | null;

    @Field({ nullable: true })
    MeetingID: string | null;

    @Field({ nullable: true })
    AgendaItemID: string | null;

    @Field({ nullable: true })
    ActionItemID: string | null;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    Provider?: string;

    @Field({ nullable: true })
    ExternalID: string | null;

    @Field({ nullable: true })
    URL?: string;

    @Field({ nullable: true })
    MimeType: string | null;

    @Field(() => Int, { nullable: true })
    FileSize: number | null;

    @Field({ nullable: true })
    UploadedByUserID: string | null;

    @Field({ nullable: true })
    ArtifactType?: string;
}
    

//****************************************************************************
// INPUT TYPE for Artifacts
//****************************************************************************
@InputType()
export class UpdateCommitteesArtifactInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    CommitteeID?: string | null;

    @Field({ nullable: true })
    MeetingID?: string | null;

    @Field({ nullable: true })
    AgendaItemID?: string | null;

    @Field({ nullable: true })
    ActionItemID?: string | null;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    Provider?: string;

    @Field({ nullable: true })
    ExternalID?: string | null;

    @Field({ nullable: true })
    URL?: string;

    @Field({ nullable: true })
    MimeType?: string | null;

    @Field(() => Int, { nullable: true })
    FileSize?: number | null;

    @Field({ nullable: true })
    UploadedByUserID?: string | null;

    @Field({ nullable: true })
    ArtifactType?: string;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Artifacts
//****************************************************************************
@ObjectType()
export class RunCommitteesArtifactViewResult {
    @Field(() => [CommitteesArtifact_])
    Results: CommitteesArtifact_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesArtifact_)
export class CommitteesArtifactResolver extends ResolverBase {
    @Query(() => RunCommitteesArtifactViewResult)
    async RunCommitteesArtifactViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesArtifactViewResult)
    async RunCommitteesArtifactViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesArtifactViewResult)
    async RunCommitteesArtifactDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Artifacts';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesArtifact_, { nullable: true })
    async CommitteesArtifact(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesArtifact_ | null> {
        this.CheckUserReadPermissions('Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Artifacts', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesArtifact_)
    async CreateCommitteesArtifact(
        @Arg('input', () => CreateCommitteesArtifactInput) input: CreateCommitteesArtifactInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Artifacts', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesArtifact_)
    async UpdateCommitteesArtifact(
        @Arg('input', () => UpdateCommitteesArtifactInput) input: UpdateCommitteesArtifactInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Artifacts', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesArtifact_)
    async DeleteCommitteesArtifact(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Artifacts', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Attendances
//****************************************************************************
@ObjectType({ description: `Meeting attendance records for committee members` })
export class CommitteesAttendance_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    MeetingID: string;
        
    @Field() 
    @MaxLength(16)
    UserID: string;
        
    @Field({description: `Attendance status: Expected, Present, Absent, Excused, Partial`}) 
    @MaxLength(100)
    AttendanceStatus: string;
        
    @Field({nullable: true, description: `Timestamp when the attendee joined the meeting`}) 
    @MaxLength(10)
    JoinedAt?: Date;
        
    @Field({nullable: true, description: `Timestamp when the attendee left the meeting`}) 
    @MaxLength(10)
    LeftAt?: Date;
        
    @Field({nullable: true, description: `Additional notes about attendance`}) 
    @MaxLength(1000)
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Meeting: string;
        
    @Field() 
    @MaxLength(200)
    User: string;
        
}

//****************************************************************************
// INPUT TYPE for Attendances
//****************************************************************************
@InputType()
export class CreateCommitteesAttendanceInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    UserID?: string;

    @Field({ nullable: true })
    AttendanceStatus?: string;

    @Field({ nullable: true })
    JoinedAt: Date | null;

    @Field({ nullable: true })
    LeftAt: Date | null;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Attendances
//****************************************************************************
@InputType()
export class UpdateCommitteesAttendanceInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    UserID?: string;

    @Field({ nullable: true })
    AttendanceStatus?: string;

    @Field({ nullable: true })
    JoinedAt?: Date | null;

    @Field({ nullable: true })
    LeftAt?: Date | null;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Attendances
//****************************************************************************
@ObjectType()
export class RunCommitteesAttendanceViewResult {
    @Field(() => [CommitteesAttendance_])
    Results: CommitteesAttendance_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesAttendance_)
export class CommitteesAttendanceResolver extends ResolverBase {
    @Query(() => RunCommitteesAttendanceViewResult)
    async RunCommitteesAttendanceViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesAttendanceViewResult)
    async RunCommitteesAttendanceViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesAttendanceViewResult)
    async RunCommitteesAttendanceDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Attendances';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesAttendance_, { nullable: true })
    async CommitteesAttendance(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesAttendance_ | null> {
        this.CheckUserReadPermissions('Attendances', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAttendances] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Attendances', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Attendances', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesAttendance_)
    async CreateCommitteesAttendance(
        @Arg('input', () => CreateCommitteesAttendanceInput) input: CreateCommitteesAttendanceInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Attendances', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesAttendance_)
    async UpdateCommitteesAttendance(
        @Arg('input', () => UpdateCommitteesAttendanceInput) input: UpdateCommitteesAttendanceInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Attendances', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesAttendance_)
    async DeleteCommitteesAttendance(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Attendances', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees
//****************************************************************************
@ObjectType({ description: `Core committee records with hierarchy support` })
export class CommitteesCommittee_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field({description: `Official name of the committee`}) 
    @MaxLength(510)
    Name: string;
        
    @Field({nullable: true, description: `Detailed description of the committee purpose and scope`}) 
    Description?: string;
        
    @Field() 
    @MaxLength(16)
    TypeID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    ParentCommitteeID?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    OrganizationID?: string;
        
    @Field({nullable: true, description: `URL to the committee charter document`}) 
    @MaxLength(2000)
    CharterDocumentURL?: string;
        
    @Field({nullable: true, description: `Brief statement of the committee mission`}) 
    MissionStatement?: string;
        
    @Field({description: `Current status: Active, Inactive, Pending, or Dissolved`}) 
    @MaxLength(100)
    Status: string;
        
    @Field(() => Boolean, {description: `Whether the committee is visible to all users`}) 
    IsPublic: boolean;
        
    @Field({nullable: true, description: `Date the committee was formed`}) 
    @MaxLength(3)
    FormationDate?: Date;
        
    @Field({nullable: true, description: `Date the committee was dissolved, if applicable`}) 
    @MaxLength(3)
    DissolutionDate?: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(200)
    Type: string;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    ParentCommittee?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    RootParentCommitteeID?: string;
        
    @Field(() => [CommitteesCommittee_])
    Committees_ParentCommitteeIDArray: CommitteesCommittee_[]; // Link to Committees
    
    @Field(() => [CommitteesMeeting_])
    Meetings_CommitteeIDArray: CommitteesMeeting_[]; // Link to Meetings
    
    @Field(() => [CommitteesTerm_])
    Terms_CommitteeIDArray: CommitteesTerm_[]; // Link to Terms
    
    @Field(() => [CommitteesMembership_])
    Memberships_CommitteeIDArray: CommitteesMembership_[]; // Link to Memberships
    
    @Field(() => [CommitteesActionItem_])
    ActionItems_CommitteeIDArray: CommitteesActionItem_[]; // Link to ActionItems
    
    @Field(() => [CommitteesArtifact_])
    Artifacts_CommitteeIDArray: CommitteesArtifact_[]; // Link to Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Committees
//****************************************************************************
@InputType()
export class CreateCommitteesCommitteeInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    TypeID?: string;

    @Field({ nullable: true })
    ParentCommitteeID: string | null;

    @Field({ nullable: true })
    OrganizationID: string | null;

    @Field({ nullable: true })
    CharterDocumentURL: string | null;

    @Field({ nullable: true })
    MissionStatement: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field(() => Boolean, { nullable: true })
    IsPublic?: boolean;

    @Field({ nullable: true })
    FormationDate: Date | null;

    @Field({ nullable: true })
    DissolutionDate: Date | null;
}
    

//****************************************************************************
// INPUT TYPE for Committees
//****************************************************************************
@InputType()
export class UpdateCommitteesCommitteeInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    TypeID?: string;

    @Field({ nullable: true })
    ParentCommitteeID?: string | null;

    @Field({ nullable: true })
    OrganizationID?: string | null;

    @Field({ nullable: true })
    CharterDocumentURL?: string | null;

    @Field({ nullable: true })
    MissionStatement?: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field(() => Boolean, { nullable: true })
    IsPublic?: boolean;

    @Field({ nullable: true })
    FormationDate?: Date | null;

    @Field({ nullable: true })
    DissolutionDate?: Date | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees
//****************************************************************************
@ObjectType()
export class RunCommitteesCommitteeViewResult {
    @Field(() => [CommitteesCommittee_])
    Results: CommitteesCommittee_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesCommittee_)
export class CommitteesCommitteeResolver extends ResolverBase {
    @Query(() => RunCommitteesCommitteeViewResult)
    async RunCommitteesCommitteeViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesCommitteeViewResult)
    async RunCommitteesCommitteeViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesCommitteeViewResult)
    async RunCommitteesCommitteeDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Committees';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesCommittee_, { nullable: true })
    async CommitteesCommittee(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesCommittee_ | null> {
        this.CheckUserReadPermissions('Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesCommittee_])
    async Committees_ParentCommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [ParentCommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMeeting_])
    async Meetings_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Meetings', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMeetings] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Meetings', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Meetings', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesTerm_])
    async Terms_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Terms', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTerms] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Terms', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Terms', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMembership_])
    async Memberships_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesActionItem_])
    async ActionItems_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Artifacts_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesCommittee_)
    async CreateCommitteesCommittee(
        @Arg('input', () => CreateCommitteesCommitteeInput) input: CreateCommitteesCommitteeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesCommittee_)
    async UpdateCommitteesCommittee(
        @Arg('input', () => UpdateCommitteesCommitteeInput) input: UpdateCommitteesCommitteeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesCommittee_)
    async DeleteCommitteesCommittee(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Meetings
//****************************************************************************
@ObjectType({ description: `Committee meeting records with scheduling and video conferencing info` })
export class CommitteesMeeting_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    CommitteeID: string;
        
    @Field({description: `Title of the meeting`}) 
    @MaxLength(510)
    Title: string;
        
    @Field({nullable: true, description: `Detailed description or purpose of the meeting`}) 
    Description?: string;
        
    @Field({description: `Scheduled start date and time with timezone offset`}) 
    @MaxLength(10)
    StartDateTime: Date;
        
    @Field({nullable: true, description: `Scheduled end date and time with timezone offset`}) 
    @MaxLength(10)
    EndDateTime?: Date;
        
    @Field({description: `IANA timezone identifier for the meeting`}) 
    @MaxLength(100)
    TimeZone: string;
        
    @Field({description: `Meeting format: Virtual, InPerson, or Hybrid`}) 
    @MaxLength(100)
    LocationType: string;
        
    @Field({nullable: true, description: `Physical address or room name for in-person meetings`}) 
    @MaxLength(1000)
    LocationText?: string;
        
    @Field({nullable: true, description: `Video conferencing provider: Zoom, Teams, Meet, etc.`}) 
    @MaxLength(100)
    VideoProvider?: string;
        
    @Field({nullable: true, description: `External meeting ID from the video provider`}) 
    @MaxLength(510)
    VideoMeetingID?: string;
        
    @Field({nullable: true, description: `URL to join the video meeting`}) 
    @MaxLength(2000)
    VideoJoinURL?: string;
        
    @Field({nullable: true, description: `URL to the meeting recording after completion`}) 
    @MaxLength(2000)
    VideoRecordingURL?: string;
        
    @Field({nullable: true, description: `URL to the meeting transcript`}) 
    @MaxLength(2000)
    TranscriptURL?: string;
        
    @Field({description: `Current status: Draft, Scheduled, InProgress, Completed, Cancelled, Postponed`}) 
    @MaxLength(100)
    Status: string;
        
    @Field({nullable: true, description: `External calendar event ID for sync purposes`}) 
    @MaxLength(510)
    CalendarEventID?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Committee: string;
        
    @Field(() => [CommitteesAttendance_])
    Attendances_MeetingIDArray: CommitteesAttendance_[]; // Link to Attendances
    
    @Field(() => [CommitteesAgendaItem_])
    AgendaItems_MeetingIDArray: CommitteesAgendaItem_[]; // Link to AgendaItems
    
    @Field(() => [CommitteesActionItem_])
    ActionItems_MeetingIDArray: CommitteesActionItem_[]; // Link to ActionItems
    
    @Field(() => [CommitteesArtifact_])
    Artifacts_MeetingIDArray: CommitteesArtifact_[]; // Link to Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Meetings
//****************************************************************************
@InputType()
export class CreateCommitteesMeetingInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    StartDateTime?: Date;

    @Field({ nullable: true })
    EndDateTime: Date | null;

    @Field({ nullable: true })
    TimeZone?: string;

    @Field({ nullable: true })
    LocationType?: string;

    @Field({ nullable: true })
    LocationText: string | null;

    @Field({ nullable: true })
    VideoProvider: string | null;

    @Field({ nullable: true })
    VideoMeetingID: string | null;

    @Field({ nullable: true })
    VideoJoinURL: string | null;

    @Field({ nullable: true })
    VideoRecordingURL: string | null;

    @Field({ nullable: true })
    TranscriptURL: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    CalendarEventID: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Meetings
//****************************************************************************
@InputType()
export class UpdateCommitteesMeetingInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    StartDateTime?: Date;

    @Field({ nullable: true })
    EndDateTime?: Date | null;

    @Field({ nullable: true })
    TimeZone?: string;

    @Field({ nullable: true })
    LocationType?: string;

    @Field({ nullable: true })
    LocationText?: string | null;

    @Field({ nullable: true })
    VideoProvider?: string | null;

    @Field({ nullable: true })
    VideoMeetingID?: string | null;

    @Field({ nullable: true })
    VideoJoinURL?: string | null;

    @Field({ nullable: true })
    VideoRecordingURL?: string | null;

    @Field({ nullable: true })
    TranscriptURL?: string | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    CalendarEventID?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Meetings
//****************************************************************************
@ObjectType()
export class RunCommitteesMeetingViewResult {
    @Field(() => [CommitteesMeeting_])
    Results: CommitteesMeeting_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesMeeting_)
export class CommitteesMeetingResolver extends ResolverBase {
    @Query(() => RunCommitteesMeetingViewResult)
    async RunCommitteesMeetingViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMeetingViewResult)
    async RunCommitteesMeetingViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMeetingViewResult)
    async RunCommitteesMeetingDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Meetings';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMeeting_, { nullable: true })
    async CommitteesMeeting(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMeeting_ | null> {
        this.CheckUserReadPermissions('Meetings', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMeetings] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Meetings', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Meetings', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesAttendance_])
    async Attendances_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Attendances', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAttendances] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Attendances', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Attendances', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesAgendaItem_])
    async AgendaItems_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Agenda Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesActionItem_])
    async ActionItems_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Artifacts_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesMeeting_)
    async CreateCommitteesMeeting(
        @Arg('input', () => CreateCommitteesMeetingInput) input: CreateCommitteesMeetingInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Meetings', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMeeting_)
    async UpdateCommitteesMeeting(
        @Arg('input', () => UpdateCommitteesMeetingInput) input: UpdateCommitteesMeetingInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Meetings', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMeeting_)
    async DeleteCommitteesMeeting(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Meetings', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Memberships
//****************************************************************************
@ObjectType({ description: `User assignments to committees with roles and terms` })
export class CommitteesMembership_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    CommitteeID: string;
        
    @Field() 
    @MaxLength(16)
    UserID: string;
        
    @Field() 
    @MaxLength(16)
    RoleID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    TermID?: string;
        
    @Field({description: `Date the membership started`}) 
    @MaxLength(3)
    StartDate: Date;
        
    @Field({nullable: true, description: `Date the membership ended, if applicable`}) 
    @MaxLength(3)
    EndDate?: Date;
        
    @Field({description: `Current status: Active, Pending, Ended, or Suspended`}) 
    @MaxLength(100)
    Status: string;
        
    @Field({nullable: true, description: `Reason the membership ended: Term ended, Resigned, Removed, etc.`}) 
    @MaxLength(200)
    EndReason?: string;
        
    @Field({nullable: true, description: `Additional notes about this membership`}) 
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Committee: string;
        
    @Field() 
    @MaxLength(200)
    User: string;
        
    @Field() 
    @MaxLength(200)
    Role: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    Term?: string;
        
}

//****************************************************************************
// INPUT TYPE for Memberships
//****************************************************************************
@InputType()
export class CreateCommitteesMembershipInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    UserID?: string;

    @Field({ nullable: true })
    RoleID?: string;

    @Field({ nullable: true })
    TermID: string | null;

    @Field({ nullable: true })
    StartDate?: Date;

    @Field({ nullable: true })
    EndDate: Date | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    EndReason: string | null;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Memberships
//****************************************************************************
@InputType()
export class UpdateCommitteesMembershipInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    UserID?: string;

    @Field({ nullable: true })
    RoleID?: string;

    @Field({ nullable: true })
    TermID?: string | null;

    @Field({ nullable: true })
    StartDate?: Date;

    @Field({ nullable: true })
    EndDate?: Date | null;

    @Field({ nullable: true })
    Status?: string;

    @Field({ nullable: true })
    EndReason?: string | null;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Memberships
//****************************************************************************
@ObjectType()
export class RunCommitteesMembershipViewResult {
    @Field(() => [CommitteesMembership_])
    Results: CommitteesMembership_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesMembership_)
export class CommitteesMembershipResolver extends ResolverBase {
    @Query(() => RunCommitteesMembershipViewResult)
    async RunCommitteesMembershipViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMembershipViewResult)
    async RunCommitteesMembershipViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMembershipViewResult)
    async RunCommitteesMembershipDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Memberships';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMembership_, { nullable: true })
    async CommitteesMembership(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMembership_ | null> {
        this.CheckUserReadPermissions('Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Memberships', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesMembership_)
    async CreateCommitteesMembership(
        @Arg('input', () => CreateCommitteesMembershipInput) input: CreateCommitteesMembershipInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Memberships', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMembership_)
    async UpdateCommitteesMembership(
        @Arg('input', () => UpdateCommitteesMembershipInput) input: UpdateCommitteesMembershipInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Memberships', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMembership_)
    async DeleteCommitteesMembership(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Memberships', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Roles__Committees
//****************************************************************************
@ObjectType({ description: `Roles that members can hold on committees` })
export class CommitteesRole_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field({description: `Display name for the role`}) 
    @MaxLength(200)
    Name: string;
        
    @Field({nullable: true, description: `Detailed description of role responsibilities`}) 
    Description?: string;
        
    @Field(() => Boolean, {description: `Whether this is an officer role like Chair or Secretary`}) 
    IsOfficer: boolean;
        
    @Field(() => Boolean, {description: `Whether members in this role can vote`}) 
    IsVotingRole: boolean;
        
    @Field({nullable: true, description: `JSON object defining default permissions for this role`}) 
    DefaultPermissionsJSON?: string;
        
    @Field(() => Int, {description: `Display order for sorting roles`}) 
    Sequence: number;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field(() => [CommitteesMembership_])
    Memberships_RoleIDArray: CommitteesMembership_[]; // Link to Memberships
    
}

//****************************************************************************
// INPUT TYPE for Roles__Committees
//****************************************************************************
@InputType()
export class CreateCommitteesRoleInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field(() => Boolean, { nullable: true })
    IsOfficer?: boolean;

    @Field(() => Boolean, { nullable: true })
    IsVotingRole?: boolean;

    @Field({ nullable: true })
    DefaultPermissionsJSON: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;
}
    

//****************************************************************************
// INPUT TYPE for Roles__Committees
//****************************************************************************
@InputType()
export class UpdateCommitteesRoleInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field(() => Boolean, { nullable: true })
    IsOfficer?: boolean;

    @Field(() => Boolean, { nullable: true })
    IsVotingRole?: boolean;

    @Field({ nullable: true })
    DefaultPermissionsJSON?: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Roles__Committees
//****************************************************************************
@ObjectType()
export class RunCommitteesRoleViewResult {
    @Field(() => [CommitteesRole_])
    Results: CommitteesRole_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesRole_)
export class CommitteesRoleResolver extends ResolverBase {
    @Query(() => RunCommitteesRoleViewResult)
    async RunCommitteesRoleViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesRoleViewResult)
    async RunCommitteesRoleViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesRoleViewResult)
    async RunCommitteesRoleDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Roles__Committees';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesRole_, { nullable: true })
    async CommitteesRole(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesRole_ | null> {
        this.CheckUserReadPermissions('Roles__Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwRoles__Committees] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Roles__Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Roles__Committees', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMembership_])
    async Memberships_RoleIDArray(@Root() committeesrole_: CommitteesRole_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [RoleID]='${committeesrole_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesRole_)
    async CreateCommitteesRole(
        @Arg('input', () => CreateCommitteesRoleInput) input: CreateCommitteesRoleInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Roles__Committees', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesRole_)
    async UpdateCommitteesRole(
        @Arg('input', () => UpdateCommitteesRoleInput) input: UpdateCommitteesRoleInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Roles__Committees', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesRole_)
    async DeleteCommitteesRole(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Roles__Committees', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Terms
//****************************************************************************
@ObjectType({ description: `Time periods for committee membership cycles` })
export class CommitteesTerm_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    CommitteeID: string;
        
    @Field({description: `Display name for the term, e.g. 2025-2026`}) 
    @MaxLength(200)
    Name: string;
        
    @Field({description: `Start date of the term`}) 
    @MaxLength(3)
    StartDate: Date;
        
    @Field({nullable: true, description: `End date of the term`}) 
    @MaxLength(3)
    EndDate?: Date;
        
    @Field({description: `Current status: Active, Upcoming, or Completed`}) 
    @MaxLength(100)
    Status: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field() 
    @MaxLength(510)
    Committee: string;
        
    @Field(() => [CommitteesMembership_])
    Memberships_TermIDArray: CommitteesMembership_[]; // Link to Memberships
    
}

//****************************************************************************
// INPUT TYPE for Terms
//****************************************************************************
@InputType()
export class CreateCommitteesTermInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    StartDate?: Date;

    @Field({ nullable: true })
    EndDate: Date | null;

    @Field({ nullable: true })
    Status?: string;
}
    

//****************************************************************************
// INPUT TYPE for Terms
//****************************************************************************
@InputType()
export class UpdateCommitteesTermInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    CommitteeID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    StartDate?: Date;

    @Field({ nullable: true })
    EndDate?: Date | null;

    @Field({ nullable: true })
    Status?: string;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Terms
//****************************************************************************
@ObjectType()
export class RunCommitteesTermViewResult {
    @Field(() => [CommitteesTerm_])
    Results: CommitteesTerm_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesTerm_)
export class CommitteesTermResolver extends ResolverBase {
    @Query(() => RunCommitteesTermViewResult)
    async RunCommitteesTermViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesTermViewResult)
    async RunCommitteesTermViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesTermViewResult)
    async RunCommitteesTermDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Terms';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesTerm_, { nullable: true })
    async CommitteesTerm(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesTerm_ | null> {
        this.CheckUserReadPermissions('Terms', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTerms] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Terms', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Terms', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMembership_])
    async Memberships_TermIDArray(@Root() committeesterm_: CommitteesTerm_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [TermID]='${committeesterm_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesTerm_)
    async CreateCommitteesTerm(
        @Arg('input', () => CreateCommitteesTermInput) input: CreateCommitteesTermInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Terms', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesTerm_)
    async UpdateCommitteesTerm(
        @Arg('input', () => UpdateCommitteesTermInput) input: UpdateCommitteesTermInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Terms', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesTerm_)
    async DeleteCommitteesTerm(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Terms', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Types
//****************************************************************************
@ObjectType({ description: `Categories of committees such as Board, Standing, Ad Hoc, Workgroup` })
export class CommitteesType_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field({description: `Display name for the committee type`}) 
    @MaxLength(200)
    Name: string;
        
    @Field({nullable: true, description: `Detailed description of this committee type`}) 
    Description?: string;
        
    @Field(() => Boolean, {description: `Whether this type is for standards development committees`}) 
    IsStandards: boolean;
        
    @Field(() => Int, {nullable: true, description: `Default term length in months for committees of this type`}) 
    DefaultTermMonths?: number;
        
    @Field({nullable: true, description: `Font Awesome icon class for UI display`}) 
    @MaxLength(200)
    IconClass?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field(() => [CommitteesCommittee_])
    Committees_TypeIDArray: CommitteesCommittee_[]; // Link to Committees
    
}

//****************************************************************************
// INPUT TYPE for Types
//****************************************************************************
@InputType()
export class CreateCommitteesTypeInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field(() => Boolean, { nullable: true })
    IsStandards?: boolean;

    @Field(() => Int, { nullable: true })
    DefaultTermMonths: number | null;

    @Field({ nullable: true })
    IconClass: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Types
//****************************************************************************
@InputType()
export class UpdateCommitteesTypeInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field(() => Boolean, { nullable: true })
    IsStandards?: boolean;

    @Field(() => Int, { nullable: true })
    DefaultTermMonths?: number | null;

    @Field({ nullable: true })
    IconClass?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Types
//****************************************************************************
@ObjectType()
export class RunCommitteesTypeViewResult {
    @Field(() => [CommitteesType_])
    Results: CommitteesType_[];

    @Field(() => String, {nullable: true})
    UserViewRunID?: string;

    @Field(() => Int, {nullable: true})
    RowCount: number;

    @Field(() => Int, {nullable: true})
    TotalRowCount: number;

    @Field(() => Int, {nullable: true})
    ExecutionTime: number;

    @Field({nullable: true})
    ErrorMessage?: string;

    @Field(() => Boolean, {nullable: false})
    Success: boolean;
}

@Resolver(CommitteesType_)
export class CommitteesTypeResolver extends ResolverBase {
    @Query(() => RunCommitteesTypeViewResult)
    async RunCommitteesTypeViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesTypeViewResult)
    async RunCommitteesTypeViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesTypeViewResult)
    async RunCommitteesTypeDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Types';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesType_, { nullable: true })
    async CommitteesType(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesType_ | null> {
        this.CheckUserReadPermissions('Types', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTypes] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Types', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Types', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Query(() => [CommitteesType_])
    async AllTypes(@Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Types', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTypes]` + this.getRowLevelSecurityWhereClause(provider, 'Types', userPayload, EntityPermissionType.Read, ' WHERE');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Types', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesCommittee_])
    async Committees_TypeIDArray(@Root() committeestype_: CommitteesType_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [TypeID]='${committeestype_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesType_)
    async CreateCommitteesType(
        @Arg('input', () => CreateCommitteesTypeInput) input: CreateCommitteesTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Types', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesType_)
    async UpdateCommitteesType(
        @Arg('input', () => UpdateCommitteesTypeInput) input: UpdateCommitteesTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Types', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesType_)
    async DeleteCommitteesType(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Types', key, options, provider, userPayload, pubSub);
    }
    
}