/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_resource_spread_validate]    Script Date: 10/19/2022 11:14:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[load_NCSA_fact_P6_resource_spread_validate] AS

	BEGIN
    
	begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);



/***********************************************************
Date		Developer		Change Desc
07/26/2022	Abhijit			Initial Version
08/08/2022  Abhijit         Insert into dim_entp_activity and associate the same in dim_entp_activity resource dimension
10/18/2022  Abhijit         Change request from johnson to insert mandatory fact load for max date with 0 units

**********************************************************/

	declare @load_date_time datetime 
	select @load_date_time = getdate()


	update [gpd].[P6_resource_spread]
	set load_date_time = @load_date_time;

--To get max date from period column
	declare @maxperiod varchar(40) 
	set @maxperiod =(select COALESCE(max(period),'1900-01-01') from[gpd].[P6_resource_spread] where period!='dummmydate')

--To remove leading/trailing spaces from activity_id
	update [gpd].[P6_resource_spread]
	set activity_id = trim(activity_id);

--To remove space from start and finish dates
/*
	update [gpd].[P6_resource_spread]
	set Start=replace(Start,' ',''),Finish=replace(Finish,' ' ,'')
	*/

--To remove 'A' from Start_Date and format to datetime
	update [gpd].[P6_resource_spread]
	set Start = format(cast(left(Start, 10) as SmallDateTime),'yyyy-MM-dd') from [gpd].[P6_resource_spread]
	where Right(Start,1) = 'A'

--To remove 'A' from Finish_Date and format to datetime
	update [gpd].[P6_resource_spread]
	set Finish = format(cast(left(Finish, 10) as SmallDateTime),'yyyy-MM-dd') from [gpd].[P6_resource_spread]
	where Right(Finish,1) = 'A'

