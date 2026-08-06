/****** Object:  StoredProcedure [dbo].[generic_json_validator]    Script Date: 2/1/2023 4:05:15 PM ******/
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
	declare @load_name varchar(500);
	declare @load_description varchar(500);
	declare @source_table_name varchar(500);
	declare @target_view_name varchar(500);
	declare @error_target_view_name varchar(500);
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
		t1_json_column_name					varchar(500) not null,
		t1_json_column_data_group			varchar(2) not null, -- V, N, D, DT
		t1_json_column_data_group_format	varchar(120),
		t1_json_column_data_type			varchar(120),
		t1_json_column_alias_name			varchar(120));

	set @stage = 7;
	insert into #generic_json_detail (	t1_record_id,
										t1_json_column_name,
										t1_json_column_data_group,
										t1_json_column_data_group_format,
										t1_json_column_data_type,
										t1_json_column_alias_name)
	select  row_number() over(order by gjd_id),
			json_column_name,
			json_column_data_group,
			json_column_data_group_format,
			json_column_data_type,
			json_column_alias_name
	from generic_json_detail
	where load_name = @load_name
	and active_flag = 'Y';

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


	set @stage = 10;
	create table #json_column (
		t2_record_id						int,
		t2_json_column_name					varchar(500),
		t2_json_column_data_group			varchar(2),
		t2_json_column_data_group_format	varchar(120),
		t2_json_column_data_type			varchar(120),
		t2_json_column_alias_name			varchar(120)
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

select * from #json_column;

	set @stage = 151;
	-- distinct column names with data type and alias name
	declare @distinct_json_column_names_data_type_alias_name varchar(max);
	select @distinct_json_column_names_data_type_alias_name 
	= string_agg('convert('+t2_json_column_data_type+', case when '+ltrim(rtrim(upper(convert(NVARCHAR(max),QUOTENAME(t2_json_column_name)))))+' in (''NULL'', '''')  then NULL else '+convert(NVARCHAR(max),QUOTENAME(t2_json_column_name))+' end ) as '+t2_json_column_alias_name, ',') 
	from #json_column;


	set @stage = 1512;
	-- distinct column names with data type and alias name for error view
	declare @distinct_json_column_names_data_type_alias_name_for_ev varchar(max);
	select @distinct_json_column_names_data_type_alias_name_for_ev 
	= string_agg(QUOTENAME(t2_json_column_name)+' as '+t2_json_column_alias_name, ',') 
	from #json_column;

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

	-- persist the error records in the error table
	set @stage = 30;
if @p_debug_flag = 'Y'
begin
	select @stage, @dynamic_sql;
end;

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

	set @stage = 31;
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


