/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Onshore_validate]    Script Date: 1/25/2023 11:54:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[load_NCSA_fact_MCPM_Onshore_validate] @projectId [varchar](100) AS
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
09/29/2021  Satishkumar S	Shifting Phase/UOM to MCMP source dim tables; Adding new column 'Measureable' as JDE COA attribute
01/23/2023  Abhijit Kharat  Add new data subclasses such as ,ApprovedEACQty ,ApprovedEACHrs ,ApprovedEACAmt ,ApprovedETCHrs ,ApprovedETCAmt	
-----------------------------------------------------------------------------------------------------*/


	--------------------------------------------------------------------------------------
	-- Step 1: Filter the data in Synapse gpd based on project id and set the load_date for remaining records.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry

	--DELETE FROM [gpd].[NCSA_MCPM_Onshore]
	--WHERE DOMAIN NOT IN (@projectId)--('99236910') 

	DELETE FROM [gpd].[NCSA_MCPM_Onshore] 
	WHERE DOMAIN not in (
	SELECT value from string_split(@projectId,','))

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set load_date_time = @Date

	--------------------------------------------------------------------------------------
	--Step 2: get the Project ID related SK/NK
	--------------------------------------------------------------------------------------

	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--'gpd.NCSA_MCPM_Onshore', 'dim_entp_project', 'dim_ent_project_sk', 'dim_ent_project_nk', 'dim_entp_project_sk', 
	--'dim_entp_project_nk', 'Domain', 'project_number', 'CutOff', 'fact_ops', 1


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'Domain', 'project_number', 'FL',NULL ;



	--------------------------------------------------------------------------------------
	--Step 3: Update the DIM_ENT_JDE_COA for additional columns pulled from MCPM Onshore 
	--------------------------------------------------------------------------------------


		--Step i: Clear unwanted records--

				Truncate table gpd.NCSA_MCPM_dim_ent_jde_coa

		--Step ii: Collect data from MCPM and reprocess to be updated into DIM_ENT_JDE_COA--

				INSERT INTO [gpd].[NCSA_MCPM_dim_ent_jde_coa]
							([CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable])
				SELECT DISTINCT [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable] 
				FROM 
				(SELECT [CoA],[Domain] ,[PSRLevel1] as MCPM_PSRLevel1 ,[PSRLevel2] as MCPM_PSRLevel2, [PSRL1Description] as MCPM_PSRL1Description ,[PSRL2Description] as MCPM_PSRL2Description ,[dim_ent_project_nk] AS dim_entp_project_nk, measurable FROM gpd.NCSA_MCPM_Onshore
				--WHERE [PSRLevel1]<>'' AND PSRLevel2 <> '' AND PSRL1Description <>'' AND [PSRL2Description] <>''
				UNION ALL
				SELECT [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk], [measurable]  FROM gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa) A

		--Step iii : Call the SPU to generic_load_dim_v2 to load the DIM data.--

				-- select * from gpd.MCPM_coa_v  --debugging statement only

				execute [dbo].[generic_load_dim_v2 ] 'dim_ent_jde_coa_MCPM','Y','N','Y'

		--Step iv: Truncate reprocess_NCSA_MCPM_dim_ent_jde_coa and update with missing records to be reprocessed for next run.--

				TRUNCATE TABLE gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa

				--DECLARE @Date DATETIME;  --debugging  only
				--SET @Date = GETDATE();    --debugging only

				INSERT INTO [gpd].[reprocess_NCSA_MCPM_dim_ent_jde_coa]
							([CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable],[created_date_time])
				SELECT DISTINCT  [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk], [measurable], @Date 
				FROM gpd.NCSA_MCPM_dim_ent_jde_coa A
				WHERE A.CoA not in ( SELECT DISTINCT TRIM(account_code) FROM [gpd].[MCPM_coa_v] )

		--end of DIM_ENTP_JDE_COA Update

	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
	INSERT INTO [gpd].[NCSA_MCPM_Onshore]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time])
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],ISNULL([parent_rssk],[rssk]),[created_date_time]
	FROM [gpd].[reprocess_NCSA_MCPM_Onshore]

	DELETE FROM [gpd].[reprocess_NCSA_MCPM_Onshore]

	-------------------------------------------------------------------------------------------------------------
	 
	--Insert Missing COA to dim_ent_jde_coa table - Modified By Johnson 2/25/2021 --updated by Satish 05/05/21 converted stage to gpd schema --updated by Satish 09/29/21 new column 'measureable'
	truncate table gpd.coa_MCPM

	insert into gpd.coa_MCPM
	(coa_value,coa_type,project,
	   projectname,account,contract,contractdesc,contract_entity,
	  contract_entity_desc,contract_status,project_entity,project_entity_description,
	  areaunit,areadesc,costcode,costdescription,costtype,coa_status,source_name,
	  sub_source_name,load_date,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description,measurable)
	select 'JDE.' + '00' + left(ltrim(rtrim(ContractNo)),3) + '.' + CoA as coa_value,'Project' as coa_type,Domain as project,
	   DomainName as projectname,'   ' + ltrim(rtrim(CoA)) as account ,ContractNo as contract,'' as contractdesc,'00' + left(ltrim(rtrim(ContractNo)),3) as contract_entity,
	   '' as contract_entity_desc,'Active' as contract_status ,'00' + left(ltrim(rtrim(ContractNo)),3) as project_entity,'' as project_entity_description,
	   WorkArea as areaunit,'' as areadesc,costcode,'' as costdescription,costtype,'Active' as coa_status,'System' as source_name,
	   'MCPM Onshore' as sub_source_name,getdate() as load_date,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description,measurable
     from [gpd].[NCSA_MCPM_Onshore]

	 --Delete if the chart of acocunt exist in JDE Coa table
	 delete gpd.coa_MCPM
	 from gpd.coa_MCPM a,
	 dim_ent_jde_coa b
	 where a.coa_value = b.coa_value
	 and b.Active = 1

	--Run the Generic routine to insert the missing values
	
	update gpd.coa_MCPM set areaunit = '000' where areaunit = '0'

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_mcpm_coa','Y','N','Y'
	
	--Insert int Combined COA Table
	
	truncate table gpd.coa_MCPM_combined

	insert into gpd.coa_MCPM_combined
	(coa_value,coa_type,project,
	   projectname,account,contract,contractdesc,contract_entity,
	  contract_entity_desc,contract_status,project_entity,project_entity_description,
	  areaunit,areadesc,costcode,costdescription,costtype,coa_status,source_name,
	  sub_source_name,load_date)
	select 'JDE.' + '00' + left(ltrim(rtrim(ContractNo)),3) + '.' + CoA as coa_value,'Project' as coa_type,Domain as project,
	   DomainName as projectname,'   ' + ltrim(rtrim(CoA)) as account ,ContractNo as contract,'' as contractdesc,'00' + left(ltrim(rtrim(ContractNo)),3) as contract_entity,
	   '' as contract_entity_desc,'Active' as contract_status ,'00' + left(ltrim(rtrim(ContractNo)),3) as project_entity,'' as project_entity_description,
	   WorkArea as areaunit,'' as areadesc,costcode,'' as costdescription,costtype,'Active' as coa_status,'System' as source_name,
	   'MCPM Onshore' as sub_source_name,getdate() as load_date
     from [gpd].[NCSA_MCPM_Onshore]

	 --Delete if the chart of acocunt exist in JDE Coa table
	 delete gpd.coa_MCPM_combined
	 from gpd.coa_MCPM_combined a,
	 dim_ent_jde_coa b
	 where a.coa_value = b.coa_value
	 and b.Active = 1
	--RUn the Generic routine to insert the missing values
	update gpd.coa_MCPM_combined set areaunit = '000' where areaunit = '0'


	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_mcpm_coa_combined','Y','N','Y'


	------------------------------------------------------------------------------
	


	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

	--Update Function Key : Hardcoded value coming from ADF
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_function', 'dim_ent_function_sk', 'dim_ent_function_nk', 'dim_ent_function_sk', 
	--		'dim_ent_function_nk', 'function_code', 'function_code', 'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_function_sk', 'dim_ent_function_nk',
            'dim_ent_function', 'dim_ent_function_sk', 'dim_ent_function_nk', 'function_code', 'function_code', 'F',NULL ;

	--Update Data Class for Quantity
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_quantity_sk	', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_sk', 
	--		'dim_ent_data_class_nk', 'data_class_quantity_code', 'data_class_name', 'CutOff', 'fact_ops', 1
	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_data_class_quantity_sk', 'dim_ent_data_class_quantity_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_quantity_code', 'data_class_name', NULL,NULL ;

	--Update Data Class for Amount
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_amount_sk	', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_sk', 
	--		'dim_ent_data_class_nk', 'data_class_amount_code', 'data_class_name', 'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_data_class_amount_sk', 'dim_ent_data_class_amount_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_amount_code', 'data_class_name', NULL,NULL ;
			
	--Update Data Class for Hours
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_hours_sk	', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_sk', 
	--		'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', 'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_data_class_hours_sk', 'dim_ent_data_class_hours_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', NULL,NULL ;

	--Update Data Class for Rate
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_rate_sk	', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_sk', 
	--		'dim_ent_data_class_nk', 'data_class_rate_code', 'data_class_name', 'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_data_class_rate_sk', 'dim_ent_data_class_rate_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_rate_code', 'data_class_name', NULL,NULL ;

	--Update Data class for Percentage
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_percentage_sk', 'dim_ent_data_class_percentage_nk', 'dim_ent_data_class_sk', 
	--		'dim_ent_data_class_nk', 'data_class_precentage_code', 'data_class_name', 'Cutoff', 'fact_ops', 1
	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_data_class_percentage_sk', 'dim_ent_data_class_percentage_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_precentage_code', 'data_class_name', NULL,NULL ;

		
	
	--Update Source
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		'gpd.NCSA_MCPM_Onshore', 'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'dim_ent_source_sk', 
	--		'dim_ent_source_nk', 'source_code', 'source_name', 'Cutoff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_source_sk', 'dim_ent_source_nk',
            'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'source_code', 'source_name', NULL, NULL ;

	--Update Unit of Measure - Quantity
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		   'gpd.NCSA_MCPM_Onshore', 'dim_ent_unit_of_measure', 
	--		   'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk', 
	--		   'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 
	--		   'unit_of_measure_code_quantity', 'unit_of_measure_code', 
	--		   'CutOff', 'fact_ops', 1


