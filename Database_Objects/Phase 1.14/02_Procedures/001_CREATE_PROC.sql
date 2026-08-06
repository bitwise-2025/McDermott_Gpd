/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_HDMS_Progress_validate]    Script Date: 2/21/2023 4:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[load_NCSA_fact_HDMS_Progress_validate] @projectId [varchar](200) AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int

	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();
/*-----------------------------------------------------------------------------------------------------
Change Log : 
Date		 |  Developer | Change Description/User Story
-------------------------------------------------------------------------------------------------------
02/08/2023  Abhijit Kharat      Initial Version
-----------------------------------------------------------------------------------------------------*/


	--------------------------------------------------------------------------------------
	-- Step 1: Filter the data in Synapse gpd based on project id and set the load_date for remaining records.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry

	UPDATE [gpd].[NCSA_HDMS_Progress] SET
	[ActID]=NULLIF([ActID],'NULL'),
[UpdateHistoryID]=NULLIF([UpdateHistoryID],'NULL'),
[ContractNo]=NULLIF([ContractNo],'NULL'),
[SFN]=NULLIF([SFN],'NULL'),
[Activity_Id]=NULLIF([Activity_Id],'NULL'),
[Work_Description_ID]=NULLIF([Work_Description_ID],'NULL'),
[SystemCode]=NULLIF([SystemCode],'NULL'),
[System]=NULLIF([System],'NULL'),
[SubSystemCode]=NULLIF([SubSystemCode],'NULL'),
[SubSystem]=NULLIF([SubSystem],'NULL'),
[Work_Description]=NULLIF([Work_Description],'NULL'),
[Activities]=NULLIF([Activities],'NULL'),
[Scope]=NULLIF([Scope],'NULL'),
[Jobno]=NULLIF([Jobno],'NULL'),
[Vessel]=NULLIF([Vessel],'NULL'),
[Discipline]=NULLIF([Discipline],'NULL'),
[TaskSheet_No]=NULLIF([TaskSheet_No],'NULL'),
[Task_Name]=NULLIF([Task_Name],'NULL'),
[CampaignCode]=NULLIF([CampaignCode],'NULL'),
[Campaign]=NULLIF([Campaign],'NULL'),
[ScopeCategory]=NULLIF([ScopeCategory],'NULL'),
[Progress_Date]=NULLIF([Progress_Date],'NULL'),
[Deck]=NULLIF([Deck],'NULL'),
[Period]=NULLIF([Period],'NULL'),
[Work_Type]=NULLIF([Work_Type],'NULL'),
[Progress]=NULLIF([Progress],'NULL'),
[CumEarned]=NULLIF([CumEarned],'NULL'),
[Manhours]=NULLIF([Manhours],'NULL'),
[Previous_Progress]=NULLIF([Previous_Progress],'NULL'),
[Progress_Grouping]=NULLIF([Progress_Grouping],'NULL'),
[Label1]=NULLIF([Label1],'NULL'),
[Label2]=NULLIF([Label2],'NULL'),
[Label3]=NULLIF([Label3],'NULL'),
[Label4]=NULLIF([Label4],'NULL'),
[Label5]=NULLIF([Label5],'NULL'),
[Label6]=NULLIF([Label6],'NULL'),
[Gate1]=NULLIF([Gate1],'NULL'),
[Gate2]=NULLIF([Gate2],'NULL'),
[Gate3]=NULLIF([Gate3],'NULL'),
[Gate4]=NULLIF([Gate4],'NULL'),
[Gate5]=NULLIF([Gate5],'NULL'),
[Gate6]=NULLIF([Gate6],'NULL'),
[QtyG1]=NULLIF([QtyG1],'NULL'),
[QtyG2]=NULLIF([QtyG2],'NULL'),
[QtyG3]=NULLIF([QtyG3],'NULL'),
[QtyG4]=NULLIF([QtyG4],'NULL'),
[QtyG5]=NULLIF([QtyG5],'NULL'),
[QtyG6]=NULLIF([QtyG6],'NULL'),
[ContractID]=NULLIF([ContractID],'NULL'),
[ItemQty]=NULLIF([ItemQty],'NULL'),
[WorkTypeID]=NULLIF([WorkTypeID],'NULL'),
[source_code]=NULLIF([source_code],'NULL'),
[sub_source_code]=NULLIF([sub_source_code],'NULL'),
[function_code]=NULLIF([function_code],'NULL'),
[project_id]=NULLIF([project_id],'NULL')

