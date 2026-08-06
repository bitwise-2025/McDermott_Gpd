/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_legacy_plan_validate]    Script Date: 7/7/2022 3:31:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--Drop PROC [dbo].[load_NCSA_fact_P6_legacy_plan_validate]  --NOT Required in a new PROD environment.
CREATE PROC [dbo].[load_NCSA_fact_P6_legacy_plan_validate] AS

	BEGIN
    
	begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	declare @load_date_time datetime 
	select @load_date_time = getdate()


/***********************************************************
Date		Developer		Change Desc
03/20/2022	Aditya			Initial Version
03/24/2022	Satish			revised logic for activity,Phase, Discipline, GEAC, office,reprocess condition, error message, Reprocess History.
07/05/2022  Vijay           The SP was changed to  incude new data_sub_class into DIM_ENT_SUB_CLASS to support the calc needed for the view.
**********************************************************/




--Step 1:  Initialize and cleanup the stage values required later in stored procedure
	update [gpd].[P6_legacy_plan]
	set load_date_time = @load_date_time;

	--Logic for handling  onshore projects and correcting thier Project_number

	Update [gpd].[P6_legacy_plan]
	set CONTRACT = CASE 
					WHEN LEN(TRIM(CONTRACT)) > 5 THEN '99'+TRIM(CONTRACT)
					ELSE TRIM(CONTRACT)
					END 

	--Logic for calculating GEAC coa_value from P6_legacy_plan

	Update [gpd].[P6_legacy_plan]
	set geac_coa_value = concat('GEAC.', Entity, '.0100','.',Job_Number,'.',Sub_Function,'.','0000')

--Step 2: Combine data from the Reprocess table for the current run

	insert into [gpd].[P6_legacy_plan]
	([Reference_Number],[Line_Number],[Category],[Parent_Transaction_Type],[Transaction_Type],[Metrics],[Office_Location],[Username],[Contract],[Entity],[Job_Number]
,[Sub_Function],[Activity_Code],[Unit],[Quantity],[Man_Hours],[Percentage],[Effective_Year],[Effective_Month],[Effective_Date],[Revision],[data_class]
,[dim_entp_data_class_sk],[dim_entp_data_class_nk],[data_sub_class],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[source],[dim_entp_source_sk]
,[dim_entp_source_nk],[sub_source],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[geac_coa_value],[dim_entp_unit_of_measure_sk],[dim_entp_unit_of_measure_nk]
,[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_project_sk],[dim_entp_project_nk],[fx],[dim_entp_function_sk]
,[dim_entp_function_nk],[cwp],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[iwp],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[pim],[dim_entp_pim_sk],[dim_entp_pim_nk]
,[roc],[dim_entp_roc_sk],[dim_entp_roc_nk],[Phase],[dim_entp_phase_sk],[dim_entp_phase_nk],[work_unit],[dim_entp_work_unit_sk],[dim_entp_work_unit_nk]
,[work_area],[dim_entp_work_area_sk],[dim_entp_work_area_nk],[schedule_resource],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[discipline],[dim_entp_discipline_sk],[dim_entp_discipline_nk],[dim_entp_office_sk],[dim_entp_office_nk],[dim_entp_geac_coa_sk],[dim_entp_geac_coa_nk]
,[load_date_time],[parent_rssk])

	SELECT 
	
	[Reference_Number],[Line_Number],[Category],[Parent_Transaction_Type],[Transaction_Type],[Metrics],[Office_Location],[Username],[Contract],[Entity],[Job_Number]
