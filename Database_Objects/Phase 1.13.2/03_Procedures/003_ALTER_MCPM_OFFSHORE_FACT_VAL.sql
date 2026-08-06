/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Offshore_validate]    Script Date: 1/25/2023 11:57:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[load_NCSA_fact_MCPM_Offshore_validate] @projectId [varchar](100) AS
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
12/20/2021 Debi Prasad Baral	Update the script for MCPM Offshore Data Ingestion	
12/27/2021  Satishkumar S		Updating the stored procedure call for reprocess History
01/12/2022  Satishkumar S		Added columns Prime,SubPrime, SummaryCostType NK values to DIM_ENT_GEAC_COA. Along with changes to dim_config 
01/24/2023  Abhijit Kharat      Add new data subclasses such as ApprovedEACQty ,ApprovedEACHrs ,ApprovedEACAmt ,ApprovedETCHrs ,ApprovedETCAmt	
-----------------------------------------------------------------------------------------------------*/


	--------------------------------------------------------------------------------------
	-- Step 1: Filter the data in Synapse gpd based on project id and set the load_date for remaining records.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry



	DELETE FROM [gpd].[NCSA_MCPM_Offshore] 
	WHERE DOMAIN not in (
	SELECT value from string_split(@projectId,','))

	UPDATE [gpd].[NCSA_MCPM_Offshore]
	set load_date_time = @Date

--[12/20/2021 Debi Prasad Baral]: Added the update statement to populate GEAC_COA value using the values from NCSA_MCPM_Offshore table

	UPDATE [gpd].[NCSA_MCPM_Offshore]
	set GEAC_COA = concat('GEAC.', RIGHT(ContractNo,4), '.0100','.',WorkARea,'.',CostCode,'.',costtype);
	
	--------------------------------------------------------------------------------------
	--Step 2: get the Project ID related SK/NK
	--------------------------------------------------------------------------------------


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'Domain', 'project_number', 'FL',NULL ;

--[12/20/2021 Debi Prasad Baral]: Added below logic to insert additional GEAC COA from MCPM Offshore data to dim_ent_geac_coa 
	--------------------------------------------------------------------------------------
	--Step 3: Insert the additional GEAC COA into DIM_ENT_GEAC_COA from MCPM Offshore data as these entries are not coming from TA stream
	--------------------------------------------------------------------------------------


truncate table [gpd].[dim_ent_geac_coa_MCPM_Off];

insert into [gpd].[dim_ent_geac_coa_MCPM_Off]
	  ([coa_value]
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
	  ,[SummaryCostType]
	  ,[Prime]
	  ,[SubPrime])

select GEAC_COA as coa_value, 
right(ContractNo,4) as entity_id,
substring(CoA,11,4) as account_code,
substring(CoA,16,5) as ident1_code,
substring(CoA,21,5) as ident2_code,
right('0000' + CostType,4) as ident3_code,
'Project' as coa_type,
'' as ident1_description,
'' as ident2_description,
Title as ident3_description,
b.function_code as classification_id,
'Active' as coa_status,
left(ContractNo,5) as contract_id,
c.entity_name as entity_description,
'' as account_description,
DomainName as contract_description,
'Active' as ident1_status,
'1900-01-01 00:00:00.000' as ident1_start_date,
'2999-12-31 00:00:00.000' as ident1_end_date,
'Active' as ident2_status,
'1900-01-01 00:00:00.000' as ident2_start_date,
'2999-12-31 00:00:00.000' as ident2_end_date,
'MCPM Offshore' as sub_source_name,
'System' as source_name,
PSRLevel1,
PSRLevel2,
PSRL1Description,
PSRL2Description,
Measurable as measurable,
Domain,
SummaryCostType,
Prime,
SubPrime
from [gpd].[NCSA_MCPM_Offshore]
left join (select * from [dbo].[dim_ent_function_alternative_v] where active =1) b
on  ISNULL(PSRL1Description,'NULL') = b.alternative_function_name
left join (select * from [dbo].[dim_ent_entity] where active = 1) c
on right(ContractNo,4) = c.entity_id ;