UPDATE [gpd].[NCSA_HDMS_Progress] SET
[ActID]=NULLIF([ActID],''),
[UpdateHistoryID]=NULLIF([UpdateHistoryID],''),
[ContractNo]=NULLIF([ContractNo],''),
[SFN]=NULLIF([SFN],''),
[Activity_Id]=NULLIF([Activity_Id],''),
[Work_Description_ID]=NULLIF([Work_Description_ID],''),
[SystemCode]=NULLIF([SystemCode],''),
[System]=NULLIF([System],''),
[SubSystemCode]=NULLIF([SubSystemCode],''),
[SubSystem]=NULLIF([SubSystem],''),
[Work_Description]=NULLIF([Work_Description],''),
[Activities]=NULLIF([Activities],''),
[Scope]=NULLIF([Scope],''),
[Jobno]=NULLIF([Jobno],''),
[Vessel]=NULLIF([Vessel],''),
[Discipline]=NULLIF([Discipline],''),
[TaskSheet_No]=NULLIF([TaskSheet_No],''),
[Task_Name]=NULLIF([Task_Name],''),
[CampaignCode]=NULLIF([CampaignCode],''),
[Campaign]=NULLIF([Campaign],''),
[ScopeCategory]=NULLIF([ScopeCategory],''),
[Progress_Date]=NULLIF([Progress_Date],''),
[Deck]=NULLIF([Deck],''),
[Period]=NULLIF([Period],''),
[Work_Type]=NULLIF([Work_Type],''),
[Progress]=NULLIF([Progress],''),
[CumEarned]=NULLIF([CumEarned],''),
[Manhours]=NULLIF([Manhours],''),
[Previous_Progress]=NULLIF([Previous_Progress],''),
[Progress_Grouping]=NULLIF([Progress_Grouping],''),
[Label1]=NULLIF([Label1],''),
[Label2]=NULLIF([Label2],''),
[Label3]=NULLIF([Label3],''),
[Label4]=NULLIF([Label4],''),
[Label5]=NULLIF([Label5],''),
[Label6]=NULLIF([Label6],''),
[Gate1]=NULLIF([Gate1],''),
[Gate2]=NULLIF([Gate2],''),
[Gate3]=NULLIF([Gate3],''),
[Gate4]=NULLIF([Gate4],''),
[Gate5]=NULLIF([Gate5],''),
[Gate6]=NULLIF([Gate6],''),
[QtyG1]=NULLIF([QtyG1],''),
[QtyG2]=NULLIF([QtyG2],''),
[QtyG3]=NULLIF([QtyG3],''),
[QtyG4]=NULLIF([QtyG4],''),
[QtyG5]=NULLIF([QtyG5],''),
[QtyG6]=NULLIF([QtyG6],''),
[ContractID]=NULLIF([ContractID],''),
[ItemQty]=NULLIF([ItemQty],''),
[WorkTypeID]=NULLIF([WorkTypeID],''),
[source_code]=NULLIF([source_code],''),
[sub_source_code]=NULLIF([sub_source_code],''),
[function_code]=NULLIF([function_code],''),
[project_id]=NULLIF([project_id],'')




	DELETE FROM [gpd].[NCSA_HDMS_Progress] 
	WHERE project_id not in (
	SELECT value from string_split(@projectId,','))

	UPDATE [gpd].[NCSA_HDMS_Progress]
	set load_date_time = @Date

	UPDATE [gpd].[NCSA_HDMS_Progress]
	set progress_date=FORMAT(TRY_CONVERT(datetime,progress_date),'yyyy-MM-dd')

	
		
	--------------------------------------------------------------------------------------
	--Step 2: update Project ID 
	--------------------------------------------------------------------------------------

	update [gpd].[NCSA_HDMS_Progress]
	set project_id=project_number
	from [gpd].[NCSA_HDMS_Progress] p,dim_ent_contract c
	where p.contractno=c.contract_number and c.active=1

		
	--------------------------------------------------------------------------------------
	--Step 2: get the Project ID related SK/NK
	-------------------------------------------------------------------------------------- 


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'project_id', 'project_number', 'FL',NULL ;


	--------------------------------------------------------------------------------------
	--Step 3: Create dimension for system
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_System]
	
	insert into [gpd].[NCSA_HDMS_System](system_code,system_description,project_id)
	select distinct systemcode,[system],project_id
	from [gpd].[NCSA_HDMS_Progress]
	where trim(systemcode) != '' and project_id is not null and systemcode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_system','Y','N','Y';
		
--------------------------------------------------------------------------------------
	--Step 5: Create dimension for subsystem
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_Subsystem]

	insert into [gpd].[NCSA_HDMS_Subsystem](subsystem_code,subsystem_description,project_id)
	select distinct subsystemcode,[subsystem],project_id
	from [gpd].[NCSA_HDMS_Progress]
	where trim(subsystemcode) != '' and project_id is not null and subsystemcode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_subsystem','Y','N','Y';
	

--------------------------------------------------------------------------------------
	--Step 6: Create dimension for Task
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_Task]

	insert into [gpd].[NCSA_HDMS_Task](TaskSheet_No,task_name,project_id)
	select distinct TaskSheet_No,[Task_Name],project_id
	from [gpd].[NCSA_HDMS_Progress]
	where trim(TaskSheet_No) != '' and project_id is not null and TaskSheet_No is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_task','Y','N','Y';