,[Sub_Function],[Activity_Code],[Unit],[Quantity],[Man_Hours],[Percentage],[Effective_Year],[Effective_Month],[Effective_Date],[Revision],[data_class]
,[dim_entp_data_class_sk],[dim_entp_data_class_nk],[data_sub_class],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[source],[dim_entp_source_sk]
,[dim_entp_source_nk],[sub_source],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[geac_coa_value],[dim_entp_unit_of_measure_sk],[dim_entp_unit_of_measure_nk]
,[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_project_sk],[dim_entp_project_nk],[fx],[dim_entp_function_sk]
,[dim_entp_function_nk],[cwp],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[iwp],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[pim],[dim_entp_pim_sk],[dim_entp_pim_nk]
,[roc],[dim_entp_roc_sk],[dim_entp_roc_nk],[Phase],[dim_entp_phase_sk],[dim_entp_phase_nk],[work_unit],[dim_entp_work_unit_sk],[dim_entp_work_unit_nk]
,[work_area],[dim_entp_work_area_sk],[dim_entp_work_area_nk],[schedule_resource],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[discipline],[dim_entp_discipline_sk],[dim_entp_discipline_nk],[dim_entp_office_sk],[dim_entp_office_nk],[dim_entp_geac_coa_sk],[dim_entp_geac_coa_nk]
,[load_date_time], ISNULL([parent_rssk],[rssk])
	

	from [gpd].[reprocess_P6_legacy_plan]

	delete from [gpd].[reprocess_P6_legacy_plan]

--Step 2.1 Get details for Discipline and Phase from the dim_ent_subfunction

--Satish 03/24/22
--Logic for getting Discipline from subfunction
Update [gpd].[P6_legacy_plan]
set discipline = b.discipline
from dbo.dim_ent_subfunction b
where b.sub_function_code=sub_function

--Logic for getting Phase from subfunction (Below logic is not required now since phase needs to be directly updated from Category provided in source file)

--Update [gpd].[P6_legacy_plan]
--set phase = b.function_group
--from dbo.dim_ent_subfunction b
--where b.sub_function_code=sub_function

Update [gpd].[P6_legacy_plan]
set phase = Category



--Step 3] Get the basic NK/SK values for prominent columns used in later calculations
		--Update Project SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_project_sk','dim_entp_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'Contract','project_number','FL',null;


--Step 4] Insert into dim_ent_geac_coa table New Entries

	--Pre run cleanup
	truncate table [gpd].[dim_ent_geac_coa_P6_legacy_plan]
	--truncate table [gpd].[reprocess_dim_ent_geac_coa_P6_legacy_plan]


insert into [gpd].[dim_ent_geac_coa_P6_legacy_plan]
	  (
		[coa_value]
		,[entity_id]
		,[account_code]
		,[ident1_code]
		,[ident2_code]
		,[ident3_code]
		,[coa_type]
		,[ident1_description]
		,[ident2_description]
		,[ident3_description]
		,[classification_id]
		,[coa_status]	  
		,[contract_id]
		,[entity_description]
		,[account_description]
		,[contract_description]
		,[ident1_status]
		,[ident1_start_date]
		,[ident1_end_date]
		,[ident2_status]
		,[ident2_start_date]
		,[ident2_end_date]
		,[sub_source_name]
		,[source_name]
		,[PSRLevel1]
		,[PSRLevel2]
		,[PSRL1Description]
		,[PSRL2Description]
		,[measurable]
		,[Domain]
		--,dim_ent_summary_cost_type_nk
		,dim_ent_prime_nk
		,dim_ent_sub_prime_nk
	  )



select 
		 [coa_value]
		,[entity_id]
        ,[account_code]
		,[ident1_code]
		,[ident2_code]
		,[ident3_code]
		,[coa_type]
		,[ident1_description]
		,[ident2_description]
		,[ident3_description]
		,[classification_id]
		,[coa_status]
		,[contract_id]
		,[entity_description]
		,[account_description]
		,[contract_description]
		,[ident1_status]
		,[ident1_start_date]
		,[ident1_end_date]
		,[ident2_status]
		,[ident2_start_date]
		,[ident2_end_date]
		,[sub_source_name]
		,[source_name]
		,[PSRLevel1]
		,[PSRLevel2]
		,[PSRL1Description]
		,[PSRL2Description]
		,[measurable]
	    ,[Domain]
        --,dim_ent_summary_cost_type_nk
        ,dim_ent_prime_nk
        ,dim_ent_sub_prime_nk

