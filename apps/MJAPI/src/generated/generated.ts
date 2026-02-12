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


import { ActionItemEntity, AgendaItemEntity, ArtifactTypeEntity, ArtifactEntity, AttendanceEntity, CommitteeEntity, MeetingEntity, MembershipEntity, MinuteEntity, MotionEntity, RoleEntity, TermEntity, TypeEntity, VoteEntity } from 'mj_generatedentities';
    

//****************************************************************************
// ENTITY CLASS for Committees: Action Items
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
        
    @Field() 
    @MaxLength(200)
    AssignedToUser: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    AssignedByUser?: string;
        
    @Field(() => [CommitteesArtifact_])
    Committees_Artifacts_ActionItemIDArray: CommitteesArtifact_[]; // Link to Committees_Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Committees: Action Items
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
// INPUT TYPE for Committees: Action Items
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
// RESOLVER for Committees: Action Items
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
        input.EntityName = 'Committees: Action Items';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesActionItem_, { nullable: true })
    async CommitteesActionItem(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesActionItem_ | null> {
        this.CheckUserReadPermissions('Committees: Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Action Items', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesArtifact_])
    async Committees_Artifacts_ActionItemIDArray(@Root() committeesactionitem_: CommitteesActionItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [ActionItemID]='${committeesactionitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesActionItem_)
    async CreateCommitteesActionItem(
        @Arg('input', () => CreateCommitteesActionItemInput) input: CreateCommitteesActionItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Action Items', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesActionItem_)
    async UpdateCommitteesActionItem(
        @Arg('input', () => UpdateCommitteesActionItemInput) input: UpdateCommitteesActionItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Action Items', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesActionItem_)
    async DeleteCommitteesActionItem(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Action Items', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Agenda Items
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
        
    @Field({nullable: true}) 
    @MaxLength(200)
    PresenterUser?: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    RootParentAgendaItemID?: string;
        
    @Field(() => [CommitteesMotion_])
    Committees_Motions_AgendaItemIDArray: CommitteesMotion_[]; // Link to Committees_Motions
    
    @Field(() => [CommitteesAgendaItem_])
    Committees_AgendaItems_ParentAgendaItemIDArray: CommitteesAgendaItem_[]; // Link to Committees_AgendaItems
    
    @Field(() => [CommitteesActionItem_])
    Committees_ActionItems_AgendaItemIDArray: CommitteesActionItem_[]; // Link to Committees_ActionItems
    
    @Field(() => [CommitteesArtifact_])
    Committees_Artifacts_AgendaItemIDArray: CommitteesArtifact_[]; // Link to Committees_Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Committees: Agenda Items
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
// INPUT TYPE for Committees: Agenda Items
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
// RESOLVER for Committees: Agenda Items
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
        input.EntityName = 'Committees: Agenda Items';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesAgendaItem_, { nullable: true })
    async CommitteesAgendaItem(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesAgendaItem_ | null> {
        this.CheckUserReadPermissions('Committees: Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Agenda Items', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMotion_])
    async Committees_Motions_AgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Motions', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMotions] WHERE [AgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Motions', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Motions', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesAgendaItem_])
    async Committees_AgendaItems_ParentAgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [ParentAgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Agenda Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesActionItem_])
    async Committees_ActionItems_AgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [AgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Committees_Artifacts_AgendaItemIDArray(@Root() committeesagendaitem_: CommitteesAgendaItem_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [AgendaItemID]='${committeesagendaitem_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesAgendaItem_)
    async CreateCommitteesAgendaItem(
        @Arg('input', () => CreateCommitteesAgendaItemInput) input: CreateCommitteesAgendaItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Agenda Items', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesAgendaItem_)
    async UpdateCommitteesAgendaItem(
        @Arg('input', () => UpdateCommitteesAgendaItemInput) input: UpdateCommitteesAgendaItemInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Agenda Items', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesAgendaItem_)
    async DeleteCommitteesAgendaItem(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Agenda Items', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Artifact Types
//****************************************************************************
@ObjectType({ description: `Categories of committee artifacts with optional extension entity for type-specific fields` })
export class CommitteesArtifactType_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field({description: `Display name for the artifact type`}) 
    @MaxLength(200)
    Name: string;
        
    @Field({nullable: true, description: `Detailed description of this artifact type`}) 
    Description?: string;
        
    @Field({nullable: true, description: `Optional reference to an MJ Entity that provides additional fields for this artifact type via a 1:1 extension table`}) 
    @MaxLength(16)
    ExtendedEntityID?: string;
        
    @Field({nullable: true, description: `Font Awesome icon class for UI display`}) 
    @MaxLength(200)
    IconClass?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    ExtendedEntity?: string;
        
    @Field(() => [CommitteesArtifact_])
    Committees_Artifacts_ArtifactTypeIDArray: CommitteesArtifact_[]; // Link to Committees_Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Committees: Artifact Types
//****************************************************************************
@InputType()
export class CreateCommitteesArtifactTypeInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    ExtendedEntityID: string | null;

    @Field({ nullable: true })
    IconClass: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Committees: Artifact Types
//****************************************************************************
@InputType()
export class UpdateCommitteesArtifactTypeInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    Name?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    ExtendedEntityID?: string | null;

    @Field({ nullable: true })
    IconClass?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees: Artifact Types
//****************************************************************************
@ObjectType()
export class RunCommitteesArtifactTypeViewResult {
    @Field(() => [CommitteesArtifactType_])
    Results: CommitteesArtifactType_[];

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

@Resolver(CommitteesArtifactType_)
export class CommitteesArtifactTypeResolver extends ResolverBase {
    @Query(() => RunCommitteesArtifactTypeViewResult)
    async RunCommitteesArtifactTypeViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesArtifactTypeViewResult)
    async RunCommitteesArtifactTypeViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesArtifactTypeViewResult)
    async RunCommitteesArtifactTypeDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Committees: Artifact Types';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesArtifactType_, { nullable: true })
    async CommitteesArtifactType(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesArtifactType_ | null> {
        this.CheckUserReadPermissions('Committees: Artifact Types', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifactTypes] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifact Types', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Artifact Types', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesArtifact_])
    async Committees_Artifacts_ArtifactTypeIDArray(@Root() committeesartifacttype_: CommitteesArtifactType_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [ArtifactTypeID]='${committeesartifacttype_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesArtifactType_)
    async CreateCommitteesArtifactType(
        @Arg('input', () => CreateCommitteesArtifactTypeInput) input: CreateCommitteesArtifactTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Artifact Types', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesArtifactType_)
    async UpdateCommitteesArtifactType(
        @Arg('input', () => UpdateCommitteesArtifactTypeInput) input: UpdateCommitteesArtifactTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Artifact Types', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesArtifactType_)
    async DeleteCommitteesArtifactType(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Artifact Types', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Artifacts
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
        
    @Field() 
    @MaxLength(16)
    ArtifactTypeID: string;
        
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
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field({nullable: true}) 
    @MaxLength(510)
    Committee?: string;
        
    @Field() 
    @MaxLength(200)
    ArtifactType: string;
        
    @Field({nullable: true}) 
    @MaxLength(200)
    UploadedByUser?: string;
        
    @Field(() => [CommitteesMinute_])
    Committees_Minutes_ArtifactIDArray: CommitteesMinute_[]; // Link to Committees_Minutes
    
}

//****************************************************************************
// INPUT TYPE for Committees: Artifacts
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
    ArtifactTypeID?: string;

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
}
    

//****************************************************************************
// INPUT TYPE for Committees: Artifacts
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
    ArtifactTypeID?: string;

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

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees: Artifacts
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
        input.EntityName = 'Committees: Artifacts';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesArtifact_, { nullable: true })
    async CommitteesArtifact(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesArtifact_ | null> {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Artifacts', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMinute_])
    async Committees_Minutes_ArtifactIDArray(@Root() committeesartifact_: CommitteesArtifact_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Minutes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMinutes] WHERE [ArtifactID]='${committeesartifact_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Minutes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Minutes', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesArtifact_)
    async CreateCommitteesArtifact(
        @Arg('input', () => CreateCommitteesArtifactInput) input: CreateCommitteesArtifactInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Artifacts', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesArtifact_)
    async UpdateCommitteesArtifact(
        @Arg('input', () => UpdateCommitteesArtifactInput) input: UpdateCommitteesArtifactInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Artifacts', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesArtifact_)
    async DeleteCommitteesArtifact(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Artifacts', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Attendances
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
    @MaxLength(200)
    User: string;
        
}

//****************************************************************************
// INPUT TYPE for Committees: Attendances
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
// INPUT TYPE for Committees: Attendances
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
// RESOLVER for Committees: Attendances
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
        input.EntityName = 'Committees: Attendances';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesAttendance_, { nullable: true })
    async CommitteesAttendance(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesAttendance_ | null> {
        this.CheckUserReadPermissions('Committees: Attendances', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAttendances] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Attendances', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Attendances', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesAttendance_)
    async CreateCommitteesAttendance(
        @Arg('input', () => CreateCommitteesAttendanceInput) input: CreateCommitteesAttendanceInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Attendances', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesAttendance_)
    async UpdateCommitteesAttendance(
        @Arg('input', () => UpdateCommitteesAttendanceInput) input: UpdateCommitteesAttendanceInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Attendances', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesAttendance_)
    async DeleteCommitteesAttendance(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Attendances', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Committees
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
        
    @Field(() => [CommitteesTerm_])
    Committees_Terms_CommitteeIDArray: CommitteesTerm_[]; // Link to Committees_Terms
    
    @Field(() => [CommitteesMembership_])
    Committees_Memberships_CommitteeIDArray: CommitteesMembership_[]; // Link to Committees_Memberships
    
    @Field(() => [CommitteesActionItem_])
    Committees_ActionItems_CommitteeIDArray: CommitteesActionItem_[]; // Link to Committees_ActionItems
    
    @Field(() => [CommitteesArtifact_])
    Committees_Artifacts_CommitteeIDArray: CommitteesArtifact_[]; // Link to Committees_Artifacts
    
    @Field(() => [CommitteesMeeting_])
    Committees_Meetings_CommitteeIDArray: CommitteesMeeting_[]; // Link to Committees_Meetings
    
    @Field(() => [CommitteesCommittee_])
    Committees_Committees_ParentCommitteeIDArray: CommitteesCommittee_[]; // Link to Committees_Committees
    
}

//****************************************************************************
// INPUT TYPE for Committees: Committees
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
// INPUT TYPE for Committees: Committees
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
// RESOLVER for Committees: Committees
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
        input.EntityName = 'Committees: Committees';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesCommittee_, { nullable: true })
    async CommitteesCommittee(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesCommittee_ | null> {
        this.CheckUserReadPermissions('Committees: Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Committees', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesTerm_])
    async Committees_Terms_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Terms', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTerms] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Terms', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Terms', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMembership_])
    async Committees_Memberships_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesActionItem_])
    async Committees_ActionItems_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Committees_Artifacts_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMeeting_])
    async Committees_Meetings_CommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Meetings', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMeetings] WHERE [CommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Meetings', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Meetings', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesCommittee_])
    async Committees_Committees_ParentCommitteeIDArray(@Root() committeescommittee_: CommitteesCommittee_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [ParentCommitteeID]='${committeescommittee_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Committees', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesCommittee_)
    async CreateCommitteesCommittee(
        @Arg('input', () => CreateCommitteesCommitteeInput) input: CreateCommitteesCommitteeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Committees', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesCommittee_)
    async UpdateCommitteesCommittee(
        @Arg('input', () => UpdateCommitteesCommitteeInput) input: UpdateCommitteesCommitteeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Committees', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesCommittee_)
    async DeleteCommitteesCommittee(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Committees', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Meetings
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
        
    @Field(() => [CommitteesMinute_])
    Committees_Minutes_ApprovedByMeetingIDArray: CommitteesMinute_[]; // Link to Committees_Minutes
    
    @Field(() => [CommitteesAttendance_])
    Committees_Attendances_MeetingIDArray: CommitteesAttendance_[]; // Link to Committees_Attendances
    
    @Field(() => [CommitteesMotion_])
    Committees_Motions_MeetingIDArray: CommitteesMotion_[]; // Link to Committees_Motions
    
    @Field(() => [CommitteesAgendaItem_])
    Committees_AgendaItems_MeetingIDArray: CommitteesAgendaItem_[]; // Link to Committees_AgendaItems
    
    @Field(() => [CommitteesActionItem_])
    Committees_ActionItems_MeetingIDArray: CommitteesActionItem_[]; // Link to Committees_ActionItems
    
    @Field(() => [CommitteesArtifact_])
    Committees_Artifacts_MeetingIDArray: CommitteesArtifact_[]; // Link to Committees_Artifacts
    
}

//****************************************************************************
// INPUT TYPE for Committees: Meetings
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
// INPUT TYPE for Committees: Meetings
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
// RESOLVER for Committees: Meetings
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
        input.EntityName = 'Committees: Meetings';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMeeting_, { nullable: true })
    async CommitteesMeeting(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMeeting_ | null> {
        this.CheckUserReadPermissions('Committees: Meetings', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMeetings] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Meetings', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Meetings', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMinute_])
    async Committees_Minutes_ApprovedByMeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Minutes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMinutes] WHERE [ApprovedByMeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Minutes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Minutes', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesAttendance_])
    async Committees_Attendances_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Attendances', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAttendances] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Attendances', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Attendances', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMotion_])
    async Committees_Motions_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Motions', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMotions] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Motions', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Motions', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesAgendaItem_])
    async Committees_AgendaItems_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Agenda Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwAgendaItems] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Agenda Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Agenda Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesActionItem_])
    async Committees_ActionItems_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Action Items', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwActionItems] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Action Items', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Action Items', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesArtifact_])
    async Committees_Artifacts_MeetingIDArray(@Root() committeesmeeting_: CommitteesMeeting_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Artifacts', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwArtifacts] WHERE [MeetingID]='${committeesmeeting_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Artifacts', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Artifacts', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesMeeting_)
    async CreateCommitteesMeeting(
        @Arg('input', () => CreateCommitteesMeetingInput) input: CreateCommitteesMeetingInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Meetings', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMeeting_)
    async UpdateCommitteesMeeting(
        @Arg('input', () => UpdateCommitteesMeetingInput) input: UpdateCommitteesMeetingInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Meetings', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMeeting_)
    async DeleteCommitteesMeeting(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Meetings', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Memberships
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
        
    @Field(() => [CommitteesVote_])
    Committees_Votes_MembershipIDArray: CommitteesVote_[]; // Link to Committees_Votes
    
    @Field(() => [CommitteesMotion_])
    Committees_Motions_SecondedByMembershipIDArray: CommitteesMotion_[]; // Link to Committees_Motions
    
    @Field(() => [CommitteesMotion_])
    Committees_Motions_MovedByMembershipIDArray: CommitteesMotion_[]; // Link to Committees_Motions
    
}

//****************************************************************************
// INPUT TYPE for Committees: Memberships
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
// INPUT TYPE for Committees: Memberships
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
// RESOLVER for Committees: Memberships
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
        input.EntityName = 'Committees: Memberships';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMembership_, { nullable: true })
    async CommitteesMembership(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMembership_ | null> {
        this.CheckUserReadPermissions('Committees: Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Memberships', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesVote_])
    async Committees_Votes_MembershipIDArray(@Root() committeesmembership_: CommitteesMembership_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Votes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwVotes] WHERE [MembershipID]='${committeesmembership_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Votes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Votes', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMotion_])
    async Committees_Motions_SecondedByMembershipIDArray(@Root() committeesmembership_: CommitteesMembership_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Motions', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMotions] WHERE [SecondedByMembershipID]='${committeesmembership_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Motions', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Motions', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @FieldResolver(() => [CommitteesMotion_])
    async Committees_Motions_MovedByMembershipIDArray(@Root() committeesmembership_: CommitteesMembership_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Motions', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMotions] WHERE [MovedByMembershipID]='${committeesmembership_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Motions', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Motions', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesMembership_)
    async CreateCommitteesMembership(
        @Arg('input', () => CreateCommitteesMembershipInput) input: CreateCommitteesMembershipInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Memberships', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMembership_)
    async UpdateCommitteesMembership(
        @Arg('input', () => UpdateCommitteesMembershipInput) input: UpdateCommitteesMembershipInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Memberships', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMembership_)
    async DeleteCommitteesMembership(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Memberships', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Minutes
//****************************************************************************
@ObjectType({ description: `Extension entity for Minutes artifacts with approval tracking` })
export class CommitteesMinute_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    ArtifactID: string;
        
    @Field({description: `Current approval status: Draft, PendingApproval, Approved, Rejected`}) 
    @MaxLength(100)
    ApprovalStatus: string;
        
    @Field({nullable: true, description: `Timestamp when the minutes were approved`}) 
    @MaxLength(10)
    ApprovedAt?: Date;
        
    @Field({nullable: true, description: `Reference to the meeting at which these minutes were approved (typically the next meeting)`}) 
    @MaxLength(16)
    ApprovedByMeetingID?: string;
        
    @Field({nullable: true, description: `Additional notes about the minutes`}) 
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
}

//****************************************************************************
// INPUT TYPE for Committees: Minutes
//****************************************************************************
@InputType()
export class CreateCommitteesMinuteInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    ArtifactID?: string;

    @Field({ nullable: true })
    ApprovalStatus?: string;

    @Field({ nullable: true })
    ApprovedAt: Date | null;

    @Field({ nullable: true })
    ApprovedByMeetingID: string | null;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Committees: Minutes
//****************************************************************************
@InputType()
export class UpdateCommitteesMinuteInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    ArtifactID?: string;

    @Field({ nullable: true })
    ApprovalStatus?: string;

    @Field({ nullable: true })
    ApprovedAt?: Date | null;

    @Field({ nullable: true })
    ApprovedByMeetingID?: string | null;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees: Minutes
//****************************************************************************
@ObjectType()
export class RunCommitteesMinuteViewResult {
    @Field(() => [CommitteesMinute_])
    Results: CommitteesMinute_[];

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

@Resolver(CommitteesMinute_)
export class CommitteesMinuteResolver extends ResolverBase {
    @Query(() => RunCommitteesMinuteViewResult)
    async RunCommitteesMinuteViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMinuteViewResult)
    async RunCommitteesMinuteViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMinuteViewResult)
    async RunCommitteesMinuteDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Committees: Minutes';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMinute_, { nullable: true })
    async CommitteesMinute(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMinute_ | null> {
        this.CheckUserReadPermissions('Committees: Minutes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMinutes] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Minutes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Minutes', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesMinute_)
    async CreateCommitteesMinute(
        @Arg('input', () => CreateCommitteesMinuteInput) input: CreateCommitteesMinuteInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Minutes', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMinute_)
    async UpdateCommitteesMinute(
        @Arg('input', () => UpdateCommitteesMinuteInput) input: UpdateCommitteesMinuteInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Minutes', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMinute_)
    async DeleteCommitteesMinute(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Minutes', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Motions
//****************************************************************************
@ObjectType({ description: `Formal motions put to vote during committee meetings` })
export class CommitteesMotion_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    MeetingID: string;
        
    @Field({nullable: true}) 
    @MaxLength(16)
    AgendaItemID?: string;
        
    @Field(() => Int, {description: `Display order when multiple motions exist for the same agenda item`}) 
    Sequence: number;
        
    @Field({description: `Title of the motion`}) 
    @MaxLength(510)
    Title: string;
        
    @Field({nullable: true, description: `Full text or description of the motion`}) 
    Description?: string;
        
    @Field({nullable: true, description: `The committee member who made the motion`}) 
    @MaxLength(16)
    MovedByMembershipID?: string;
        
    @Field({nullable: true, description: `The committee member who seconded the motion`}) 
    @MaxLength(16)
    SecondedByMembershipID?: string;
        
    @Field({description: `Outcome of the vote: Pending, Passed, Failed, Tabled, Withdrawn`}) 
    @MaxLength(100)
    Result: string;
        
    @Field({nullable: true, description: `Human-readable vote tally, e.g. 7-2-1 or Passed unanimously`}) 
    @MaxLength(510)
    ResultSummary?: string;
        
    @Field(() => Int, {nullable: true, description: `Number of Yes votes`}) 
    YesCount?: number;
        
    @Field(() => Int, {nullable: true, description: `Number of No votes`}) 
    NoCount?: number;
        
    @Field(() => Int, {nullable: true, description: `Number of Abstain votes`}) 
    AbstainCount?: number;
        
    @Field({nullable: true, description: `Additional notes about the motion or vote`}) 
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
    @Field(() => [CommitteesVote_])
    Committees_Votes_MotionIDArray: CommitteesVote_[]; // Link to Committees_Votes
    
}

//****************************************************************************
// INPUT TYPE for Committees: Motions
//****************************************************************************
@InputType()
export class CreateCommitteesMotionInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    AgendaItemID: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description: string | null;

    @Field({ nullable: true })
    MovedByMembershipID: string | null;

    @Field({ nullable: true })
    SecondedByMembershipID: string | null;

    @Field({ nullable: true })
    Result?: string;

    @Field({ nullable: true })
    ResultSummary: string | null;

    @Field(() => Int, { nullable: true })
    YesCount: number | null;

    @Field(() => Int, { nullable: true })
    NoCount: number | null;

    @Field(() => Int, { nullable: true })
    AbstainCount: number | null;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Committees: Motions
//****************************************************************************
@InputType()
export class UpdateCommitteesMotionInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    MeetingID?: string;

    @Field({ nullable: true })
    AgendaItemID?: string | null;

    @Field(() => Int, { nullable: true })
    Sequence?: number;

    @Field({ nullable: true })
    Title?: string;

    @Field({ nullable: true })
    Description?: string | null;

    @Field({ nullable: true })
    MovedByMembershipID?: string | null;

    @Field({ nullable: true })
    SecondedByMembershipID?: string | null;

    @Field({ nullable: true })
    Result?: string;

    @Field({ nullable: true })
    ResultSummary?: string | null;

    @Field(() => Int, { nullable: true })
    YesCount?: number | null;

    @Field(() => Int, { nullable: true })
    NoCount?: number | null;

    @Field(() => Int, { nullable: true })
    AbstainCount?: number | null;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees: Motions
//****************************************************************************
@ObjectType()
export class RunCommitteesMotionViewResult {
    @Field(() => [CommitteesMotion_])
    Results: CommitteesMotion_[];

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

@Resolver(CommitteesMotion_)
export class CommitteesMotionResolver extends ResolverBase {
    @Query(() => RunCommitteesMotionViewResult)
    async RunCommitteesMotionViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMotionViewResult)
    async RunCommitteesMotionViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesMotionViewResult)
    async RunCommitteesMotionDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Committees: Motions';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesMotion_, { nullable: true })
    async CommitteesMotion(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesMotion_ | null> {
        this.CheckUserReadPermissions('Committees: Motions', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMotions] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Motions', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Motions', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesVote_])
    async Committees_Votes_MotionIDArray(@Root() committeesmotion_: CommitteesMotion_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Votes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwVotes] WHERE [MotionID]='${committeesmotion_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Votes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Votes', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesMotion_)
    async CreateCommitteesMotion(
        @Arg('input', () => CreateCommitteesMotionInput) input: CreateCommitteesMotionInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Motions', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesMotion_)
    async UpdateCommitteesMotion(
        @Arg('input', () => UpdateCommitteesMotionInput) input: UpdateCommitteesMotionInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Motions', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesMotion_)
    async DeleteCommitteesMotion(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Motions', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Roles
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
    Committees_Memberships_RoleIDArray: CommitteesMembership_[]; // Link to Committees_Memberships
    
}

//****************************************************************************
// INPUT TYPE for Committees: Roles
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
// INPUT TYPE for Committees: Roles
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
// RESOLVER for Committees: Roles
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
        input.EntityName = 'Committees: Roles';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesRole_, { nullable: true })
    async CommitteesRole(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesRole_ | null> {
        this.CheckUserReadPermissions('Committees: Roles', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwRoles] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Roles', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Roles', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMembership_])
    async Committees_Memberships_RoleIDArray(@Root() committeesrole_: CommitteesRole_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [RoleID]='${committeesrole_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesRole_)
    async CreateCommitteesRole(
        @Arg('input', () => CreateCommitteesRoleInput) input: CreateCommitteesRoleInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Roles', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesRole_)
    async UpdateCommitteesRole(
        @Arg('input', () => UpdateCommitteesRoleInput) input: UpdateCommitteesRoleInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Roles', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesRole_)
    async DeleteCommitteesRole(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Roles', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Terms
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
    Committees_Memberships_TermIDArray: CommitteesMembership_[]; // Link to Committees_Memberships
    
}

//****************************************************************************
// INPUT TYPE for Committees: Terms
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
// INPUT TYPE for Committees: Terms
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
// RESOLVER for Committees: Terms
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
        input.EntityName = 'Committees: Terms';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesTerm_, { nullable: true })
    async CommitteesTerm(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesTerm_ | null> {
        this.CheckUserReadPermissions('Committees: Terms', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTerms] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Terms', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Terms', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesMembership_])
    async Committees_Memberships_TermIDArray(@Root() committeesterm_: CommitteesTerm_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Memberships', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwMemberships] WHERE [TermID]='${committeesterm_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Memberships', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Memberships', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesTerm_)
    async CreateCommitteesTerm(
        @Arg('input', () => CreateCommitteesTermInput) input: CreateCommitteesTermInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Terms', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesTerm_)
    async UpdateCommitteesTerm(
        @Arg('input', () => UpdateCommitteesTermInput) input: UpdateCommitteesTermInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Terms', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesTerm_)
    async DeleteCommitteesTerm(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Terms', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Types
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
    Committees_Committees_TypeIDArray: CommitteesCommittee_[]; // Link to Committees_Committees
    
}

//****************************************************************************
// INPUT TYPE for Committees: Types
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
// INPUT TYPE for Committees: Types
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
// RESOLVER for Committees: Types
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
        input.EntityName = 'Committees: Types';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesType_, { nullable: true })
    async CommitteesType(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesType_ | null> {
        this.CheckUserReadPermissions('Committees: Types', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwTypes] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Types', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Types', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @FieldResolver(() => [CommitteesCommittee_])
    async Committees_Committees_TypeIDArray(@Root() committeestype_: CommitteesType_, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine) {
        this.CheckUserReadPermissions('Committees: Committees', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwCommittees] WHERE [TypeID]='${committeestype_.ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Committees', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.ArrayMapFieldNamesToCodeNames('Committees: Committees', rows, this.GetUserFromPayload(userPayload));
        return result;
    }
        
    @Mutation(() => CommitteesType_)
    async CreateCommitteesType(
        @Arg('input', () => CreateCommitteesTypeInput) input: CreateCommitteesTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Types', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesType_)
    async UpdateCommitteesType(
        @Arg('input', () => UpdateCommitteesTypeInput) input: UpdateCommitteesTypeInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Types', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesType_)
    async DeleteCommitteesType(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Types', key, options, provider, userPayload, pubSub);
    }
    
}

//****************************************************************************
// ENTITY CLASS for Committees: Votes
//****************************************************************************
@ObjectType({ description: `Individual vote records for committee motions` })
export class CommitteesVote_ {
    @Field() 
    @MaxLength(16)
    ID: string;
        
    @Field() 
    @MaxLength(16)
    MotionID: string;
        
    @Field() 
    @MaxLength(16)
    MembershipID: string;
        
    @Field({description: `The vote cast: Yes, No, Abstain, or Absent`}) 
    @MaxLength(40)
    VoteValue: string;
        
    @Field({nullable: true, description: `Optional notes explaining the vote`}) 
    @MaxLength(1000)
    Notes?: string;
        
    @Field() 
    @MaxLength(10)
    _mj__CreatedAt: Date;
        
    @Field() 
    @MaxLength(10)
    _mj__UpdatedAt: Date;
        
}

//****************************************************************************
// INPUT TYPE for Committees: Votes
//****************************************************************************
@InputType()
export class CreateCommitteesVoteInput {
    @Field({ nullable: true })
    ID?: string;

    @Field({ nullable: true })
    MotionID?: string;

    @Field({ nullable: true })
    MembershipID?: string;

    @Field({ nullable: true })
    VoteValue?: string;

    @Field({ nullable: true })
    Notes: string | null;
}
    

//****************************************************************************
// INPUT TYPE for Committees: Votes
//****************************************************************************
@InputType()
export class UpdateCommitteesVoteInput {
    @Field()
    ID: string;

    @Field({ nullable: true })
    MotionID?: string;

    @Field({ nullable: true })
    MembershipID?: string;

    @Field({ nullable: true })
    VoteValue?: string;

    @Field({ nullable: true })
    Notes?: string | null;

    @Field(() => [KeyValuePairInput], { nullable: true })
    OldValues___?: KeyValuePairInput[];
}
    
//****************************************************************************
// RESOLVER for Committees: Votes
//****************************************************************************
@ObjectType()
export class RunCommitteesVoteViewResult {
    @Field(() => [CommitteesVote_])
    Results: CommitteesVote_[];

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

@Resolver(CommitteesVote_)
export class CommitteesVoteResolver extends ResolverBase {
    @Query(() => RunCommitteesVoteViewResult)
    async RunCommitteesVoteViewByID(@Arg('input', () => RunViewByIDInput) input: RunViewByIDInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByIDGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesVoteViewResult)
    async RunCommitteesVoteViewByName(@Arg('input', () => RunViewByNameInput) input: RunViewByNameInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        return super.RunViewByNameGeneric(input, provider, userPayload, pubSub);
    }

    @Query(() => RunCommitteesVoteViewResult)
    async RunCommitteesVoteDynamicView(@Arg('input', () => RunDynamicViewInput) input: RunDynamicViewInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        input.EntityName = 'Committees: Votes';
        return super.RunDynamicViewGeneric(input, provider, userPayload, pubSub);
    }
    @Query(() => CommitteesVote_, { nullable: true })
    async CommitteesVote(@Arg('ID', () => String) ID: string, @Ctx() { dataSources, userPayload, providers }: AppContext, @PubSub() pubSub: PubSubEngine): Promise<CommitteesVote_ | null> {
        this.CheckUserReadPermissions('Committees: Votes', userPayload);
        const provider = GetReadOnlyProvider(providers, { allowFallbackToReadWrite: true });
        const connPool = GetReadOnlyDataSource(dataSources, { allowFallbackToReadWrite: true });
        const sSQL = `SELECT * FROM [Committees].[vwVotes] WHERE [ID]='${ID}' ` + this.getRowLevelSecurityWhereClause(provider, 'Committees: Votes', userPayload, EntityPermissionType.Read, 'AND');
        const rows = await SQLServerDataProvider.ExecuteSQLWithPool(connPool, sSQL, undefined, this.GetUserFromPayload(userPayload));
        const result = await this.MapFieldNamesToCodeNames('Committees: Votes', rows && rows.length > 0 ? rows[0] : {}, this.GetUserFromPayload(userPayload));
        return result;
    }
    
    @Mutation(() => CommitteesVote_)
    async CreateCommitteesVote(
        @Arg('input', () => CreateCommitteesVoteInput) input: CreateCommitteesVoteInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.CreateRecord('Committees: Votes', input, provider, userPayload, pubSub)
    }
        
    @Mutation(() => CommitteesVote_)
    async UpdateCommitteesVote(
        @Arg('input', () => UpdateCommitteesVoteInput) input: UpdateCommitteesVoteInput,
        @Ctx() { providers, userPayload }: AppContext,
        @PubSub() pubSub: PubSubEngine
    ) {
        const provider = GetReadWriteProvider(providers);
        return this.UpdateRecord('Committees: Votes', input, provider, userPayload, pubSub);
    }
    
    @Mutation(() => CommitteesVote_)
    async DeleteCommitteesVote(@Arg('ID', () => String) ID: string, @Arg('options___', () => DeleteOptionsInput) options: DeleteOptionsInput, @Ctx() { providers, userPayload }: AppContext, @PubSub() pubSub: PubSubEngine) {
        const provider = GetReadWriteProvider(providers);
        const key = new CompositeKey([{FieldName: 'ID', Value: ID}]);
        return this.DeleteRecord('Committees: Votes', key, options, provider, userPayload, pubSub);
    }
    
}