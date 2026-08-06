/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_HDMS_Booking_validate]    Script Date: 3/20/2023 10:38:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_HDMS_Booking_validate] AS
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
03/10/2023  Abhijit Kharat      Initial Version
-----------------------------------------------------------------------------------------------------*/


	--------------------------------------------------------------------------------------
	-- Step 1: Filter the data in Synapse gpd based on project id and set the load_date for remaining records.
	--------------------------------------------------------------------------------------

	UPDATE [gpd].[NCSA_HDMS_Booking] SET
	[ContractNo]=NULLIF([ContractNo],'NULL'),
	[JobCardMainID]=NULLIF([JobCardMainID],'NULL'),
	[Activity Code]=NULLIF([Activity Code],'NULL'),
	[WorkpackCode]=NULLIF([WorkpackCode],'NULL'),
	[WorkPack]=NULLIF([WorkPack],'NULL'),
	[PlatForm]=NULLIF([PlatForm],'NULL'),
	[Progress_Grouping]=NULLIF([Progress_Grouping],'NULL'),
	[Vessel]=NULLIF([Vessel],'NULL'),
	[Discipline]=NULLIF([Discipline],'NULL'),
	[SystemCode]=NULLIF([SystemCode],'NULL'),
	[System]=NULLIF([System],'NULL'),
	[SubSystemCode]=NULLIF([SubSystemCode],'NULL'),
	[SubSystem]=NULLIF([SubSystem],'NULL'),
	[SubDiscipline]=NULLIF([SubDiscipline],'NULL'),
	[TaskSheet_No]=NULLIF([TaskSheet_No],'NULL'),
	[Task Name]=NULLIF([Task Name],'NULL'),
	[IsTTA]=NULLIF([IsTTA],'NULL'),
	[Scope]=NULLIF([Scope],'NULL'),
	[ScopeCategory]=NULLIF([ScopeCategory],'NULL'),
	[CampaignCode]=NULLIF([CampaignCode],'NULL'),
	[Campaign]=NULLIF([Campaign],'NULL'),
	[ActualId]=NULLIF([ActualId],'NULL'),
	[Estimated Mhrs]=NULLIF([Estimated Mhrs],'NULL'),
	[ProgressDate]=NULLIF([ProgressDate],'NULL'),
	[Cumm_Actual_Booking_Mhrs]=NULLIF([Cumm_Actual_Booking_Mhrs],'NULL'),
	[Daily_Actual_Booking_Mhrs]=NULLIF([Daily_Actual_Booking_Mhrs],'NULL'),
	[source_code]=NULLIF([source_code],'NULL'),
	[sub_source_code]=NULLIF([sub_source_code],'NULL'),
	[function_code]=NULLIF([function_code],'NULL'),
	[project_id]=NULLIF([project_id],'NULL'),
	[miscellaneous_booking_code]=NULLIF([miscellaneous_booking_code],'NULL')

	UPDATE [gpd].[NCSA_HDMS_Booking] SET
	[ContractNo]=NULLIF([ContractNo],''),
	[JobCardMainID]=NULLIF([JobCardMainID],''),
	[Activity Code]=NULLIF([Activity Code],''),
	[WorkpackCode]=NULLIF([WorkpackCode],''),
	[WorkPack]=NULLIF([WorkPack],''),
	[PlatForm]=NULLIF([PlatForm],''),
	[Progress_Grouping]=NULLIF([Progress_Grouping],''),
	[Vessel]=NULLIF([Vessel],''),
	[Discipline]=NULLIF([Discipline],''),
	[SystemCode]=NULLIF([SystemCode],''),
	[System]=NULLIF([System],''),
	[SubSystemCode]=NULLIF([SubSystemCode],''),
	[SubSystem]=NULLIF([SubSystem],''),
	[SubDiscipline]=NULLIF([SubDiscipline],''),
	[TaskSheet_No]=NULLIF([TaskSheet_No],''),
	[Task Name]=NULLIF([Task Name],''),
	[IsTTA]=NULLIF([IsTTA],''),
	[Scope]=NULLIF([Scope],''),
	[ScopeCategory]=NULLIF([ScopeCategory],''),
	[CampaignCode]=NULLIF([CampaignCode],''),
	[Campaign]=NULLIF([Campaign],''),
	[ActualId]=NULLIF([ActualId],''),
	[Estimated Mhrs]=NULLIF([Estimated Mhrs],''),
	[ProgressDate]=NULLIF([ProgressDate],''),
	[Cumm_Actual_Booking_Mhrs]=NULLIF([Cumm_Actual_Booking_Mhrs],''),
	[Daily_Actual_Booking_Mhrs]=NULLIF([Daily_Actual_Booking_Mhrs],''),
	[source_code]=NULLIF([source_code],''),
	[sub_source_code]=NULLIF([sub_source_code],''),
	[function_code]=NULLIF([function_code],''),
	[project_id]=NULLIF([project_id],''),
	[miscellaneous_booking_code]=NULLIF([miscellaneous_booking_code],'')


	select @processed_count=0 --temp entry



	UPDATE [gpd].[NCSA_HDMS_Booking]
	set load_date_time = @Date

	UPDATE [gpd].[NCSA_HDMS_Booking]
	set progressdate=FORMAT(TRY_CONVERT(datetime,progressdate),'yyyy-MM-dd')

	
		
	--------------------------------------------------------------------------------------
	--Step 2: update Project ID 
	--------------------------------------------------------------------------------------

	update [gpd].[NCSA_HDMS_Booking]
	set project_id=project_number
	from [gpd].[NCSA_HDMS_Booking] p,dim_ent_contract c
	where p.contractno=c.contract_number and c.active=1

		
	--------------------------------------------------------------------------------------
	--Step 2: get the Project ID related SK/NK
	-------------------------------------------------------------------------------------- 


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'project_id', 'project_number', 'FL',NULL ;


	--------------------------------------------------------------------------------------
	--Step 3: Create dimension for system
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_System]
	
	insert into [gpd].[NCSA_HDMS_System](system_code,system_description,project_id)
	select distinct systemcode,[system],project_id
	from [gpd].[NCSA_HDMS_Booking]
	where trim(systemcode) != '' and project_id is not null and systemcode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_system','Y','N','Y';
		
