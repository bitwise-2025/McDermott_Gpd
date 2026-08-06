/****** Object:  StoredProcedure [dbo].[getPipelineParametersValues]    Script Date: 3/24/2021 3:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[getPipelineParametersValues] @pPipelineCode [varchar](120),@pPipeLineSubCode [varchar](24) AS
begin
	-- declaration
	declare @lErrorId 			int;
	declare @lErrorMessage 		varchar(1000);
	declare @lResponse		varchar(max);
	
	begin try
		set @lErrorId = 0;
		set @lResponse = null;
		
		if @pPipeLineCode is null
		begin
			set @lErrorId = 1;
			select @lErrorId error_id, 'Error Message: The parameter pPipeLineCode must be specified' error_message, null where_condition;
		end;

		if not exists (select 1 from plp_pipeline where pipeline_code = @pPipelineCode) 
		begin
			set @lErrorId = 2;
			select @lErrorId error_id, 'Error Message: The give pPipelineCode '+@pPipelineCode+'  not found' error_message, null where_condition;
		end;

		if not exists (select 1 from plp_pipeline where pipeline_code = @pPipelineCode and active = 1) 
		begin
			set @lErrorId = 3;
			select @lErrorId error_id, 'Error Message: The give pPipelineCode '+@pPipelineCode+'  not found as active' error_message, null where_condition;
		end;
			
		if not exists (select 1 from plp_pipeline_parameter where pipeline_code = @pPipelineCode and active = 1)
		begin
			set @lErrorId = 4;
			select @lErrorId error_id, 'success' error_message, null where_condition;
		end;

		if @lErrorId = 0
		begin
			begin try
				drop table #tt;
			end try
			begin catch
				;
			end catch;

			-- creating template table for header
			create table #tt ( 	tt_sk 			int, 
						parameter_code		varchar(120),
						parameter_type_code	varchar(24),
						parameter_data_type	varchar(2),
						parameter_size		int,
						source_column_name	varchar(48),
						source_operator		varchar(24));

			-- getting all the parameters for the passed pipe line code
			insert into #tt (	tt_sk,
						parameter_code,
						parameter_type_code,
						parameter_data_type,
						parameter_size,
						source_column_name,
						source_operator)
			select 	row_number() over(order by c.parameter_code),
				c.parameter_code,
				c.parameter_type_code,
				c.parameter_data_type,
				c.parameter_size,
				replace(b.source_column_name, '''', ''''''),
				b.source_operator
			from 	plp_pipeline a,
				plp_pipeline_parameter b,
				plp_parameter c
			where	a.pipeline_code = @pPipelineCode
			and	a.pipeline_code = b.pipeline_code
			and	b.parameter_code  = c.parameter_code
			and	b.pipeline_sub_code = @pPipeLineSubCode
			and	a.active	= 1
			and	b.active	= 1
			and	c.active	= 1;

			begin try
				drop table #ttd;
			end try
			begin catch
				;
			end catch;

			-- creating a temp table to hold parameter values for all the parameters
			create table #ttd (ttd_sk			int,
					   parameter_code		varchar(120),
					   parameter_value		varchar(5000));
			
			-- getting the values for all the parameters of the passed pipe line code
			insert into #ttd (	ttd_sk,
						parameter_code,
						parameter_value)
			select 	row_number() over (order by parameter_code), 
				parameter_code,
				replace(parameter_value,'''', '''''')
			from	plp_parameter_value
			where	parameter_code in (select parameter_code from #tt)
			and		(pipeline_code  = @pPipelineCode or pipeline_code is null)
			and     (pipeline_sub_code = @pPipeLineSubCode or pipeline_sub_code is null)
			and		active = 1;
			
			declare @tt_sk int;
			declare @parameterCode varchar(120);
			declare @parameterTypeCode varchar(24);
			declare @parameterDataType varchar(2);
			declare @parameterSize int;
			declare @sourceColumnName varchar(48);
			declare @sourceOperator varchar(24);
			
			-- getting the total number of records information
			declare @maxRowId int;
			select @maxRowId = count(*) from #tt;

			-- getting the total number of records
			declare @maxRowIdD int;
			select @maxRowIdD = count(*) from #ttd;
			declare @currentRowIdD int;
		
			
			declare @whereCondition varchar(max);
			set @lResponse = 'select 0 error_id, ''success'' error_message ';
			
			-- first loop
			declare @currentRowId int = 1;
			
			while @currentRowId <= @maxRowId
			begin
				select 	@tt_sk = tt_sk,
						@parameterCode = parameter_code,
						@parameterTypeCode = parameter_type_code,
						@parameterDataType = parameter_data_type,
						@parameterSize = parameter_size,
						@sourceColumnName = source_column_name,
						@sourceOperator = source_operator
				from	#tt
				where	tt_sk = @currentRowId;		
								
				-- inner loop
				declare @parameterCodeD varchar(120);
				declare @parameterValue varchar(5000);
				declare @lTempParameterValue varchar(5000) = '';
				declare @lTempParameterValue2 varchar(5000) = '';
				declare @matchCount int = 0;

				set @currentRowIdD = 1;
				
				while @currentRowIdD <= @maxRowIdD
				begin
					select 	@parameterCodeD = parameter_code,
							@parameterValue = parameter_value
					from #ttd
					where ttd_sk = @currentRowIdD;
					
					if @parameterCodeD = @parameterCode
					begin
						if @matchCount > 0
						begin
							set @lTempParameterValue = @lTempParameterValue + ',';
							set @lTempParameterValue2 = @lTempParameterValue2 + ',';
						end;

						if @parameterDataType = 'N'
						begin
							set @lTempParameterValue = @lTempParameterValue + trim(isnull(@parameterValue, ''));
							set @lTempParameterValue2 = @lTempParameterValue2 + trim(isnull(@parameterValue, ''));
						end
						/*
						else if @parameterDataType = 'DT'
						begin
							set @lTempParameterValue = @lTempParameterValue + 'cast('''''+trim(isnull(@parameterValue, ''))+''''' as datetime)';
						end
						else if @parameterDataType = 'D'
						begin
							set @lTempParameterValue = @lTempParameterValue + 'cast('''''+trim(isnull(@parameterValue, ''))+''''' as date)';
						end
						else
						begin
							set @lTempParameterValue = @lTempParameterValue + ''''''+trim(isnull(@parameterValue, ''))+'''''';
						end
						*/
						else
						begin
							set @lTempParameterValue = @lTempParameterValue + trim(isnull(@parameterValue, ''));
							set @lTempParameterValue2 = @lTempParameterValue2 + ''''''+trim(isnull(@parameterValue, ''))+'''''';
						end

						set @matchCount = @matchCount + 1;
					end;

					set @currentRowIdD = @currentRowIdD + 1;
				end; -- end of inner loop

				if @matchCount > 0
				begin
					
					set @lResponse = @lResponse + ',';
					set @lResponse = @lResponse + '''';
					set @lResponse = @lResponse + @lTempParameterValue;

					set @lResponse = @lResponse + '''';
					set @lResponse = @lResponse +' ';
					set @lResponse = @lResponse + @parameterCode;

					if @currentRowId > 1
					begin
						-- handling from second parameter
						set @whereCondition = @whereCondition + ' and ';
					end;
					
					set @whereCondition = isnull(@whereCondition, ' ') + @sourceColumnName;
					set @whereCondition = @whereCondition + ' '+@sourceOperator+' (';
					set @whereCondition = @whereCondition + @lTempParameterValue2;
					set @whereCondition = @whereCondition + ')';
				end;

				set @currentRowId = @currentRowId + 1;
			end;
			set @lResponse = @lResponse + ','''+isnull(@whereCondition, 'null') + ''' where_condition, getdate() run_start_datetime ';
--select @lResponse;

			exec (@lResponse);
			
		end;
	end try
	begin catch
		select -1 error_id, 'Exception: '+error_message() error_message, null where_condition;
	end catch;
end;

