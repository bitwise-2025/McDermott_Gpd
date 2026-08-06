declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'WTE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','˜~ûT£‰¯íýëlƒÏ','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','WTE')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'KRONOS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','/Åü9¤—YM§æy©Ú','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','KRONOS')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'GEAC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','zºàN‚zÝöôÉ÷5n °','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','GEAC')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'MCPM Progress Items'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','hŒ„U+šbS3xÑ ”z','1','2021-03-23 00:00:00.000','2021-03-23 00:00:00.000','N','2','SYSTEM','MCPM Progress Items')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'CSV'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','FÝ;m$<_÷†¬èyÎ','1','2020-10-07 00:00:00.000',NULL,'N','1','MANUAL','CSV')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'GEAC - INTERNATIONAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ôN,œãZWp×ùkÂŽC','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','GEAC - INTERNATIONAL')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'JDE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ƒùñq1‘“8‘^_''té¬','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','JDE')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'iTime Labor'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'1900-01-01 00:00:00.000','2050-12-30 00:00:00.000','F T·<zÿÈÌ¬!g‡²','1','2020-10-07 00:00:00.000',NULL,'N','2','System','iTime Labor')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'Peoplesoft'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'1900-01-01 00:00:00.000','2050-12-30 00:00:00.000','ôëÍÕóiÉ·Š³@8ï?','1','2020-10-07 00:00:00.000',NULL,'N','2','System','Peoplesoft')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'Oracle ERP Cloud'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Oöµv|o3ÿóFˆN“±','1','2020-10-07 00:00:00.000',NULL,'N','2','System','Oracle ERP Cloud')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'Sitepro'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000',' Æ¸¬','1','2020-11-10 00:00:00.000',NULL,'N','2','SYSTEM','Sitepro')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'GEAC - DOMESTIC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Wâ6¼çÑóÚáMŠ±Å','1','2020-10-07 00:00:00.000',NULL,'N','2','SYSTEM','GEAC - DOMESTIC')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'Timeworks'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'1900-01-01 00:00:00.000','2050-12-30 00:00:00.000','Èp.6‰mÝ\¥€ÎI¨:','1','2020-10-07 00:00:00.000',NULL,'N','2','System','Timeworks')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'SAP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'1900-01-01 00:00:00.000','2050-12-30 00:00:00.000','kÄeáD§[“çï›)+','1','2020-10-07 00:00:00.000',NULL,'N','2','System','SAP')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'Job Costing'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'1900-01-01 00:00:00.000','2050-12-31 00:00:00.000','@ aäÛLqˆë“Î¤þ3‚','1','2020-10-07 00:00:00.000',NULL,'N','2','System','Job Costing')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'MCPM Onshore'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','YÞCmZ.zˆv•)','1','2021-02-02 19:10:01.503',NULL,'N','2','SYSTEM','MCPM Onshore')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'EXCEL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','fä¬q½™«ÝðÜwA€ˆ','1','2020-10-07 00:00:00.000',NULL,'N','1','MANUAL','EXCEL')
end

select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'P6'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','˜~ûT£‰¯íýëlƒÏ','1','2021-26-04 00:00:00.000',NULL,'N','2','SYSTEM','P6')
end