--------------------------------------------------------------------------------------
	--Step 5: Create dimension for subsystem
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_Subsystem]

	insert into [gpd].[NCSA_HDMS_Subsystem](subsystem_code,subsystem_description,project_id)
	select distinct subsystemcode,[subsystem],project_id
	from [gpd].[NCSA_HDMS_Booking]
	where trim(subsystemcode) != '' and project_id is not null and subsystemcode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_subsystem','Y','N','Y';
	

--------------------------------------------------------------------------------------
	--Step 6: Create dimension for Task
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_HDMS_Task]

	insert into [gpd].[NCSA_HDMS_Task](TaskSheet_No,task_name,project_id)
	select distinct TaskSheet_No,[Task Name],project_id
	from [gpd].[NCSA_HDMS_Booking]
	where trim(TaskSheet_No) != '' and project_id is not null and TaskSheet_No is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_task','Y','N','Y';

--------------------------------------------------------------------------------------
	--Step 7: Create dimension for campaign
	--------------------------------------------------------------------------------------

	insert into [gpd].[NCSA_HDMS_Campaign](campaign_code,campaign_description,campaign_type,project_id)
	select distinct CampaignCode,[Campaign],'HUC',project_id
	from [gpd].[NCSA_HDMS_Booking]
	where trim(CampaignCode) != '' and project_id is not null and CampaignCode is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_campaign','Y','N','Y';



	
	--------------------------------------------------------------------------------------
	--Step 7: Create dimension for workpack
	--------------------------------------------------------------------------------------

	insert into [gpd].[NCSA_HDMS_Workpack](workpack_code,workpack_description,project_id)
	select distinct [workpackcode],[workpack],project_id
	from [gpd].[NCSA_HDMS_Booking]
	where trim([workpackcode]) != '' and project_id is not null and [workpackcode] is not null

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_workpack','Y','N','Y';

	
	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------


	
	
	INSERT INTO [gpd].[NCSA_HDMS_Booking]
	([ContractNo] ,[JobCardMainID] ,[Activity Code] ,[WorkpackCode] ,[WorkPack] ,[PlatForm] ,[Progress_Grouping] ,[Vessel] ,[Discipline] ,[SystemCode] ,[System] ,[SubSystemCode] ,[SubSystem] ,[SubDiscipline] ,[TaskSheet_No] ,[Task Name] ,[IsTTA] ,[Scope] ,[ScopeCategory] ,[CampaignCode] ,[Campaign] ,[ActualId] ,[Estimated Mhrs] ,[ProgressDate] ,[Cumm_Actual_Booking_Mhrs] ,[Daily_Actual_Booking_Mhrs] ,[source_code] ,[sub_source_code] ,[function_code] ,[project_id] ,[dim_ent_project_sk] ,[dim_ent_project_nk] ,[load_date_time] ,[parent_rssk] ,[dim_ent_function_sk] ,[dim_ent_function_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_booking_sk] ,[dim_ent_miscellaneous_booking_nk] ,[miscellaneous_booking_code] ,[dim_ent_workpack_sk] ,[dim_ent_workpack_nk] ,[data_class_hours_code] ,[dim_ent_discipline_sk] ,[dim_ent_discipline_nk] ,[hdms_estimated_booking_mhours_code] ,[hdms_cummulative_booking_mhours_code] ,[hdms_daily_actual_booking_mhours_code] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_estimated_booking_mhours_sk] ,[dim_ent_estimated_booking_mhours_nk] ,[dim_ent_cummulative_booking_mhours_sk] ,[dim_ent_cummulative_booking_mhours_nk] ,[dim_ent_daily_actual_booking_mhours_sk] ,[dim_ent_daily_actual_booking_mhours_nk])
	SELECT
	[ContractNo] ,[JobCardMainID] ,[Activity Code] ,[WorkpackCode] ,[WorkPack] ,[PlatForm] ,[Progress_Grouping] ,[Vessel] ,[Discipline] ,[SystemCode] ,[System] ,[SubSystemCode] ,[SubSystem] ,[SubDiscipline] ,[TaskSheet_No] ,[Task Name] ,[IsTTA] ,[Scope] ,[ScopeCategory] ,[CampaignCode] ,[Campaign] ,[ActualId] ,[Estimated Mhrs] ,[ProgressDate] ,[Cumm_Actual_Booking_Mhrs] ,[Daily_Actual_Booking_Mhrs] ,[source_code] ,[sub_source_code] ,[function_code] ,[project_id] ,[dim_ent_project_sk] ,[dim_ent_project_nk] ,[created_date_time], ISNULL([parent_rssk],[rssk]),[dim_ent_function_sk] ,[dim_ent_function_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_booking_sk] ,[dim_ent_miscellaneous_booking_nk] ,[miscellaneous_booking_code] ,[dim_ent_workpack_sk] ,[dim_ent_workpack_nk] ,[data_class_hours_code] ,[dim_ent_discipline_sk] ,[dim_ent_discipline_nk] ,[hdms_estimated_booking_mhours_code] ,[hdms_cummulative_booking_mhours_code] ,[hdms_daily_actual_booking_mhours_code] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_estimated_booking_mhours_sk] ,[dim_ent_estimated_booking_mhours_nk] ,[dim_ent_cummulative_booking_mhours_sk] ,[dim_ent_cummulative_booking_mhours_nk] ,[dim_ent_daily_actual_booking_mhours_sk] ,[dim_ent_daily_actual_booking_mhours_nk]
	FROM [gpd].[reprocess_NCSA_HDMS_Booking]


	DELETE FROM [gpd].[reprocess_NCSA_HDMS_Booking]

	
	update [gpd].[NCSA_HDMS_Booking]
	set miscellaneous_booking_code=concat(contractno,'_',[activity code],'_',workpackcode,'_',SystemCode,'_',SubSystemCode,'_',tasksheet_no)


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'project_id', 'project_number', 'FL',NULL ;


	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_function_sk', 'dim_ent_function_nk',
            'dim_ent_function', 'dim_ent_function_sk', 'dim_ent_function_nk', 'function_code', 'function_code', 'FL',NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_source_sk', 'dim_ent_source_nk',
            'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'source_code', 'source_name',  'FL', NULL ;

		execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk',
            'dim_ent_discipline', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk', 'discipline', 'discipline_code',  'FL', NULL ;

			
	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_ent_source_nk', 'dim_ent_source_nk',
		'sub_source_code', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

		
	--update system
	update [gpd].[NCSA_HDMS_Booking]
	set dim_ent_system_sk = b.dim_ent_system_sk,
	dim_ent_system_nk = b.dim_ent_system_nk
	from [gpd].[NCSA_HDMS_Booking] a,dbo.dim_ent_system b
	where a.systemcode = b.system_code
	and a.project_id = b.project_number
	and b.active = 1

	--update subsystem
	update [gpd].[NCSA_HDMS_Booking]
	set dim_ent_subsystem_sk = b.dim_ent_subsystem_sk,
	dim_ent_subsystem_nk = b.dim_ent_subsystem_nk
	from [gpd].[NCSA_HDMS_Booking] a,dbo.dim_ent_subsystem b
	where a.subsystemcode = b.subsystem_code
	and a.project_id = b.project_number
	and b.active = 1

	--update campaign
	update [gpd].[NCSA_HDMS_Booking]
	set dim_ent_campaign_sk = b.dim_ent_campaign_sk,
	dim_ent_campaign_nk = b.dim_ent_campaign_nk
	from [gpd].[NCSA_HDMS_Booking] a,dbo.dim_ent_campaign b
	where a.campaigncode = b.campaign_code
	and a.project_id = b.project_number
	and b.active = 1

	--update task
	update [gpd].[NCSA_HDMS_Booking]
	set dim_ent_task_sk = b.dim_ent_task_sk,
	dim_ent_task_nk = b.dim_ent_task_nk
	from [gpd].[NCSA_HDMS_Booking] a,dbo.dim_ent_task b
	where a.tasksheet_no = b.tasksheet_no
	and a.project_id = b.project_number
	and b.active = 1

	--update workpack
	update [gpd].[NCSA_HDMS_Booking]
	set dim_ent_workpack_sk = b.dim_ent_workpack_sk,
	dim_ent_workpack_nk = b.dim_ent_workpack_nk
	from [gpd].[NCSA_HDMS_Booking] a,dbo.dim_ent_workpack b
	where a.workpackcode = b.workpack_code
	and a.project_id = b.project_number
	and b.active = 1