/* ----- Temporarily blocking the UOM SK/NK Allocation to allow for direct load compare with UOM--------------------
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_quantity', 'unit_of_measure_code', NULL,NULL ;

	--Update Unit of Measure - Amount
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		   'gpd.NCSA_MCPM_Onshore', 'dim_ent_unit_of_measure', 
	--		   'dim_ent_unit_of_measure_amount_sk', 'dim_ent_unit_of_measure_amount_nk', 
	--		   'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 
	--		   'unit_of_measure_code_amount', 'unit_of_measure_code', 
	--		   'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_amount_sk', 'dim_ent_unit_of_measure_amount_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_amount', 'unit_of_measure_code', NULL,NULL ;

	--Update Unit of Measure - Hours
	--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
	--		   'gpd.NCSA_MCPM_Onshore', 'dim_ent_unit_of_measure', 
	--		   'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk', 
	--		   'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 
	--		   'unit_of_measure_code_hours', 'unit_of_measure_code', 
	--		   'CutOff', 'fact_ops', 1

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_hours', 'unit_of_measure_code', 'L',NULL ;

	--Update Unit of Measure - Percentage
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_unit_of_measure_percentage_sk = b.dim_ent_unit_of_measure_sk,
	dim_ent_unit_of_measure_percentage_nk = b.dim_ent_unit_of_measure_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_unit_of_measure b
	where b.unit_of_measure_code = a.unit_of_measure_code_precentage
	and b.active = 1
	
	---------------*/
	
	