from (
         select distinct l.geac_coa_value as coa_value, 
l.Entity as entity_id,
'0100' as account_code,
l.Job_Number as ident1_code,
l.Sub_Function as ident2_code,
'0000' as ident3_code,     
'Project' as coa_type,
COALESCE(g.ident1_description,NULL) as ident1_description,
COALESCE(g.ident2_description,NULL) as ident2_description,
COALESCE(g.ident3_description,NULL) as ident3_description,       
COALESCE(g.classification_id,NULL) as classification_id,      
'Active' as coa_status,
l.Contract as [contract_id],       
COALESCE(c.entity_name,g.entity_description) as entity_description,       
COALESCE(g.account_description,NULL) as account_description,
COALESCE(g.contract_description,NULL) as contract_description,       
'Active' as ident1_status,
'1900-01-01 00:00:00.000' as ident1_start_date,
'2999-12-31 00:00:00.000' as ident1_end_date,
'Active' as ident2_status,
'1900-01-01 00:00:00.000' as ident2_start_date,
'2999-12-31 00:00:00.000' as ident2_end_date,
'P6-Excel-Legacy' as sub_source_name,
'MANUAL' as source_name,
COALESCE(g.PSRLevel1,NULL) as PSRLevel1,       
COALESCE(g.PSRLevel2,NULL) as PSRLevel2,       
COALESCE(g.PSRL1Description,NULL) as PSRL1Description,       
COALESCE(g.PSRL2Description,NULL) as PSRL2Description,       
COALESCE(g.Measurable,NULL) as measurable,
l.Contract as Domain,
--COALESCE(g.dim_ent_summary_cost_type_nk,NULL) as dim_ent_summary_cost_type_nk,
COALESCE(g.dim_ent_prime_nk,NULL) as dim_ent_prime_nk,
COALESCE(g.dim_ent_sub_prime_nk,NULL) as dim_ent_sub_prime_nk

from [gpd].[P6_legacy_plan] l
left join dbo.dim_ent_geac_coa g on l.geac_coa_value=g.coa_value and g.active=1
left join (select * from [dbo].[dim_ent_function_alternative_v] where active =1) b
on  ISNULL(g.PSRL1Description,'NULL') = b.alternative_function_name
left join (select * from [dbo].[dim_ent_entity] where active = 1) c
on Entity = c.entity_id

) x 




execute [dbo].[generic_load_dim_v2 ] 'dim_ent_geac_coa_P6_legacy_plan','Y','N','Y';
	


		
--Step 5] Insert into dim_ent_activity table New Entries		

		--Add to Activity table-- 

	--Pre cleanup
		truncate table [gpd].[tmp_Activity_P6_legacy_plan]
		truncate table [gpd].[reprocess_tmp_Activity_P6_legacy_plan]
		

	--Insert NEW Activity_code into temp  table
insert into [gpd].[tmp_Activity_P6_legacy_plan]
		  ([activity_code]
		  ,[activity_description]
		  ,[project_number]
		  ,[dim_entp_project_nk]
		  ,[office]
		  )
		
		select
			[activity_code]
		  ,[activity_description]
		  ,[project_number]
		  ,[dim_entp_project_nk]
		  ,max(Office_Location) as [office]
		  from 
			(select distinct
			P.Activity_Code as activity_code,
			P.Activity_Code as activity_description,
			P.Contract as project_number,
			P.dim_entp_project_nk,
			P.Office_Location
			,A.dim_entp_project_nk dim_entp_project_nk2
			from
			[gpd].[P6_legacy_plan] P
			left join [dbo].[dim_entp_activity] A
			-- LEFT join [dim_entp_activity_BKP_23_03_2022_Aditya] A
			on P.Activity_Code = A.activity_code
			and P.dim_entp_project_nk=A.dim_entp_project_nk
			and A.active=1 
			) AA
			where dim_entp_project_nk2 IS NULL --To ensure existing records in activity are not affected
			group by 
			[activity_code]
		  ,[activity_description]
		  ,[project_number]
		  ,[dim_entp_project_nk]
		  

		exec generic_load_dim_v2 'dim_entp_temp_activity_P6_legacy_plan', 'Y', 'N', 'Y'


		

		--update activity SK/NK
	
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_activity_sk', 'dim_entp_activity_nk',
        'dim_entp_activity', 'dim_entp_activity_sk', 'dim_entp_activity_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'Activity_Code', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;


		--Update Data class SK/NK
		
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_data_class_sk','dim_entp_data_class_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class','data_class_name','F',null;

		--Update source SK/NK
		

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_source_sk','dim_entp_source_nk','dim_ent_source','dim_ent_source_sk','dim_ent_source_nk', 
       'source','source_name',null,null;

		--Update Function SK/NK

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_function_sk','dim_entp_function_nk','dim_ent_function','dim_ent_function_sk','dim_ent_function_nk', 
       'fx','function_code',null,null;

	   		
		--Update Unit of Measure SK/NK
		
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_unit_of_measure_sk','dim_entp_unit_of_measure_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'Unit','unit_of_measure_code',null,null;
	   
		--Update GEAC CoA SK/NK based on the intermediate geac_coa_value
	
		execute [stage].[fact_lookup_based_on_one_key]
		'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
		'dim_entp_geac_coa_sk', 'dim_entp_geac_coa_nk','DIM_ENT_GEAC_COA', 'dim_ent_geac_coa_sk', 'dim_ent_geac_coa_nk', 
		'geac_coa_value', 'coa_value', 'L',NULL ;