--------------------------------------------------------------------------------------
	--Step 7: Create dimension for campaign
	--------------------------------------------------------------------------------------

	insert into [gpd].[NCSA_HDMS_Campaign](campaign_code,campaign_description,campaign_type,project_id)
	select distinct CampaignCode,[Campaign],'HUC',project_id
	from [gpd].[NCSA_HDMS_Progress]
	where trim(CampaignCode) != '' and project_id is not null and CampaignCode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_campaign','Y','N','Y';



	/*
	--------------------------------------------------------------------------------------
	--Step 7: Create dimension for workpack
	--------------------------------------------------------------------------------------

	insert into [gpd].[NCSA_HDMS_Workpack](workpack_code,workpack_description,project_id)
	select distinct workpack_code,[workpack_description],project_id
	from [gpd].[NCSA_HDMS_Progress]
	where trim(CampaignCode) != '' and project_id is not null and CampaignCode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_campaign','Y','N','Y';

	*/
	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------


	
	
	INSERT INTO [gpd].[NCSA_HDMS_Progress]
	([miscellaneous_progress_code],[ActID], [UpdateHistoryID], [ContractNo], [SFN], [Activity_Id], [Work_Description_ID], [SystemCode], [System], [SubSystemCode], [SubSystem], [Work_Description], [Activities], [Scope], [Jobno], [Vessel], [Discipline], [TaskSheet_No], [Task_Name], [CampaignCode], [Campaign], [ScopeCategory], [Progress_Date], [Deck], [Period], [Work_Type], [Progress], [CumEarned], [Manhours], [Previous_Progress], [Progress_Grouping], [Label1], [Label2], [Label3], [Label4], [Label5], [Label6], [Gate1], [Gate2], [Gate3], [Gate4], [Gate5], [Gate6], [QtyG1], [QtyG2], [QtyG3], [QtyG4], [QtyG5], [QtyG6], [ContractID], [ItemQty], [WorkTypeID], [source_code], [sub_source_code], [function_code], [project_id], [dim_ent_project_sk], [dim_ent_project_nk], [dim_ent_function_sk], [dim_ent_function_nk], [dim_ent_source_sk], [dim_ent_source_nk], [dim_ent_sub_source_sk], [dim_ent_sub_source_nk], [dim_ent_system_sk], [dim_ent_system_nk], [dim_ent_subsystem_sk], [dim_ent_subsystem_nk], [dim_ent_task_sk], [dim_ent_task_nk], [dim_ent_campaign_sk], [dim_ent_campaign_nk], [dim_ent_miscellaneous_progress_sk], [dim_ent_miscellaneous_progress_nk], [load_date_time], [parent_rssk],[data_class_hours_code] ,[hdms_progress_percentage_code] ,[hdms_cumulative_earned_hours_code] ,[hdms_previous_progress_percentage_code] ,[hdms_man_hours_code] ,[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk] ,[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],[dim_ent_data_class_sk]
,[dim_ent_data_class_nk],[dim_ent_data_class_percentage_sk]
,[dim_ent_data_class_percentage_nk],[data_class_percentage_code],[dim_ent_discipline_sk]
,[dim_ent_discipline_nk])
	SELECT
	[miscellaneous_progress_code],[ActID], [UpdateHistoryID], [ContractNo], [SFN], [Activity_Id], [Work_Description_ID], [SystemCode], [System], [SubSystemCode], [SubSystem], [Work_Description], [Activities], [Scope], [Jobno], [Vessel], [Discipline], [TaskSheet_No], [Task_Name], [CampaignCode], [Campaign], [ScopeCategory], [Progress_Date], [Deck], [Period], [Work_Type], [Progress], [CumEarned], [Manhours], [Previous_Progress], [Progress_Grouping], [Label1], [Label2], [Label3], [Label4], [Label5], [Label6], [Gate1], [Gate2], [Gate3], [Gate4], [Gate5], [Gate6], [QtyG1], [QtyG2], [QtyG3], [QtyG4], [QtyG5], [QtyG6], [ContractID], [ItemQty], [WorkTypeID], [source_code], [sub_source_code], [function_code], [project_id], [dim_ent_project_sk], [dim_ent_project_nk], [dim_ent_function_sk], [dim_ent_function_nk], [dim_ent_source_sk], [dim_ent_source_nk], [dim_ent_sub_source_sk], [dim_ent_sub_source_nk], [dim_ent_system_sk], [dim_ent_system_nk], [dim_ent_subsystem_sk], [dim_ent_subsystem_nk], [dim_ent_task_sk], [dim_ent_task_nk], [dim_ent_campaign_sk], [dim_ent_campaign_nk], [dim_ent_miscellaneous_progress_sk], [dim_ent_miscellaneous_progress_nk], [created_date_time], ISNULL([parent_rssk],[rssk]),[data_class_hours_code] ,[hdms_progress_percentage_code] ,[hdms_cumulative_earned_hours_code] ,[hdms_previous_progress_percentage_code] ,[hdms_man_hours_code] ,[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk] ,[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],[dim_ent_data_class_sk]
