/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_validate]    Script Date: 8/4/2022 5:54:44 AM ******/
DROP PROCEDURE [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_validate]
GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_validate]    Script Date: 8/4/2022 5:54:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_validate] AS

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
02/10/2022	Satish			Initial Version
03/11/2022	Satish			revised tag fx from dim_entp_function to dim_entp_phase.
05/19/2022	Satish			fx is being filled as Phase value from source. Office_code will contain full name instead office code.

**********************************************************/

--Step 1:  Initialize and cleanup the stage values.
	update [gpd].[P6_engr_manhrs_histogram]
	set load_date_time = @load_date_time;

--To remove leading/trailing spaces from any particular column
	--update [gpd].[P6_engr_manhrs_histogram]
	--set activity_id = trim(activity_id);



--Step 2] Combine data from the Reprocess table for the current run

	insert into [gpd].[P6_engr_manhrs_histogram]
	([project],[Office_Code],[Data_sub_class_code],[Prime],[Sub_Prime],[SFN],[Activity_Code],[Discipline_code],[Period],[units],[fx],[data_class],[sub_source],[source],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_entp_project_sk],[dim_entp_project_nk],[dim_ent_office_sk],[dim_ent_office_nk],[dim_ent_prime_sk],[dim_ent_prime_nk],[dim_ent_sub_prime_sk],[dim_ent_sub_prime_nk],[dim_ent_subfunction_sk],[dim_ent_subfunction_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[dim_entp_data_class_sk],[dim_entp_data_class_nk],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[dim_entp_source_sk],[dim_entp_source_nk],[load_date_time],[parent_rssk],[PSRL1Code], [dim_ent_psrlevel1_sk], [dim_ent_psrlevel1_nk], [PSRL2Code], [dim_ent_psrlevel2_sk], [dim_ent_psrlevel2_nk])
	SELECT 
	[project],[Office_Code],[Data_sub_class_code],[Prime],[Sub_Prime],[SFN],[Activity_Code],[Discipline_code],[Period],[units],[fx],[data_class],[sub_source],[source],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_entp_project_sk],[dim_entp_project_nk],[dim_ent_office_sk],[dim_ent_office_nk],[dim_ent_prime_sk],[dim_ent_prime_nk],[dim_ent_sub_prime_sk],[dim_ent_sub_prime_nk],[dim_ent_subfunction_sk],[dim_ent_subfunction_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[dim_entp_data_class_sk],[dim_entp_data_class_nk],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[dim_entp_source_sk],[dim_entp_source_nk],[load_date_time], ISNULL([parent_rssk],[rssk]),[PSRL1Code], [dim_ent_psrlevel1_sk], [dim_ent_psrlevel1_nk], [PSRL2Code], [dim_ent_psrlevel2_sk], [dim_ent_psrlevel2_nk]
    from gpd.reprocess_P6_engr_manhrs_histogram

	delete from gpd.reprocess_P6_engr_manhrs_histogram

--Step 3] Get the basic NK/SK values for prominent columns used in later calculations
		--Update Project SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_entp_project_sk','dim_entp_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'project','project_number','FL',null;





--Step 4] Insert into Data sub Class table New Entries


		IF OBJECT_ID('tempdb..#tmp_sub_class_histo') IS NOT NULL
		BEGIN
			DROP TABLE #tmp_sub_class_histo
		END

		select distinct data_class,data_sub_class_code as data_sub_class into #tmp_sub_class_histo from [gpd].[P6_engr_manhrs_histogram]


		delete from #tmp_sub_class_histo
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

		select @mx_val = count(*) from #tmp_sub_class_histo
		select @counter = 0

		while @counter <= @mx_val
		begin
			set rowcount 1
			select @data_class = data_class,@data_sub_class = data_sub_class from #tmp_sub_class_histo
			
			set rowcount 0

			if isnull(@data_sub_class,'') = '' 
			begin
				break
			end
			
			delete from #tmp_sub_class_histo where data_class = @data_class and  data_sub_class = @data_sub_class
			
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


--[02/25/2022 : Satish : Discipline column no longer requred per revised source file]
--Step 5] Logic for entring Activity_Code values into DIM_ENTP_ACTIVITY 

truncate table [gpd].[tmp_Activity_P6_histogram]