execute [dbo].[generic_load_dim_v2 ] 'dim_ent_geac_coa_mcpm_offshore','Y','N','Y';

	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
	INSERT INTO [gpd].[NCSA_MCPM_Offshore]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_geac_coa_sk],[dim_ent_geac_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time],[GEAC_COA],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk])
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_geac_coa_sk],[dim_ent_geac_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],ISNULL([parent_rssk],[rssk]),[created_date_time],[GEAC_COA],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk]
	FROM [gpd].[reprocess_NCSA_MCPM_Offshore]

	DELETE FROM [gpd].[reprocess_NCSA_MCPM_Offshore]

	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'Domain', 'project_number', 'FL',NULL ;


	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

--[12/20/2021 Debi Prasad Baral]: As we are using dim_ent_function_alternative_v by passing PSRL1Description to calculate Function SK/NK where SK/NK are not unique in this View hence using regular updated instead of fact_lookup_based_on_one_key
	
	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_function_sk = b.dim_ent_function_sk,
	dim_ent_function_nk = b.dim_ent_function_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_function_alternative_v b
	where b.alternative_function_name = ISNULL(a.PSRL1Description,'NULL')
	and b.active = 1


	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_quantity_sk', 'dim_ent_data_class_quantity_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_quantity_code', 'data_class_name', 'F',NULL ;



	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_amount_sk', 'dim_ent_data_class_amount_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_amount_code', 'data_class_name', NULL,NULL ;
			


	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_hours_sk', 'dim_ent_data_class_hours_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', NULL,NULL ;



	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_rate_sk', 'dim_ent_data_class_rate_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_rate_code', 'data_class_name', NULL,NULL ;


	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_percentage_sk', 'dim_ent_data_class_percentage_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_precentage_code', 'data_class_name', NULL,NULL ;

		

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_source_sk', 'dim_ent_source_nk',
            'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'source_code', 'source_name',  NULL, NULL ;



	
	
-------09/29/21 Satish :  Unit of measure is derieved based on UoM column instead of hardcoded column such as unit_of_measure_code_hours
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk',
        'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', 'L',NULL ;
		
--[12/20/2021 Debi Prasad Baral]: Commented the other UOM below and kept only one above

/* 	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_amount_sk', 'dim_ent_unit_of_measure_amount_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_percentage_sk', 'dim_ent_unit_of_measure_percentage_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', 'L',NULL ;

*/	

--[12/20/2021 Debi Prasad Baral]: Using fact_lookup_based_on_many_key stored procedure instead of regular update for better performance
-- Update Sub Class
	--Update Data Sub Class - Original Budget Quantity
/*	
	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_original_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_quantity_code = b.data_sub_class_name
	and b.active = 1
*/
	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_quantity_sk', 'dim_ent_data_sub_class_original_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, 'F',NULL ;
		
		
	--Update Data Sub Class - Original Budget hours
/*
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_hours_code = b.data_sub_class_name
	and b.active = 1
*/

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_hours_sk', 'dim_ent_data_sub_class_original_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;

	--Update Data Sub Class - Original Budget Amount
/*
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_amount_code = b.data_sub_class_name
	and b.active = 1
*/	
	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_amount_sk', 'dim_ent_data_sub_class_original_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;
	
	--Update Data Sub Class - Original Budget Rate

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_original_budget_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_original_budget_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_original_budget_rate_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_rate_sk', 'dim_ent_data_sub_class_original_budget_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Current Budget Quantity

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_quantity_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_quantity_sk', 'dim_ent_data_sub_class_current_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Current Budget Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_hours_sk', 'dim_ent_data_sub_class_current_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Current Budget Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_current_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_current_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_current_budget_amount_code = b.data_sub_class_name
	and b.active = 1