,[dim_ent_data_class_nk],[dim_ent_data_class_percentage_sk]
,[dim_ent_data_class_percentage_nk],[data_class_percentage_code],[dim_ent_discipline_sk]
,[dim_ent_discipline_nk]
	FROM [gpd].[reprocess_NCSA_HDMS_Progress]


	DELETE FROM [gpd].[reprocess_NCSA_HDMS_Progress]

	
	update [gpd].[NCSA_HDMS_Progress]
	set miscellaneous_progress_code=concat(contractno,'_',activity_id,'_',SystemCode,'_',SubSystemCode,'_',work_description_id)


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'project_id', 'project_number', 'FL',NULL ;

	
	--execute [stage].[fact_lookup_based_on_many_key]
 --       'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_data_sub_class_original_budget_quantity_sk', 'dim_ent_data_sub_class_original_budget_quantity_nk',
 --       'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
	--	'sub_class_original_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, 'F',NULL ;
		


	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_function_sk', 'dim_ent_function_nk',
            'dim_ent_function', 'dim_ent_function_sk', 'dim_ent_function_nk', 'function_code', 'function_code', 'FL',NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_source_sk', 'dim_ent_source_nk',
            'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'source_code', 'source_name',  'FL', NULL ;

		execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk',
            'dim_ent_discipline', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk', 'discipline', 'discipline_code',  'FL', NULL ;

			
	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_ent_source_nk', 'dim_ent_source_nk',
		'sub_source_code', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

		
	--update system
	update [gpd].[NCSA_HDMS_Progress]
	set dim_ent_system_sk = b.dim_ent_system_sk,
	dim_ent_system_nk = b.dim_ent_system_nk
	from [gpd].[NCSA_HDMS_Progress] a,dbo.dim_ent_system b
	where a.systemcode = b.system_code
	and a.project_id = b.project_number
	and b.active = 1

	--update subsystem
	update [gpd].[NCSA_HDMS_Progress]
	set dim_ent_subsystem_sk = b.dim_ent_subsystem_sk,
	dim_ent_subsystem_nk = b.dim_ent_subsystem_nk
	from [gpd].[NCSA_HDMS_Progress] a,dbo.dim_ent_subsystem b
	where a.subsystemcode = b.subsystem_code
	and a.project_id = b.project_number
	and b.active = 1

	--update campaign
	update [gpd].[NCSA_HDMS_Progress]
	set dim_ent_campaign_sk = b.dim_ent_campaign_sk,
	dim_ent_campaign_nk = b.dim_ent_campaign_nk
	from [gpd].[NCSA_HDMS_Progress] a,dbo.dim_ent_campaign b
	where a.campaigncode = b.campaign_code
	and a.project_id = b.project_number
	and b.active = 1

	--update task
	update [gpd].[NCSA_HDMS_Progress]
	set dim_ent_task_sk = b.dim_ent_task_sk,
	dim_ent_task_nk = b.dim_ent_task_nk
	from [gpd].[NCSA_HDMS_Progress] a,dbo.dim_ent_task b
	where a.tasksheet_no = b.tasksheet_no
	and a.project_id = b.project_number
	and b.active = 1


--------update dataclasses


	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', 'FL',NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_data_class_percentage_sk', 'dim_ent_data_class_percentage_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_percentage_code', 'data_class_name', 'FL',NULL ;



	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_progress_percentage_sk', 'dim_ent_progress_percentage_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_percentage_nk', 'dim_ent_data_class_nk',
		'hdms_progress_percentage_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, 'FL',NULL ;
		
		
	


	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_cumulative_earned_hours_sk', 'dim_ent_cumulative_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_nk', 'dim_ent_data_class_nk',
		'hdms_cumulative_earned_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;

	

	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_previous_progress_percentage_sk', 'dim_ent_previous_progress_percentage_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_percentage_nk', 'dim_ent_data_class_nk',
		'hdms_previous_progress_percentage_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;
	
	

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_man_hours_sk', 'dim_ent_man_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_nk', 'dim_ent_data_class_nk',
		'hdms_man_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;
		
	