INSERT into [gpd].[tmp_Activity_P6_histogram] (activity_code,activity_desc,prime, sub_prime, project, WA, CWP, SR)
select DISTINCT ACTIVITY_CODE,ACTIVITY_CODE,PRIME,SUB_PRIME,PROJECT,'ZZZ' as WA,'ZZZ' as CWP,'ZZZ' as SR from [gpd].[P6_engr_manhrs_histogram]
where ACTIVITY_CODE IS NOT NULL
AND ACTIVITY_CODE NOT IN (select distinct activity_code from dbo.dim_entp_activity_active_v where project_number=Project)  
		
	
		exec generic_load_dim_v2 'dim_entp_activity_p6_histo', 'Y', 'N', 'Y'

		--truncate table [gpd].[tmp_Activity_P6_histogram] 
		--truncate table [gpd].[gpd].[reprocess_tmp_Activity_P6_histogram]
		


--NOTE: Missing office values into DIM_ENT_OFFICE will be done by P6 Office load alone


--Step 6] Get the remaning SK/NK values required for the FACT table.

	   --Update discipline SK/NK  --[02/25/2022 : Satish : Discipline column no longer requred per revised source file]

	   --execute [stage].[fact_lookup_based_on_one_key] 
    --   'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
    --   'dim_ent_discipline_sk','dim_ent_discipline_nk','dim_ent_discipline','dim_ent_discipline_sk','dim_ent_discipline_nk', 
    --   'discipline_code','discipline_code','F',null;

/*
	   --Update Office SK/NK

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_ent_office_sk','dim_ent_office_nk','dim_ent_office','dim_ent_office_sk','dim_ent_office_nk', 
       'office_code','office_code','F',null;
*/

--[05/18/2022: Satish] Switching to dim_ent_office_alternative_v to check source value against full office name instead of just code.
	   --Update office SK/NK [Using special view dim_ent_office_alternative_v] 

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_ent_office_sk','dim_ent_office_nk','dim_ent_office_alternative_v','dim_ent_office_sk','dim_ent_office_nk', 
       'office_code','alternative_office_Code','F',null;


		--Update Data class SK/NK
		
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_entp_data_class_sk','dim_entp_data_class_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class','data_class_name',NULL,null;

		--Update source SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_entp_source_sk','dim_entp_source_nk','dim_ent_source','dim_ent_source_sk','dim_ent_source_nk', 
       'source','source_name',NULL,null;


		--Update PSRL1Code SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_ent_psrlevel1_sk','dim_ent_psrlevel1_nk','dim_ent_psrlevel1','dim_ent_psrlevel1_sk','dim_ent_psrlevel1_nk', 
       'PSRL1Code','psrlevel1_code',NULL,null;
	   
	   
	   --Update PSRL2Code SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_ent_psrlevel2_sk','dim_ent_psrlevel2_nk','dim_ent_psrlevel2','dim_ent_psrlevel2_sk','dim_ent_psrlevel2_nk', 
       'PSRL2Code','psrlevel2_code',NULL,null;
		


		--Update SFN SK/NK

		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_ent_subfunction_sk','dim_ent_subfunction_nk','dim_ent_subfunction','dim_ent_subfunction_sk','dim_ent_subfunction_nk', 
       'SFN','sub_function_code','L',null;

		--Update Prime SK/NK

		execute [stage].[fact_lookup_based_on_many_key]
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id','dim_ent_prime_sk','dim_ent_prime_nk',
	   'dim_ent_prime','dim_ent_prime_sk','dim_ent_prime_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
	   'Prime','prime_code',NULL,NULL,NULL,NULL,NULL,NULL,'F',NULL ;


		--update sub_prime SK/NK 

		execute [stage].[fact_lookup_based_on_many_key]
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id','dim_ent_sub_prime_sk','dim_ent_sub_prime_nk',
	   'dim_ent_sub_prime','dim_ent_sub_prime_sk','dim_ent_sub_prime_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
	   'Sub_Prime','sub_prime_code',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

		--Update sub_source SK/NK

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_engr_manhrs_histogram', 'gpd.P6_engr_manhrs_histogram',  'stage_p6_hist_id', 'dim_entp_sub_source_sk', 'dim_entp_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_entp_source_nk', 'dim_ent_source_nk',
		'sub_source', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'F',NULL ;		

	
		--update Data sub class SK/NK 

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_engr_manhrs_histogram', 'gpd.P6_engr_manhrs_histogram',  'stage_p6_hist_id', 'dim_entp_data_sub_class_sk', 'dim_entp_data_sub_class_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_entp_data_class_nk', 'dim_ent_data_class_nk',
		'data_sub_class_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

		--update activity SK/NK 	

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_engr_manhrs_histogram', 'gpd.P6_engr_manhrs_histogram',  'stage_p6_hist_id', 'dim_entp_activity_sk', 'dim_entp_activity_nk',
        'dim_entp_activity', 'dim_entp_activity_sk', 'dim_entp_activity_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'Activity_Code', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
		

