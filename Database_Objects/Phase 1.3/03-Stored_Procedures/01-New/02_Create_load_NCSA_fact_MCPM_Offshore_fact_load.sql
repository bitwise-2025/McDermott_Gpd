/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Offshore_fact_load]    Script Date: 12/24/2021 1:24:16 AM ******/
DROP PROCEDURE [dbo].[load_NCSA_fact_MCPM_Offshore_fact_load]
GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Offshore_fact_load]    Script Date: 12/24/2021 1:24:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_MCPM_Offshore_fact_load] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


		
--Inserting Good records to Fact Table from the MCPM Offshore stage table
		
	--Orginal Budget Quantity

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_original_budget_quantity_sk,
		dim_ent_data_sub_class_original_budget_quantity_nk,
		dim_ent_data_class_quantity_sk,
		dim_ent_data_class_quantity_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,OBQty),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,OBQty),0) <> 0 
		isnull(convert(float,OBQty),-999.999) <> -999.999 AND LEN(OBQty)>0 --Check for NULL and Empty fact entries.


	--Orginal Budget Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_original_budget_hours_sk,
		dim_ent_data_sub_class_original_budget_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,OBHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,OBHrs),0) <> 0 
		isnull(convert(float,OBHrs),-999.999) <> -999.999 AND LEN(OBHrs)>0

	
	--Orginal Budget Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_original_budget_amount_sk,
		dim_ent_data_sub_class_original_budget_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,OBAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,OBAmt),0) <> 0 
		isnull(convert(float,OBAmt),-999.999) <> -999.999 AND LEN(OBAmt)>0
	
	--Orginal Budget Rate

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_original_budget_rate_sk,
		dim_ent_data_sub_class_original_budget_rate_nk,
		dim_ent_data_class_rate_sk,
		dim_ent_data_class_rate_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,OBRate),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,OBRate),0) <> 0 
		isnull(convert(float,OBRate),-999.999) <> -999.999 AND LEN(OBRate)>0
	
	--Current Budget Quantity
	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_current_budget_quantity_sk,
		dim_ent_data_sub_class_current_budget_quantity_nk,
		dim_ent_data_class_quantity_sk,
		dim_ent_data_class_quantity_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,CBQty),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,CBQty),0) <> 0 
		isnull(convert(float,CBQty),-999.999) <> -999.999 AND LEN(CBQty)>0 --Check for NULL and Empty fact entries.
	
	--Current Budget Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_current_budget_hours_sk,
		dim_ent_data_sub_class_current_budget_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,CBHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,CBHrs),0) <> 0 
		isnull(convert(float,CBHrs),-999.999) <> -999.999 AND LEN(CBHrs)>0 --Check for NULL and Empty fact entries.


	
	--Current Budget Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_current_budget_amount_sk,
		dim_ent_data_sub_class_current_budget_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,CBAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE isnull(convert(float,CBAmt),-999.999) <> -999.999 AND LEN(CBAmt)>0 --Check for NULL and Empty fact entries.

	
	--Progress Budget Quantity

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_progress_budget_quantity_sk,
		dim_ent_data_sub_class_progress_budget_quantity_nk,
		dim_ent_data_class_quantity_sk,
		dim_ent_data_class_quantity_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,PBQty),
		load_date_time

		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,PBQty),0) <> 0
		isnull(convert(float,PBQty),-999.999) <> -999.999 AND LEN(PBQty)>0 --Check for NULL and Empty fact entries.
	
	--Progress Budget Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_progress_budget_hours_sk,
		dim_ent_data_sub_class_progress_budget_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,PBHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,PBHrs),0) <> 0
		isnull(convert(float,PBHrs),-999.999) <> -999.999 AND LEN(PBHrs)>0 --Check for NULL and Empty fact entries.
	
	--Progress Budget Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_progress_budget_amount_sk,
		dim_ent_data_sub_class_progress_budget_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,PBAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,PBAmt),0) <> 0 
		isnull(convert(float,PBAmt),-999.999) <> -999.999 AND LEN(PBAmt)>0

	
	--Estimated at Completion Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_estimated_at_completion_hours_sk,					
		dim_ent_data_sub_class_estimated_at_completion_hours_nk,				
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,EACHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,EACHrs),0) <> 0
		isnull(convert(float,EACHrs),-999.999) <> -999.999 AND LEN(EACHrs)>0
	
	--Estimate at Completion Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_estimated_at_completion_amount_sk,
		dim_ent_data_sub_class_estimated_at_completion_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,EACAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,EACAmt),0) <> 0
		isnull(convert(float,EACAmt),-999.999) <> -999.999 AND LEN(EACAmt)>0
	
	--Estimate to Complete Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_estimated_take_of_completion_hours_sk,
		dim_ent_data_sub_class_estimated_take_of_completion_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ETCHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ETCHrs),0) <> 0
		isnull(convert(float,ETCHrs),-999.999) <> -999.999 AND LEN(ETCHrs)>0 --Check for NULL and Empty fact entries.
	
	--Estimate to Complete Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_estimated_take_of_completion_amount_sk,
		dim_ent_data_sub_class_estimated_take_of_completion_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ETCAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ETCAmt),0) <> 0 
		isnull(convert(float,ETCAmt),-999.999) <> -999.999 AND LEN(ETCAmt)>0 --Check for NULL and Empty fact entries.
	
	--Estimate to Complete Rate 

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_estimated_take_of_completion_rate_sk,
		dim_ent_data_sub_class_estimated_take_of_completion_rate_nk,
		dim_ent_data_class_rate_sk,
		dim_ent_data_class_rate_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ETCRate),
		load_date_time

		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ETCRate),0) <> 0 
		isnull(convert(float,ETCRate),-999.999) <> -999.999 AND LEN(ETCRate)>0 --Check for NULL and Empty fact entries.
	
	--Committed Amount

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_committed_amount_sk,
		dim_ent_data_sub_class_committed_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,CommittedAmt),
		load_date_time

		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,CommittedAmt),0) <> 0 
		isnull(convert(float,CommittedAmt),-999.999) <> -999.999 AND LEN(CommittedAmt)>0 --Check for NULL and Empty fact entries.

	--Committed Hours

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_committed_hours_sk,
		dim_ent_data_sub_class_committed_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,CommittedHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,CommittedHrs),0) <> 0
		isnull(convert(float,CommittedHrs),-999.999) <> -999.999 AND LEN(CommittedHrs)>0 --Check for NULL and Empty fact entries.

	--ActualHrs

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_actual_hours_sk,
		dim_ent_data_sub_class_actual_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ActualHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ActualHrs),0) <> 0
		isnull(convert(float,ActualHrs),-999.999) <> -999.999 AND LEN(ActualHrs)>0 --Check for NULL and Empty fact entries.

	--ActualAmt

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_actual_amount_sk,
		dim_ent_data_sub_class_actual_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ActualAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ActualAmt),0) <> 0 
		isnull(convert(float,ActualAmt),-999.999) <> -999.999 AND LEN(ActualAmt)>0 --Check for NULL and Empty fact entries.

	--ActualRate

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_actual_rate_sk,
		dim_ent_data_sub_class_actual_rate_nk,
		dim_ent_data_class_rate_sk,
		dim_ent_data_class_rate_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ActualRate),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ActualRate),0) <> 0 
		isnull(convert(float,ActualRate),-999.999) <> -999.999 AND LEN(ActualRate)>0 --Check for NULL and Empty fact entries.

	--EarnedQty

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_earned_quantity_sk,
		dim_ent_data_sub_class_earned_quantity_nk,
		dim_ent_data_class_quantity_sk,
		dim_ent_data_class_quantity_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,EarnedQty),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,EarnedQty),0) <> 0 
		isnull(convert(float,EarnedQty),-999.999) <> -999.999 AND LEN(EarnedQty)>0 --Check for NULL and Empty fact entries.

	--EarnedHrs

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_earned_hours_sk,
		dim_ent_data_sub_class_earned_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,EarnedHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,EarnedHrs),0) <> 0
		isnull(convert(float,EarnedHrs),-999.999) <> -999.999 AND LEN(EarnedHrs)>0 --Check for NULL and Empty fact entries.

	--EarnedAmt

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_earned_amount_sk,
		dim_ent_data_sub_class_earned_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,EarnedAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,EarnedAmt),0) <> 0 
		isnull(convert(float,EarnedAmt),-999.999) <> -999.999 AND LEN(EarnedAmt)>0 --Check for NULL and Empty fact entries.

	--TakeOffQty

		INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_take_off_quantity_sk,
		dim_ent_data_sub_class_take_off_quantity_nk,
		dim_ent_data_class_quantity_sk,
		dim_ent_data_class_quantity_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,TakeOffQty),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,TakeOffQty),0) <> 0
		isnull(convert(float,TakeOffQty),-999.999) <> -999.999 AND LEN(TakeOffQty)>0 --Check for NULL and Empty fact entries.

	--TakeOffHrs

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_take_off_hours_sk,
		dim_ent_data_sub_class_take_off_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,TakeOffHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,TakeOffHrs),0) <> 0
		isnull(convert(float,TakeOffHrs),-999.999) <> -999.999 AND LEN(TakeOffHrs)>0 --Check for NULL and Empty fact entries.

	--ForecastHrs

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_forecast_hours_sk,
		dim_ent_data_sub_class_forecast_hours_nk,
		dim_ent_data_class_hours_sk,
		dim_ent_data_class_hours_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ForecastHrs),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ForecastHrs),0) <> 0
		isnull(convert(float,ForecastHrs),-999.999) <> -999.999 AND LEN(ForecastHrs)>0 --Check for NULL and Empty fact entries.

	--ForecastAmt

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_forecast_amount_sk,
		dim_ent_data_sub_class_forecast_amount_nk,
		dim_ent_data_class_amount_sk,
		dim_ent_data_class_amount_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ForecastAmt),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ForecastAmt),0) <> 0 
		isnull(convert(float,ForecastAmt),-999.999) <> -999.999 AND LEN(ForecastAmt)>0 --Check for NULL and Empty fact entries.

	--ForecastRate

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_forecast_rate_sk,
		dim_ent_data_sub_class_forecast_rate_nk,
		dim_ent_data_class_rate_sk,
		dim_ent_data_class_rate_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,ForecastRate),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,ForecastRate),0) <> 0 
		isnull(convert(float,ForecastRate),-999.999) <> -999.999 AND LEN(ForecastRate)>0

	--PctComplete

	INSERT into [dbo].[fact_ops]
	(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,transaction_date,transaction_quantity,created_date_time)
	SELECT
		dim_ent_function_sk,
		dim_ent_function_nk,
		dim_ent_project_sk,
		dim_ent_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_ent_work_unit_sk,
		dim_ent_work_unit_nk,
		dim_ent_work_area_sk,
		dim_ent_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_ent_data_sub_class_percentage_complete_sk,
		dim_ent_data_sub_class_percentage_complete_nk,
		dim_ent_data_class_percentage_sk,
		dim_ent_data_class_percentage_nk,
		dim_ent_sub_source_sk,
		dim_ent_sub_source_nk,
		dim_ent_source_sk,
		dim_ent_source_nk,
		dim_ent_unit_of_measure_quantity_sk,
		dim_ent_unit_of_measure_quantity_nk,
		dim_ent_geac_coa_sk,
		dim_ent_geac_coa_nk,
		convert(datetime,left(CutOff,19)),
		convert(float,PctComplete),
		load_date_time
		FROM [gpd].[NCSA_MCPM_Offshore]
		WHERE --isnull(convert(float,PctComplete),0) <> 0 
		isnull(convert(float,PctComplete),-999.999) <> -999.999 AND LEN(PctComplete)>0 --Check for NULL and Empty fact entries.


	-----------------------------------------------------------------
	--Step 8: Cleanup Stage table. Report stats along with any error message
	-----------------------------------------------------------------

	TRUNCATE TABLE [gpd].[NCSA_MCPM_Offshore]



	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
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
end;		
GO


