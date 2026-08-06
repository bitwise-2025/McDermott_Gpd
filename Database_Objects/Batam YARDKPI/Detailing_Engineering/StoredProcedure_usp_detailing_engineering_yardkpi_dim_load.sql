/****** Object:  StoredProcedure [dbo].[usp_detailing_engineering_yardkpi_dim_load]    Script Date: 12/4/2023 11:04:24 AM ******/

DROP PROC [dbo].[usp_detailing_engineering_yardkpi_dim_load]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_detailing_engineering_yardkpi_dim_load] AS

begin
	begin try

		declare @error_message varchar(1000)
		declare @processed_count int
		declare @unprocessed_count  int

		declare @exceptionRaiser int;
		declare @errorMessage varchar(4000);

		set @processed_count=(select count(*) from [yardkpi].[stage_detailing_engineering])

		if @processed_count > 0 
			begin 
				DECLARE @Date DATETIME;
				SET @Date = GETDATE();

				delete from [yardkpi].[stage_detailing_engineering]
					where activity_id='Activity ID' or project = 'Project'

				delete from [yardkpi].[stage_detailing_engineering]
					Where isnull(activity_id,'') =''  or isnull(project, '') = ''

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE(cutoff_date) <> 1 
					and cutoff_date IS NOT NULL 

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE(ROS_IFC_Drawing_receive_by_Detailing_team) <> 1 
					and ROS_IFC_Drawing_receive_by_Detailing_team IS NOT NULL 
					and ROS_IFC_Drawing_receive_by_Detailing_team != ''

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE(Complete_issuance_Shop_Drawing_by_Detailing_team) <> 1 
					and Complete_issuance_Shop_Drawing_by_Detailing_team IS NOT NULL
					and Complete_issuance_Shop_Drawing_by_Detailing_team != ''

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE(detailing_start) <> 1 
					and detailing_start IS NOT NULL
					and detailing_start != ''

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE(detailing_finish) <> 1
					and detailing_finish IS NOT NULL
					and detailing_finish != ''

				delete from [yardkpi].[stage_detailing_engineering]
					where ISDATE([date]) <> 1 
					and [date] IS NOT NULL
					and [date] != ''

				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_project_yardkpi_det_eng','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_ent_contract_yardkpi_det_eng','Y','N','Y'
				EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_yardkpi_detailing_engineering','Y','N','Y'

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