--Step 6] Insert into Data sub Class table New Entries

		--Insert into Data sub Class table

		IF OBJECT_ID('tempdb..#tmp_sub_class_p6_legacy') IS NOT NULL
		BEGIN
			DROP TABLE #tmp_sub_class_p6_legacy
		END

		--select distinct data_class,Transaction_Type as data_sub_class into #tmp_sub_class from [gpd].[P6_legacy_plan]

		select distinct data_class,a.Transaction_Type,
			CASE
				when [Schedule]='AFC' then [DataLake_Sub_Class_Name]
				ELSE concat(DataLake_Sub_Class_Name, CAST(Revision AS VARCHAR) + '_' , Description)
				
				END AS data_sub_class
		into #tmp_sub_class_p6_legacy 
		FROM [gpd].[P6_legacy_plan] a 
		JOIN [gpd].[NCSA_P6_Transaction_type_conversion] b 
		ON TRIM(a.Transaction_Type) = TRIM(b.TransactionType)


		--Updating the generated data_sub_class value into the data_sub_class for reference
		UPDATE [gpd].[P6_legacy_plan]
		SET    data_sub_class = a.data_sub_class
		FROM   [gpd].[P6_legacy_plan] p 
		LEFT JOIN #tmp_sub_class_p6_legacy a 
		on  a.Transaction_Type = p.Transaction_Type

		/* The SP was changed to  incude new data_sub_class into DIM_ENT_SUB_CLASS to support the calc needed for the view. */
		INSERT INTO #tmp_sub_class_p6_legacy( 
       [data_class]
       ,[Transaction_Type]
       ,[data_sub_class]
       )select distinct data_class,a.Transaction_Type,
              REPLACE(concat(DataLake_Sub_Class_Name, CAST(Revision AS VARCHAR) + '_' , b.view_Display_PlanSubType),'CUM ','') AS data_sub_class 
               FROM [gpd].[P6_legacy_plan] a 
              JOIN [gpd].[NCSA_P6_Transaction_type_conversion] b 
              ON TRIM(a.Transaction_Type) = TRIM(b.TransactionType)
              WHERE  b.view_Display_PlanSubType  in ('Cum Remaining Early','Cum Remaining Late') 


		delete from #tmp_sub_class_p6_legacy
		where data_sub_class in (select data_sub_class_name from dim_ent_data_sub_class where active=1)

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

		select @mx_val = count(*) from #tmp_sub_class_p6_legacy
		select @counter = 0

		while @counter <= @mx_val
		begin
			set rowcount 1
			select @data_class = data_class,@data_sub_class = data_sub_class from #tmp_sub_class_p6_legacy
			
			set rowcount 0

			if isnull(@data_sub_class,'') = '' 
			begin
				break
			end
			
			delete from #tmp_sub_class_p6_legacy where data_class = @data_class and  data_sub_class = @data_sub_class
			
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
	