-------09/29/21 Satish :  Unit of measure is derieved based on UoM column instead of hardcoded column such as unit_of_measure_code_hours
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk',
        'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;
	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_amount_sk', 'dim_ent_unit_of_measure_amount_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_percentage_sk', 'dim_ent_unit_of_measure_percentage_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', 'L',NULL ;
			
	-- Subclasses
	--Update Data Sub Class - Original Budget Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_quantity_code = b.data_sub_class_name
	and b.active = 1
	
	--Update Data Sub Class - Original Budget hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_hours_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Original Budget Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_amount_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Original Budget Rate

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_rate_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Current Budget Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_quantity_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Current Budget Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_hours_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Current Budget Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_amount_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Progress Budget Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_quantity_code = b.data_sub_class_name
	and b.active = 1
	
	--Update Data Sub Class - Progress Budget Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_hours_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Progress Budget Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class - Estimated at Completion Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_at_completion_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_at_completion_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_completion_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class - Estimated at Completion Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_at_completion_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_at_completion_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_completion_amount_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Estimate to Completion Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_hours_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Estimate to Completion Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_amount_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Estimate to Completion Rate

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_rate_code = b.data_sub_class_name
	and b.active = 1

	--Update Data Sub Class - Committed amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_committed_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_committed_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_committed_amount_code = b.data_sub_class_name
	and b.active = 1

	 --Update Data Sub Class -  Committed Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_committed_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_committed_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_committed_hours_code = b.data_sub_class_name
	and b.active = 1

	--Additional Subclass entries for potential more data from fact columns
 
	--Update Data Sub Class -  Actual Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Actual Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Actual Rate

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_rate_code = b.data_sub_class_name
	and b.active = 1


	 --Update Data Sub Class -  Earned Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_quantity_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class - Earned Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Earned Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class - Take Off Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_take_off_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_take_off_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_take_off_quantity_code = b.data_sub_class_name
	and b.active = 1

	--Update Data sub Class - Take Off Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_take_off_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_take_off_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_take_off_hours_code = b.data_sub_class_name
	and b.active = 1

	--Update Data sub Class - Approved EAC Quantity

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_approved_eac_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_quantity_code = b.data_sub_class_name
	and b.active = 1	
	
	--Update Data sub Class - Approved EAC Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_approved_eac_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved EAC Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_approved_eac_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved ETCH Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_approved_etc_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_etc_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_etc_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved ETC Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_approved_etc_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_etc_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_etc_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Forecast Hours

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Forecast Amount

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Forecast Rate


	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_rate_code = b.data_sub_class_name
	and b.active = 1


	--Update Data Sub Class -  Precentage Complete

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_percentage_complete_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_percentage_complete_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_percentage_nk = b.dim_ent_data_class_nk
	and a.sub_class_percentage_complete_code = b.data_sub_class_name
	and b.active = 1

	--Update other NK/SK
	--Update Work Unit

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_work_unit_sk = b.dim_entp_work_unit_sk,
	dim_ent_work_unit_nk = b.dim_entp_work_unit_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_work_unit b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.Unit = b.work_unit_code
	and b.active = 1

	-- Update Work ARea

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_work_area_sk = b.dim_entp_work_area_sk,
	dim_ent_work_area_nk = b.dim_entp_work_area_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_work_area b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.WorkArea = b.work_area_code
	and b.active = 1

	-- Update Phase