*/	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_amount_sk', 'dim_ent_data_sub_class_current_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Progress Budget Quantity

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_quantity_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_quantity_sk', 'dim_ent_data_sub_class_progress_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Progress Budget Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_hours_sk', 'dim_ent_data_sub_class_progress_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
	--Update Data Sub Class - Progress Budget Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_progress_budget_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_progress_budget_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_progress_budget_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_amount_sk', 'dim_ent_data_sub_class_progress_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimated at Completion Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_at_completion_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_at_completion_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_completion_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_at_completion_hours_sk', 'dim_ent_data_sub_class_estimated_at_completion_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_completion_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Estimated at Completion Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_at_completion_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_at_completion_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_completion_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_at_completion_amount_sk', 'dim_ent_data_sub_class_estimated_at_completion_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_completion_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_hours_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_amount_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Rate

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_estimated_take_of_completion_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_estimated_take_of_completion_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_estimated_take_of_completion_rate_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_rate_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Committed amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_committed_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_committed_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_committed_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_committed_amount_sk', 'dim_ent_data_sub_class_committed_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_committed_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	 --Update Data Sub Class -  Committed Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_committed_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_committed_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_committed_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_committed_hours_sk', 'dim_ent_data_sub_class_committed_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_committed_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Additional Subclass entries for potential more data from fact columns
 
	--Update Data Sub Class -  Actual Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_hours_sk', 'dim_ent_data_sub_class_actual_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class -  Actual Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_amount_sk', 'dim_ent_data_sub_class_actual_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class -  Actual Rate

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_actual_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_actual_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_actual_rate_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_rate_sk', 'dim_ent_data_sub_class_actual_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
	 --Update Data Sub Class -  Earned Quantity

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_quantity_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_quantity_sk', 'dim_ent_data_sub_class_earned_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Earned Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_hours_sk', 'dim_ent_data_sub_class_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Earned Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_earned_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_earned_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_earned_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_amount_sk', 'dim_ent_data_sub_class_earned_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Take Off Quantity

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_take_off_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_take_off_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_take_off_quantity_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_take_off_quantity_sk', 'dim_ent_data_sub_class_take_off_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_take_off_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data sub Class - Take Off Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_take_off_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_take_off_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_take_off_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_take_off_hours_sk', 'dim_ent_data_sub_class_take_off_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_take_off_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;



		
	--Update Data sub Class - Approved EAC Quantity

	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_approved_eac_quantity_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_quantity_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_quantity_code = b.data_sub_class_name
	and b.active = 1	
	
	--Update Data sub Class - Approved EAC Hours

	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_approved_eac_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved EAC Amount

	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_approved_eac_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_eac_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_eac_amount_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved ETCH Hours

	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_approved_etc_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_etc_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_etc_hours_code = b.data_sub_class_name
	and b.active = 1


	--Update Data sub Class - Approved ETC Amount

	update [gpd].[NCSA_MCPM_Offshore]
	set dim_ent_data_sub_class_approved_etc_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_approved_etc_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Offshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_approved_etc_amount_code = b.data_sub_class_name
	and b.active = 1

	--Update Data sub Class - Forecast Hours

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_hours_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_hours_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_hours_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_hours_sk', 'dim_ent_data_sub_class_forecast_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Forecast Amount

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_amount_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_amount_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_amount_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_amount_sk', 'dim_ent_data_sub_class_forecast_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Forecast Rate


/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_forecast_rate_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_forecast_rate_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_rate_nk = b.dim_ent_data_class_nk
	and a.sub_class_forecast_rate_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_rate_sk', 'dim_ent_data_sub_class_forecast_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Precentage Complete

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_data_sub_class_percentage_complete_sk = b.dim_ent_data_sub_class_sk,
	dim_ent_data_sub_class_percentage_complete_nk = b.dim_ent_data_sub_class_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_data_sub_class b
	where a.dim_ent_data_class_percentage_nk = b.dim_ent_data_class_nk
	and a.sub_class_percentage_complete_code = b.data_sub_class_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_percentage_complete_sk', 'dim_ent_data_sub_class_percentage_complete_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_percentage_nk', 'dim_ent_data_class_nk',
		'sub_class_percentage_complete_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update other NK/SK
	--Update Work Unit

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_work_unit_sk = b.dim_entp_work_unit_sk,
	dim_ent_work_unit_nk = b.dim_entp_work_unit_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_work_unit b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.Unit = b.work_unit_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_work_unit_sk', 'dim_ent_work_unit_nk',
        'dim_entp_work_unit', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'Unit', 'work_unit_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	-- Update Work ARea