/*		--update Phase SK/NK 	

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.P6_engr_manhrs_histogram', 'gpd.P6_engr_manhrs_histogram',  'stage_p6_hist_id', 'dim_entp_phase_sk', 'dim_entp_phase_nk',
        'dim_entp_phase', 'dim_entp_phase_sk', 'dim_entp_phase_nk', 'dim_entp_project_nk', 'dim_entp_project_nk',
		'fx', 'phase_code',NULL,NULL,NULL,NULL,NULL,NULL,'FL',NULL ;
*/

--[05/18/2022: Satish] Switching to manual update since there are multiple nk available for single phase name as 'Engineering' or 'Fabrication'
		--version 2 : Controlled NK update
		update [gpd].[P6_engr_manhrs_histogram] 
		SET dim_entp_phase_sk = b.dim_entp_phase_sk,
		dim_entp_phase_nk = b.dim_entp_phase_nk 
		FROM [gpd].[P6_engr_manhrs_histogram] a
		INNER JOIN (
		SELECT phase_code_name_check , dim_entp_project_nk
			,MIN(dim_entp_phase_sk) as dim_entp_phase_sk
			,MIN(dim_entp_phase_nk) as dim_entp_phase_nk
		FROM dim_entp_phase_namecheck_active_v
		GROUP BY phase_code_name_check , dim_entp_project_nk
		) as b on ( a.dim_entp_project_nk = b.dim_entp_project_nk and a.fx = b.phase_code_name_check )



/*
		--Update Function SK/NK

	   execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_manhrs_histogram','gpd.P6_engr_manhrs_histogram','stage_p6_hist_id', 
       'dim_entp_function_sk','dim_entp_function_nk','dim_ent_function','dim_ent_function_sk','dim_ent_function_nk', 
       'fx','function_code','L',null;

		--Update Unit of Measure SK/NK
			
		execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.P6_engr_headcount_forecast','gpd.P6_engr_headcount_forecast','stage_p6_engr_id', 
       'dim_entp_unit_of_measure_sk','dim_entp_unit_of_measure_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure','unit_of_measure_code','FL',null;
*/