--Step 7] gather and setup the remaining SK/NK columns

		--Update Discipline SK/NK

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_discipline_sk','dim_entp_discipline_nk','dim_ent_discipline','dim_ent_discipline_sk','dim_ent_discipline_nk', 
       'discipline','discipline_code','FL',null;



		--Update office SK/NK [Using special view dim_ent_office_alternative_v]

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_legacy_plan','gpd.P6_legacy_plan','stage_p6_legacy_plan_id', 
       'dim_entp_office_sk','dim_entp_office_nk','dim_ent_office_alternative_v','dim_ent_office_sk','dim_ent_office_nk', 
       'office_location','alternative_office_Code','F',null;


		
		--update Data sub class SK/NK 

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_data_sub_class_sk', 'dim_entp_data_sub_class_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_entp_data_class_nk', 'dim_ent_data_class_nk',
		'data_sub_class', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;
	
		--Update sub_source SK/NK


		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_sub_source_sk', 'dim_entp_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_entp_source_nk', 'dim_ent_source_nk',
		'sub_source', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;
		

	   
		--update cwp SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk',
        'dim_entp_cwp', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'cwp', 'cwp_code',NULL,NULL,NULL,NULL,NULL,NULL,'F',NULL ;	  

		--update IWP SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk',
        'dim_entp_iwp', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'iwp', 'iwp_code',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;
		
		--update PIM SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_pim_sk', 'dim_entp_pim_nk',
        'dim_entp_pim', 'dim_entp_pim_sk', 'dim_entp_pim_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'pim', 'pim_code',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;
		
		--update ROC SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_roc_sk', 'dim_entp_roc_nk',
        'dim_entp_roc', 'dim_entp_roc_sk', 'dim_entp_roc_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'roc', 'roc_code',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;		

		
		--Update Work Unit SK/NK		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk',
        'dim_entp_work_unit', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'work_unit', 'work_unit_code',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;

		--update work area SK/NK
		
		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk',
        'dim_entp_work_area', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'work_area', 'work_area_code',NULL,NULL,NULL,NULL,NULL,NULL,null,NULL ;

		--update schedule resource SK/NK

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk',
        'dim_entp_schedule_resource', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'schedule_resource', 'schedule_resource_code',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;



		--Update Phase SK/NK  [Satish this tested when then 'Phase' is pulled from dim_ent_subfunction. But the join condition has to be for both phase_code and phase_description]
	   

/*		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_legacy_plan', 'gpd.P6_legacy_plan',  'stage_p6_legacy_plan_id', 'dim_entp_phase_sk', 'dim_entp_phase_nk',
        'dim_entp_phase_namecheck_active_v', 'dim_entp_phase_sk', 'dim_entp_phase_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'phase', 'phase_code_name_check',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
*/

-------[Satish  03/27/2022] Custom Update query is required instead of standard SP call. Since there multiple nk values possible for same Phase_code_name_Check e.g. "Fabrication"------------
/*		--version 1: Simple update
		update [gpd].[P6_legacy_plan]
		set dim_entp_phase_sk = b.dim_entp_phase_sk,
		dim_entp_phase_nk = b.dim_entp_phase_nk
		from [gpd].[P6_legacy_plan] a,dbo.dim_entp_phase_namecheck_active_v b
		where a.dim_entp_project_nk = b.dim_entp_project_nk
		and a.phase = b.phase_code_name_check
		and b.active = 1
*/

		--version 2 : Controlled NK update
		update [gpd].[P6_legacy_plan] 
		SET dim_entp_phase_sk = b.dim_entp_phase_sk,
		dim_entp_phase_nk = b.dim_entp_phase_nk 
		FROM [gpd].[P6_legacy_plan] a
		INNER JOIN (
		SELECT phase_code_name_check , dim_entp_project_nk
			,MIN(dim_entp_phase_sk) as dim_entp_phase_sk
			,MIN(dim_entp_phase_nk) as dim_entp_phase_nk
		FROM dim_entp_phase_namecheck_active_v
		GROUP BY phase_code_name_check , dim_entp_project_nk
		) as b on ( a.dim_entp_project_nk = b.dim_entp_project_nk and a.phase = b.phase_code_name_check )



			
