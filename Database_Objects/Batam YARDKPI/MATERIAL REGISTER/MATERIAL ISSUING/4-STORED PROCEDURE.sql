
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_yardKPI_material_issuing_dim_fact_load_validate] AS

begin
	begin try

		declare @error_message varchar(1000)
		declare @processed_count int
		declare @unprocessed_count  int

		declare @exceptionRaiser int;
		declare @errorMessage varchar(4000);

		set @processed_count=(select count(*) from yardkpi.stage_material_issuing_register)
		
		if @processed_count > 0 
			begin 
				DECLARE @Date DATETIME;
				SET @Date = GETDATE();

				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_yardkpi_mat_iss_project','Y','N','Y'
				
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_yardkpi_matisscontract','Y','N','Y'

				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_yardkpi_material_Issuing','Y','N','Y'

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


