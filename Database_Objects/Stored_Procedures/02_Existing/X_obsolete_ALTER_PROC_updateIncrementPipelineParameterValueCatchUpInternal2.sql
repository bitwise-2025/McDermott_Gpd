/****** Object:  StoredProcedure [dbo].[updateIncrementPipelineParameterValueCatchUpInternal2]    Script Date: 3/24/2021 4:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[updateIncrementPipelineParameterValueCatchUpInternal2] @pPipelineCode varchar(120), @pPipelineSubCode varchar(24), @pParameterCode [varchar](120),@pParameterValue [varchar](5000),@pParameterValueDelimiter [varchar](1),@pErrorId [int] OUT,@pErrorMessage [varchar](500) OUT,@pOldValues [varchar](500) OUT AS
begin
	begin try
		select @pErrorId = 0;
		select @pOldValues = null;

		begin try
			drop table #old;
		end try
		begin catch
			;
		end catch;

		begin try
			drop table #pvt;
		end try
		begin catch
			;
		end catch;

		-- old values
		create table #old (id int, pv varchar(5000));
			
		insert into #old (id, pv)
		select	row_number() over(order by parameter_value),
				parameter_value
		from	plp_parameter_value
		where	parameter_code = @pParameterCode
		and		(pipeline_code = @pPipelineCode or pipeline_code is null)
		and     (pipeline_sub_code = @pPipelineSubCode or pipeline_sub_code is null)
		and		active = 1;

		declare @maxRowId int;
		select @maxRowId = count(*) from #old;
		declare @rowId int = 1;
		while @rowId <= @maxRowId
		begin
			declare @tempString varchar(5000);
			select @tempString = pv from #old where id = @rowId;
				
			if @pOldValues is null 
			begin
				select @pOldValues = @tempString;
			end
			else
			begin
				select @pOldValues = @pOldValues + isnull(@pParameterValueDelimiter, ',') + @tempString;
			end;
			set @rowId = @rowId + 1;
		end;

		-- new values
		create table #pvt (pv varchar(5000));
		insert into #pvt (pv) select value from string_split(@pParameterValue, isnull(@pParameterValueDelimiter, ','));

		declare @date date = getdate();
			
		delete from plp_parameter_value 
		where parameter_code = @pParameterCode
		and (pipeline_code = @pPipelineCode or pipeline_code is null)
		and (pipeline_sub_code = @pPipelineSubCode or pipeline_sub_code is null);
		
		insert into plp_parameter_value (parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
		select  @pParameterCode, ltrim(trim(pv)), 1, 'system', @date, @pPipelineCode, @pPipeLineSubCode
		from #pvt;

		select @pErrorId = 0;
		select @pErrorMessage = 'Success';
	end try
	begin catch
		select @pErrorId = -1;
		select @pErrorMessage = 'Exception from [updateIncrementPipelineParameterValueCatchUpInternal2]: '+error_message();
	end catch;
end;

