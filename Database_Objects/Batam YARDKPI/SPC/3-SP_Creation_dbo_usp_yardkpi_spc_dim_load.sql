SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_yardkpi_spc_dim_load] AS

begin
	begin try

		declare @error_message varchar(1000)
		declare @processed_count int
		declare @unprocessed_count  int

		declare @exceptionRaiser int;
		declare @errorMessage varchar(4000);

		set @processed_count=(select count(*) from [yardkpi].[stage_entp_spc_progress])

		if @processed_count > 0 
			begin 
				DECLARE @Date DATETIME;
				SET @Date = GETDATE();

				update yardkpi.stage_entp_spc_progress
				set [ESTIMATEDMANHOURS_str] = '0'
				where [ESTIMATEDMANHOURS_str] = ''

				update yardkpi.stage_entp_spc_progress
				set [PLANNEDMANHOURS_str] = '0'
				where [PLANNEDMANHOURS_str] = ''

				update yardkpi.stage_entp_spc_progress
				set [ACTUALMANHOURS_str] = '0'
				where [ACTUALMANHOURS_str] = ''

				update yardkpi.stage_entp_spc_progress
				set [COMPLETEDMANHOURS_str] = '0'
				where [COMPLETEDMANHOURS_str] = ''

				update yardkpi.stage_entp_spc_progress
				set [ESTIMATEDMANHOURS] = CAST([ESTIMATEDMANHOURS_str] AS DECIMAL(25,18))

				update yardkpi.stage_entp_spc_progress
				set [PLANNEDMANHOURS] = CAST([PLANNEDMANHOURS_str] AS DECIMAL(25,18))

				update yardkpi.stage_entp_spc_progress
				set [ACTUALMANHOURS] = CAST([ACTUALMANHOURS_str] AS DECIMAL(25,18))

				update yardkpi.stage_entp_spc_progress
				set [COMPLETEDMANHOURS] = CAST([COMPLETEDMANHOURS_str] AS DECIMAL(25,18))

				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_project','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_discipline','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_status','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_jobno','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_entp_project','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_ent_contract','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_progress','Y','N','Y'
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