--------update dataclasses


	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', 'FL',NULL ;


	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_estimated_booking_mhours_sk', 'dim_ent_estimated_booking_mhours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_nk', 'dim_ent_data_class_nk',
		'hdms_estimated_booking_mhours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, 'F',NULL ;
		
		
	


	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_cummulative_booking_mhours_sk', 'dim_ent_cummulative_booking_mhours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_nk', 'dim_ent_data_class_nk',
		'hdms_cummulative_booking_mhours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;

	

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_daily_actual_booking_mhours_sk', 'dim_ent_daily_actual_booking_mhours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_nk', 'dim_ent_data_class_nk',
		'hdms_daily_actual_booking_mhours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;
		
	
--------------------------------------------------------------------------------------
	--Step 7: Create dimension for miscellaneous booking
	--------------------------------------------------------------------------------------

	
	truncate table [gpd].[NCSA_HDMS_miscellaneous_booking]

	insert into [gpd].[NCSA_HDMS_miscellaneous_booking]([miscellaneous_booking_code] ,[ContractNo] ,[JobCardMainID] ,[ActivityCode] ,[WorkpackCode] ,[WorkPack] ,[PlatForm] ,[Progress_Grouping] ,[Vessel] ,[Discipline] ,[SystemCode] ,[System] ,[SubSystemCode] ,[SubSystem] ,[SubDiscipline] ,[TaskSheet_No] ,[TaskName] ,[IsTTA] ,[Scope] ,[ScopeCategory] ,[CampaignCode] ,[Campaign] ,[ActualId] ,[EstimatedMhrs] ,[ProgressDate] ,[Cumm_Actual_Booking_Mhrs] ,[Daily_Actual_Booking_Mhrs] ,[source_code] ,[sub_source_code] ,[function_code] ,[project_id] ,[dim_ent_project_sk] ,[dim_ent_project_nk] ,[load_date_time] ,[dim_ent_function_sk] ,[dim_ent_function_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_booking_sk] ,[dim_ent_miscellaneous_booking_nk] ,[dim_ent_workpack_sk] ,[dim_ent_workpack_nk] ,[data_class_hours_code] ,[dim_ent_discipline_sk] ,[dim_ent_discipline_nk] ,[hdms_estimated_booking_mhours_code] ,[hdms_cummulative_booking_mhours_code] ,[hdms_daily_actual_booking_mhours_code] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_estimated_booking_mhours_sk] ,[dim_ent_estimated_booking_mhours_nk] ,[dim_ent_cummulative_booking_mhours_sk] ,[dim_ent_cummulative_booking_mhours_nk] ,[dim_ent_daily_actual_booking_mhours_sk] ,[dim_ent_daily_actual_booking_mhours_nk])
	select distinct a.[miscellaneous_booking_code] ,a.[ContractNo] ,a.[JobCardMainID] ,a.[Activity Code] ,a.[WorkpackCode] ,a.[WorkPack] ,a.[PlatForm] ,a.[Progress_Grouping] ,a.[Vessel] ,a.[Discipline] ,a.[SystemCode] ,a.[System] ,a.[SubSystemCode] ,a.[SubSystem] ,a.[SubDiscipline] ,a.[TaskSheet_No] ,a.[Task Name] ,a.[IsTTA] ,a.[Scope] ,a.[ScopeCategory] ,a.[CampaignCode] ,a.[Campaign] ,a.[ActualId] ,a.[Estimated Mhrs] ,a.[ProgressDate] ,a.[Cumm_Actual_Booking_Mhrs] ,a.[Daily_Actual_Booking_Mhrs] ,a.[source_code] ,a.[sub_source_code] ,a.[function_code] ,a.[project_id] ,a.[dim_ent_project_sk] ,a.[dim_ent_project_nk] ,a.[load_date_time] ,a.[dim_ent_function_sk] ,a.[dim_ent_function_nk] ,a.[dim_ent_source_sk] ,a.[dim_ent_source_nk] ,a.[dim_ent_sub_source_sk] ,a.[dim_ent_sub_source_nk] ,a.[dim_ent_system_sk] ,a.[dim_ent_system_nk] ,a.[dim_ent_subsystem_sk] ,a.[dim_ent_subsystem_nk] ,a.[dim_ent_task_sk] ,a.[dim_ent_task_nk] ,a.[dim_ent_campaign_sk] ,a.[dim_ent_campaign_nk] ,a.[dim_ent_miscellaneous_booking_sk] ,a.[dim_ent_miscellaneous_booking_nk] ,a.[dim_ent_workpack_sk] ,a.[dim_ent_workpack_nk] ,a.[data_class_hours_code] ,a.[dim_ent_discipline_sk] ,a.[dim_ent_discipline_nk] ,a.[hdms_estimated_booking_mhours_code] ,a.[hdms_cummulative_booking_mhours_code] ,a.[hdms_daily_actual_booking_mhours_code] ,a.[dim_ent_data_class_sk] ,a.[dim_ent_data_class_nk] ,a.[dim_ent_estimated_booking_mhours_sk] ,a.[dim_ent_estimated_booking_mhours_nk] ,a.[dim_ent_cummulative_booking_mhours_sk] ,a.[dim_ent_cummulative_booking_mhours_nk] ,a.[dim_ent_daily_actual_booking_mhours_sk] ,a.[dim_ent_daily_actual_booking_mhours_nk]
	from [gpd].[NCSA_HDMS_Booking] a left join
	dim_ent_miscellaneous_booking b on (a.miscellaneous_booking_code=b.miscellaneous_booking_code)
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
	and a.dim_ent_data_class_sk IS NOT NULL
	and a.dim_ent_data_class_nk IS NOT NULL
	and a.dim_ent_discipline_sk IS NOT NULL
	and a.dim_ent_discipline_nk IS NOT NULL
	and a.dim_ent_workpack_sk IS NOT NULL
	and a.dim_ent_workpack_nk IS NOT NULL
	and a.dim_ent_estimated_booking_mhours_sk IS NOT NULL
	and a.dim_ent_estimated_booking_mhours_nk IS NOT NULL
	and a.dim_ent_cummulative_booking_mhours_sk IS NOT NULL
	and a.dim_ent_cummulative_booking_mhours_nk IS NOT NULL
	and a.dim_ent_daily_actual_booking_mhours_sk IS NOT NULL
	and a.dim_ent_daily_actual_booking_mhours_nk IS NOT NULL
	and b.miscellaneous_booking_code is null
	

	execute [dbo].[generic_load_dim_v2] 'dim_ent_miscellaneous_booking','Y','N','Y';

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_HDMS_Booking', 'gpd.NCSA_HDMS_Booking',  'stage_ncsa_hdms_booking_id', 'dim_ent_miscellaneous_booking_sk', 'dim_ent_miscellaneous_booking_nk',
            'dim_ent_miscellaneous_booking', 'dim_ent_miscellaneous_booking_sk', 'dim_ent_miscellaneous_booking_nk', 'miscellaneous_booking_code', 'miscellaneous_booking_code', 'FL',NULL ;

	
	-----------------------------------------------------------------
	--Step 6: Checking for null entries for NK/SK; Isolating those records into reprocess tables.
	-----------------------------------------------------------------


	SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_HDMS_Booking]
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
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
    or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_workpack_sk IS NULL
	or dim_ent_workpack_nk IS NULL
	or dim_ent_miscellaneous_booking_sk IS NULL
	or dim_ent_miscellaneous_booking_nk IS NULL
	or dim_ent_estimated_booking_mhours_sk IS NULL
	or dim_ent_estimated_booking_mhours_nk IS NULL
	or dim_ent_cummulative_booking_mhours_sk IS NULL
	or dim_ent_cummulative_booking_mhours_nk IS NULL
	or dim_ent_daily_actual_booking_mhours_sk IS NULL
	or dim_ent_daily_actual_booking_mhours_nk IS NULL




	SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_HDMS_Booking]
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
	and dim_ent_data_class_sk IS NOT NULL
	and dim_ent_data_class_nk IS NOT NULL
	and dim_ent_discipline_sk IS NOT NULL
	and dim_ent_discipline_nk IS NOT NULL
	and dim_ent_workpack_sk IS NOT NULL
	and dim_ent_workpack_nk IS NOT NULL
	and dim_ent_miscellaneous_booking_sk IS NOT NULL
	and dim_ent_miscellaneous_booking_nk IS NOT NULL
	and dim_ent_estimated_booking_mhours_sk IS NOT NULL
	and dim_ent_estimated_booking_mhours_nk IS NOT NULL
	and dim_ent_cummulative_booking_mhours_sk IS NOT NULL
	and dim_ent_cummulative_booking_mhours_nk IS NOT NULL
	and dim_ent_daily_actual_booking_mhours_sk IS NOT NULL
	and dim_ent_daily_actual_booking_mhours_nk IS NOT NULL


	
	INSERT INTO [gpd].[reprocess_NCSA_HDMS_Booking]
	([miscellaneous_booking_code],[created_date_time], [parent_rssk],[ContractNo] ,[JobCardMainID] ,[Activity Code] ,[WorkpackCode] ,[WorkPack] ,[PlatForm] ,[Progress_Grouping] ,[Vessel] ,[Discipline] ,[SystemCode] ,[System] ,[SubSystemCode] ,[SubSystem] ,[SubDiscipline] ,[TaskSheet_No] ,[Task Name] ,[IsTTA] ,[Scope] ,[ScopeCategory] ,[CampaignCode] ,[Campaign] ,[ActualId] ,[Estimated Mhrs] ,[ProgressDate] ,[Cumm_Actual_Booking_Mhrs] ,[Daily_Actual_Booking_Mhrs] ,[source_code] ,[sub_source_code] ,[function_code] ,[project_id] ,[dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_booking_sk] ,[dim_ent_miscellaneous_booking_nk]  ,[dim_ent_workpack_sk] ,[dim_ent_workpack_nk] ,[data_class_hours_code] ,[dim_ent_discipline_sk] ,[dim_ent_discipline_nk] ,[hdms_estimated_booking_mhours_code] ,[hdms_cummulative_booking_mhours_code] ,[hdms_daily_actual_booking_mhours_code] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_estimated_booking_mhours_sk] ,[dim_ent_estimated_booking_mhours_nk] ,[dim_ent_cummulative_booking_mhours_sk] ,[dim_ent_cummulative_booking_mhours_nk] ,[dim_ent_daily_actual_booking_mhours_sk] ,[dim_ent_daily_actual_booking_mhours_nk])
	SELECT
	[miscellaneous_booking_code],[load_date_time], [parent_rssk],[ContractNo] ,[JobCardMainID] ,[Activity Code] ,[WorkpackCode] ,[WorkPack] ,[PlatForm] ,[Progress_Grouping] ,[Vessel] ,[Discipline] ,[SystemCode] ,[System] ,[SubSystemCode] ,[SubSystem] ,[SubDiscipline] ,[TaskSheet_No] ,[Task Name] ,[IsTTA] ,[Scope] ,[ScopeCategory] ,[CampaignCode] ,[Campaign] ,[ActualId] ,[Estimated Mhrs] ,[ProgressDate] ,[Cumm_Actual_Booking_Mhrs] ,[Daily_Actual_Booking_Mhrs] ,[source_code] ,[sub_source_code] ,[function_code] ,[project_id] ,[dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_booking_sk] ,[dim_ent_miscellaneous_booking_nk] ,[dim_ent_workpack_sk] ,[dim_ent_workpack_nk] ,[data_class_hours_code] ,[dim_ent_discipline_sk] ,[dim_ent_discipline_nk] ,[hdms_estimated_booking_mhours_code] ,[hdms_cummulative_booking_mhours_code] ,[hdms_daily_actual_booking_mhours_code] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_estimated_booking_mhours_sk] ,[dim_ent_estimated_booking_mhours_nk] ,[dim_ent_cummulative_booking_mhours_sk] ,[dim_ent_cummulative_booking_mhours_nk] ,[dim_ent_daily_actual_booking_mhours_sk] ,[dim_ent_daily_actual_booking_mhours_nk]
	FROM [gpd].[NCSA_HDMS_Booking]
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
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_workpack_sk IS NULL
	or dim_ent_workpack_nk IS NULL
	or dim_ent_miscellaneous_booking_sk IS NULL
	or dim_ent_miscellaneous_booking_nk IS NULL
	or dim_ent_estimated_booking_mhours_sk IS NULL
	or dim_ent_estimated_booking_mhours_nk IS NULL
	or dim_ent_cummulative_booking_mhours_sk IS NULL
	or dim_ent_cummulative_booking_mhours_nk IS NULL
	or dim_ent_daily_actual_booking_mhours_sk IS NULL
	or dim_ent_daily_actual_booking_mhours_nk IS NULL


	--------------------------------------------------------------------------------------
	--Change: Add logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------



	update [gpd].[reprocess_NCSA_HDMS_Booking]
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
		case when dim_ent_workpack_nk is null then 'Missing Workpack : ' + isnull(workpackcode,'') + ',' else '' end +
		case when dim_ent_estimated_booking_mhours_nk is null then 'Missing Estimated Booking MHours : ' + isnull(hdms_estimated_booking_mhours_code,'') + ',' else '' end +
		case when dim_ent_cummulative_booking_mhours_nk is null then 'Missing Cumulative Booking MHours : ' + isnull(hdms_cummulative_booking_mhours_code,'') + ',' else '' end +
		case when dim_ent_daily_actual_booking_mhours_nk is null then 'Missing Daily Actual Booking MHours : ' + isnull(hdms_daily_actual_booking_mhours_code,'') + ',' else '' end +
		case when dim_ent_miscellaneous_booking_nk is null then 'Missing Miscellaneous : ' + isnull(miscellaneous_booking_code,'') + ',' else '' end
		--CHECK LAST ONE
		

	DELETE FROM [gpd].[NCSA_HDMS_Booking]
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
	or dim_ent_data_class_sk IS NULL
	or dim_ent_data_class_nk IS NULL
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_workpack_sk IS NULL
	or dim_ent_workpack_nk IS NULL
	or dim_ent_miscellaneous_booking_sk IS NULL
	or dim_ent_miscellaneous_booking_nk IS NULL
	or dim_ent_estimated_booking_mhours_sk IS NULL
	or dim_ent_estimated_booking_mhours_nk IS NULL
	or dim_ent_cummulative_booking_mhours_sk IS NULL
	or dim_ent_cummulative_booking_mhours_nk IS NULL
	or dim_ent_daily_actual_booking_mhours_sk IS NULL
	or dim_ent_daily_actual_booking_mhours_nk IS NULL

	


	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	exec populate_reprocess_history 'pl_hdms_booking_data_raw_to_synapse_stage', 'gpd.NCSA_HDMS_Booking', 'gpd.reprocess_NCSA_HDMS_Booking', 'dbo.fact_ops_hdms_booking','rssk';

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
GO


