/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_HDMS_Progress_fact_load]    Script Date: 2/21/2023 4:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[load_NCSA_fact_HDMS_Progress_fact_load] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int

/***********************************************************
Date			Developer			Change

02/16/2023		Abhijit				Initial Version


***********************************************************/

	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


		
		--Inserting Good records to Fact Table
		INSERT into [dbo].[fact_ops_hdms_progress]
	([dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk],[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk], [dim_ent_data_sub_class_sk] ,[dim_ent_data_sub_class_nk],progress_date,transaction_quantity,created_date_time)
	select [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk],progress_date,Units,load_date_time
	from 
	(SELECT
		[dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk]
		,
		convert(datetime,left(progress_date,19)) as progress_date,
		sum(convert(float,Progress)) over ( partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk],progress_date) as Units,
		row_number() over (partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_progress_percentage_sk] ,[dim_ent_progress_percentage_nk],progress_date order by stage_ncsa_hdms_progress_id) as sl_no,
		load_date_time
		FROM [gpd].[NCSA_HDMS_Progress]
		WHERE --isnull(convert(float,OBQty),0) <> 0 
		isnull(convert(float,Progress),-999.999) <> -999.999 AND LEN(Progress)>0 --Check for NULL and Empty fact entries.
		) x
		where sl_no=1

		INSERT into [dbo].[fact_ops_hdms_progress]
	([dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk],[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk], [dim_ent_data_sub_class_sk] ,[dim_ent_data_sub_class_nk],progress_date,transaction_quantity,created_date_time)
		select [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk],
	progress_date,Units,load_date_time
	from (
	SELECT [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk] 
		,
		convert(datetime,left(progress_date,19)) as progress_date,
		sum(convert(float,Previous_Progress)) over ( partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk],progress_date) as Units,
		row_number() over (partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_percentage_sk] ,[dim_ent_data_class_percentage_nk],[dim_ent_previous_progress_percentage_sk] ,[dim_ent_previous_progress_percentage_nk],progress_date order by stage_ncsa_hdms_progress_id) as sl_no,
		load_date_time
		FROM [gpd].[NCSA_HDMS_Progress]
		WHERE --isnull(convert(float,OBQty),0) <> 0 
		isnull(convert(float,Previous_Progress),-999.999) <> -999.999 AND LEN(Previous_Progress)>0 --Check for NULL and Empty fact entries.
		)x
		where sl_no=1

		INSERT into [dbo].[fact_ops_hdms_progress]
	([dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk],[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk], [dim_ent_data_sub_class_sk] ,[dim_ent_data_sub_class_nk],progress_date,transaction_quantity,created_date_time)
		select [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk],
	progress_date,Units,load_date_time
	from (
	SELECT [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk]
		,
		convert(datetime,left(progress_date,19)) as progress_date,
		sum(convert(float,CumEarned)) over ( partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk],[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk],progress_date) as Units,
		row_number() over (partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk],[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk],progress_date order by stage_ncsa_hdms_progress_id) as sl_no,
		load_date_time
		FROM [gpd].[NCSA_HDMS_Progress]
		WHERE --isnull(convert(float,OBQty),0) <> 0 
		isnull(convert(float,CumEarned),-999.999) <> -999.999 AND LEN(CumEarned)>0 --Check for NULL and Empty fact entries.
		)x
		where sl_no=1
		
		
		INSERT into [dbo].[fact_ops_hdms_progress]
	([dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk],[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk], [dim_ent_data_sub_class_sk] ,[dim_ent_data_sub_class_nk],progress_date,transaction_quantity,created_date_time)
		select [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],
	progress_date,Units,load_date_time
	from (
	SELECT [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk] ,[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk]
		,
		convert(datetime,left(progress_date,19)) as progress_date,
		sum(convert(float,Manhours)) over ( partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk],[dim_ent_cumulative_earned_hours_sk] ,[dim_ent_cumulative_earned_hours_nk],progress_date) as Units,
		row_number() over (partition by [dim_ent_project_sk] ,[dim_ent_project_nk] ,[dim_ent_function_sk] ,[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk] ,[dim_ent_source_sk] ,[dim_ent_source_nk] ,[dim_ent_sub_source_sk] ,[dim_ent_sub_source_nk] ,[dim_ent_system_sk] ,[dim_ent_system_nk] ,[dim_ent_subsystem_sk] ,[dim_ent_subsystem_nk] ,[dim_ent_task_sk] ,[dim_ent_task_nk] ,[dim_ent_campaign_sk] ,[dim_ent_campaign_nk] ,[dim_ent_miscellaneous_progress_sk] ,[dim_ent_miscellaneous_progress_nk] ,[dim_ent_data_class_sk] ,[dim_ent_data_class_nk],[dim_ent_man_hours_sk] ,[dim_ent_man_hours_nk],progress_date order by stage_ncsa_hdms_progress_id) as sl_no,
		load_date_time
		FROM [gpd].[NCSA_HDMS_Progress]
		WHERE --isnull(convert(float,OBQty),0) <> 0 
		isnull(convert(float,Manhours),-999.999) <> -999.999 AND LEN(Manhours)>0 --Check for NULL and Empty fact entries.
		)x
		where sl_no=1
	-----------------------------------------------------------------
	--Step 8: Cleanup Stage table. Report stats along with any error message
	-----------------------------------------------------------------

	--TRUNCATE TABLE [gpd].[NCSA_HDMS_Progress]



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