/*
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_work_area_sk = b.dim_entp_work_area_sk,
	dim_ent_work_area_nk = b.dim_entp_work_area_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_work_area b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.WorkArea = b.work_area_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_work_area_sk', 'dim_ent_work_area_nk',
        'dim_entp_work_area', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'WorkArea', 'work_area_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

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

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_phase_sk = b.dim_entp_phase_sk,
	dim_entp_phase_nk = b.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_phase b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.phase = b.phase_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_phase_sk', 'dim_entp_phase_nk',
        'dim_entp_phase', 'dim_entp_phase_sk', 'dim_entp_phase_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'phase', 'phase_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update CWP

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_cwp_sk = b.dim_entp_cwp_sk,
	dim_entp_cwp_nk = b.dim_entp_cwp_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_cwp b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.CWP_CODE = b.cwp_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk',
        'dim_entp_cwp', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'CWP_CODE', 'cwp_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Schedule Resource

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_schedule_resource_sk = b.dim_entp_schedule_resource_sk,
	dim_entp_schedule_resource_nk = b.dim_entp_schedule_resource_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_schedule_resource b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.SCHEDULE_RESOURCE_CODE = b.schedule_resource_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk',
        'dim_entp_schedule_resource', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'SCHEDULE_RESOURCE_CODE', 'schedule_resource_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Activity

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_activity_sk = b.dim_entp_activity_sk,
	dim_entp_activity_nk = b.dim_entp_activity_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_activity b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.ACTIVITY_CODE = b.activity_code
	and b.active = 1
*/	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_activity_sk', 'dim_entp_activity_nk',
        'dim_entp_activity', 'dim_entp_activity_sk', 'dim_entp_activity_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'ACTIVITY_CODE', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update IWP

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_iwp_sk = b.dim_entp_iwp_sk,
	dim_entp_iwp_nk = b.dim_entp_iwp_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_iwp b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.IWP_CODE = b.iwp_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk',
        'dim_entp_iwp', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'IWP_CODE', 'iwp_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update PIM

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_pim_sk = b.dim_entp_pim_sk,
	dim_entp_pim_nk = b.dim_entp_pim_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_pim b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.PIM_CODE = b.pim_code
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_pim_sk', 'dim_entp_pim_nk',
        'dim_entp_pim', 'dim_entp_pim_sk', 'dim_entp_pim_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'PIM_CODE', 'pim_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update ROC

/*	UPDATE [gpd].[NCSA_MCPM_Onshore]
	set dim_entp_roc_sk = b.dim_entp_roc_sk,
	dim_entp_roc_nk = b.dim_entp_roc_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_entp_roc b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.ROC_CODE = b.roc_code
	--and a.step = b.rocs_step
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_roc_sk', 'dim_entp_roc_nk',
        'dim_entp_roc', 'dim_entp_roc_sk', 'dim_entp_roc_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'ROC_CODE', 'roc_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update sub_soure

/*	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_sub_source_sk = b.dim_ent_sub_source_sk,
	dim_ent_sub_source_nk = b.dim_ent_sub_source_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.dim_ent_sub_source b
	where a.dim_ent_source_nk = b.dim_ent_source_nk
	and a.sub_source_code = b.sub_source_name
	and b.active = 1
*/
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_ent_source_nk', 'dim_ent_source_nk',
		'sub_source_code', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

--[12/20/2021 Debi Prasad Baral]:] Commented the jde_coa SK/NK update and used geac_coa 	sk/nk	
	--Update GEAC CoA
/*	
	update [gpd].[NCSA_MCPM_Onshore]
	set dim_ent_jde_coa_sk = b.dim_ent_jde_coa_sk,
	dim_ent_jde_coa_nk = b.dim_ent_jde_coa_nk
	from [gpd].[NCSA_MCPM_Onshore] a,dbo.DIM_ENT_JDE_COA b
	where LTRIM(RTRIM(b.account_code)) = a.CoA
	and b.active = 1
*/		
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Offshore', 'gpd.NCSA_MCPM_Offshore',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_geac_coa_sk', 'dim_ent_geac_coa_nk',
            'DIM_ENT_GEAC_COA', 'dim_ent_geac_coa_sk', 'dim_ent_geac_coa_nk', 'GEAC_COA', 'coa_value', 'FL',NULL ;


	-----------------------------------------------------------------
	--Step 6: Checking for null entries for NK/SK; Isolating those records into reprocess tables.
	-----------------------------------------------------------------