--Step 7 : Track how many records are valid/not valid. Move the invalid records into Reprocess table

		select @unprocessed_count  = count(*)  from [gpd].[P6_engr_manhrs_histogram]
		where 
		   dim_entp_phase_sk IS NULL
      OR dim_entp_phase_nk IS NULL
      OR dim_entp_project_sk IS NULL
      OR dim_entp_project_nk IS NULL
      OR dim_ent_office_sk IS NULL
      OR dim_ent_office_nk IS NULL
      OR dim_entp_data_sub_class_sk IS NULL
      OR dim_entp_data_sub_class_nk IS NULL
      OR dim_entp_data_class_sk IS NULL
      OR dim_entp_data_class_nk IS NULL
      OR dim_entp_sub_source_sk IS NULL
      OR dim_entp_sub_source_nk IS NULL
      OR dim_entp_source_sk IS NULL
      OR dim_entp_source_nk IS NULL
      OR ((dim_ent_prime_sk IS NULL
      OR dim_ent_prime_nk IS NULL) and prime is NOT NULL)
      OR ((dim_ent_sub_prime_sk IS NULL
      OR dim_ent_sub_prime_nk IS NULL) and sub_prime is NOT NULL)
      OR ((dim_ent_subfunction_sk IS NULL
      OR dim_ent_subfunction_nk IS NULL) and SFN is NOT NULL)
      OR ((dim_entp_activity_sk IS NULL
      OR dim_entp_activity_nk IS NULL) and Activity_code is NOT NULL)
	  
	  OR [dim_ent_psrlevel1_sk] IS NULL
      OR [dim_ent_psrlevel1_nk] IS NULL
      OR [dim_ent_psrlevel2_sk] IS NULL
      OR [dim_ent_psrlevel2_nk] IS NULL
	  
	  

		select @processed_count  = count(*)  from [gpd].[P6_engr_manhrs_histogram]
		where 
		   dim_entp_phase_sk IS NOT NULL
      AND dim_entp_phase_nk IS NOT NULL
      AND dim_entp_project_sk IS NOT NULL
      AND dim_entp_project_nk IS NOT NULL
      AND dim_ent_office_sk IS NOT NULL
      AND dim_ent_office_nk IS NOT NULL
      AND dim_entp_data_sub_class_sk IS NOT NULL
      AND dim_entp_data_sub_class_nk IS NOT NULL
      AND dim_entp_data_class_sk IS NOT NULL
      AND dim_entp_data_class_nk IS NOT NULL
      AND dim_entp_sub_source_sk IS NOT NULL
      AND dim_entp_sub_source_nk IS NOT NULL
      AND dim_entp_source_sk IS NOT NULL
      AND dim_entp_source_nk IS NOT NULL
	  
	  AND [dim_ent_psrlevel1_sk] IS NOT NULL
      AND [dim_ent_psrlevel1_nk] IS NOT NULL
      AND [dim_ent_psrlevel2_sk] IS NOT NULL
      AND [dim_ent_psrlevel2_nk] IS NOT NULL




		--Moving error data to reprocessing area

		insert into [gpd].[reprocess_P6_engr_manhrs_histogram]
		([project],[Office_Code],[Data_sub_class_code],[Prime],[Sub_Prime],[SFN],[Activity_Code],[Discipline_code],[Period],[units],[fx],[data_class],[sub_source],[source],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_entp_project_sk],[dim_entp_project_nk],[dim_ent_office_sk],[dim_ent_office_nk],[dim_ent_prime_sk],[dim_ent_prime_nk],[dim_ent_sub_prime_sk],[dim_ent_sub_prime_nk],[dim_ent_subfunction_sk],[dim_ent_subfunction_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[dim_entp_data_class_sk],[dim_entp_data_class_nk],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[dim_entp_source_sk],[dim_entp_source_nk],[load_date_time],[parent_rssk],[PSRL1Code], [dim_ent_psrlevel1_sk], [dim_ent_psrlevel1_nk], [PSRL2Code], [dim_ent_psrlevel2_sk], [dim_ent_psrlevel2_nk])
		select 
		[project],[Office_Code],[Data_sub_class_code],[Prime],[Sub_Prime],[SFN],[Activity_Code],[Discipline_code],[Period],[units],[fx],[data_class],[sub_source],[source],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_entp_project_sk],[dim_entp_project_nk],[dim_ent_office_sk],[dim_ent_office_nk],[dim_ent_prime_sk],[dim_ent_prime_nk],[dim_ent_sub_prime_sk],[dim_ent_sub_prime_nk],[dim_ent_subfunction_sk],[dim_ent_subfunction_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_data_sub_class_sk],[dim_entp_data_sub_class_nk],[dim_entp_data_class_sk],[dim_entp_data_class_nk],[dim_entp_sub_source_sk],[dim_entp_sub_source_nk],[dim_entp_source_sk],[dim_entp_source_nk],[load_date_time],[parent_rssk],[PSRL1Code], [dim_ent_psrlevel1_sk], [dim_ent_psrlevel1_nk], [PSRL2Code], [dim_ent_psrlevel2_sk], [dim_ent_psrlevel2_nk]
		from [gpd].[P6_engr_manhrs_histogram]
		where 
		   dim_entp_phase_sk IS NULL
      OR dim_entp_phase_nk IS NULL
      OR dim_entp_project_sk IS NULL
      OR dim_entp_project_nk IS NULL
      OR dim_ent_office_sk IS NULL
      OR dim_ent_office_nk IS NULL
      OR dim_entp_data_sub_class_sk IS NULL
      OR dim_entp_data_sub_class_nk IS NULL
      OR dim_entp_data_class_sk IS NULL
      OR dim_entp_data_class_nk IS NULL
      OR dim_entp_sub_source_sk IS NULL
      OR dim_entp_sub_source_nk IS NULL
      OR dim_entp_source_sk IS NULL
      OR dim_entp_source_nk IS NULL
      OR ((dim_ent_prime_sk IS NULL
      OR dim_ent_prime_nk IS NULL) and prime is NOT NULL)
      OR ((dim_ent_sub_prime_sk IS NULL
      OR dim_ent_sub_prime_nk IS NULL) and sub_prime is NOT NULL)
      OR ((dim_ent_subfunction_sk IS NULL
      OR dim_ent_subfunction_nk IS NULL) and SFN is NOT NULL)
      OR ((dim_entp_activity_sk IS NULL
      OR dim_entp_activity_nk IS NULL) and Activity_code is NOT NULL)
	  
	  OR [dim_ent_psrlevel1_sk] IS NULL
      OR [dim_ent_psrlevel1_nk] IS NULL
      OR [dim_ent_psrlevel2_sk] IS NULL
      OR [dim_ent_psrlevel2_nk] IS NULL


	--------------------------------------------------------------------------------------