--Step 8] Identify missing SK/NK values and quarantine those records into reprocess table.

		select @unprocessed_count  = count(*)  from [gpd].[P6_legacy_plan]
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
		or dim_entp_activity_sk is null
		or dim_entp_activity_nk is null
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
		or dim_entp_discipline_sk is null
		or dim_entp_discipline_nk is null
		or dim_entp_office_sk is null
		or dim_entp_office_nk is null
		or dim_entp_geac_coa_sk is null
		or dim_entp_geac_coa_nk is null


		select @processed_count  = count(*)  from [gpd].[P6_legacy_plan]
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
		and dim_entp_activity_sk is not null
		and dim_entp_activity_nk is not null
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
		and dim_entp_discipline_sk is not null
		and dim_entp_discipline_nk is not null
		and dim_entp_office_sk is not null
		and dim_entp_office_nk is not null
		and dim_entp_geac_coa_sk is not null
		and dim_entp_geac_coa_nk is not null


		--Moving error data to reprocessing area

insert into [gpd].[reprocess_P6_legacy_plan]

([Reference_Number],[Line_Number],[Category],[Parent_Transaction_Type],[Transaction_Type],[Metrics],[Office_Location],[Username],[Contract],[Entity],[Job_Number]
,[Sub_Function],[Activity_Code],[Unit],[Quantity],[Man_Hours],[Percentage],[Effective_Year],[Effective_Month],[Effective_Date],[Revision],[data_class]
,[dim_entp_data_class_sk],[dim_entp_data_class_nk],[data_sub_class],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[source],[dim_entp_source_sk]
,[dim_entp_source_nk],[sub_source],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[geac_coa_value],[dim_entp_unit_of_measure_sk],[dim_entp_unit_of_measure_nk]
,[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_project_sk],[dim_entp_project_nk],[fx],[dim_entp_function_sk]
,[dim_entp_function_nk],[cwp],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[iwp],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[pim],[dim_entp_pim_sk],[dim_entp_pim_nk]
,[roc],[dim_entp_roc_sk],[dim_entp_roc_nk],[Phase],[dim_entp_phase_sk],[dim_entp_phase_nk],[work_unit],[dim_entp_work_unit_sk],[dim_entp_work_unit_nk]
,[work_area],[dim_entp_work_area_sk],[dim_entp_work_area_nk],[schedule_resource],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[discipline],[dim_entp_discipline_sk],[dim_entp_discipline_nk],[dim_entp_office_sk],[dim_entp_office_nk],[dim_entp_geac_coa_sk],[dim_entp_geac_coa_nk]
,[load_date_time],[parent_rssk])


select 

[Reference_Number],[Line_Number],[Category],[Parent_Transaction_Type],[Transaction_Type],[Metrics],[Office_Location],[Username],[Contract],[Entity],[Job_Number]
,[Sub_Function],[Activity_Code],[Unit],[Quantity],[Man_Hours],[Percentage],[Effective_Year],[Effective_Month],[Effective_Date],[Revision],[data_class]
,[dim_entp_data_class_sk],[dim_entp_data_class_nk],[data_sub_class],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[source],[dim_entp_source_sk]
,[dim_entp_source_nk],[sub_source],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[geac_coa_value],[dim_entp_unit_of_measure_sk],[dim_entp_unit_of_measure_nk]
,[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_project_sk],[dim_entp_project_nk],[fx],[dim_entp_function_sk]
,[dim_entp_function_nk],[cwp],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[iwp],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[pim],[dim_entp_pim_sk],[dim_entp_pim_nk]
,[roc],[dim_entp_roc_sk],[dim_entp_roc_nk],[Phase],[dim_entp_phase_sk],[dim_entp_phase_nk],[work_unit],[dim_entp_work_unit_sk],[dim_entp_work_unit_nk]
,[work_area],[dim_entp_work_area_sk],[dim_entp_work_area_nk],[schedule_resource],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[discipline],[dim_entp_discipline_sk],[dim_entp_discipline_nk],[dim_entp_office_sk],[dim_entp_office_nk],[dim_entp_geac_coa_sk],[dim_entp_geac_coa_nk]
,[load_date_time],[parent_rssk]
		
