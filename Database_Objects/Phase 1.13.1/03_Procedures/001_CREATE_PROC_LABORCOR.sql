/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Offshore_LaborCorrection]    Script Date: 1/12/2023 11:31:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_MCPM_Offshore_LaborCorrection] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);
	
		/***********************************************************
Date			Developer			Change
01/11/2023		Abhijit				Per requirement, Implemented direct load of stg table columns for MCPM Offshore FACT Labor Correction Load

***********************************************************/

set @processed_count=(select count(*) from gpd.ncsa_mcpm_laborcorrection)


if @processed_count > 0 
	begin 
		DECLARE @Date DATETIME;
	SET @Date = GETDATE();

	UPDATE [gpd].[ncsa_mcpm_laborcorrection]
	set load_date_time = @Date

		INSERT into [dbo].[fact_mcpm_offshore_laborcorrection]
	([PrimKey] ,[Created] ,[CreatedBy] ,[Updated] ,[UpdatedBy] ,[CUT] ,[CDL] ,[Domain] ,[ContractNo] ,[Entity] ,[CostType] ,[WorkArea] ,[CostCode] ,[ActivityCode] ,[TimesheetDate] ,[EmployeeNo] ,[HoursBooked] ,[NewWorkPackID] ,[NewActivityCode] ,[NewHoursBooked] ,[created_date_time])
	SELECT [PrimKey]
,[Created]
,[CreatedBy]
,[Updated]
,[UpdatedBy]
,[CUT]
,[CDL]
,[Domain]
,[ContractNo]
,[Entity]
,[CostType]
,[WorkArea]
,[CostCode]
,[ActivityCode]
,[TimesheetDate]
,[EmployeeNo]
,[HoursBooked]
,[NewWorkPackID]
,[NewActivityCode]
,[NewHoursBooked]
,[load_date_time]
		from gpd.ncsa_mcpm_laborcorrection
	end
else
	begin 
	set @unprocessed_count=0
	end

	


	-----------------------------------------------------------------
	--Step 8: Cleanup Stage table. Report stats along with any error message
	-----------------------------------------------------------------

	--TRUNCATE TABLE [gpd].[ncsa_mcpm_laborcorrection]



	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
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