--Step 8:	--logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------


		update [gpd].[reprocess_P6_engr_manhrs_histogram]
		 set rk_failure_info = 
      case when dim_entp_phase_nk is null then 'Missing phase - ' + isnull(fx,'') + ',' else '' end +
      case when dim_entp_project_nk is null then 'Missing Project No - ' + isnull(project,'') + ',' else '' end +
      case when dim_ent_office_nk is null then 'Missing Office Name - ' + isnull(Office_Code,'') + ',' else '' end +
--      case when dim_ent_discipline_nk is null then 'Missing Discipline - ' + isnull(Discipline_code,'') + ',' else '' end +
      case when dim_entp_data_sub_class_nk is null then 'Missing Data Sub Class - ' + isnull(Data_sub_class_code,'') + ',' else '' end +
      case when dim_entp_data_class_nk is null then 'Missing Data Class - ' + isnull(data_class,'') + ',' else '' end +
      case when dim_entp_sub_source_nk is null then 'Missing Sob Source - ' + isnull(sub_source,'') + ',' else '' end +
      case when (prime IS NOT NULL and dim_ent_prime_nk is null) then 'Missing Prime - ' + isnull(prime,'') + ',' else '' end +
	  case when (Sub_Prime IS NOT NULL and dim_ent_sub_prime_nk is null) then 'Missing Sub_Prime - ' + isnull(Sub_Prime,'') + ',' else '' end +
	  case when (SFN IS NOT NULL and dim_ent_subfunction_nk is null) then 'Missing Sub_Function - ' + isnull(SFN,'') + ',' else '' end +
	  case when (Activity_Code IS NOT NULL and dim_entp_activity_nk is null) then 'Missing Activity - ' + isnull(Activity_Code,'') + ',' else '' end +
      case when dim_entp_source_nk is null then 'Missing Source - ' + isnull(source,'') + ',' else '' end +
	  
	  case when dim_ent_psrlevel1_nk is null then 'Missing PSRL1Code - ' + isnull(PSRL1Code,'') + ',' else '' end +
	  case when dim_ent_psrlevel2_nk is null then 'Missing PSRL2Code - ' + isnull(PSRL2Code,'') + ',' else '' end

	  
		
--Deleting error data from Stage table

		delete from [gpd].[P6_engr_manhrs_histogram]
		where 
		   dim_entp_phase_sk IS NULL
      OR dim_entp_phase_nk IS NULL
      OR dim_entp_project_sk IS NULL
      OR dim_entp_project_nk IS NULL
      OR dim_ent_office_sk IS NULL
      OR dim_ent_office_nk IS NULL
      OR dim_entp_data_sub_class_sk IS NULL
      OR dim_entp_data_sub_class_nk IS NULL
      OR dim_entp_data_class_sk IS NULL
      OR dim_entp_data_class_nk IS NULL
      OR dim_entp_sub_source_sk IS NULL
      OR dim_entp_sub_source_nk IS NULL
      OR dim_entp_source_sk IS NULL
      OR dim_entp_source_nk IS NULL
      OR ((dim_ent_prime_sk IS NULL
      OR dim_ent_prime_nk IS NULL) and prime is NOT NULL)
      OR ((dim_ent_sub_prime_sk IS NULL
      OR dim_ent_sub_prime_nk IS NULL) and sub_prime is NOT NULL)
      OR ((dim_ent_subfunction_sk IS NULL
      OR dim_ent_subfunction_nk IS NULL) and SFN is NOT NULL)
      OR ((dim_entp_activity_sk IS NULL
      OR dim_entp_activity_nk IS NULL) and Activity_code is NOT NULL)
	  
	  OR [dim_ent_psrlevel1_sk] IS NULL
      OR [dim_ent_psrlevel1_nk] IS NULL
      OR [dim_ent_psrlevel2_sk] IS NULL
      OR [dim_ent_psrlevel2_nk] IS NULL
	  
	  

---------------------------------------------------------------------------
--Step 9:	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	exec populate_reprocess_history 'pl_engr_man_hrs_histogram_master_pipeline', 'gpd.P6_engr_manhrs_histogram', 'gpd.reprocess_P6_engr_manhrs_histogram', 'dbo.fact_ops_man_hour_histogram','rssk';

	

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


