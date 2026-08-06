/****** Object:  StoredProcedure [dbo].[updateIncrementPipelineParameterValue]    Script Date: 4/22/2021 4:18:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[updateIncrementPipelineParameterValue] @pPipelineCode [varchar](120),@pPipelineSubCode [varchar](24),@pParameterCode [varchar](120),@pParameterValue [varchar](5000) AS
begin
	-- declaration
	declare @lErrorId 			int;
	declare @lErrorMessage 		varchar(1000);
	declare @lResponse			varchar(max);

	begin try
		set @lErrorId = 0;
		set @lResponse = null;
		
		if @pPipelineCode is null
		begin
			set @lErrorId = 1;
			select @lErrorId, 'Pipline code must be specified';
		end;
		
		if @lErrorId = 0 and @pPipelineSubCode is null
		begin
			set @lErrorId = 2;
			select @lErrorId, 'Pipeline subcode must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode is null
		begin
			set @lErrorId = 3;
			select @lErrorId, 'Parameter Code must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterValue is null
		begin
			set @lErrorId = 4;
			select @lErrorId, 'Parameter value must be specified.';
		end;
		
		if @lErrorId = 0
		begin
			declare @parameterCode varchar(48) = null;
	
			select @parameterCode = parameter_code
			from plp_pipeline_parameter b 
			where b.pipeline_code = @pPipelineCode 
			and b.pipeline_sub_code = @pPipelineSubCode
			and b.parameter_code = @pParameterCode 
			and b.active = 1 
			and exists (	select 1 
					from plp_parameter a 
					where a.parameter_code = b.parameter_code
					and a.parameter_type_code = 'PIPELINE_INCREMENTAL'
					and a.active = 1);

			if @parameterCode is null
			begin
				set @lErrorId = 5;
				select @lErrorId, 'Not able to find the combination of pipeline code, pipeline subcode and source column name';  
			end;
		end;

		if @lErrorId = 0
		begin
			declare @parameterDataType varchar(2);
			declare @parameterSize int;

			select 	@parameterDataType = parameter_data_type,
					@parameterSize = parameter_size
			from	plp_parameter
			where	parameter_code = @parameterCode;
			
			if @parameterDataType = 'D'
			begin
				begin try
					declare @tempDate date = ltrim(rtrim(@pParameterValue));
				end try
				begin catch 
					set @lErrorId = 6;
					select @lErrorId, 'Error Message: Parameter value must be DATE';
				end catch;
			end;

			else if @parameterDataType = 'DT'
			begin
				begin try
					declare @tempDateTime datetime = ltrim(rtrim(@pParameterValue));
				end try
				begin catch 
					set @lErrorId = 7;
					select @lErrorId, 'Error Message: Parameter value must be DATETIME';
				end catch;
			end
			else if @parameterDataType = 'N'
			begin
				begin try
					declare @tempNumber float = ltrim(rtrim(@pParameterValue));
				end try
				begin catch 
					set @lErrorId = 8;
					select @lErrorId, 'Error Message: Parameter value must be NUMBER';
				end catch
			end;
		end;

		
		if @lErrorId = 0
		begin
			if @parameterSize is not null and len(trim(@pParameterValue)) > @parameterSize 				
			begin
				set @lErrorId = 9;
				select @lErrorId, 'Error Message: Max size violation';
			end;
		end;

		if @lErrorId = 0
		begin			
			update plp_parameter_value
			set parameter_value = ltrim(rtrim(@pParameterValue))
			where parameter_code = @parameterCode
			and (pipeline_code = @pPipelineCode or pipeline_code is null) 
			and (pipeline_sub_code = @pPipelineSubCode or pipeline_sub_code is null);

			select 0, 'Success';
		end;
	end try
	begin catch
		select -1, 'Exception: '+error_message(), null;
	end catch;
end;

GO