/* Commenting per change request in user story 549
	--NOTE: No direct value for phase, so derieved based on Workarea

	update [gpd].[NCSA_MCPM_Onshore] 
	set dim_entp_phase_sk = d.dim_entp_phase_sk,
	dim_entp_phase_nk = d.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_work_area b
	,[dbo].[dim_entp_phase] d
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.WorkArea = b.work_area_code
	and b.dim_entp_phase_nk  = d.dim_entp_phase_nk
	and b.active = 1
	and d.active = 1

	-------- */
-------09/29/21 Satish :  Phase SK/NK is derieved based on Phase column instead via WorkArea

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_phase_sk = b.dim_entp_phase_sk,
	dim_entp_phase_nk = b.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_phase b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.phase = b.phase_code
	and b.active = 1


	--Update CWP

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_cwp_sk = b.dim_entp_cwp_sk,
	dim_entp_cwp_nk = b.dim_entp_cwp_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_cwp b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.CWP_CODE = b.cwp_code
	and b.active = 1
	
	--Update Schedule Resource

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_schedule_resource_sk = b.dim_entp_schedule_resource_sk,
	dim_entp_schedule_resource_nk = b.dim_entp_schedule_resource_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_schedule_resource b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.SCHEDULE_RESOURCE_CODE = b.schedule_resource_code
	and b.active = 1

	--Update Activity

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_activity_sk = b.dim_entp_activity_sk,
	dim_entp_activity_nk = b.dim_entp_activity_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_activity b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.ACTIVITY_CODE = b.activity_code
	and b.active = 1

	--Update IWP

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_iwp_sk = b.dim_entp_iwp_sk,
	dim_entp_iwp_nk = b.dim_entp_iwp_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_iwp b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.IWP_CODE = b.iwp_code
	and b.active = 1

	--Update PIM

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_pim_sk = b.dim_entp_pim_sk,
	dim_entp_pim_nk = b.dim_entp_pim_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_pim b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.PIM_CODE = b.pim_code
	and b.active = 1

	--Update ROC

	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_roc_sk = b.dim_entp_roc_sk,
	dim_entp_roc_nk = b.dim_entp_roc_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_roc b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.ROC_CODE = b.roc_code
	--and a.step = b.rocs_step
	and b.active = 1

	--Update sub_soure

	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_sub_source_sk = b.dim_ent_sub_source_sk,
	dim_ent_sub_source_nk = b.dim_ent_sub_source_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_sub_source b
	where a.dim_ent_source_nk = b.dim_ent_source_nk
	and a.sub_source_code = b.sub_source_name
	and b.active = 1

	--Update CoA
	
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_jde_coa_sk = b.dim_ent_jde_coa_sk,
	dim_ent_jde_coa_nk = b.dim_ent_jde_coa_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.DIM_ENT_JDE_COA b
	where LTRIM(RTRIM(b.account_code)) = a.CoA
	and b.active = 1

	-----------------------------------------------------------------
	--Step 6: Checking for null entries for NK/SK; Isolating those records into reprocess tables.
	-----------------------------------------------------------------


	SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Onshore]
	WHERE  dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_jde_coa_sk IS NULL   
	or dim_ent_jde_coa_nk IS NULL
	or dim_ent_work_unit_sk IS NULL
	or dim_ent_work_unit_nk IS NULL
	or dim_ent_work_area_sk IS NULL
	or dim_ent_work_area_nk IS NULL
	or dim_entp_phase_sk IS NULL
	or dim_entp_phase_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_entp_cwp_sk IS NULL
	or dim_entp_cwp_nk IS NULL
	or dim_entp_schedule_resource_sk IS NULL
	or dim_entp_schedule_resource_nk IS NULL
	or dim_entp_activity_sk IS NULL
	or dim_entp_activity_nk IS NULL
	or dim_entp_iwp_sk IS NULL
	or dim_entp_iwp_nk IS NULL
	or dim_entp_pim_sk IS NULL
	or dim_entp_pim_nk IS NULL
	or dim_entp_roc_sk IS NULL
	or dim_entp_roc_nk IS NULL
	or dim_ent_data_class_quantity_sk IS NULL
	or dim_ent_data_class_quantity_nk IS NULL
	or dim_ent_data_class_hours_sk IS NULL
	or dim_ent_data_class_hours_nk IS NULL
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	or dim_ent_unit_of_measure_hours_sk IS NULL
	or dim_ent_unit_of_measure_hours_nk IS NULL
	or dim_ent_unit_of_measure_amount_sk IS NULL
	or dim_ent_unit_of_measure_amount_nk IS NULL
	or dim_ent_unit_of_measure_percentage_sk IS NULL
	or dim_ent_unit_of_measure_percentage_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_nk IS NULL



	SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Onshore]
	WHERE dim_ent_project_sk IS NOT NULL
	and dim_ent_project_nk IS NOT NULL
	and dim_ent_jde_coa_sk IS NOT NULL        
	and dim_ent_jde_coa_nk IS NOT NULL
	and dim_ent_work_unit_sk IS NOT NULL
	and dim_ent_work_unit_nk IS NOT NULL
	and dim_ent_work_area_sk IS NOT NULL
	and dim_ent_work_area_nk IS NOT NULL
	and dim_entp_phase_sk IS NOT NULL
	and dim_entp_phase_nk IS NOT NULL
	and dim_ent_function_sk IS NOT NULL
	and dim_ent_function_nk IS NOT NULL
	and dim_entp_cwp_sk IS NOT NULL
	and dim_entp_cwp_nk IS NOT NULL
	and dim_entp_schedule_resource_sk IS NOT NULL
	and dim_entp_schedule_resource_nk IS NOT NULL
	and dim_entp_activity_sk IS NOT NULL
	and dim_entp_activity_nk IS NOT NULL
	and dim_entp_iwp_sk IS NOT NULL
	and dim_entp_iwp_nk IS NOT NULL
	and dim_entp_pim_sk IS NOT NULL
	and dim_entp_pim_nk IS NOT NULL
	and dim_entp_roc_sk IS NOT NULL
	and dim_entp_roc_nk IS NOT NULL
	and dim_ent_data_class_quantity_sk IS NOT NULL
	and dim_ent_data_class_quantity_nk IS NOT NULL
	and dim_ent_data_class_hours_sk IS NOT NULL
	and dim_ent_data_class_hours_nk IS NOT NULL
	and dim_ent_data_class_amount_sk IS NOT NULL
	and dim_ent_data_class_amount_nk IS NOT NULL
	and dim_ent_data_class_rate_sk IS NOT NULL
	and dim_ent_data_class_rate_nk IS NOT NULL
	and dim_ent_data_class_percentage_sk IS NOT NULL
	and dim_ent_data_class_percentage_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_committed_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_committed_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_committed_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_committed_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_take_off_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_take_off_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_take_off_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_take_off_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_percentage_complete_sk IS NOT NULL
	and dim_ent_data_sub_class_percentage_complete_nk IS NOT NULL
	and dim_ent_source_sk IS NOT NULL
	and dim_ent_source_nk IS NOT NULL
	and dim_ent_sub_source_sk IS NOT NULL
	and dim_ent_sub_source_nk IS NOT NULL
	and dim_ent_unit_of_measure_quantity_sk IS NOT NULL
	and dim_ent_unit_of_measure_quantity_nk IS NOT NULL
	and dim_ent_unit_of_measure_hours_sk IS NOT NULL
	and dim_ent_unit_of_measure_hours_nk IS NOT NULL
	and dim_ent_unit_of_measure_amount_sk IS NOT NULL
	and dim_ent_unit_of_measure_amount_nk IS NOT NULL
	and dim_ent_unit_of_measure_percentage_sk IS NOT NULL
	and dim_ent_unit_of_measure_percentage_nk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_approved_eac_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_approved_etc_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_approved_etc_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_approved_etc_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_approved_etc_amount_nk IS NOT NULL


	INSERT INTO [gpd].[reprocess_NCSA_MCPM_Onshore]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],
		[created_date_time],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk])
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk]
	FROM [gpd].[NCSA_MCPM_Onshore]
	WHERE dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_jde_coa_sk IS NULL   
	or dim_ent_jde_coa_nk IS NULL
	or dim_ent_work_unit_sk IS NULL
	or dim_ent_work_unit_nk IS NULL
	or dim_ent_work_area_sk IS NULL
	or dim_ent_work_area_nk IS NULL
	or dim_entp_phase_sk IS NULL
	or dim_entp_phase_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_entp_cwp_sk IS NULL
	or dim_entp_cwp_nk IS NULL
	or dim_entp_schedule_resource_sk IS NULL
	or dim_entp_schedule_resource_nk IS NULL
	or dim_entp_activity_sk IS NULL
	or dim_entp_activity_nk IS NULL
	or dim_entp_iwp_sk IS NULL
	or dim_entp_iwp_nk IS NULL
	or dim_entp_pim_sk IS NULL
	or dim_entp_pim_nk IS NULL
	or dim_entp_roc_sk IS NULL
	or dim_entp_roc_nk IS NULL
	or dim_ent_data_class_quantity_sk IS NULL
	or dim_ent_data_class_quantity_nk IS NULL
	or dim_ent_data_class_hours_sk IS NULL
	or dim_ent_data_class_hours_nk IS NULL
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	or dim_ent_unit_of_measure_hours_sk IS NULL
	or dim_ent_unit_of_measure_hours_nk IS NULL
	or dim_ent_unit_of_measure_amount_sk IS NULL
	or dim_ent_unit_of_measure_amount_nk IS NULL
	or dim_ent_unit_of_measure_percentage_sk IS NULL
	or dim_ent_unit_of_measure_percentage_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_nk IS NULL


	--------------------------------------------------------------------------------------
	--Change Date: 03/08/20201 ; Change by : Satish
	--Change: Add logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------



	update [gpd].[reprocess_NCSA_MCPM_Onshore]
		 set rk_failure_info = 
		case when dim_ent_project_nk is null then 'Missing Project Number : ' + isnull(Domain,'') + ',' else '' end +
		case when dim_ent_jde_coa_nk is null then 'Missing JDE CoA : ' + isnull(COA,'') + ',' else '' end +
		case when dim_ent_work_unit_nk is null then 'Missing Work Unit : ' + isnull(Unit,'') + ',' else '' end +
		case when dim_ent_work_area_nk is null then 'Missing Work Area : ' + isnull(WorkArea,'') + ',' else '' end +
		case when dim_entp_phase_nk is null then 'Missing Phase : ' + isnull(NULL,'') + ',' else '' end +
		case when dim_ent_function_nk is null then 'Missing Function : ' + isnull(function_code,'') + ',' else '' end +
		case when dim_entp_cwp_nk is null then 'Missing CWP Code : ' + isnull(CWP_CODE,'') + ',' else '' end +
		case when dim_entp_schedule_resource_nk is null then 'Missing Schedule Resource : ' + isnull(SCHEDULE_RESOURCE_CODE,'') + ',' else '' end +
		case when dim_entp_activity_nk is null then 'Missing Activity Code : ' + isnull(ACTIVITY_CODE,'') + ',' else '' end +
		case when dim_entp_iwp_nk is null then 'Missing IWP Code : ' + isnull(IWP_CODE,'') + ',' else '' end +
		case when dim_entp_pim_nk is null then 'Missing PMID : ' + isnull(PIM_CODE,'') + ',' else '' end +
		case when dim_entp_roc_nk is null then 'Missing ROC : ' + isnull(ROC_CODE,'') + ',' else '' end +
		case when dim_ent_data_class_quantity_nk is null then 'Missing Data Class - Quantity : ' + isnull(data_class_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_class_hours_nk is null then 'Missing Data Class - Hours : ' + isnull(data_class_hours_code,'') + ',' else '' end +
		case when dim_ent_data_class_amount_nk is null then 'Missing Data Class - Amount : ' + isnull(data_class_amount_code,'') + ',' else '' end +
		case when dim_ent_data_class_rate_nk is null then 'Missing Data Class - Rate : ' + isnull(data_class_rate_code,'') + ',' else '' end +
		case when dim_ent_data_class_percentage_nk is null then 'Missing Data Class - Percentage : ' + isnull(data_class_precentage_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_quantity_nk is null then 'Missing Data Sub Class - Original Budget Quantity : ' + isnull(sub_class_original_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_hours_nk is null then 'Missing Data Sub Class - Original Budget Hours : ' + isnull(sub_class_original_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_amount_nk is null then 'Missing Data Sub Class - Original Budget Amount : ' + isnull(sub_class_original_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_rate_nk is null then 'Missing Data Sub Class - Original Budget Rate : ' + isnull(sub_class_original_budget_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_quantity_nk is null then 'Missing Data Sub Class - Current Budget Quantity : ' + isnull(sub_class_current_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_hours_nk is null then 'Missing Data Sub Class - Current Budget Hours : ' + isnull(sub_class_current_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_amount_nk is null then 'Missing Data Sub Class - Current Budget Amount : ' + isnull(sub_class_current_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_quantity_nk is null then 'Missing Data Sub Class - Progress Base Quantity : ' + isnull(sub_class_progress_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_hours_nk is null then 'Missing Data Sub Class - Progress Base Hours : ' + isnull(sub_class_progress_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_amount_nk is null then 'Missing Data Sub Class - Progress Base Amount : ' + isnull(sub_class_progress_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_at_completion_hours_nk is null then 'Missing Data Sub Class - Estimate At Completion Hours : ' + isnull(sub_class_estimated_completion_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_at_completion_amount_nk is null then 'Missing Data Sub Class - Estimate At Completion Amount : ' + isnull(sub_class_estimated_completion_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_hours_nk is null then 'Missing Data Sub Class - Estimate To Complete Hours : ' + isnull(sub_class_estimated_take_of_completion_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_amount_nk is null then 'Missing Data Sub Class - Estimate To Complete Amount : ' + isnull(sub_class_estimated_take_of_completion_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_rate_nk is null then 'Missing Data Sub Class - Estimate To Complete Rate : ' + isnull(sub_class_estimated_take_of_completion_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_committed_amount_nk is null then 'Missing Data Sub Class - Committed Amount : ' + isnull(sub_class_committed_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_committed_hours_nk is null then 'Missing Data Sub Class - Committed Hours : ' + isnull(sub_class_committed_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_hours_nk is null then 'Missing Data Sub Class - Actual Hours : ' + isnull(sub_class_actual_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_amount_nk is null then 'Missing Data Sub Class - Actual Amount : ' + isnull(sub_class_actual_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_rate_nk is null then 'Missing Data Sub Class - Actual Rate : ' + isnull(sub_class_actual_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_quantity_nk is null then 'Missing Data Sub Class - Earned Quantity : ' + isnull(sub_class_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_hours_nk is null then 'Missing Data Sub Class - Earned Hours : ' + isnull(sub_class_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_amount_nk is null then 'Missing Data Sub Class - Earned Amount : ' + isnull(sub_class_earned_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_take_off_quantity_nk is null then 'Missing Data Sub Class - Take-Off Quantity : ' + isnull(sub_class_take_off_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_take_off_hours_nk is null then 'Missing Data Sub Class - Take-Off Hours : ' + isnull(sub_class_take_off_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_approved_eac_quantity_nk is null then 'Missing Data Sub Class - Approved EAC Quantity : ' + isnull(sub_class_approved_eac_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_approved_eac_hours_nk is null then 'Missing Data Sub Class - Approved EAC Hours : ' + isnull(sub_class_approved_eac_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_approved_eac_amount_nk is null then 'Missing Data Sub Class - Approved EAC Amount : ' + isnull(sub_class_approved_eac_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_approved_etc_hours_nk is null then 'Missing Data Sub Class - Approved ETC Hours : ' + isnull(sub_class_approved_etc_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_approved_etc_amount_nk is null then 'Missing Data Sub Class - Approved ETC Amount : ' + isnull(sub_class_approved_etc_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_hours_nk is null then 'Missing Data Sub Class - Forecast Hours : ' + isnull(sub_class_forecast_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_amount_nk is null then 'Missing Data Sub Class - Forecast Amount : ' + isnull(sub_class_forecast_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_rate_nk is null then 'Missing Data Sub Class - Forecast Rate : ' + isnull(sub_class_forecast_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_percentage_complete_nk is null then 'Missing Data Sub Class - Percentage Complete : ' + isnull(sub_class_percentage_complete_code,'') + ',' else '' end +
		case when dim_ent_source_nk is null then 'Missing Source : ' + isnull(source_code,'') + ',' else '' end +
		case when dim_ent_sub_source_nk is null then 'Missing Sub Source : ' + isnull(sub_source_code,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_quantity_nk is null then 'Missing UOM - Quantity : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_hours_nk is null then 'Missing UOM - Hours : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM - Amount : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_percentage_nk is null then 'Missing UOM - Percentage : ' + isnull(UoM,'') + ',' else '' end
		case when dim_ent_unit_of_measure_quantity_nk is null OR dim_ent_unit_of_measure_percentage_nk is null OR dim_ent_unit_of_measure_hours_nk is null OR  dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM : ' + isnull(UoM,'') + ',' else '' end

	

	DELETE FROM [gpd].[NCSA_MCPM_Onshore]
	WHERE dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_jde_coa_sk IS NULL   
	or dim_ent_jde_coa_nk IS NULL
	or dim_ent_work_unit_sk IS NULL
	or dim_ent_work_unit_nk IS NULL
	or dim_ent_work_area_sk IS NULL
	or dim_ent_work_area_nk IS NULL
	or dim_entp_phase_sk IS NULL
	or dim_entp_phase_nk IS NULL
	or dim_ent_function_sk IS NULL
	or dim_ent_function_nk IS NULL
	or dim_entp_cwp_sk IS NULL
	or dim_entp_cwp_nk IS NULL
	or dim_entp_schedule_resource_sk IS NULL
	or dim_entp_schedule_resource_nk IS NULL
	or dim_entp_activity_sk IS NULL
	or dim_entp_activity_nk IS NULL
	or dim_entp_iwp_sk IS NULL
	or dim_entp_iwp_nk IS NULL
	or dim_entp_pim_sk IS NULL
	or dim_entp_pim_nk IS NULL
	or dim_entp_roc_sk IS NULL
	or dim_entp_roc_nk IS NULL
	or dim_ent_data_class_quantity_sk IS NULL
	or dim_ent_data_class_quantity_nk IS NULL
	or dim_ent_data_class_hours_sk IS NULL
	or dim_ent_data_class_hours_nk IS NULL
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	or dim_ent_unit_of_measure_hours_sk IS NULL
	or dim_ent_unit_of_measure_hours_nk IS NULL
	or dim_ent_unit_of_measure_amount_sk IS NULL
	or dim_ent_unit_of_measure_amount_nk IS NULL
	or dim_ent_unit_of_measure_percentage_sk IS NULL
	or dim_ent_unit_of_measure_percentage_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_quantity_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_eac_amount_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_hours_nk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_sk IS NULL
	or dim_ent_data_sub_class_approved_etc_amount_nk IS NULL


	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------
	exec populate_reprocess_history 'pl_mcpm_onshore_data_master_pipeline', 'gpd.NCSA_MCPM_Onshore', 'gpd.reprocess_NCSA_MCPM_Onshore', 'dbo.fact_ops','rssk';

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
		select 'Falied', error_message()
	end;
end catch;







--End of Stored Procedure
END