--Combine data from the Reprocess table for the current run

	insert into [gpd].[P6_resource_spread]
	([project], [Activity_ID], [Activity_Name], [Original_Duration], [Actual_Duration], [Remaining_Duration], [Start], [Finish], [Actual_Start], [Actual_Finish], [Remaining_Late_Start], [Remaining_Late_Finish], [Calendar], [Budgeted_Units], [Actual_Units], [Remaining_Units], [WBS], [WBS_Name], [Cost_Account], [Role],[Resource_ID],[Resource_ID_Name],[Resource_Name],[Resource_Type], [Change_Management], [Executed_By_Type], [Function], [Milestones], [Office], [Phase], [Region], [Schedule_Risk_Assessment], [Storage_Solutions], [Supply_Chain], [Prime], [SubPrime], [Spreadsheet_Field], [Period], [Units], [fx], [work_unit], [work_area], [cwp], [schedule_resource], [iwp], [pim], [roc], [data_class], [sub_source], [source], [unit_of_measure], [dim_entp_function_sk], [dim_entp_function_nk], [dim_entp_project_sk], [dim_entp_project_nk], [dim_entp_phase_sk], [dim_entp_phase_nk], [dim_entp_work_unit_sk], [dim_entp_work_unit_nk], [dim_entp_work_area_sk], [dim_entp_work_area_nk], [dim_entp_cwp_sk], [dim_entp_cwp_nk], [dim_entp_schedule_resource_sk], [dim_entp_schedule_resource_nk], [dim_entp_activity_resource_sk], [dim_entp_activity_resource_nk], [dim_entp_iwp_sk], [dim_entp_iwp_nk], [dim_entp_pim_sk], [dim_entp_pim_nk], [dim_entp_roc_sk], [dim_entp_roc_nk], [dim_entp_data_sub_class_sk], [dim_entp_data_sub_class_nk], [dim_entp_data_class_sk], [dim_entp_data_class_nk], [dim_entp_sub_source_sk], [dim_entp_sub_source_nk], [dim_entp_source_sk], [dim_entp_source_nk], [dim_entp_unit_of_measure_sk], [dim_entp_unit_of_measure_nk],[dim_entp_planning_resource_sk],[dim_entp_planning_resource_nk], [load_date_time], [parent_rssk])
	SELECT 
	[project], [Activity_ID], [Activity_Name], [Original_Duration], [Actual_Duration], [Remaining_Duration], [Start], [Finish], [Actual_Start], [Actual_Finish], [Remaining_Late_Start], [Remaining_Late_Finish], [Calendar], [Budgeted_Units], [Actual_Units], [Remaining_Units], [WBS], [WBS_Name], [Cost_Account], [Role],[Resource_ID],[Resource_ID_Name],[Resource_Name],[Resource_Type], [Change_Management], [Executed_By_Type], [Function], [Milestones], [Office], [Phase], [Region], [Schedule_Risk_Assessment], [Storage_Solutions], [Supply_Chain], [Prime], [SubPrime], [Spreadsheet_Field], [Period], [Units], [fx], [work_unit], [work_area], [cwp], [schedule_resource], [iwp], [pim], [roc], [data_class], [sub_source], [source], [unit_of_measure], [dim_entp_function_sk], [dim_entp_function_nk], [dim_entp_project_sk], [dim_entp_project_nk], [dim_entp_phase_sk], [dim_entp_phase_nk], [dim_entp_work_unit_sk], [dim_entp_work_unit_nk], [dim_entp_work_area_sk], [dim_entp_work_area_nk], [dim_entp_cwp_sk], [dim_entp_cwp_nk], [dim_entp_schedule_resource_sk], [dim_entp_schedule_resource_nk], [dim_entp_activity_resource_sk], [dim_entp_activity_resource_nk], [dim_entp_iwp_sk], [dim_entp_iwp_nk], [dim_entp_pim_sk], [dim_entp_pim_nk], [dim_entp_roc_sk], [dim_entp_roc_nk], [dim_entp_data_sub_class_sk], [dim_entp_data_sub_class_nk], [dim_entp_data_class_sk], [dim_entp_data_class_nk], [dim_entp_sub_source_sk], [dim_entp_sub_source_nk], [dim_entp_source_sk], [dim_entp_source_nk], [dim_entp_unit_of_measure_sk], [dim_entp_unit_of_measure_nk],[dim_entp_planning_resource_sk],[dim_entp_planning_resource_nk], [load_date_time], ISNULL([parent_rssk],[rssk])
    from gpd.reprocess_P6_resource_spread

	delete from gpd.reprocess_P6_resource_spread

	--To update plan_type_revision field
	update [gpd].[P6_resource_spread]
	set plantype_revision=SUBSTRING(Spreadsheet_Field, 1, CHARINDEX('_', Spreadsheet_Field)+1 )

	
		--Update Project SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_resource_spread','gpd.P6_resource_spread','stage_p6_engr_id', 
       'dim_entp_project_sk','dim_entp_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'project','project_number','FL',null;

	--insert new planning resource
		truncate table [gpd].[NCSA_planning_resource]
		
		INSERT INTO [gpd].[NCSA_planning_resource]
           ([resource_id]
           ,[resource_id_name]
           ,[resource_name]
           ,[resource_type]
           ,[project])
			select  x.[Resource_ID] as [Resource_ID],
					max(x.[Resource_ID_Name]) as [Resource_ID_Name],
					max(x.[Resource_Name]) as [Resource_Name],
					max(x.[Resource_Type]) as [Resource_Type] ,
					x.[project] as [project]
			from (select distinct 
					[Resource_ID],
					[Resource_ID_Name],
					[Resource_Name],
					[Resource_Type],
					[project]
					from [gpd].[P6_resource_spread]) x
			group by x.[Resource_ID],x.[project]


			exec generic_load_dim_v2 'dim_entp_planning_resource', 'Y', 'N', 'Y'

			execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_planning_resource_sk', 'dim_entp_planning_resource_nk',
        'dim_entp_planning_resource', 'dim_entp_planning_resource_sk', 'dim_entp_planning_resource_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'resource_id', 'resource_id',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;


	
		--Update Function SK/NK

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_resource_spread','gpd.P6_resource_spread','stage_p6_engr_id', 
       'dim_entp_function_sk','dim_entp_function_nk','dim_ent_function','dim_ent_function_sk','dim_ent_function_nk', 
       'fx','function_code','FL',null;

		--Update Phase SK/NK
	   
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_phase_sk', 'dim_entp_phase_nk',
        'dim_entp_phase', 'dim_entp_phase_sk', 'dim_entp_phase_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'phase', 'phase_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;

		
		--Update Work Unit SK/NK		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk',
        'dim_entp_work_unit', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'work_unit', 'work_unit_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;

		--update work area SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk',
        'dim_entp_work_area', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'work_area', 'work_area_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;

		--update cwp SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk',
        'dim_entp_cwp', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'cwp', 'cwp_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;

		--update schedule resource SK/NK

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk',
        'dim_entp_schedule_resource', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'schedule_resource', 'schedule_resource_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
			
		--update IWP SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk',
        'dim_entp_iwp', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'iwp', 'iwp_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
		
		--update PIM SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_pim_sk', 'dim_entp_pim_nk',
        'dim_entp_pim', 'dim_entp_pim_sk', 'dim_entp_pim_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'pim', 'pim_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
		
		--update ROC SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_roc_sk', 'dim_entp_roc_nk',
        'dim_entp_roc', 'dim_entp_roc_sk', 'dim_entp_roc_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'roc', 'roc_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;

		truncate table [gpd].[tmp_Activity_P6_engr_headcount]



