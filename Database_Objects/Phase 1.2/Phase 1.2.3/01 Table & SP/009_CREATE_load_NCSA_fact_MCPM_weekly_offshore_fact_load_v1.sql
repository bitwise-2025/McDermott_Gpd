/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_weekly_offshore_fact_load]    Script Date: 10/6/2022 7:58:30 AM ******/
--DROP PROCEDURE [dbo].[load_NCSA_fact_MCPM_weekly_offshore_fact_load]
--GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_weekly_offshore_fact_load]    Script Date: 10/6/2022 7:58:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_MCPM_weekly_offshore_fact_load] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int
declare @errorMessage varchar(4000)

/*Change Log Date - Developer : Description
10/04/2022 - Satish: Initial Development
*/
		
		--Inserting good records to fact table
		--Variance Earned Quantity 
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_variance_earned_quantity_sk,
		       dim_ent_data_sub_class_variance_earned_quantity_nk,
			   dim_ent_data_class_quantity_sk,
		       dim_ent_data_class_quantity_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_quantity_sk,
		       dim_ent_unit_of_measure_quantity_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,VarianceEarnedQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   --where isnull(convert(float,VarianceEarnedQty),0) <> 0 
		       where isnull(convert(float,VarianceEarnedQty),-999.999) <> -999.999 AND LEN(TakeOffHrs)>0 --Check for NULL and Empty fact entries.

		--Variance Earned Hours
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_variance_earned_hours_sk,
		       dim_ent_data_sub_class_variance_earned_hours_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,VarianceEarnedHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   --where isnull(convert(float,VarianceEarnedHrs),0) <> 0 
			   where isnull(convert(float,VarianceEarnedHrs),-999.999) <> -999.999 AND LEN(TakeOffHrs)>0 --Check for NULL and Empty fact entries.


		--Earned Quantity 
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   convert(datetime,left(CutOff,19)),
			   convert(float,EarnedQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   --where isnull(convert(float,VarianceEarnedQty),0) <> 0 
		       where isnull(convert(float,EarnedQty),-999.999) <> -999.999 AND LEN(EarnedQty)>0 --Check for NULL and Empty fact entries.


		--Earned Hours
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,EarnedHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   --where isnull(convert(float,VarianceEarnedHrs),0) <> 0 
			   where isnull(convert(float,EarnedHrs),-999.999) <> -999.999 AND LEN(EarnedHrs)>0 --Check for NULL and Empty fact entries.


		--Variance Actual Amount 
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_variance_actual_amt_sk,
		       dim_ent_data_sub_class_variance_actual_amt_nk,
			   dim_ent_data_class_amount_sk,
		       dim_ent_data_class_amount_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_amount_sk,
		       dim_ent_unit_of_measure_amount_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,VarianceActualAmt),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
		       where isnull(convert(float,VarianceActualAmt),-999.999) <> -999.999 AND LEN(VarianceActualAmt)>0 --Check for NULL and Empty fact entries.


		--Variance Actual Hours
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_variance_actual_hours_sk,
		       dim_ent_data_sub_class_variance_actual_hours_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,VarianceActualHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,VarianceActualHrs),-999.999) <> -999.999 AND LEN(VarianceActualHrs)>0 --Check for NULL and Empty fact entries.



--PrevWeeklyEarnedQty
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_prev_weekly_earned_qty_sk,
		       dim_ent_data_sub_class_prev_weekly_earned_qty_nk,
			   dim_ent_data_class_quantity_sk,
		       dim_ent_data_class_quantity_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_quantity_sk,
		       dim_ent_unit_of_measure_quantity_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,PrevEarnedQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,PrevEarnedQty),-999.999) <> -999.999 AND LEN(PrevEarnedQty)>0 --Check for NULL and Empty fact entries.


--PrevWeeklyEarnedHrs
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_prev_weekly_earned_hrs_sk,
		       dim_ent_data_sub_class_prev_weekly_earned_hrs_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,PrevEarnedHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,PrevEarnedHrs),-999.999) <> -999.999 AND LEN(PrevEarnedHrs)>0 --Check for NULL and Empty fact entries.

--WeeklyTakeOffQty
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_takeoff_qty_sk,
		       dim_ent_data_sub_class_weekly_takeoff_qty_nk,
			   dim_ent_data_class_quantity_sk,
		       dim_ent_data_class_quantity_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_quantity_sk,
		       dim_ent_unit_of_measure_quantity_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,TakeOffQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,TakeOffQty),-999.999) <> -999.999 AND LEN(TakeOffQty)>0 --Check for NULL and Empty fact entries.


