/****** Object:  StoredProcedure [dbo].[usp_dimentional_control_yardkpi_dim_load]    Script Date: 11/6/2023 11:56:00 AM ******/

DROP PROC [dbo].[usp_dimentional_control_yardkpi_dim_load]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_dimentional_control_yardkpi_dim_load] AS

begin
	begin try

		declare @error_message varchar(1000)
		declare @processed_count int
		declare @unprocessed_count  int

		declare @exceptionRaiser int;
		declare @errorMessage varchar(4000);

		set @processed_count=(select count(*) from yardkpi.stage_dc_survey_register)

		if @processed_count > 0 
			begin 
				DECLARE @Date DATETIME;
				SET @Date = GETDATE();

				delete from yardkpi.stage_dc_survey_register where report_number ='' or dc_function =''
				-- Weightage conversion Null to 0 for PowerBI

				update yardkpi.stage_dc_survey_register
				set weightage = '0'
					where weightage = ''


				-- Date conversion to MM/DD/YYYY for PowerBI

				update yardkpi.stage_dc_survey_register
				set date_inspect = convert(varchar ,  (case
						when ISDATE (date_inspect)=1
						then convert(datetime, date_inspect)
						else null end) ,  101 ),
					date_report = convert(varchar ,  (case
						when ISDATE (date_report)=1
						then convert(datetime, date_report)
						else null end) ,  101 ),
					date = convert(varchar ,  (case
						when ISDATE (date)=1
						then convert(datetime, date)
						else null end) ,  101 ),
					date_request = convert(varchar ,  (case
						when ISDATE (date_request)=1
						then convert(datetime, date_request)
						else null end) ,  101 )

				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_project_yardkpi_dc_srv_reg','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_contract_yardkpi_dc_srv_reg','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_yardkpi_dc_srv_reg','Y','N','Y'

			end
		else
			begin 
				set @unprocessed_count=0
			end
			-----------------------------------------------------------------
			--Cleanup Stage table. Report stats along with any error message
			-----------------------------------------------------------------


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



