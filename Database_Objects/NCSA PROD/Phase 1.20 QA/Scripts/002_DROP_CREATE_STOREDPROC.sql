drop procedure [dbo].[generic_json_validator]
go
drop procedure [dbo].[get_PMR_ErrorViewResults]
go
drop procedure [dbo].[get_PMR_Email_details]
go

/****** Object:  StoredProcedure [dbo].[generic_json_validator]    Script Date: 4/2/2024 4:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[generic_json_validator] @p_load_name [varchar](500),@p_debug_flag [varchar](1),@p_delete_source_when_no_errors_flag [varchar](1),@p_error_id [int] OUT,@p_error_message [varchar](1000) OUT AS 

begin
begin try
	declare @stage int;
	set @p_error_id = 0;
	set @p_error_message = 'NO ERROR';

	set @stage = 1;
	declare @load_name varchar(5000);
	declare @load_description varchar(5000);
	declare @source_table_name varchar(5000);
	declare @target_view_name varchar(5000);
	declare @error_target_view_name varchar(5000);
	declare @error_column_not_configured varchar(1);

	set @stage = 2;

	if not exists (select 1 from generic_json_header where load_name = @p_load_name and active_flag = 'Y')
	begin
		set @p_error_id = 50001;
		set @p_error_message = 'GENERIC_JSON_HEADER record not found for load_name = '+@p_load_name;
		throw @p_error_id, @p_error_message, 1;
	end;


	set @stage = 3;

	if not exists (select 1 from generic_json_detail where load_name = @p_load_name and active_flag = 'Y')
	begin
		set @p_error_id = 50002;
		set @p_error_message = 'GENERIC_JSON_DETAIL record not found for load_name = '+@p_load_name;
		throw @p_error_id, @p_error_message, 1;
	end;

	set @stage = 4;
	-- getting theheader information
	select	@load_name = load_name,
			@load_description = load_description,
			@source_table_name = source_table_name,
			@target_view_name = target_view_name,
			@error_target_view_name = error_target_view_name,
			@error_column_not_configured = error_column_not_configured
	from	generic_json_header
	where	load_name = @p_load_name
	and		active_flag = 'Y';



	set @stage = 5;
	-- declaring a temp table to hold the details
	begin try
		drop table #generic_json_detail;
	end try
	begin catch
		;
	end catch;

	set @stage = 6;
	create table #generic_json_detail (
		t1_record_id						int,
		t1_json_column_name					varchar(5000) not null,
		t1_json_column_data_group			varchar(2) not null, -- V, N, D, DT
		t1_json_column_data_group_format	varchar(8000),
		t1_json_column_data_type			varchar(8000),
		t1_json_column_alias_name			varchar(8000),
		t1_email_indicator_flag				varchar(1),
		t1_file_name_indicator_flag			varchar(1),
		t1_project_no_indicator_flag		varchar(1),
		t1_zversion_no_indicator_flag		varchar(1));

	set @stage = 7;
	insert into #generic_json_detail (	t1_record_id,
										t1_json_column_name,
										t1_json_column_data_group,
										t1_json_column_data_group_format,
										t1_json_column_data_type,
										t1_json_column_alias_name,
										t1_email_indicator_flag,
										t1_file_name_indicator_flag,
										t1_project_no_indicator_flag,
										t1_zversion_no_indicator_flag)
	select  row_number() over(order by gjd_id),
			json_column_name,
			json_column_data_group,
			json_column_data_group_format,
			json_column_data_type,
			json_column_alias_name,
			email_indicator_flag,
			file_name_indicator_flag,
			project_no_indicator_flag,
			zversion_no_indicator_flag
	from generic_json_detail
	where load_name = @load_name
	and active_flag = 'Y';

	set @stage = 71;
	declare @column_name_email varchar(500);
	declare @column_name_file_name varchar(500);
	declare @column_name_project_no varchar(500);
	declare @column_name_zversion_no varchar(500);
	
	select @column_name_email = json_column_name
	from generic_json_detail
	where email_indicator_flag = 'Y';

	select @column_name_file_name = json_column_name
	from generic_json_detail
	where file_name_indicator_flag = 'Y';

	select @column_name_project_no = json_column_name
	from generic_json_detail
	where project_no_indicator_flag = 'Y';

	select @column_name_zversion_no = json_column_name
	from generic_json_detail
	where zversion_no_indicator_flag = 'Y';

	set @stage = 8;
	--validation on configuration: generic_json_detail
	if exists (select 1 from #generic_json_detail where t1_json_column_name is null or len(ltrim(rtrim(t1_json_column_name))) = 0)
	or exists (select 1 from #generic_json_detail where isnull(t1_json_column_data_group, 'X') not in ('V', 'N', 'D', 'NI'))
	or exists (select 1 from #generic_json_detail where t1_json_column_data_group = 'D' and t1_json_column_data_group_format is null)
	begin
		set @p_error_id = 50003;
		set @p_error_message = 'GENERIC_JSON_DETAIL configuration issue.';
		throw @p_error_id, @p_error_message, 1;
	end;


	set @stage = 9;
	-- holding all the dynamic columns from the json 
	begin try
		drop table #json_column;
	end try
	begin catch
		;
	end catch;


	-- t2_sl_no is needed because identity(1, 1) does not graruntexe that it would start with 1
	set @stage = 10;
	create table #json_column (
		t2_pk								int identity(1,1),
		t2_record_id						int,
		t2_json_column_name					varchar(5000),
		t2_json_column_data_group			varchar(2),
		t2_json_column_data_group_format	varchar(8000),
		t2_json_column_data_type			varchar(8000),
		t2_json_column_alias_name			varchar(8000),
		t2_sl_no							int
	);


	set @stage = 11;
	declare @dynamic_sql varchar(max);
	set @dynamic_sql = '
		insert into #json_column (	t2_record_id,
									t2_json_column_name)
		select  row_number() over(partition by x.c1 order by x.c1),
		        x.c1
		from (select distinct [key] c1
		from '+@source_table_name+' 
		cross apply openjson(json_attribute)) x';


	set @stage = 12;
	exec(@dynamic_sql);

	update #json_column
	set t2_sl_no = xc2
	from (select t2_pk x_t2_pk, row_number() over(order by t2_pk) xc2 from #json_column) x
	where t2_pk = x_t2_pk;


	set @stage = 13;
	-- validation: json column names
	if @error_column_not_configured = 'Y'
	begin
		if exists (select 1 
					from #json_column a
					where not exists (select 1
										from #generic_json_detail b
										where a.t2_json_column_name = b.t1_json_column_name))
		begin
			if @p_debug_flag = 'Y'
			begin
				select t2_json_column_name
				from #json_column a
				where not exists (select 1
									from #generic_json_detail b
									where a.t2_json_column_name = b.t1_json_column_name);
			end;

			set @p_error_id = 50004;
			set @p_error_message = 'Identified NOT CONFIGURED column from source';
			throw @p_error_id, @p_error_message, 1;
		end;
	end;


	set @stage = 14;
	-- update the corresponding data type gorup and format from config table
	update #json_column
	set		t2_json_column_data_group = t1_json_column_data_group,
			t2_json_column_data_group_format = t1_json_column_data_group_format,
			t2_json_column_data_type	= t1_json_column_data_type,
			t2_json_column_alias_name	= t1_json_column_alias_name
	from	#generic_json_detail
	where	t2_json_column_name = t1_json_column_name;

-- select * from #json_column;

	set @stage = 151;
	-- distinct column names with data type and alias name
	declare @distinct_json_column_names_data_type_alias_name varchar(max);
	
	select @distinct_json_column_names_data_type_alias_name 
	= string_agg('convert('+t2_json_column_data_type+', case when '+ltrim(rtrim(upper(convert(NVARCHAR(max),QUOTENAME(t2_json_column_name)))))+' in (''NULL'', '''')  then NULL else '+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+' end ) as '+t2_json_column_alias_name, ',') 
	from #json_column;


	set @stage = 1512;
	declare @divisor_no int = 50;

	declare @loop_total int;
	select @loop_total = count(*) from #json_column;
	
	declare @max_round int;
	if @loop_total <= @divisor_no
	begin
		set @max_round = 1;
	end
	else
	begin
		set @max_round = @loop_total / @divisor_no;
		if @max_round * @divisor_no != @loop_total
		begin
			set @max_round = @max_round + 1;
		end;
	end;


	-- distinct column names with data type and alias name for error view
	declare @distinct_json_column_names_data_type_alias_name_for_ev varchar(max);

	declare @max_round_ctr int = 1;
	declare @start_ctr int = 1;
	declare @end_ctr int = @divisor_no;
	--select 'bala';
	--select min(t2_pk),max(t2_pk),count(*) from #json_column;
	--group by 1

	while @max_round_ctr <= @max_round
	begin
		--select 'debug', 'ctr', @max_round_ctr, @max_round, @start_ctr, @end_ctr;

		declare @t_distinct_json_column_names_data_type_alias_name_for_ev varchar(max);

		select @t_distinct_json_column_names_data_type_alias_name_for_ev 
		= string_agg(QUOTENAME(t2_json_column_name)+' as '+t2_json_column_alias_name, ',') 
		from #json_column
		where t2_sl_no between @start_ctr and @end_ctr;

		-- select 'debug', 'passed';

		if @distinct_json_column_names_data_type_alias_name_for_ev is null
		begin
			set @distinct_json_column_names_data_type_alias_name_for_ev = @t_distinct_json_column_names_data_type_alias_name_for_ev;
		end
		else
		begin
			set @distinct_json_column_names_data_type_alias_name_for_ev = 
				@distinct_json_column_names_data_type_alias_name_for_ev +','+@t_distinct_json_column_names_data_type_alias_name_for_ev;
		end;

		set @max_round_ctr = @max_round_ctr + 1;
		set @start_ctr = @start_ctr + @divisor_no;
		set @end_ctr = @end_ctr + @divisor_no;
	end;
	
	-- select 'debug', 'bala 102';

	set @stage = 15;
	-- distinct column names
	declare @distinct_json_column_names varchar(max);
	select @distinct_json_column_names = string_agg(convert(NVARCHAR(max),QUOTENAME(t2_json_column_name)), ',') 
	from #json_column;


	set @stage = 16;
	-- building dynamic where clause for numeric fields
	declare @numeric_where_clause varchar(max);
	select @numeric_where_clause = string_agg('dbo.isNumericCustom('+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+', '''+t2_json_column_data_group+''') = 1', ' and ') 
	from #json_column
	where t2_json_column_data_group in ('N', 'NI');
	
	set @stage = 161;
	-- building dynamic where clause for date fields
	declare @date_where_clause varchar(max);
	select @date_where_clause = string_agg('dbo.isDateCustom('+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+', '+t2_json_column_data_group_format+') = 1', ' and ') 
	from #json_column
	where t2_json_column_data_group = 'D';

	set @stage = 17;
	-- building dynamic where clause for numeric fields [errors]
	declare @numeric_where_clause_error varchar(max);
	select @numeric_where_clause_error = string_agg('dbo.isNumericCustom('+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+', '''+t2_json_column_data_group+''') != 1', ' or ') 
	from #json_column
	where t2_json_column_data_group in ('N', 'NI');

	set @stage = 171;
	-- building dynamic where clause for date fields [errors]
	declare @date_where_clause_error varchar(max);
	select @date_where_clause_error = string_agg('dbo.isDateCustom('+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+', '+t2_json_column_data_group_format+') != 1', ' or ') 
	from #json_column
	where t2_json_column_data_group = 'D';

	--select @date_where_clause_error


	set @stage = 18;
	-- creating a temp view: pivoting from json
	declare @internal_temp_view_name varchar(max) = ltrim(rtrim(@target_view_name));
	if charindex(']', @target_view_name, 1) > 0
	begin
		set @internal_temp_view_name = replace(@internal_temp_view_name, ']', '');
	end;


	set @stage = 19;
	set @internal_temp_view_name = @internal_temp_view_name+'_temp_internal_view';
	

	set @stage = 20;
	if charindex(']', @target_view_name, 1) > 0
	begin
		set @internal_temp_view_name = @internal_temp_view_name+']';
	end;
	


	set @stage = 21;
	set @dynamic_sql = '';
	set @dynamic_sql = '
	create view '+@internal_temp_view_name+' as 
	SELECT rssk, '+@distinct_json_column_names+' FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM '+@source_table_name+' 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( '+@distinct_json_column_names+' )) as p';


	set @stage = 22;
	if OBJECT_ID(@internal_temp_view_name) is not null
	begin
		exec('drop view '+@internal_temp_view_name);
	end;

	set @stage = 23;
	if @p_debug_flag = 'Y'
	begin
		select @stage, @dynamic_sql;
	end;
	exec(@dynamic_sql);


	set @stage = 24;
	-- builing non-error view
	set @dynamic_sql = '';
	set @dynamic_sql = '
	create view '+@target_view_name+' as
	select rssk, '+@distinct_json_column_names_data_type_alias_name+'  
	from (
	SELECT rssk, '+@distinct_json_column_names+' FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM '+@source_table_name+' 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( '+@distinct_json_column_names+' )) as p) q 
	where '+isnull(@numeric_where_clause, ' 1 = 1')+' and '+isnull(@date_where_clause, '1 = 1');


	set @stage = 25;
	if OBJECT_ID(@target_view_name) is not null
	begin
		exec('drop view '+@target_view_name);
	end;

	set @stage = 26;
	if @p_debug_flag = 'Y'
	begin
		select @stage, @dynamic_sql;
	end;
	exec(@dynamic_sql);

		set @stage = 27;
	-- builing error view
	set @dynamic_sql = '';
	set @dynamic_sql = '
	create view '+@error_target_view_name+' as
	select rssk, '+@distinct_json_column_names_data_type_alias_name_for_ev+' 
	from (
	SELECT rssk, '+@distinct_json_column_names+' FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM '+@source_table_name+' 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( '+@distinct_json_column_names+' )) as p) q 
	where '+isnull(@numeric_where_clause_error, ' 1 != 1')+' or '+isnull(@date_where_clause_error, '1 != 1');

	set @stage = 28;
	if OBJECT_ID(@error_target_view_name) is not null
	begin
		exec('drop view '+@error_target_view_name);
	end;

	set @stage = 29;
	if @p_debug_flag = 'Y'
	begin
		select @stage, @dynamic_sql;
	end;
	exec(@dynamic_sql);


	-----Modified By Johnson - Start (To add the exact reason for error)



	begin try
	drop table #json_column_tmp;
	end try
	begin catch
		;
	end catch;

	declare @sql_execute varchar(7000)


	
	--select @error_target_view_name 
	select @sql_execute = 'select * into #json_column_tmp from  #json_column'

	exec(@sql_execute)
	
	
	begin try
	drop table #temp_table;
	end try
	begin catch
		;
	end catch;
	
	select @sql_execute = 'declare @error_message varchar(8000); select rssk,@error_message as error_message into #temp_table from ' + @error_target_view_name

	--select @sql_execute

	exec(@sql_execute)

	
	declare @count_check int
	select @count_check = 0
	while @count_check = 0
	begin
	    
		
	  declare @update_clause varchar(8000)
	  declare @t2_pk bigint
	  declare @t2_json_column_alias_name varchar(3000)
	  declare @t2_json_column_data_group varchar(3000)
	  declare @t2_json_column_data_group_format int
	  declare @counter int
	  select @counter = count(*) from  #json_column_tmp
	  select @counter = isnull(@counter,0)
	  --select @counter

	  if isnull(@counter,0) = 0
	  begin
	     select @count_check = 1
	  end
	  
	  set rowcount 1
      select @t2_pk = t2_pk,@t2_json_column_alias_name = t2_json_column_alias_name , @t2_json_column_data_group = t2_json_column_data_group,
	  @t2_json_column_data_group_format = t2_json_column_data_group_format from
	     #json_column_tmp
	  
      delete from #json_column_tmp where t2_pk = @t2_pk
	  set rowcount 0
	  

	  if ltrim(rtrim(@t2_json_column_data_group)) = 'N' or ltrim(rtrim(@t2_json_column_data_group)) = 'NI' or ltrim(rtrim(@t2_json_column_data_group)) = 'D'
	  begin
	  	begin try
		drop table #tmp_count;
		end try
		begin catch
			;
		end catch;

	   declare @count_check_error int
	   DECLARE @error_message_by_column_num varchar(4000)
	   DECLARE @error_message_by_column_date varchar(4000)
	   select @error_message_by_column_num = ''
	   select @error_message_by_column_date = ''
	   declare @count_numeric int
	   

		declare @error_count_check int
		select @error_count_check = 0
		declare @rssk bigint
		declare @error_counter int
		select @error_counter = 0

		--select @t2_json_column_data_group_format
		begin try
		drop table #tmp_error_table;
		end try
		begin catch
			;
		end catch;


		--select @error_target_view_name 
		select @sql_execute = 'select rssk into #tmp_error_table from  ' + @error_target_view_name

		exec(@sql_execute)


		while @error_count_check = 0
		begin
		    select @error_counter = count(*) from #tmp_error_table
			if isnull(@error_counter,0) = 0 
			begin
				select @error_count_check = 1
			end

			set rowcount 1
			select @rssk = rssk from #tmp_error_table
			delete from #tmp_error_table where rssk = @rssk
			set rowcount 0
			
			--select @rssk
			select @update_clause = ''

			--select @count_check_error = cnt from #tmp_count
			--if isnull(@count_check_error,0) <> 0 
			--begin
			declare @column_value varchar(4000)

			select @error_message_by_column_num = ''
			select @error_message_by_column_date = ''
				if isnull(@t2_json_column_data_group,'') = 'N' or isnull(@t2_json_column_data_group,'') = 'NI'
				begin
	  				begin try
					drop table #tmp_value;
					end try
					begin catch
						;
					end catch;

					
					select @update_clause = 'declare @column_value varchar(4000) ; select @column_value = ' + @t2_json_column_alias_name + ' from ' + @error_target_view_name + ' where rssk = ' + cast(@rssk as varchar(50)) + '; select ' + 'isnull(@column_value,'''')'  + ' as col_val into #tmp_value'
					execute(@update_clause)

					select @column_value = col_val from #tmp_value
					
					select @error_message_by_column_num = 'Column ' + @t2_json_column_alias_name +  ' value should be a numeric( value ' + isnull(@column_value,'') + ' does not pass validation),'
					select @error_message_by_column_num = replace(@error_message_by_column_num,'[','')
					select @error_message_by_column_num = replace(@error_message_by_column_num,']','')

					select @update_clause = 'update #temp_table set [error_message] = isnull([error_message],'''')+ ' + '''' +  @error_message_by_column_num + '''' + 
					' from #temp_table a, ' + @error_target_view_name + ' b where a.rssk = b.rssk and a.rssk = ' + cast(@rssk as varchar(50)) + ' and dbo.isNumericCustom(cast(b.'  + @t2_json_column_alias_name +' as varchar(2000)), ''' + @t2_json_column_data_group +''') != 1'
					+ ' and isnull(a.[error_message],'''') not like ' + '''%' + ltrim(rtrim(@error_message_by_column_num)) + '%''' 
					
					--select @update_clause
					exec(@update_clause)

					--select 'Numeric - ' + cast(@rssk as varchar(50))
				end
				
				select @update_clause = ''

				if isnull(@t2_json_column_data_group,'') = 'D'
				begin

	  				begin try
					drop table #tmp_value;
					end try
					begin catch
						;
					end catch;

					--declare @column_value varchar(4000)
					select @update_clause = 'declare @column_value varchar(4000) ; select @column_value = ' + @t2_json_column_alias_name + ' from ' + @error_target_view_name + ' where rssk = ' + cast(@rssk as varchar(50)) + '; select ' + 'isnull(@column_value,'''')'  + ' as col_val into #tmp_value'
					execute(@update_clause)

					select @column_value = col_val from #tmp_value

					--select @column_value 
					
					select @error_message_by_column_date = 'Column ' + @t2_json_column_alias_name +  ' should be a date( value ' + isnull(@column_value,'') + ' does not pass validation),'

					select @error_message_by_column_date = replace(@error_message_by_column_date,'[','')
					select @error_message_by_column_date = replace(@error_message_by_column_date,']','')

					select @update_clause = 'update #temp_table set [error_message] = isnull([error_message],'''')+ ' + '''' +  @error_message_by_column_date + '''' + 
					' from #temp_table a, ' + @error_target_view_name + ' b where a.rssk = b.rssk and b.rssk = ' + cast(@rssk as varchar(50)) + ' and dbo.isDateCustom(cast(b.'  + @t2_json_column_alias_name +' as varchar(2000)), ' + cast(@t2_json_column_data_group_format as varchar(400)) + ') != 1'
					+ ' and isnull(a.[error_message],'''') not like ' + '''%' + ltrim(rtrim(@error_message_by_column_date)) + '%''' 

					exec(@update_clause)
				end
				

				select @error_message_by_column_num = ''
				select @error_message_by_column_date = ''

			--end
		end
	  end

	end
	if OBJECT_ID(@error_target_view_name + '_error_message') is not null
	begin
		exec('drop table '+@error_target_view_name + '_error_message');
	end;
	
	set @dynamic_sql = '';

	select @dynamic_sql = 'select * into ' + ltrim(rtrim(@error_target_view_name)) + '_error_message'  + ' from #temp_table'
	
	exec(@dynamic_sql);
	--select @dynamic_sql
	
	--Create error view with error message

	if OBJECT_ID(@error_target_view_name) is not null
	begin
		exec('drop view '+@error_target_view_name);
	end;

	set @stage = 26;
	if @p_debug_flag = 'Y'
	begin
		select @stage, @dynamic_sql;
	end;
	--exec(@dynamic_sql);

		set @stage = 27;
	-- builing error view
	set @dynamic_sql = '';
	set @dynamic_sql = '
	create view '+@error_target_view_name+' as
	select rssk,(select error_message from ' + @error_target_view_name + '_error_message' + ' x where x.rssk = q.rssk) as error_message, '+@distinct_json_column_names_data_type_alias_name_for_ev+' 
	from (
	SELECT rssk, '+@distinct_json_column_names+' FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM '+@source_table_name+' 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( '+@distinct_json_column_names+' )) as p) q 
	where '+isnull(@numeric_where_clause_error, ' 1 != 1')+' or '+isnull(@date_where_clause_error, '1 != 1');

	exec(@dynamic_sql);

   
	--select * from [gpd].[ChangeManagement_PMR_JSON_active_error_v]
	
		-----Modified By Johnson - end
--441

update  [gpd].[ChangeManagement_PMR_JSON] set JSON_Attribute = 
'{ "Month End Date" : "erde","Project Number" : "99357972","Contract Number" : "99357972","Order" : "zxsd","Type_1" : "Other Pending Change Orders","zSourceFileName" : "Global Template Change Management - Tilenga.xlsx","zCreatedDateTime" : "2024-03-07T10:45:02.407","zVersionNo" : "193" }'
where rssk = 441


	-- persist the error records in the error table
	set @stage = 30;
	set @dynamic_sql = '
				if exists (select 1 from '+@error_target_view_name+') 
			    begin 
					update generic_json_errors_data
					set history_flag = ''Y''
					where load_name = '''+@p_load_name+''';

					insert into generic_json_errors_data (	load_name, 
										json_attribute, 
										process_datetime, 
										history_flag) 
					select 	'''+@p_load_name+''',
						x.json_attribute,
						getdate(),
						''N''
					from '+@source_table_name+' x 
					where x.rssk in (select a.rssk from '+@error_target_view_name+' a);
			    end;
				';


	begin try
		exec(@dynamic_sql);
	end try
	begin catch
		declare @dummy1 int = 0;
	end catch;

	-- json stats
	-- making all the previous stat as in-active so that the same information would NOT be emailed again
	set @stage = 31;
	update json_load_stat
	set active = 0
	where load_name = @p_load_name;

	-- the process is required only when atleast one column is meant to hold email address
	-- this is 100% configuration based
	if exists (select 1 from #generic_json_detail where t1_email_indicator_flag = 'Y')
	begin
		set @stage = 32;
		insert into json_load_stat (load_name, created_date_time, active) 
		select @p_load_name, getdate(), 1;

		set @stage = 33;
		declare @jls_id int;

		select @jls_id = jls_id 
		from json_load_stat
		where load_name = @p_load_name
		and active = 1;

		
		-- inserting: project and filelevel information
		-- note: one project can have multiple filenames --@column_name_email
		set @stage = 331;
		set @dynamic_sql = '
		insert into json_load_status_project (jls_id ,project_no, file_name,zversion_no, processed_record_count, error_record_count)
		select distinct '+ltrim(rtrim(str(@jls_id)))+', t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+'], 0,0
		from
		(
			select ['+@column_name_project_no+'], ['+@column_name_file_name+'], max(['+@column_name_zversion_no +']) as ['+@column_name_zversion_no +']
			from '+ @target_view_name + '
			group by ['+@column_name_project_no+'],['+@column_name_file_name+'] 
		) t1
		inner join '+@target_view_name+' t2 on (t1.['+@column_name_project_no+'] = t2.['+@column_name_project_no+']
		and t1.['+@column_name_file_name+'] = t2.['+@column_name_file_name+']
		and t1.['+@column_name_zversion_no +'] = t2.['+@column_name_zversion_no +'])
		group by t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+']
		union
		select distinct '+ltrim(rtrim(str(@jls_id)))+', t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+'], 0,0
		from
		(
			select ['+@column_name_project_no+'], ['+@column_name_file_name+'], max(['+@column_name_zversion_no +']) as ['+@column_name_zversion_no +']
			from '+ @error_target_view_name + '
			group by ['+@column_name_project_no+'],['+@column_name_file_name+'] 
		) t1
		inner join '+@error_target_view_name+' t2 on (t1.['+@column_name_project_no+'] = t2.['+@column_name_project_no+']
		and t1.['+@column_name_file_name+'] = t2.['+@column_name_file_name+']
		and t1.['+@column_name_zversion_no +'] = t2.['+@column_name_zversion_no +'])
		group by t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+']';
		

				/*
		select distinct '+ltrim(rtrim(str(@jls_id)))+', ['+@column_name_project_no+'], ['+@column_name_file_name+'], 0, 0
		from '+@target_view_name;
		*/
		
		if @p_debug_flag = 'Y'
		begin
			select @stage, @dynamic_sql;
		end;
		exec(@dynamic_sql);

		-- need to update the number of recods and errors at project and filename level	
		set @stage = 332;
		set @dynamic_sql = '
		update json_load_status_project 
		set processed_record_count  = x.c
		from (
		select  t2.['+@column_name_project_no+'] p, t2.['+@column_name_file_name+'] f, t2.['+@column_name_zversion_no+'] z, count(1) c
		from
		(
			select ['+@column_name_project_no+'], ['+@column_name_file_name+'], max(['+@column_name_zversion_no +']) as ['+@column_name_zversion_no +']
			from '+ @target_view_name + '
			group by ['+@column_name_project_no+'],['+@column_name_file_name+'] 
		) t1
		inner join '+@target_view_name+' t2 on (t1.['+@column_name_project_no+'] = t2.['+@column_name_project_no+']
		and t1.['+@column_name_file_name+'] = t2.['+@column_name_file_name+']
		and t1.['+@column_name_zversion_no +'] = t2.['+@column_name_zversion_no +'])
		group by t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+ '] ) x
		where project_no = x.p
		and file_name  = x.f and zversion_no = x.z ';

		if @p_debug_flag = 'Y'
		begin
			select @stage, @dynamic_sql;
		end;
		exec(@dynamic_sql);
		
		set @stage = 332;
		set @dynamic_sql = '
		update json_load_status_project 
		set error_record_count  = x.c
		from (
		select  t2.['+@column_name_project_no+'] p, t2.['+@column_name_file_name+'] f, t2.['+@column_name_zversion_no+'] z, count(1) c
		from
		(
			select ['+@column_name_project_no+'], ['+@column_name_file_name+'], max(['+@column_name_zversion_no +']) as ['+@column_name_zversion_no +']
			from '+ @error_target_view_name + '
			group by ['+@column_name_project_no+'],['+@column_name_file_name+'] 
		) t1
		inner join '+@error_target_view_name+' t2 on (t1.['+@column_name_project_no+'] = t2.['+@column_name_project_no+']
		and t1.['+@column_name_file_name+'] = t2.['+@column_name_file_name+']
		and t1.['+@column_name_zversion_no +'] = t2.['+@column_name_zversion_no +'])
		group by t2.['+@column_name_project_no+'], t2.['+@column_name_file_name+'], t2.['+@column_name_zversion_no+ '] ) x
		where project_no = x.p
		and file_name  = x.f and zversion_no = x.z ';

		if @p_debug_flag = 'Y'
		begin
			select @stage, @dynamic_sql;
		end;
		exec(@dynamic_sql);
		
		-- need to insert email details (one combination of project, filename can have multiple emails)
		
		set @stage = 333;
		set @dynamic_sql = '
		insert into json_load_stat_emails (jlsp_id, email_id )
		select jlsp_id, email
		from json_load_status_project a, '+@target_view_name+' b
		where a.jls_id  = '+ltrim(rtrim(str(@jls_id)))+'
		and a.project_no = b.['+@column_name_project_no+'] 
		and a.file_name = b.['+@column_name_file_name+']
		and a.zversion_no = b.['+@column_name_zversion_no+']
		union 
		select jlsp_id, email
		from json_load_status_project a, '+@error_target_view_name+' b
		where a.jls_id  = '+ltrim(rtrim(str(@jls_id)))+'
		and a.project_no = b.['+@column_name_project_no+'] 
		and a.file_name = b.['+@column_name_file_name+']
		and a.zversion_no = b.['+@column_name_zversion_no+']';
		
		if @p_debug_flag = 'Y'
		begin
			select @stage, @dynamic_sql;
		end;
		
		exec(@dynamic_sql);
	end;

	set @stage = 37;
	if @p_delete_source_when_no_errors_flag = 'Y'
	begin
		begin try
			exec('delete from '+@source_table_name+' where not exists (select 1 from '+@error_target_view_name+')');
		end try
		begin catch
			declare @dummy2 int = 0;
		end catch;	
	end; 

end try
begin catch
	if @p_error_id = 0
	begin
		set @p_error_id = -1;
		set @p_error_message = 'Exception Thorwn: Stage: '+ltrim(rtrim(str(@stage)))+' ERROR: '+error_message();
	end
	else
	begin
		set @p_error_message = 'Stage: '+ltrim(rtrim(str(@stage)))+' '+@p_error_message;
	end;
end catch;
end;

GO
/****** Object:  StoredProcedure [dbo].[get_PMR_Email_details]    Script Date: 4/2/2024 4:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_PMR_Email_details] @load_name [varchar](1000) AS 

begin

begin try
	
	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	if (@load_name IS NULL or @load_name='')
		begin 
			set @errorMessage = 'Load name is BLANK, pls check.'
			select '' as active,@errorMessage as errorMessage
		end
	ELSE
		begin
			
		with cte as(
		select distinct 
					s.load_name as load_name,
					s.created_date_time as created_date_time,
					s.active as active,
					p.project_no as project_no,
					p.file_name as [file_name],
					p.processed_record_count as processed_record_count,
					p.error_record_count as error_record_count,
					c.email_id as email_id,
					p.zversion_no as version_no
					from [dbo].[json_load_stat] s
					left join [dbo].[json_load_status_project] p on (s.jls_id=p.jls_id)
					left join [dbo].[json_load_stat_emails] e on (e.jlsp_id=p.jlsp_id)
					left join [dbo].[NCSA_project_config_emails] c on (c.project_number=p.project_no)
					where c.active=1 and s.active=1 and s.load_name=@load_name 

		)
		select load_name,project_no,active,created_date_time,email_id,version_no,string_agg(file_name,' | ') as [file_name],sum(processed_record_count) as processed_record_count,sum(error_record_count) as error_record_count
		from cte
		where version_no in (select max(version_no) from cte)
		group by load_name,project_no,active,created_date_time,email_id,version_no
	
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
GO
/****** Object:  StoredProcedure [dbo].[get_PMR_ErrorViewResults]    Script Date: 4/2/2024 4:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_PMR_ErrorViewResults] @load_name [varchar](1000),@project_number [varchar](1000),@zverionno [int] AS 

begin

begin try
	
	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	if (@load_name IS NULL OR @project_number IS NULL or @load_name='' or @project_number='')
		begin 
			set @errorMessage = 'Load name or Project number is BLANK, pls check.'
			select '' as active,@errorMessage as errorMessage
		end
	ELSE
		begin
			
			declare @errorViewName varchar(2000);
			declare @project_number_col varchar(500);

			set @errorViewName=(select error_target_view_name from generic_json_header where load_name=@load_name )
			set @project_number_col=(select concat('[',json_column_name,']') from generic_json_detail where load_name=@load_name and project_no_indicator_flag='Y')
		
			exec ('select * from ' + @errorViewName + ' where ' + @project_number_col + '='+ '' + @project_number+ '' + '  and zVersionNo=' + @zverionno)
			
	
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