insert into [gpd].[tmp_Activity_P6_engr_headcount]
		  ([activity_code]
		  ,[activity_description]
		  ,[schedule_unit]
		  ,[schedule_resource]
		  ,[Original_Duration]
		  ,[remaining_duration]
		  ,[actual_start]
		  ,[actual_finish]
		  ,[percent_complete_type]
		  ,[executed_by_type]
		  ,[prime]
		  ,[sub_prime]
		  ,[schedule_work_area]
		  ,[executed_by]
		  ,[early_start_date]
		  ,[early_finish_date]
		  ,[is_on_critical_path]
		  ,[total_float]
		  ,[activity_status]
		  ,[planned_start]
		  ,[planned_finish]
		  ,[project_number]
		  ,[dim_entp_project_nk]
		  ,[dim_entp_work_area_nk]
		  ,[dim_entp_cwp_nk]
		  ,[dim_entp_schedule_resource_nk]
		  ,[actual_duration]
		  ,[remaining_late_start]
		  ,[remaining_late_finish]
		  ,[calendar]
		  ,[budgeted_units]
		  ,[actual_units]
		  ,[remaining_units]
		  ,[wbs]
		  ,[wbs_name]
		  ,[cost_account]
		  ,[role_is]
		  ,[change_management]
		  ,[funct]
		  ,[milestones]
		  ,[office]
		  ,[dim_entp_phase_nk]
		  ,[region]
		  ,[schedule_risk_assessment]
		  ,[supply_chain]
		  )
		
		select
			[activity_code]
		  ,[activity_description]
		  ,max([schedule_unit])
		  ,max([schedule_resource])
		  ,sum(convert(float,[Original_Duration])) as [Original_Duration]
		  ,sum(convert(float,[remaining_duration])) as [remaining_duration]
		  ,max(convert(date,[actual_start])) as [actual_start]
		  ,max(convert(date,[actual_finish])) as [actual_finish]
		  ,max([percent_complete_type])
		  ,max([executed_by_type]) as [executed_by_type]
		  ,max([prime]) as [prime]
		  ,max([sub_prime]) as [sub_prime]
		  ,max([schedule_work_area])
		  ,max([executed_by])
		  ,max([early_start_date])
		  ,max([early_finish_date])
		  ,max([is_on_critical_path])
		  ,max([total_float])
		  ,max([activity_status])
		  ,max(convert(datetime,[planned_start])) as [planned_start]
		  ,max(convert(datetime,[planned_finish])) as [planned_finish]
		  ,[project_number]
		  ,[dim_entp_project_nk]
		  ,max([dim_entp_work_area_nk])
		  ,max([dim_entp_cwp_nk])
		  ,max([dim_entp_schedule_resource_nk])
		  ,sum(convert(float,[actual_duration])) as [actual_duration]
		  ,max(convert(date,[remaining_late_start])) as [remaining_late_start]
		  ,max(convert(date,[remaining_late_finish])) as [remaining_late_finish]
		  ,max([calendar]) as [calendar]
		  ,sum(CAST(CAST([budgeted_units] as float) as numeric(30,10))) as [budgeted_units]
		  ,sum(CAST(CAST([actual_units] as float) as numeric(30,10))) as [actual_units]
		  --,sum(convert(float,[budgeted_units])) as [budgeted_units]
		  --,sum(convert(float,[actual_units])) as [actual_units]
		  ,sum(CAST(CAST([remaining_units] as float)  as numeric(30,10))) as [remaining_units]
		  ,max([wbs]) as [wbs]
		  ,max([wbs_name]) as [wbs_name]
		  ,max([cost_account]) as [cost_account]
		  ,max([role_is]) as [role_is]
		  ,max([change_management]) as [change_management]
		  ,max([funct]) as [funct]
		  ,max([milestones]) as [milestones]
		  ,max([office]) as [office]
		  ,max([dim_entp_phase_nk]) as [dim_entp_phase_nk]
		  ,max([region]) as [region]
		  ,max([schedule_risk_assessment]) as [schedule_risk_assessment]
		  ,max([supply_chain]) as [supply_chain]
		  from 
			(
			select 
			P.activity_id as activity_code,
			P.Activity_Name as activity_description,
			A.schedule_unit,
			A.schedule_resource,
			A.Original_Duration,
			A.remaining_duration,
			A.actual_start,
			A.actual_finish,
			A.percent_complete_type,
			A.executed_by_type,
			A.prime,
			A.sub_prime as sub_prime,
			A.schedule_work_area,
			A.executed_by,
			A.early_start_date,
			A.early_finish_date,
			A.is_on_critical_path,
			A.total_float,
			A.activity_status,
			A.planned_start as planned_start,
			A.planned_finish as planned_finish,
			P.Project as project_number,
			P.dim_entp_project_nk,
			isnull(A.dim_entp_work_area_nk,P.dim_entp_work_area_nk) as dim_entp_work_area_nk,
			isnull(A.dim_entp_cwp_nk,P.dim_entp_cwp_nk) as dim_entp_cwp_nk,
			isnull(A.dim_entp_schedule_resource_nk,P.dim_entp_schedule_resource_nk) as dim_entp_schedule_resource_nk,
			A.actual_duration,
			A.remaining_late_start,
			A.remaining_late_finish,
			A.calendar,
			A.budgeted_units,
			A.actual_units,
			A.remaining_units,
			A.wbs,
			A.wbs_name,
			A.cost_account,
			A.[role_is] as role_is,
			A.change_management,
			A.[funct] as funct,
			A.milestones,
			A.office,
			A.dim_entp_phase_nk,
			A.region,
			A.schedule_risk_assessment,
			A.supply_chain
			from
			[gpd].[P6_resource_spread] P
			left join [dbo].[dim_entp_activity] A
			on P.Activity_ID = A.activity_code
			and P.project=A.project_number
			and A.active=1
			WHERE P.spreadsheet_field like '%Cum Remaining Early%'   
			and period='dummmydate' and P.dim_entp_project_nk is not null
			) AA
			group by 
			[activity_code]
		  ,[activity_description]
		  ,[project_number]
		  ,[dim_entp_project_nk]

		  exec generic_load_dim_v2 'dim_entp_temp_activity_p6_eng', 'Y', 'N', 'Y'

		truncate table [gpd].[tmp_P6_resource_activity];
		
		insert into [gpd].[tmp_P6_resource_activity]
		  ([plantype_revision],
			[activity_code],
			[activity_description],
			[resource_id],
			[Original_Duration],
			[remaining_duration],
			[actual_duration],
			[actual_start],
			[actual_finish],
			[planned_start],
			[planned_finish],
			[remaining_late_start],
			[remaining_late_finish],
			[budgeted_units],
			[actual_units],
			[remaining_units],
			[function_name],
			[milestones],
			[office],
			[Prime],
			[SubPrime],
			[project_number],
			[dim_entp_phase_nk]
		  )
		
		select distinct
		   [plantype_revision]
		  ,[activity_code]
		  ,[activity_description]
		  ,[resource_id]
		  ,sum(convert(float,[Original_Duration])) as [Original_Duration]
		  ,sum(convert(float,[remaining_duration])) as [remaining_duration]
		  ,sum(convert(float,[actual_duration])) as [actual_duration]
		  ,max(convert(date,[actual_start])) as [actual_start]
		  ,max(convert(date,[actual_finish])) as [actual_finish]
		  ,max(convert(datetime,[planned_start])) as [planned_start]
		  ,max(convert(datetime,[planned_finish])) as [planned_finish]
		  ,max(convert(datetime,[remaining_late_start])) as [remaining_late_start]
		  ,max(convert(datetime,[remaining_late_finish])) as [remaining_late_finish]
		  ,sum(CAST(CAST([budgeted_units] as float) as numeric(30,10))) as [budgeted_units]
		  ,sum(CAST(CAST([actual_units] as float) as numeric(30,10))) as [actual_units]
		  ,sum(CAST(CAST([remaining_units] as float)  as numeric(30,10))) as [remaining_units]
		  ,max([function]) as [function_name]
		  ,max([milestones]) as [milestones]
		  ,max([office]) as [office]
		    ,max([prime]) as [prime]
		  ,max([subprime]) as [sub_prime]
		  ,[project_number]
		  ,max([dim_entp_phase_nk]) as [dim_entp_phase_nk]
		  from 
			(select distinct
			P.plantype_revision AS plantype_revision,
			P.activity_id as activity_code,
			P.Activity_Name as activity_description,
			P.resource_id,
			P.Original_Duration,
			P.remaining_duration,
			P.actual_duration,
			P.actual_start,
			P.actual_finish,
			P.[Start] as planned_start,
			P.Finish as planned_finish,
			P.Project as project_number,
			P.dim_entp_project_nk,
			P.dim_entp_planning_resource_nk,
			P.remaining_late_start,
			P.remaining_late_finish,
			P.budgeted_units,
			P.actual_units,
			P.remaining_units,
			P.[function],
			P.milestones,
			P.office,
			P.Prime,
			P.SubPrime,
			P.dim_entp_phase_nk
			from
			[gpd].[P6_resource_spread] P
			WHERE P.spreadsheet_field like '%Cum Remaining Early%'   
			and period='dummmydate' and P.dim_entp_project_nk is not null
		
			) AA
			group by 
			[plantype_revision]
			,[activity_code]
		    ,[activity_description]
		    ,[resource_id]
		    ,[project_number]
		  
		exec generic_load_dim_v2 'dim_entp_p6_resource_activity', 'Y', 'N', 'Y'

		--select * from [dbo].[dim_entp_activity_resource] where active=1
		--truncate table [gpd].[reprocess_tmp_Activity_P6_engr_headcount]
		

		--update activity SK/NK
		
		/*
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_activity_resource_sk', 'dim_entp_activity_resource_nk',
        'dim_entp_activity_resource', 'dim_entp_activity_resource_sk', 'dim_entp_activity_resource_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'activity_id', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
		*/

		update [gpd].[P6_resource_spread]
		set dim_entp_activity_resource_sk = b.dim_entp_activity_resource_sk,
		dim_entp_activity_resource_nk = b.dim_entp_activity_resource_nk
		from [gpd].[P6_resource_spread] a,dbo.dim_entp_activity_resource b
		where a.dim_entp_planning_resource_nk = b.dim_entp_planning_resource_nk
		and 
		a.plantype_revision = b.plantype_revision
		and a.resource_id = b.resource_id
		and a.activity_ID = b.activity_code
		and a.activity_name = b.activity_description
		and a.project = b.project_number
		and b.active = 1