--------------------------------------------------------------------------------------
	--Step 7: Create dimension for miscellaneous progress
	--------------------------------------------------------------------------------------

	
	truncate table [gpd].[NCSA_HDMS_miscellaneous_progress]

	insert into [gpd].[NCSA_HDMS_miscellaneous_progress]([miscellaneous_progress_code],[ActID], [UpdateHistoryID], [ContractNo], [SFN], [Activity_Id], [Work_Description_ID], [SystemCode], [System], [SubSystemCode], [SubSystem], [Work_Description], [Activities], [Scope], [Jobno], [Vessel], [Discipline], [TaskSheet_No], [Task_Name], [CampaignCode], [Campaign], [ScopeCategory], [Progress_Date], [Deck], [Period], [Work_Type], [Progress], [CumEarned], [Manhours], [Previous_Progress], [Progress_Grouping], [Label1], [Label2], [Label3], [Label4], [Label5], [Label6], [Gate1], [Gate2], [Gate3], [Gate4], [Gate5], [Gate6], [QtyG1], [QtyG2], [QtyG3], [QtyG4], [QtyG5], [QtyG6], [ContractID], [ItemQty], [WorkTypeID], [source_code], [sub_source_code], [function_code], [project_id], [dim_ent_project_sk], [dim_ent_project_nk], [dim_ent_function_sk], [dim_ent_function_nk], [dim_ent_source_sk], [dim_ent_source_nk], [dim_ent_sub_source_sk], [dim_ent_sub_source_nk], [dim_ent_system_sk], [dim_ent_system_nk], [dim_ent_subsystem_sk], [dim_ent_subsystem_nk], [dim_ent_task_sk], [dim_ent_task_nk], [dim_ent_campaign_sk], [dim_ent_campaign_nk],  [load_date_time],[data_class_hours_code] ,[hdms_progress_percentage_code] ,[hdms_cumulative_earned_hours_code] ,[hdms_previous_progress_percentage_code] ,[hdms_man_hours_code] ,[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk] ,[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],[dim_ent_data_class_sk]
,[dim_ent_data_class_nk],[dim_ent_data_class_percentage_sk]
,[dim_ent_data_class_percentage_nk],[data_class_percentage_code],[dim_ent_discipline_sk]
,[dim_ent_discipline_nk])
	select distinct a.[miscellaneous_progress_code],a.[ActID], a.[UpdateHistoryID], a.[ContractNo], a.[SFN], a.[Activity_Id], a.[Work_Description_ID], a.[SystemCode], a.[System], a.[SubSystemCode], a.[SubSystem], a.[Work_Description], a.[Activities], a.[Scope], a.[Jobno], a.[Vessel], a.[Discipline], a.[TaskSheet_No], a.[Task_Name], a.[CampaignCode], a.[Campaign], a.[ScopeCategory], a.[Progress_Date], a.[Deck], a.[Period], a.[Work_Type], a.[Progress], a.[CumEarned], a.[Manhours], a.[Previous_Progress], a.[Progress_Grouping], a.[Label1], a.[Label2], a.[Label3], a.[Label4], a.[Label5], a.[Label6], a.[Gate1], a.[Gate2], a.[Gate3], a.[Gate4], a.[Gate5], a.[Gate6], a.[QtyG1], a.[QtyG2], a.[QtyG3], a.[QtyG4], a.[QtyG5], a.[QtyG6], a.[ContractID], a.[ItemQty], a.[WorkTypeID], a.[source_code], a.[sub_source_code], a.[function_code], a.[project_id], a.[dim_ent_project_sk], a.[dim_ent_project_nk], a.[dim_ent_function_sk], a.[dim_ent_function_nk], a.[dim_ent_source_sk], a.[dim_ent_source_nk], a.[dim_ent_sub_source_sk], a.[dim_ent_sub_source_nk], a.[dim_ent_system_sk], a.[dim_ent_system_nk], a.[dim_ent_subsystem_sk], a.[dim_ent_subsystem_nk], a.[dim_ent_task_sk], a.[dim_ent_task_nk], a.[dim_ent_campaign_sk], a.[dim_ent_campaign_nk], a.[load_date_time],a.[data_class_hours_code] ,a.[hdms_progress_percentage_code] ,a.[hdms_cumulative_earned_hours_code] ,a.[hdms_previous_progress_percentage_code] ,a.[hdms_man_hours_code] ,a.[dim_ent_progress_percentage_sk] ,a.[dim_ent_progress_percentage_nk] ,a.[dim_ent_cumulative_earned_hours_sk] ,a.[dim_ent_cumulative_earned_hours_nk] ,a.[dim_ent_previous_progress_percentage_sk] ,a.[dim_ent_previous_progress_percentage_nk] ,a.[dim_ent_man_hours_sk] ,a.[dim_ent_man_hours_nk],a.[dim_ent_data_class_sk]