--[12/20/2021 Debi Prasad Baral]: Updated jde_coa to geac_coa sk/nk and kept one entry for UOM SK/NK and commented the other UOM SK/NK

	SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Offshore]
	WHERE  dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_geac_coa_sk IS NULL   
	or dim_ent_geac_coa_nk IS NULL
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
	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL



	SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Offshore]
	WHERE dim_ent_project_sk IS NOT NULL
	and dim_ent_project_nk IS NOT NULL
	and dim_ent_geac_coa_sk IS NOT NULL        
	and dim_ent_geac_coa_nk IS NOT NULL
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
	--and dim_ent_unit_of_measure_hours_sk IS NOT NULL
	--and dim_ent_unit_of_measure_hours_nk IS NOT NULL
	--and dim_ent_unit_of_measure_amount_sk IS NOT NULL
	--and dim_ent_unit_of_measure_amount_nk IS NOT NULL
	--and dim_ent_unit_of_measure_percentage_sk IS NOT NULL
	--and dim_ent_unit_of_measure_percentage_nk IS NOT NULL


	INSERT INTO [gpd].[reprocess_NCSA_MCPM_Offshore]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_geac_coa_sk],[dim_ent_geac_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],
		[created_date_time],[GEAC_COA],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk])
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_geac_coa_sk],[dim_ent_geac_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time],[GEAC_COA],[ApprovedEACQty],[ApprovedEACHrs],[ApprovedEACAmt],[ApprovedETCHrs],[ApprovedETCAmt],[sub_class_approved_eac_quantity_code],[sub_class_approved_eac_hours_code],[sub_class_approved_eac_amount_code],[sub_class_approved_etc_hours_code],[sub_class_approved_etc_amount_code],[dim_ent_data_sub_class_approved_eac_quantity_sk] ,[dim_ent_data_sub_class_approved_eac_quantity_nk] ,[dim_ent_data_sub_class_approved_eac_hours_sk] ,[dim_ent_data_sub_class_approved_eac_hours_nk] ,[dim_ent_data_sub_class_approved_eac_amount_sk] ,[dim_ent_data_sub_class_approved_eac_amount_nk] ,[dim_ent_data_sub_class_approved_etc_hours_sk] ,[dim_ent_data_sub_class_approved_etc_hours_nk] ,[dim_ent_data_sub_class_approved_etc_amount_sk] ,[dim_ent_data_sub_class_approved_etc_amount_nk]
	FROM [gpd].[NCSA_MCPM_Offshore]
	WHERE dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_geac_coa_sk IS NULL   
	or dim_ent_geac_coa_nk IS NULL
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
	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL


	--------------------------------------------------------------------------------------
	--Change: Add logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------



	update [gpd].[reprocess_NCSA_MCPM_Offshore]
		 set rk_failure_info = 
		case when dim_ent_project_nk is null then 'Missing Project Number : ' + isnull(Domain,'') + ',' else '' end +
		case when dim_ent_geac_coa_nk is null then 'Missing GEAC CoA : ' + isnull(GEAC_COA,'') + ',' else '' end +
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
		--case when dim_ent_unit_of_measure_quantity_nk is null OR dim_ent_unit_of_measure_percentage_nk is null OR dim_ent_unit_of_measure_hours_nk is null OR  dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM : ' + isnull(UoM,'') + ',' else '' end
		case when dim_ent_unit_of_measure_quantity_nk is null then 'Missing UOM : ' + isnull(UoM,'') + ',' else '' end


	DELETE FROM [gpd].[NCSA_MCPM_Offshore]
	WHERE dim_ent_project_sk IS NULL
	or dim_ent_project_nk IS NULL
	or dim_ent_geac_coa_sk IS NULL   
	or dim_ent_geac_coa_nk IS NULL
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

	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL


	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	exec populate_reprocess_history 'pl_mcpmdata_offshore_monthly_raw_to_synapse', 'gpd.NCSA_MCPM_offshore', 'gpd.reprocess_NCSA_MCPM_offshore', 'dbo.fact_ops','rssk';

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