--10/19/22 : update max period for 0 fact records
		update [gpd].[P6_resource_spread]
		set period=@maxperiod
		where period='dummmydate' and units='0' 

--04/21/2022 : Clear the stage table of all dummy records

		--select * from [gpd].[P6_resource_spread]
		DELETE FROM [gpd].[P6_resource_spread]
		where period='dummmydate' and units='0'




		--Insert into Data sub Class table



		IF OBJECT_ID('tempdb..#tmp_sub_class') IS NOT NULL
		BEGIN
			DROP TABLE #tmp_sub_class
		END

		select data_class,Spreadsheet_Field as data_sub_class into #tmp_sub_class 
		from (select distinct data_class,Spreadsheet_Field from  [gpd].[P6_resource_spread] where spreadsheet_field <>'' )p;

		delete from #tmp_sub_class
		where data_sub_class in (select data_sub_class_name from dim_ent_data_sub_class)

		declare @dim_ent_data_class_nk int
		declare @data_sub_class varchar(200)
		declare  @counter bigint
		declare  @max_key bigint
		declare  @mx_val bigint
		declare @dim_ent_data_sub_class_nk int
		declare @cur_date datetime
		declare @check_count int
		declare @data_class varchar(20)
		select @cur_date  = getdate()

		select @mx_val = count(*) from #tmp_sub_class
		select @counter = 1

		while @counter <= @mx_val
		begin
			set rowcount 1
			select @data_class = data_class,@data_sub_class = data_sub_class from #tmp_sub_class
			
			set rowcount 0

			if isnull(@data_sub_class,'') = '' 
			begin
				break
			end
			
			delete from #tmp_sub_class where data_class = @data_class and  data_sub_class = @data_sub_class
			
			select @dim_ent_data_class_nk = dim_ent_data_class_nk from dim_ent_data_class where data_class_name = @data_class and active = 1

			select @dim_ent_data_sub_class_nk =  max(dim_ent_data_sub_class_nk) from dim_ent_data_sub_class
			select @dim_ent_data_sub_class_nk = isnull(@dim_ent_data_sub_class_nk,0) + 1

			select @check_count = count(*) from dim_ent_data_sub_class where data_sub_class_name = @data_sub_class

			if isnull(@check_count,0) = 0 
			begin
				insert into dim_ent_data_sub_class
				(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time ,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,gpd_level)
				values (@dim_ent_data_sub_class_nk,'01/01/2000','01/01/2050',@data_sub_class,1,@cur_date ,@cur_date ,
				'N',@dim_ent_data_class_nk,@data_class,@data_sub_class,NULL)
			end
			set rowcount 1
				select @counter =  @counter + 1
			set rowcount 0
			
		end


		--Update Data class SK/NK
		
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_resource_spread','gpd.P6_resource_spread','stage_p6_engr_id', 
       'dim_entp_data_class_sk','dim_entp_data_class_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class','data_class_name','FL',null;
		
		
		--update Data sub class SK/NK 

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_data_sub_class_sk', 'dim_entp_data_sub_class_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_entp_data_class_nk', 'dim_ent_data_class_nk',
		'Spreadsheet_Field', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
	
		--Update source SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_resource_spread','gpd.P6_resource_spread','stage_p6_engr_id', 
       'dim_entp_source_sk','dim_entp_source_nk','dim_ent_source','dim_ent_source_sk','dim_ent_source_nk', 
       'source','source_name','FL',null;


		--Update sub_source SK/NK

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_resource_spread', 'gpd.P6_resource_spread',  'stage_p6_engr_id', 'dim_entp_sub_source_sk', 'dim_entp_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_entp_source_nk', 'dim_ent_source_nk',
		'sub_source', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'F',NULL ;
		
		
		--Update Unit of Measure SK/NK
			
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_resource_spread','gpd.P6_resource_spread','stage_p6_engr_id', 
       'dim_entp_unit_of_measure_sk','dim_entp_unit_of_measure_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure','unit_of_measure_code','L',null;


	
		select @unprocessed_count  = count(*)  from [gpd].[P6_resource_spread]
		where 
		   dim_entp_function_sk is null
		or dim_entp_function_nk is null
		or dim_entp_project_sk is null
		or dim_entp_project_nk is null
		or dim_entp_phase_sk is null
		or dim_entp_phase_nk is null
		or dim_entp_work_unit_sk is null
		or dim_entp_work_unit_nk is null
		or dim_entp_work_area_sk is null
		or dim_entp_work_area_nk is null
		or dim_entp_cwp_sk is null
		or dim_entp_cwp_nk is null
		or dim_entp_schedule_resource_sk is null
		or dim_entp_schedule_resource_nk is null
		or dim_entp_activity_resource_sk is null
		or dim_entp_activity_resource_nk is null
		or dim_entp_iwp_sk is null
		or dim_entp_iwp_nk is null	
		or dim_entp_pim_sk is null
		or dim_entp_pim_nk is null			
		or dim_entp_roc_sk is null
		or dim_entp_roc_nk is null
		or dim_entp_data_class_sk is null
		or dim_entp_data_class_nk is null
		or dim_entp_data_sub_class_sk is null
		or dim_entp_data_sub_class_nk is null
		or dim_entp_source_sk is null
		or dim_entp_source_nk is null
		or dim_entp_sub_source_sk is null
		or dim_entp_sub_source_nk is null
		or dim_entp_unit_of_measure_nk is null
		or dim_entp_unit_of_measure_sk is null
		or dim_entp_planning_resource_sk is null
		or dim_entp_planning_resource_nk is null

		select @processed_count  = count(*)  from [gpd].[P6_resource_spread]
		where 
		   dim_entp_function_sk is not null
		and dim_entp_function_nk is not null
		and dim_entp_project_sk is not null
		and dim_entp_project_nk is not null
		and dim_entp_phase_sk is not null
		and dim_entp_phase_nk is not null
		and dim_entp_work_unit_sk is not null
		and dim_entp_work_unit_nk is not null
		and dim_entp_work_area_sk is not null
		and dim_entp_work_area_nk is not null
		and dim_entp_cwp_sk is not null
		and dim_entp_cwp_nk is not null
		and dim_entp_schedule_resource_sk is not null
		and dim_entp_schedule_resource_nk is not null
		and dim_entp_activity_resource_sk is not null
		and dim_entp_activity_resource_nk is not null
		and dim_entp_iwp_sk is not null
		and dim_entp_iwp_nk is not null	
		and dim_entp_pim_sk is not null
		and dim_entp_pim_nk is not null			
		and dim_entp_roc_sk is not null
		and dim_entp_roc_nk is not null
		and dim_entp_data_class_sk is not null
		and dim_entp_data_class_nk is not null
		and dim_entp_data_sub_class_sk is not null
		and dim_entp_data_sub_class_nk is not null
		and dim_entp_source_sk is not null
		and dim_entp_source_nk is not null
		and dim_entp_sub_source_sk is not null
		and dim_entp_sub_source_nk is not null
		and dim_entp_unit_of_measure_nk is not null
		and dim_entp_unit_of_measure_sk is not null
		and dim_entp_planning_resource_sk is not null
		and dim_entp_planning_resource_nk is not null


		--Moving error data to reprocessing area

		insert into [gpd].[reprocess_P6_resource_spread]
		([project], [Activity_ID], [Activity_Name], [Original_Duration], [Actual_Duration], [Remaining_Duration], [Start], [Finish], [Actual_Start], [Actual_Finish], [Remaining_Late_Start], [Remaining_Late_Finish], [Calendar], [Budgeted_Units], [Actual_Units], [Remaining_Units], [WBS], [WBS_Name], [Cost_Account], [Role],[Resource_ID],[Resource_ID_Name],[Resource_Name],[Resource_Type], [Change_Management], [Executed_By_Type], [Function], [Milestones], [Office], [Phase], [Region], [Schedule_Risk_Assessment], [Storage_Solutions], [Supply_Chain], [Prime], [SubPrime], [Spreadsheet_Field], [Period], [Units], [fx], [work_unit], [work_area], [cwp], [schedule_resource], [iwp], [pim], [roc], [data_class], [sub_source], [source], [unit_of_measure], [dim_entp_function_sk], [dim_entp_function_nk], [dim_entp_project_sk], [dim_entp_project_nk], [dim_entp_phase_sk], [dim_entp_phase_nk], [dim_entp_work_unit_sk], [dim_entp_work_unit_nk], [dim_entp_work_area_sk], [dim_entp_work_area_nk], [dim_entp_cwp_sk], [dim_entp_cwp_nk], [dim_entp_schedule_resource_sk], [dim_entp_schedule_resource_nk], [dim_entp_activity_resource_sk], [dim_entp_activity_resource_nk], [dim_entp_iwp_sk], [dim_entp_iwp_nk], [dim_entp_pim_sk], [dim_entp_pim_nk], [dim_entp_roc_sk], [dim_entp_roc_nk], [dim_entp_data_sub_class_sk], [dim_entp_data_sub_class_nk], [dim_entp_data_class_sk], [dim_entp_data_class_nk], [dim_entp_sub_source_sk], [dim_entp_sub_source_nk], [dim_entp_source_sk], [dim_entp_source_nk], [dim_entp_unit_of_measure_sk], [dim_entp_unit_of_measure_nk],[dim_entp_planning_resource_sk],[dim_entp_planning_resource_nk], [load_date_time], [parent_rssk])
		select 
		[project], [Activity_ID], [Activity_Name], [Original_Duration], [Actual_Duration], [Remaining_Duration], [Start], [Finish], [Actual_Start], [Actual_Finish], [Remaining_Late_Start], [Remaining_Late_Finish], [Calendar], [Budgeted_Units], [Actual_Units], [Remaining_Units], [WBS], [WBS_Name], [Cost_Account], [Role],[Resource_ID],[Resource_ID_Name],[Resource_Name],[Resource_Type], [Change_Management], [Executed_By_Type], [Function], [Milestones], [Office], [Phase], [Region], [Schedule_Risk_Assessment], [Storage_Solutions], [Supply_Chain], [Prime], [SubPrime], [Spreadsheet_Field], [Period], [Units], [fx], [work_unit], [work_area], [cwp], [schedule_resource], [iwp], [pim], [roc], [data_class], [sub_source], [source], [unit_of_measure], [dim_entp_function_sk], [dim_entp_function_nk], [dim_entp_project_sk], [dim_entp_project_nk], [dim_entp_phase_sk], [dim_entp_phase_nk], [dim_entp_work_unit_sk], [dim_entp_work_unit_nk], [dim_entp_work_area_sk], [dim_entp_work_area_nk], [dim_entp_cwp_sk], [dim_entp_cwp_nk], [dim_entp_schedule_resource_sk], [dim_entp_schedule_resource_nk], [dim_entp_activity_resource_sk], [dim_entp_activity_resource_nk], [dim_entp_iwp_sk], [dim_entp_iwp_nk], [dim_entp_pim_sk], [dim_entp_pim_nk], [dim_entp_roc_sk], [dim_entp_roc_nk], [dim_entp_data_sub_class_sk], [dim_entp_data_sub_class_nk], [dim_entp_data_class_sk], [dim_entp_data_class_nk], [dim_entp_sub_source_sk], [dim_entp_sub_source_nk], [dim_entp_source_sk], [dim_entp_source_nk], [dim_entp_unit_of_measure_sk], [dim_entp_unit_of_measure_nk],[dim_entp_planning_resource_sk],[dim_entp_planning_resource_nk], [load_date_time], [parent_rssk]
		from [gpd].[P6_resource_spread]
		where 
		   dim_entp_function_sk is null
		or dim_entp_function_nk is null
		or dim_entp_project_sk is null
		or dim_entp_project_nk is null
		or dim_entp_phase_sk is null
		or dim_entp_phase_nk is null
		or dim_entp_work_unit_sk is null
		or dim_entp_work_unit_nk is null
		or dim_entp_work_area_sk is null
		or dim_entp_work_area_nk is null
		or dim_entp_cwp_sk is null
		or dim_entp_cwp_nk is null
		or dim_entp_schedule_resource_sk is null
		or dim_entp_schedule_resource_nk is null
		or dim_entp_activity_resource_sk is null
		or dim_entp_activity_resource_nk is null
		or dim_entp_iwp_sk is null
		or dim_entp_iwp_nk is null	
		or dim_entp_pim_sk is null
		or dim_entp_pim_nk is null			
		or dim_entp_roc_sk is null
		or dim_entp_roc_nk is null
		or dim_entp_data_class_sk is null
		or dim_entp_data_class_nk is null
		or dim_entp_data_sub_class_sk is null
		or dim_entp_data_sub_class_nk is null
		or dim_entp_source_sk is null
		or dim_entp_source_nk is null
		or dim_entp_sub_source_sk is null
		or dim_entp_sub_source_nk is null
		or dim_entp_unit_of_measure_nk is null
		or dim_entp_unit_of_measure_sk is null
		or dim_entp_planning_resource_sk is null
		or dim_entp_planning_resource_nk is null

	--------------------------------------------------------------------------------------
	--logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------


		update [gpd].[reprocess_P6_resource_spread]
		 set rk_failure_info = 
		 case when dim_entp_function_nk is null then 'Missing Function - ' + isnull(fx,'') + ',' else '' end +
		 case when dim_entp_project_nk is null then 'Missing Project Number - ' + isnull(project,'') + ',' else '' end +
		 case when dim_entp_data_class_nk is null then 'Missing Data Class - ' + isnull(data_class,'') + ',' else '' end +
		 case when dim_entp_data_sub_class_nk is null then 'Missing Data Sub Class - ' + isnull(Spreadsheet_Field,'') + ',' else '' end +
		 case when dim_entp_sub_source_nk is null then 'Missing Sub Source - ' + isnull(sub_source,'') + ',' else '' end +
		 case when dim_entp_source_nk is null then 'Missing Source - ' + isnull(source,'') + ',' else '' end +
		 case when dim_entp_unit_of_measure_nk is null then 'Missing UOM -  ' + isnull(unit_of_measure,'') + ',' else '' end +
		 case when dim_entp_phase_nk is null then 'Missing Phase - ' + isnull(phase,'') + ',' else '' end +
		 case when dim_entp_work_unit_nk is null then 'Missing Work Unit - ' +  + isnull(work_unit,'') + ',' else '' end +
		 case when dim_entp_work_area_nk is null then 'Missing Work Area - ' +  + isnull(work_area,'') + ',' else '' end +
		 case when dim_entp_cwp_nk is null then 'Missing CWP Code - ' +  + isnull(cwp,'') + ',' else '' end +  
		 case when dim_entp_schedule_resource_nk is null then 'Missing Schedule Resource - ' +  + isnull(schedule_resource,'') + ',' else '' end +
		 case when dim_entp_activity_resource_nk is null then 'Missing Activity Code - ' +  + isnull(activity_id,'') + ',' + 'Missing Resource Id - ' +  + isnull(resource_id,'') + ','  + 'Missing Project Number - ' +  + isnull(project,'') + ',' else '' end +
		 case when dim_entp_iwp_nk is null then 'Missing IWP Code - ' +  + isnull(iwp,'') + ',' else '' end +
		 case when dim_entp_pim_nk is null then 'Missing PMID - ' +  + isnull(pim,'') + ',' else '' end +
		 case when dim_entp_planning_resource_nk is null then 'Missing Planning Resource - ' +  + isnull(resource_id,'') + ',' else '' end +
		 case when dim_entp_roc_nk is null then 'Missing ROC - ' +  + isnull(roc,'') + ',' else '' end 