from [gpd].[P6_legacy_plan]

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
		or dim_entp_activity_sk is null
		or dim_entp_activity_nk is null
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
		or dim_entp_discipline_sk is null
		or dim_entp_discipline_nk is null
		or dim_entp_office_sk is null
		or dim_entp_office_nk is null --292
		or dim_entp_geac_coa_sk is null
		or dim_entp_geac_coa_nk is null

	--------------------------------------------------------------------------------------
	--logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------


		update [gpd].[reprocess_P6_legacy_plan]
		 set rk_failure_info = 
		 case when dim_entp_function_nk is null then 'Missing Function - ' + isnull(fx,'') + ',' else '' end +
		 case when dim_entp_project_nk is null then 'Missing Project Number - ' + isnull(contract,'') + ',' else '' end +
		 case when dim_entp_data_class_nk is null then 'Missing Data Class - ' + isnull(data_class,'') + ',' else '' end +
		 case when dim_entp_data_sub_class_nk is null then 'Missing Data Sub Class - ' + isnull(data_sub_class,'') + 'generated from Transaction_Type - ' + isnull(Transaction_Type,'') + ',' else '' end +
		 case when dim_entp_sub_source_nk is null then 'Missing Sub Source - ' + isnull(sub_source,'') + ',' else '' end +
		 case when dim_entp_source_nk is null then 'Missing Source - ' + isnull(source,'') + ',' else '' end +
		 case when dim_entp_unit_of_measure_nk is null then 'Missing UOM -  ' + isnull(unit,'') + ',' else '' end +
		 case when dim_entp_phase_nk is null then 'Missing Phase generated from dim_ent_subfunction - ' + isnull(phase,'') + ', for subfunction value - ' + isnull(Sub_Function,'') + ',' else '' end +
		 case when dim_entp_work_unit_nk is null then 'Missing Work Unit - ' +  isnull(work_unit,'') + ',' else '' end +
		 case when dim_entp_work_area_nk is null then 'Missing Work Area - ' +  isnull(work_area,'') + ',' else '' end +
		 case when dim_entp_cwp_nk is null then 'Missing CWP Code - ' +  isnull(cwp,'') + ',' else '' end +  
		 case when dim_entp_schedule_resource_nk is null then 'Missing Schedule Resource - '  + isnull(schedule_resource,'') + ',' else '' end +
		 case when dim_entp_activity_nk is null then 'Missing Activity Code - ' + isnull(Activity_Code,'') + ',' else '' end +
		 case when dim_entp_iwp_nk is null then 'Missing IWP Code - ' + isnull(iwp,'') + ',' else '' end +
		 case when dim_entp_pim_nk is null then 'Missing PMID - ' + isnull(pim,'') + ',' else '' end +
		 case when dim_entp_roc_nk is null then 'Missing ROC - '  + isnull(roc,'') + ',' else '' end +
		 case when dim_entp_office_nk is null then 'Missing Office - ' +  + isnull(Office_Location,'') + ',' else '' end +
		 case when dim_entp_geac_coa_nk is null then 'Missing GEAC_CoA (calculated) - ' +  + isnull(geac_coa_value,'') + ',' else '' end +
		 case when dim_entp_discipline_nk is null then 'Missing Discipline generated from dim_ent_subfunction - '  + isnull(Discipline,'') + ', for subfunction value - ' + isnull(Sub_Function,'') + ',' else '' end

--Deleting error data from Stage table

		delete from [gpd].[P6_legacy_plan]
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
		or dim_entp_activity_sk is null
		or dim_entp_activity_nk is null
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
		or dim_entp_discipline_sk is null
		or dim_entp_discipline_nk is null
		or dim_entp_office_sk is null
		or dim_entp_office_nk is null
		or dim_entp_geac_coa_sk is null
		or dim_entp_geac_coa_nk is null

---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	exec populate_reprocess_history 'pl_legacy_plan_excel_p6_master_pipeline', 'gpd.P6_legacy_plan', 'gpd.reprocess_P6_legacy_plan', 'dbo.fact_ops','rssk';
	


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
	begin --Satish 03/24/22: New Mandatory code needed for capturing the db errors for ADF
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