--WeeklyTakeOffHrs
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_takeoff_hrs_sk,
		       dim_ent_data_sub_class_weekly_takeoff_hrs_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,TakeOffHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,TakeOffHrs),-999.999) <> -999.999 AND LEN(TakeOffHrs)>0 --Check for NULL and Empty fact entries.

--WeeklyProgressBaseQty
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_progress_base_qty_sk,
		       dim_ent_data_sub_class_weekly_progress_base_qty_nk,
			   dim_ent_data_class_quantity_sk,
		       dim_ent_data_class_quantity_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_quantity_sk,
		       dim_ent_unit_of_measure_quantity_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,ProgressBaseQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,ProgressBaseQty),-999.999) <> -999.999 AND LEN(ProgressBaseQty)>0 

--WeeklyProgressBaseHrs
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_progress_base_hrs_sk,
		       dim_ent_data_sub_class_weekly_progress_base_hrs_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,ProgressBaseHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,ProgressBaseHrs),-999.999) <> -999.999 AND LEN(ProgressBaseHrs)>0

--WeeklyProgressBaseAmt
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_progress_base_amt_sk,
		       dim_ent_data_sub_class_weekly_progress_base_amt_nk,
			   dim_ent_data_class_amount_sk,
		       dim_ent_data_class_amount_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_amount_sk,
		       dim_ent_unit_of_measure_amount_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,ProgressBaseAmt),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
		       where isnull(convert(float,ProgressBaseAmt),-999.999) <> -999.999 AND LEN(ProgressBaseAmt)>0 --Check for NULL and Empty fact entries.

--WeeklyActualHrs
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_actual_hrs_sk,
		       dim_ent_data_sub_class_weekly_actual_hrs_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,ActualHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,ActualHrs),-999.999) <> -999.999 AND LEN(ActualHrs)>0

--WeeklyActualAmt
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_actual_amt_sk,
		       dim_ent_data_sub_class_weekly_actual_amt_nk,
			   dim_ent_data_class_amount_sk,
		       dim_ent_data_class_amount_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_amount_sk,
		       dim_ent_unit_of_measure_amount_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,ActualAmt),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
		       where isnull(convert(float,ActualAmt),-999.999) <> -999.999 AND LEN(ActualAmt)>0

--WeeklyOriginalHrs
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_original_hrs_sk,
		       dim_ent_data_sub_class_weekly_original_hrs_nk,
			   dim_ent_data_class_hours_sk,
		       dim_ent_data_class_hours_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_hours_sk,
		       dim_ent_unit_of_measure_hours_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,OriginalHrs),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,OriginalHrs),-999.999) <> -999.999 AND LEN(OriginalHrs)>0

--WeeklyOriginalQty
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time
		,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_original_qty_sk,
		       dim_ent_data_sub_class_weekly_original_qty_nk,
			   dim_ent_data_class_quantity_sk,
		       dim_ent_data_class_quantity_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_quantity_sk,
		       dim_ent_unit_of_measure_quantity_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,OriginalQty),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
			   where isnull(convert(float,OriginalQty),-999.999) <> -999.999 AND LEN(OriginalQty)>0 

--WeeklyOriginalAmt
		insert into [dbo].[fact_ops]
		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,
		transaction_date,transaction_quantity,created_date_time,dim_ent_geac_coa_sk,dim_ent_geac_coa_nk)
		select dim_ent_function_sk,
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
			   dim_ent_data_sub_class_weekly_original_amt_sk,
		       dim_ent_data_sub_class_weekly_original_amt_nk,
			   dim_ent_data_class_amount_sk,
		       dim_ent_data_class_amount_nk,
			   dim_ent_sub_source_sk,
		       dim_ent_sub_source_nk,
			   dim_ent_source_sk,
		       dim_ent_source_nk,
			   dim_ent_unit_of_measure_amount_sk,
		       dim_ent_unit_of_measure_amount_nk,
			   convert(datetime,left(CutOff,19)),
			   convert(float,OriginalAmt),
			   load_date_time,
			   dim_ent_geac_coa_sk,dim_ent_geac_coa_nk
			   from [gpd].[NCSA_MCPM_weekly_offshore]
		       where isnull(convert(float,OriginalAmt),-999.999) <> -999.999 AND LEN(OriginalAmt)>0

---------------------------------------


		
	truncate table [gpd].[NCSA_MCPM_weekly_offshore]

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
			-- raise exception if any errors
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
end;		
GO


