/****** Object:  StoredProcedure [dbo].[usp_yardkpi_detailing_engineering_fact_load]    Script Date: 9/29/2022 4:34:04 PM ******/

DROP PROC [dbo].[usp_yardkpi_detailing_engineering_fact_load]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_yardkpi_detailing_engineering_fact_load] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

/***********************************************************
	Date			Developer			Change
	09/26/2022		Ajmal Usman				
										
***********************************************************/
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- Interfering with SELECT statements.

    SET NOCOUNT ON

	DECLARE @MaxLoadDateCost DATETIME 	
	DECLARE @DateKey DATETIME = GETDATE()

	SET @MaxLoadDateCost = (SELECT ISNULL(MAX(created_date_time),'1900-01-01 00:00:00.000') FROM dbo.fact_yardkpi_detailing_engineering_data)
	DELETE FROM [dbo].[fact_yardkpi_detailing_engineering_data] WHERE created_date_time >@MaxLoadDateCost

----------------------------------------------------------------------------------------------------------
---[dbo].[fact_yardkpi_detailing_engineering_data] fact load
----------------------------------------------------------------------------------------------------------

	INSERT INTO [dbo].[fact_yardkpi_detailing_engineering_data]
	(
	  dim_entp_yardkpi_detailing_engineering_nk
	, cutoff_date
	, ROS_IFC_Drawing_receive_by_Detailing_team
	, Complete_issuance_Shop_Drawing_by_Detailing_team
	, qty
	, detailing_start
	, detailing_finish
	, manhour, progress
	, plan_progress, earned
	, [plan]
	, variance
	, total
	, cek
	, created_date_time
	)
	SELECT 
		 dimv.dim_entp_yardkpi_detailing_engineering_nk
		,convert(date,cutoff_date)
		,convert(date,ROS_IFC_Drawing_receive_by_Detailing_team)
		,convert(date,Complete_issuance_Shop_Drawing_by_Detailing_team)
		,case when isnumeric(qty) = 1 then convert(money, qty) else 0 end
		,convert(date,detailing_start)
		,convert(date,detailing_finish)
		,case when isnumeric(manhour) = 1 then convert(money, manhour) else 0 end
		,case when isnumeric(progress) = 1 then convert(money, progress) else 0 end
		,case when isnumeric(plan_progress) = 1 then convert(money, plan_progress) else 0 end
        ,case when isnumeric(earned) = 1 then convert(money, earned) else 0 end
        ,case when isnumeric([plan]) = 1 then convert(money, [plan]) else 0 end
        ,case when isnumeric(variance) = 1 then convert(money, variance) else 0 end
        ,case when isnumeric(total) = 1 then convert(money, total) else 0 end
		,cek
		,@DateKey
	FROM 
		[yardkpi].[stage_fact_yardkpi_detailing_activity_v] stgv
    INNER JOIN 
		[dbo].[dim_entp_yardkpi_detailing_engineering_v] dimv
	ON
		stgv.project = dimv.project
	AND stgv.activity_id = dimv.activity_id

----------------------------------------------------------------------------------------------------------
--[dbo].[fact_yardkpi_detailing_engineering_plan]  fact load
----------------------------------------------------------------------------------------------------------
	INSERT INTO [dbo].[fact_yardkpi_detailing_engineering_plan]
	(
	  dim_entp_yardkpi_detailing_engineering_nk
	, [cutoff_date]
	, [date]
	, [plans]
	, [created_date_time]
	)
	SELECT 
		 dimv.dim_entp_yardkpi_detailing_engineering_nk
		,convert(date,cutoff_date)
		,convert(date,[date])
		,case when isnumeric([plans]) = 1 then convert(money, [plans]) else 0 end
		,@DateKey
	FROM 
		[yardkpi].[stage_fact_yardkpi_detailing_plan_v] stgv
    INNER JOIN 
		[dbo].[dim_entp_yardkpi_detailing_engineering_v] dimv
	ON
		stgv.project = dimv.project
	AND stgv.activity_id = dimv.activity_id

-----------------------------------------------------------------------------------------
-- To populate reprocess history for fact table
----------------------------------------------------------------------------------------
--	1) Add parent_rssk null field in stage table
--	2) Add parent_rssk, rssk null fields in reprocess table
--	3) Add details in plp_pipeline_details with pipeline_code= <master pipeline name>
--	4) Execute Stored procedure populate_reprocess_history
--		Exec populate_reprocess_history '<pipeline_code>', '<stage_table_name>', '<reprocessing_table_name>', '<target_table_name>','rssk';
-----------------------------------------------------------------------------------------
	exec populate_reprocess_history 'pl_yardkpi_detailing_engineering_excel_master', 'yardkpi.stage_fact_yardkpi_detailing_activity_v', 'yardkpi.reprocess_fact_yardkpi_detailing_activity', 'dbo.fact_yardkpi_detailing_engineering_data','rssk';
	exec populate_reprocess_history 'pl_yardkpi_detailing_engineering_excel_master', 'yardkpi.stage_fact_yardkpi_detailing_plan_v', 'yardkpi.reprocess_fact_yardkpi_detailing_plan', 'dbo.fact_yardkpi_detailing_engineering_plan','rssk';
----------------------------------------------------------------------------------------
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