,a.[dim_ent_data_class_nk],a.[dim_ent_data_class_percentage_sk]
,a.[dim_ent_data_class_percentage_nk],a.[data_class_percentage_code],a.[dim_ent_discipline_sk]
,a.[dim_ent_discipline_nk]
	from [gpd].[NCSA_HDMS_Progress] a left join
	dim_ent_miscellaneous_progress b on (a.miscellaneous_progress_code=b.miscellaneous_progress_code)
	WHERE a.dim_ent_project_sk IS NOT NULL
	and a.dim_ent_project_nk IS NOT NULL
	and a.dim_ent_function_sk IS NOT NULL
	and a.dim_ent_function_nk IS NOT NULL
	and a.dim_ent_source_sk IS NOT NULL
	and a.dim_ent_source_nk IS NOT NULL
	and a.dim_ent_sub_source_sk IS NOT NULL
	and a.dim_ent_sub_source_nk IS NOT NULL
	and a.dim_ent_system_sk IS NOT NULL
	and a.dim_ent_system_nk IS NOT NULL
	and a.dim_ent_subsystem_sk IS NOT NULL
	and a.dim_ent_subsystem_nk IS NOT NULL
	and a.dim_ent_task_sk IS NOT NULL
	and a.dim_ent_task_nk IS NOT NULL
	and a.dim_ent_campaign_sk IS NOT NULL
	and a.dim_ent_campaign_nk IS NOT NULL
	and a.dim_ent_progress_percentage_sk IS NOT NULL
	and a.dim_ent_progress_percentage_nk IS NOT NULL
	and a.dim_ent_cumulative_earned_hours_sk IS NOT NULL
	and a.dim_ent_cumulative_earned_hours_nk IS NOT NULL
	and a.dim_ent_previous_progress_percentage_sk IS NOT NULL
	and a.dim_ent_previous_progress_percentage_nk IS NOT NULL
	and a.dim_ent_man_hours_sk IS NOT NULL
	and a.dim_ent_man_hours_nk IS NOT NULL
	and a.dim_ent_data_class_sk IS NOT NULL
	and a.dim_ent_data_class_nk IS NOT NULL
	and a.dim_ent_discipline_sk IS NOT NULL
	and a.dim_ent_discipline_nk IS NOT NULL
	and a.dim_ent_data_class_percentage_sk IS NOT NULL
	and a.dim_ent_data_class_percentage_nk IS NOT NULL
	and b.miscellaneous_progress_code is null
	

	execute [dbo].[generic_load_dim_v2] 'dim_ent_miscellaneous_progress','Y','N','Y';

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Progress', 'gpd.NCSA_HDMS_Progress',  'stage_ncsa_hdms_progress_id', 'dim_ent_miscellaneous_progress_sk', 'dim_ent_miscellaneous_progress_nk',
            'dim_ent_miscellaneous_progress', 'dim_ent_miscellaneous_progress_sk', 'dim_ent_miscellaneous_progress_nk', 'miscellaneous_progress_code', 'miscellaneous_progress_code', 'FL',NULL ;

	/*		
	update [gpd].[NCSA_HDMS_Progress]
	set dim_ent_miscellaneous_progress_sk = b.dim_ent_miscellaneous_progress_sk,
	dim_ent_miscellaneous_progress_nk = b.dim_ent_miscellaneous_progress_nk
	from [gpd].[NCSA_HDMS_Progress] a,dbo.dim_ent_miscellaneous_progress b
	where a.[miscellaneous_progress_code] = b.[miscellaneous_progress_code]
	and a.project_id = b.project_number
	and b.active = 1
	*/
	-----------------------------------------------------------------
	--Step 6: Checking for null entries for NK/SK; Isolating those records into reprocess tables.
	-----------------------------------------------------------------


	SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_HDMS_Progress]
	WHERE  dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_system_sk IS NULL
	or dim_ent_system_nk IS NULL
	or dim_ent_subsystem_sk IS NULL
	or dim_ent_subsystem_nk IS NULL
	or dim_ent_task_sk IS NULL
	or dim_ent_task_nk IS NULL
	or dim_ent_campaign_sk IS NULL
	or dim_ent_campaign_nk IS NULL
	or dim_ent_miscellaneous_progress_sk IS NULL
	or dim_ent_miscellaneous_progress_nk IS NULL
	or dim_ent_progress_percentage_sk IS NULL
	or dim_ent_progress_percentage_nk IS NULL
	or dim_ent_cumulative_earned_hours_sk IS NULL
	or dim_ent_cumulative_earned_hours_nk IS NULL
	or dim_ent_previous_progress_percentage_sk IS NULL
	or dim_ent_previous_progress_percentage_nk IS NULL
	or dim_ent_man_hours_sk IS NULL
	or dim_ent_man_hours_nk IS NULL
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
		or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL




	SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_HDMS_Progress]
	WHERE dim_ent_project_sk IS NOT NULL
	and dim_ent_project_nk IS NOT NULL
	and dim_ent_function_sk IS NOT NULL
	and dim_ent_function_nk IS NOT NULL
	and dim_ent_source_sk IS NOT NULL
	and dim_ent_source_nk IS NOT NULL
	and dim_ent_sub_source_sk IS NOT NULL
	and dim_ent_sub_source_nk IS NOT NULL
	and dim_ent_system_sk IS NOT NULL
	and dim_ent_system_nk IS NOT NULL
	and dim_ent_subsystem_sk IS NOT NULL
	and dim_ent_subsystem_nk IS NOT NULL
	and dim_ent_task_sk IS NOT NULL
	and dim_ent_task_nk IS NOT NULL
	and dim_ent_campaign_sk IS NOT NULL
	and dim_ent_campaign_nk IS NOT NULL
	and dim_ent_miscellaneous_progress_sk IS NOT NULL
	and dim_ent_miscellaneous_progress_nk IS NOT NULL
	and dim_ent_progress_percentage_sk IS NOT NULL
	and dim_ent_progress_percentage_nk IS NOT NULL
	and dim_ent_cumulative_earned_hours_sk IS NOT NULL
	and dim_ent_cumulative_earned_hours_nk IS NOT NULL
	and dim_ent_previous_progress_percentage_sk IS NOT NULL
	and dim_ent_previous_progress_percentage_nk IS NOT NULL
	and dim_ent_man_hours_sk IS NOT NULL
	and dim_ent_man_hours_nk IS NOT NULL
	and dim_ent_data_class_sk IS NOT NULL
	and dim_ent_data_class_nk IS NOT NULL
	and dim_ent_discipline_sk IS NOT NULL
	and dim_ent_discipline_nk IS NOT NULL
	and dim_ent_data_class_percentage_sk IS NOT NULL
	and dim_ent_data_class_percentage_nk IS NOT NULL



	INSERT INTO [gpd].[reprocess_NCSA_HDMS_Progress]
	([miscellaneous_progress_code],[ActID], [UpdateHistoryID], [ContractNo], [SFN], [Activity_Id], [Work_Description_ID], [SystemCode], [System], [SubSystemCode], [SubSystem], [Work_Description], [Activities], [Scope], [Jobno], [Vessel], [Discipline], [TaskSheet_No], [Task_Name], [CampaignCode], [Campaign], [ScopeCategory], [Progress_Date], [Deck], [Period], [Work_Type], [Progress], [CumEarned], [Manhours], [Previous_Progress], [Progress_Grouping], [Label1], [Label2], [Label3], [Label4], [Label5], [Label6], [Gate1], [Gate2], [Gate3], [Gate4], [Gate5], [Gate6], [QtyG1], [QtyG2], [QtyG3], [QtyG4], [QtyG5], [QtyG6], [ContractID], [ItemQty], [WorkTypeID], [source_code], [sub_source_code], [function_code], [project_id], [dim_ent_project_sk], [dim_ent_project_nk], [dim_ent_function_sk], [dim_ent_function_nk], [dim_ent_source_sk], [dim_ent_source_nk], [dim_ent_sub_source_sk], [dim_ent_sub_source_nk], [dim_ent_system_sk], [dim_ent_system_nk], [dim_ent_subsystem_sk], [dim_ent_subsystem_nk], [dim_ent_task_sk], [dim_ent_task_nk], [dim_ent_campaign_sk], [dim_ent_campaign_nk], [dim_ent_miscellaneous_progress_sk], [dim_ent_miscellaneous_progress_nk], [created_date_time], [parent_rssk],[data_class_hours_code] ,[hdms_progress_percentage_code] ,[hdms_cumulative_earned_hours_code] ,[hdms_previous_progress_percentage_code] ,[hdms_man_hours_code] ,[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk] ,[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],[dim_ent_data_class_sk]
,[dim_ent_data_class_nk],[dim_ent_data_class_percentage_sk]
,[dim_ent_data_class_percentage_nk],[data_class_percentage_code],[dim_ent_discipline_sk]
,[dim_ent_discipline_nk])
	SELECT
	[miscellaneous_progress_code],[ActID], [UpdateHistoryID], [ContractNo], [SFN], [Activity_Id], [Work_Description_ID], [SystemCode], [System], [SubSystemCode], [SubSystem], [Work_Description], [Activities], [Scope], [Jobno], [Vessel], [Discipline], [TaskSheet_No], [Task_Name], [CampaignCode], [Campaign], [ScopeCategory], [Progress_Date], [Deck], [Period], [Work_Type], [Progress], [CumEarned], [Manhours], [Previous_Progress], [Progress_Grouping], [Label1], [Label2], [Label3], [Label4], [Label5], [Label6], [Gate1], [Gate2], [Gate3], [Gate4], [Gate5], [Gate6], [QtyG1], [QtyG2], [QtyG3], [QtyG4], [QtyG5], [QtyG6], [ContractID], [ItemQty], [WorkTypeID], [source_code], [sub_source_code], [function_code], [project_id], [dim_ent_project_sk], [dim_ent_project_nk], [dim_ent_function_sk], [dim_ent_function_nk], [dim_ent_source_sk], [dim_ent_source_nk], [dim_ent_sub_source_sk], [dim_ent_sub_source_nk], [dim_ent_system_sk], [dim_ent_system_nk], [dim_ent_subsystem_sk], [dim_ent_subsystem_nk], [dim_ent_task_sk], [dim_ent_task_nk], [dim_ent_campaign_sk], [dim_ent_campaign_nk], [dim_ent_miscellaneous_progress_sk], [dim_ent_miscellaneous_progress_nk], [load_date_time], [parent_rssk],[data_class_hours_code] ,[hdms_progress_percentage_code] ,[hdms_cumulative_earned_hours_code] ,[hdms_previous_progress_percentage_code] ,[hdms_man_hours_code] ,[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk] ,[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],[dim_ent_data_class_sk]
