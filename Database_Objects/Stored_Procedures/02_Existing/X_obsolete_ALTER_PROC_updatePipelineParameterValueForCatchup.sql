/****** Object:  StoredProcedure [dbo].[updatePipelineParameterValueForCatchup]    Script Date: 3/24/2021 4:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[updatePipelineParameterValueForCatchup] AS

begin
	-- declaration
	declare @pPipelineCode  varchar(120);
	declare @pPipelineSubCode varchar(24);
	declare @pParameterCode1 [varchar](120);
	declare @pParameterValue1 [varchar](5000);
	declare @pParameterCode2 [varchar](120);
	declare @pParameterValue2 [varchar](5000);
	declare @pParameterCode3 [varchar](120);
	declare @pParameterValue3 [varchar](5000);
	declare @pParameterCode4 [varchar](120);
	declare @pParameterValue4 [varchar](5000);
	declare @pParameterCode5 [varchar](120);
	declare @pParameterValue5 [varchar](5000);
	declare @lErrorId 			int;
	declare @lErrorMessage 		varchar(1000);
	declare @lResponse			varchar(max);
	declare @lCount int;

	begin try
		set @lErrorId = 0;
		set @lResponse = null;
		
		
		set @lCount = 0;
		select @lCount = count(*) from plp_parameter_catchup;
		if @lCount != 1
		begin
			set @lErrorId = 111;
			select @lErrorId, 'Parameter config is missing or count is more than one from plp_parameter_catchup';
		end;

		if @lErrorId = 0
		begin
			select	@pPipelineCode		= pipeline_code,
					@pPipelineSubCode   = pipeline_sub_code, 
					@pParameterCode1	= parameter_code1,
					@pParameterValue1	= parameter_value1,
					@pParameterCode2	= parameter_code2,
					@pParameterValue2	= parameter_value2,
					@pParameterCode3	= parameter_code3,
					@pParameterValue3	= parameter_value3,
					@pParameterCode4	= parameter_code4,
					@pParameterValue4	= parameter_value4,
					@pParameterCode5	= parameter_code5,
					@pParameterValue5	= parameter_value5
			from	plp_parameter_catchup;
		end;

		
		if @lErrorId = 0 and @pPipelineCode is null
		begin
			set @lErrorId = 333;
			select @lErrorId, 'Pipeline code must be specified.';
		end;
		
		if @lErrorId = 0 and @pPipelineSubCode is null
		begin
			set @lErrorId = 334;
			select @lErrorId, 'Pipeline Sub Code must be specified.';
		end;

		if @lErrorId = 0 and @pParameterCode1 is null
		begin
			set @lErrorId = 3;
			select @lErrorId, 'ParameterCode1 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterValue1 is null
		begin
			set @lErrorId = 4;
			select @lErrorId, 'ParameterValue1 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode2 is not null and @pParameterValue2 is null
		begin
			set @lErrorId = 5;
			select @lErrorId, 'ParameterValue2 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode2 is null and @pParameterValue2 is not null
		begin
			set @lErrorId = 6;
			select @lErrorId, 'ParameterCode2 must be specified.';
		end;

		if @lErrorId = 0 and @pParameterCode3 is not null and @pParameterValue3 is null
		begin
			set @lErrorId = 7;
			select @lErrorId, 'ParameterValue3 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode3 is null and @pParameterValue3 is not null
		begin
			set @lErrorId = 8;
			select @lErrorId, 'ParameterCode3 must be specified.';
		end;

		if @lErrorId = 0 and @pParameterCode4 is not null and @pParameterValue4 is null
		begin
			set @lErrorId = 9;
			select @lErrorId, 'ParameterValue4 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode4 is null and @pParameterValue4 is not null
		begin
			set @lErrorId = 10;
			select @lErrorId, 'ParameterCode4 must be specified.';
		end;

		if @lErrorId = 0 and @pParameterCode5 is not null and @pParameterValue5 is null
		begin
			set @lErrorId = 11;
			select @lErrorId, 'ParameterValue5 must be specified.';
		end;
		
		if @lErrorId = 0 and @pParameterCode5 is null and @pParameterValue5 is not null
		begin
			set @lErrorId = 12;
			select @lErrorId, 'ParameterCode5 must be specified.';
		end;

		
		if @lErrorId = 0
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal] @pParameterCode1, @pParameterValue1, ',', @lErrorId out, @lErrorMessage out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;
	
		if @lErrorId = 0
		begin
			if @pParameterCode2 is not null
			begin
				exec [updateIncrementPipelineParameterValueCatchUpInternal] @pParameterCode2, @pParameterValue2, ',', @lErrorId out, @lErrorMessage out;
				if @lErrorId != 0
				begin
					select @lErrorId, @lErrorMessage;
				end;
			end;
		end;

		if @lErrorId = 0
		begin
			if @pParameterCode3 is not null
			begin
				exec [updateIncrementPipelineParameterValueCatchUpInternal] @pParameterCode3, @pParameterValue3, ',', @lErrorId out, @lErrorMessage out;
				if @lErrorId != 0
				begin
					select @lErrorId, @lErrorMessage;
				end;
			end;
		end;
	
		if @lErrorId = 0
		begin
			if @pParameterCode4 is not null
			begin
				exec [updateIncrementPipelineParameterValueCatchUpInternal] @pParameterCode4, @pParameterValue4, ',', @lErrorId out, @lErrorMessage out;
				if @lErrorId != 0
				begin
					select @lErrorId, @lErrorMessage;
				end;
			end;
		end;

		if @lErrorId = 0
		begin
			if @pParameterCode5 is not null
			begin
				exec [updateIncrementPipelineParameterValueCatchUpInternal] @pParameterCode5, @pParameterValue5, ',', @lErrorId out, @lErrorMessage out;
				if @lErrorId != 0
				begin
					select @lErrorId, @lErrorMessage;
				end;
			end;
		end;

		declare @lOldValue1 varchar(max);
		declare @lOldValue2 varchar(max);
		declare @lOldValue3 varchar(max);
		declare @lOldValue4 varchar(max);
		declare @lOldValue5 varchar(max);

		set @lOldValue1 = null;
		set @lOldValue2 = null;
		set @lOldValue3 = null;
		set @lOldValue4 = null;
		set @lOldValue5 = null;

		if @lErrorId = 0
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode, @pPipelineSubCode, @pParameterCode1, @pParameterValue1, ',', @lErrorId out, @lErrorMessage out, @lOldValue1 out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;

		set @lOldValue2 = null;
		if @lErrorId = 0 and @pParameterCode2 is  not null
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode, @pPipelineSubCode,  @pParameterCode2, @pParameterValue2, ',', @lErrorId out, @lErrorMessage out, @lOldValue2 out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;

		set @lOldValue3 = null;
		if @lErrorId = 0 and @pParameterCode3 is  not null
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode, @pPipelineSubCode,  @pParameterCode3, @pParameterValue3, ',', @lErrorId out, @lErrorMessage out, @lOldValue3 out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;

		set @lOldValue4 = null;
		if @lErrorId = 0 and @pParameterCode4 is  not null
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode, @pPipelineSubCode,  @pParameterCode4, @pParameterValue4, ',', @lErrorId out, @lErrorMessage out, @lOldValue4 out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;

		set @lOldValue5 = null;
		if @lErrorId = 0 and @pParameterCode5 is  not null
		begin
			exec [updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode, @pPipelineSubCode,  @pParameterCode5, @pParameterValue5, ',', @lErrorId out, @lErrorMessage out, @lOldValue5 out;
			if @lErrorId != 0
			begin
				select @lErrorId, @lErrorMessage;
			end;
		end;

		if @lErrorId = 0
		begin
				select	@lErrorId 'error_id', 
						@lErrorMessage 'error_message', 
						@pParameterCode1 'parameter_code1', 
						@lOldValue1 'old_value1',
						@pParameterValue1 'new value1',
						@pParameterCode2 'parameter_code2', 
						@lOldValue2 'old_value2',
						@pParameterValue2 'new value2',
						@pParameterCode3 'parameter_code3', 
						@lOldValue3 'old_value3',
						@pParameterValue3 'new value3',
						@pParameterCode4 'parameter_code4', 
						@lOldValue4 'old_value4',
						@pParameterValue4 'new value4',
						@pParameterCode5 'parameter_code5', 
						@lOldValue5 'old_value5',
						@pParameterValue5 'new value5';						;
		end;

	end try
	begin catch
		select -1, 'Exception: from [updatePipelineParameterValueForCatchup]'+error_message(), null;
	end catch;
end;

