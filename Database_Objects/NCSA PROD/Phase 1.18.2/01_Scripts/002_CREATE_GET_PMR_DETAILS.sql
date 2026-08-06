/****** Object:  StoredProcedure [dbo].[get_PMR_Email_details]    Script Date: 11/28/2023 11:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_PMR_Email_details] @load_name [varchar](1000),@file_name [varchar](1000) AS 

begin

begin try
	
	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	if (@load_name IS NULL OR @file_name IS NULL or @load_name='' or @file_name='')
		begin 
			set @errorMessage = 'Load name or File name is BLANK, pls check.'
			select '' as active,@errorMessage as errorMessage
		end
	ELSE
		begin
			select distinct 
			s.load_name as load_name,
			s.created_date_time as created_date_time,
			s.active as active,
			p.project_no as project_no,
			p.file_name as [file_name],
			p.processed_record_count as processed_record_count,
			p.error_record_count as error_record_count,
			e.email_id as email_id,
			p.zversion_no as version_no
			from [dbo].[json_load_stat] s
			left join [dbo].[json_load_status_project] p on (s.jls_id=p.jls_id)
			left join [dbo].[json_load_stat_emails] e on (e.jlsp_id=p.jlsp_id)
			where s.active=1 and s.load_name=@load_name and lower(ltrim(rtrim(p.[file_name])))=lower(ltrim(rtrim(@file_name)));
	
		END	
END TRY
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

end 