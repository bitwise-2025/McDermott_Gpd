/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_engr_headcount_fact_load]    Script Date: 4/6/2022 3:50:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_P6_engr_headcount_fact_load] AS

begin
begin try
/***********************************************************
Date		Developer		Change Desc
01/28/2022	Satish			Initial Version

**********************************************************/

--Summarize the data based on Project,Activity, Data_sub_class and Period/Transaction date
IF OBJECT_ID(N'tempdb..#P6_engineering_fcst_summary') IS NOT NULL
BEGIN
DROP TABLE #P6_engineering_fcst_summary
END


select * INTO #P6_engineering_fcst_summary from (
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
		dim_entp_activity_sk,
		dim_entp_activity_nk,
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
		convert(datetime,Period) as transdate,       
		sum(convert(float,Units)) over (partition by project,Activity_ID, Spreadsheet_Field, period) as Units,
		row_number() over (partition by project,Activity_ID, Spreadsheet_Field, period order by stage_p6_engr_id) as sl_no,
		load_date_time	  
		from [gpd].[P6_engr_headcount_forecast]
		WHERE 
				isnull(convert(float,Units),-999.999) <> -999.999 AND LEN(Units)>0 --Check for NULL and Empty fact entries.
) x
where sl_no = 1;


--Inserting Good records to Fact Table	

Insert into [dbo].[fact_ops]		(dim_entp_function_sk,dim_entp_function_nk,dim_entp_project_sk,dim_entp_project_nk,dim_entp_phase_sk,dim_entp_phase_nk,dim_entp_work_unit_sk,dim_entp_work_unit_nk,dim_entp_work_area_sk,dim_entp_work_area_nk,dim_entp_cwp_sk,dim_entp_cwp_nk,dim_entp_schedule_resource_sk,dim_entp_schedule_resource_nk,dim_entp_activity_sk,dim_entp_activity_nk,dim_entp_iwp_sk,dim_entp_iwp_nk,dim_entp_pim_sk,dim_entp_pim_nk,dim_entp_roc_sk,dim_entp_roc_nk,dim_entp_data_sub_class_sk,dim_entp_data_sub_class_nk,dim_entp_data_class_sk,dim_entp_data_class_nk,dim_entp_sub_source_sk,dim_entp_sub_source_nk,dim_entp_source_sk,dim_entp_source_nk,dim_entp_unit_of_measure_sk,dim_entp_unit_of_measure_nk,transaction_date,transaction_quantity,created_date_time)
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
		dim_entp_activity_sk,
		dim_entp_activity_nk,
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
		transdate,        
		Units, 
		load_date_time
		from #P6_engineering_fcst_summary
 
		

--Cleanup the data in the stage and temp tables

	TRUNCATE TABLE [gpd].[P6_engr_headcount_forecast]

	IF OBJECT_ID(N'tempdb..#P6_engineering_fcst_summary') IS NOT NULL
	BEGIN
	DROP TABLE #P6_engineering_fcst_summary
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

GO