--Deleting error data from Stage table

		delete from [gpd].[P6_resource_spread]
		where 
		   dim_entp_function_sk is null
		or dim_entp_function_nk is null
		or dim_entp_project_sk is null
		or dim_entp_project_nk is null
		or dim_entp_phase_sk is null
		or dim_entp_phase_nk is null
		or dim_entp_work_unit_sk is null
		or dim_entp_work_unit_nk is null
		or dim_entp_work_area_sk is null
		or dim_entp_work_area_nk is null
		or dim_entp_cwp_sk is null
		or dim_entp_cwp_nk is null
		or dim_entp_schedule_resource_sk is null
		or dim_entp_schedule_resource_nk is null
		or dim_entp_activity_resource_sk is null
		or dim_entp_activity_resource_nk is null
		or dim_entp_iwp_sk is null
		or dim_entp_iwp_nk is null	
		or dim_entp_pim_sk is null
		or dim_entp_pim_nk is null			
		or dim_entp_roc_sk is null
		or dim_entp_roc_nk is null
		or dim_entp_data_class_sk is null
		or dim_entp_data_class_nk is null
		or dim_entp_data_sub_class_sk is null
		or dim_entp_data_sub_class_nk is null
		or dim_entp_source_sk is null
		or dim_entp_source_nk is null
		or dim_entp_sub_source_sk is null
		or dim_entp_sub_source_nk is null
		or dim_entp_unit_of_measure_nk is null
		or dim_entp_unit_of_measure_sk is null
		or dim_entp_planning_resource_sk is null
		or dim_entp_planning_resource_nk is null
		
---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	exec populate_reprocess_history 'pl_resource_spread_master_pipeline', 'gpd.P6_resource_spread', 'gpd.reprocess_P6_resource_spread', 'dbo.fact_ops_planning','rssk';


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