,[dim_ent_data_class_nk],[dim_ent_data_class_percentage_sk]
,[dim_ent_data_class_percentage_nk],[data_class_percentage_code],[dim_ent_discipline_sk]
,[dim_ent_discipline_nk]
	FROM [gpd].[NCSA_HDMS_Progress]
	WHERE  dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_system_sk IS NULL
	or dim_ent_system_nk IS NULL
	or dim_ent_subsystem_sk IS NULL
	or dim_ent_subsystem_nk IS NULL
	or dim_ent_task_sk IS NULL
	or dim_ent_task_nk IS NULL
	or dim_ent_campaign_sk IS NULL
	or dim_ent_campaign_nk IS NULL
	or dim_ent_miscellaneous_progress_sk IS NULL
	or dim_ent_miscellaneous_progress_nk IS NULL
	or dim_ent_progress_percentage_sk IS NULL
	or dim_ent_progress_percentage_nk IS NULL
	or dim_ent_cumulative_earned_hours_sk IS NULL
	or dim_ent_cumulative_earned_hours_nk IS NULL
	or dim_ent_previous_progress_percentage_sk IS NULL
	or dim_ent_previous_progress_percentage_nk IS NULL
	or dim_ent_man_hours_sk IS NULL
	or dim_ent_man_hours_nk IS NULL
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
		or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL

	--------------------------------------------------------------------------------------
	--Change: Add logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------



	update [gpd].[reprocess_NCSA_HDMS_Progress]
		 set rk_failure_info = 
		case when dim_ent_project_nk is null then 'Missing Project Number : ' + isnull(project_id,'') + ',' else '' end +
		case when dim_ent_function_nk is null then 'Missing Function : ' + isnull(function_code,'') + ',' else '' end +
		case when dim_ent_source_nk is null then 'Missing Source : ' + isnull(source_code,'') + ',' else '' end +
		case when dim_ent_sub_source_nk is null then 'Missing Sub Source : ' + isnull(sub_source_code,'') + ',' else '' end +
		case when dim_ent_system_nk is null then 'Missing Sub Source : ' + isnull(systemcode,'') + ',' else '' end +
		case when dim_ent_subsystem_nk is null then 'Missing Sub Source : ' + isnull(subsystemcode,'') + ',' else '' end +
		case when dim_ent_task_nk is null then 'Missing Sub Source : ' + isnull(tasksheet_no,'') + ',' else '' end +
		case when dim_ent_campaign_nk is null then 'Missing Sub Source : ' + isnull(campaigncode,'') + ',' else '' end +
		case when dim_ent_data_class_nk is null then 'Missing Data Class : ' + isnull(data_class_hours_code,'') + ',' else '' end +
		case when dim_ent_discipline_nk is null then 'Missing Discipline : ' + isnull(discipline,'') + ',' else '' end +
		case when dim_ent_data_class_percentage_nk is null then 'Missing Data Class : ' + isnull(data_class_percentage_code,'') + ',' else '' end +
		case when dim_ent_progress_percentage_nk is null then 'Missing Progress Percentage : ' + isnull(hdms_progress_percentage_code,'') + ',' else '' end +
		case when dim_ent_cumulative_earned_hours_nk is null then 'Missing Cumulative Earned Hours : ' + isnull(hdms_cumulative_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_previous_progress_percentage_nk is null then 'Missing Previous Progress Percentage : ' + isnull(hdms_previous_progress_percentage_code,'') + ',' else '' end +
		case when dim_ent_man_hours_nk is null then 'Missing Man hours : ' + isnull(hdms_man_hours_code,'') + ',' else '' end +
		case when dim_ent_miscellaneous_progress_nk is null then 'Missing Miscellaneous : ' + isnull(miscellaneous_progress_code,'') + ',' else '' end
		--CHECK LAST ONE
		

	DELETE FROM [gpd].[NCSA_HDMS_Progress]
	WHERE  dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_system_sk IS NULL
	or dim_ent_system_nk IS NULL
	or dim_ent_subsystem_sk IS NULL
	or dim_ent_subsystem_nk IS NULL
	or dim_ent_task_sk IS NULL
	or dim_ent_task_nk IS NULL
	or dim_ent_campaign_sk IS NULL
	or dim_ent_campaign_nk IS NULL
	or dim_ent_miscellaneous_progress_sk IS NULL
	or dim_ent_miscellaneous_progress_nk IS NULL
	or dim_ent_progress_percentage_sk IS NULL
	or dim_ent_progress_percentage_nk IS NULL
	or dim_ent_cumulative_earned_hours_sk IS NULL
	or dim_ent_cumulative_earned_hours_nk IS NULL
	or dim_ent_previous_progress_percentage_sk IS NULL
	or dim_ent_previous_progress_percentage_nk IS NULL
	or dim_ent_man_hours_sk IS NULL
	or dim_ent_man_hours_nk IS NULL
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL

	


	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	--exec populate_reprocess_history 'pl_hdms_progress_data_raw_to_synapse_stage', 'gpd.NCSA_HDMS_Progress', 'gpd.reprocess_NCSA_HDMS_Progress', 'dbo.fact_ops_hdms_progress','rssk';

	---------------------------------------------------------------------------

	-----------------------------------------------------------------
	--Step 7: Loading valid records into the FACT table.
	-----------------------------------------------------------------

	--Moved to fact load SPU
	
	-----------------------------------------------------------------
	--Step 8: Cleanup gpd table. Report stats along with any error message
	-----------------------------------------------------------------

	--Moved to fact load SPU

	
	


if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
		
	
	end

	if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
								  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
								  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
								  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
								  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
								  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
	end;
end catch;

--End of Stored Procedure
END
