/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_resource_spread_fact_load]    Script Date: 10/19/2022 11:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[load_NCSA_fact_P6_resource_spread_fact_load] AS

begin
begin try
/***********************************************************
Date		Developer		Change Desc
07/26/2022	Abhijit			Initial Version

**********************************************************/

--Summarize the data based on Project,Activity, Data_sub_class and Period/Transaction date
IF OBJECT_ID(N'tempdb..#P6_resource_spread') IS NOT NULL
BEGIN
DROP TABLE #P6_resource_spread
END



select * INTO #P6_resource_spread from (
select dim_entp_function_sk,
		dim_entp_function_nk,
		dim_entp_project_sk,
		dim_entp_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_entp_work_unit_sk,
		dim_entp_work_unit_nk,
		dim_entp_work_area_sk,
		dim_entp_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_resource_sk,
		dim_entp_activity_resource_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_entp_data_sub_class_sk,
		dim_entp_data_sub_class_nk,
		dim_entp_data_class_sk,
		dim_entp_data_class_nk,
		dim_entp_sub_source_sk,
		dim_entp_sub_source_nk,
		dim_entp_source_sk,
		dim_entp_source_nk,
		dim_entp_unit_of_measure_sk,
		dim_entp_unit_of_measure_nk,
		dim_entp_planning_resource_sk,
		dim_entp_planning_resource_nk,
		--actual_units,
		--budgeted_units,
		--remaining_units,
		convert(date,Period) as transdate,       
		sum(convert(float,Units)) over (partition by project,Phase,[function],Activity_ID,resource_id, Spreadsheet_Field, period, dim_entp_data_sub_class_nk) as Units,
		row_number() over (partition by project,Phase,[function],Activity_ID,resource_id, Spreadsheet_Field, period,dim_entp_data_sub_class_nk order by stage_p6_engr_id) as sl_no,
		load_date_time	  
		from [gpd].[P6_resource_spread]
		WHERE 
				isnull(convert(float,Units),-999.999) <> -999.999 AND LEN(Units)>0 --Check for NULL and Empty fact entries.
	
) x
where sl_no = 1


--Inserting Good records to Fact Table	

Insert into [dbo].[fact_ops_planning]		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_resource_sk,dim_entp_activity_resource_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,dim_entp_planning_resource_sk,dim_entp_planning_resource_nk,transaction_date,transaction_quantity,created_date_time)
	select dim_entp_function_sk,
		dim_entp_function_nk,
		dim_entp_project_sk,
		dim_entp_project_nk,
		dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_entp_work_unit_sk,
		dim_entp_work_unit_nk,
		dim_entp_work_area_sk,
		dim_entp_work_area_nk,
		dim_entp_cwp_sk,
		dim_entp_cwp_nk,
		dim_entp_schedule_resource_sk,
		dim_entp_schedule_resource_nk,
		dim_entp_activity_resource_sk,
		dim_entp_activity_resource_nk,
		dim_entp_iwp_sk,
		dim_entp_iwp_nk,
		dim_entp_pim_sk,
		dim_entp_pim_nk,
		dim_entp_roc_sk,
		dim_entp_roc_nk,
		dim_entp_data_sub_class_sk,
		dim_entp_data_sub_class_nk,
		dim_entp_data_class_sk,
		dim_entp_data_class_nk,
		dim_entp_sub_source_sk,
		dim_entp_sub_source_nk,
		dim_entp_source_sk,
		dim_entp_source_nk,
		dim_entp_unit_of_measure_sk,
		dim_entp_unit_of_measure_nk,
		dim_entp_planning_resource_sk,
		dim_entp_planning_resource_nk,
		--actual_units,
		--budgeted_units,
		--remaining_units,
		transdate,        
		Units, 
		load_date_time
		from #P6_resource_spread
 
		

--Cleanup the data in the stage and temp tables

	TRUNCATE TABLE [gpd].[P6_resource_spread]

	IF OBJECT_ID(N'tempdb..#P6_resource_spread') IS NOT NULL
	BEGIN
	DROP TABLE #P6_resource_spread
	END
	
end try

-- CATCH Logic and raise error in case DB issues.

begin catch

---- CATCH Logic and raise error in case DB issues.
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

end catch;
end;

