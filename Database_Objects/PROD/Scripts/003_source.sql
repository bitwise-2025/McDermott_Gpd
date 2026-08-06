declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_source Where source_name = 'MANUAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_source_nk),0) + 1 from dim_ent_source
	insert into dim_ent_source(dim_ent_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¦ jGå¤œO]','1','2020-08-20 00:00:00.000',NULL,'N','MANUAL')
end

select @count = count(*) from dim_ent_source Where source_name = 'SYSTEM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_source_nk),0) + 1 from dim_ent_source
	insert into dim_ent_source(dim_ent_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','úq8ùJ~ T›§‰=','1','2020-08-20 00:00:00.000',NULL,'N','SYSTEM')
end

