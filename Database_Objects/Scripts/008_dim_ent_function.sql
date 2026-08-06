declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_function Where function_code = 'ENG'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','Ó¼wS4¤&-² dÕ','1','2020-11-10 18:41:26.777',NULL,'N','ENG','Engineering')
end

select @count = count(*) from dim_ent_function Where function_code = 'COM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','ëybŽ:)V‘yi\£E*7','1','2020-11-10 18:40:12.690',NULL,'N','COM','COMMERICAL')
end

select @count = count(*) from dim_ent_function Where function_code = 'QHS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','†Xm°*þ¼¡¶h|','1','2020-11-10 18:45:16.440',NULL,'N','QHS','QHSES')
end

select @count = count(*) from dim_ent_function Where function_code = 'CMA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','¯£¿&êDjoÓVÂM`€b','1','2020-11-10 18:40:43.083',NULL,'N','CMA','Communication & Marketing')
end

select @count = count(*) from dim_ent_function Where function_code = 'LCR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','ýÙkXV0¨0ÎŸöû lÑ','1','2020-11-10 18:43:49.713',NULL,'N','LCR','Legal Compliance and Risk')
end

select @count = count(*) from dim_ent_function Where function_code = 'CON'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','iç/±ÓhÈá­ŽaþŸU','1','2020-11-10 18:41:06.273',NULL,'N','CON','Construction')
end

select @count = count(*) from dim_ent_function Where function_code = 'FIN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','ÇU^ªÎ£ŽqRA£','1','2020-11-10 18:42:07.453',NULL,'N','FIN','Finance')
end

select @count = count(*) from dim_ent_function Where function_code = 'FAB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','ÔQ2¨Ò ''øÑÇvË$…','1','2020-11-10 18:41:49.223',NULL,'N','FAB','Fabrication')
end

select @count = count(*) from dim_ent_function Where function_code = 'PMC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','¦,¥ÿÒ~çºRy;˜Ö0','1','2020-11-10 18:44:44.370',NULL,'N','PMC','Project Management & Controls')
end

select @count = count(*) from dim_ent_function Where function_code = 'MAR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','[ªàÖŒuíÂ£üq^ï¿','1','2020-11-10 18:44:16.770',NULL,'N','MAR','Marine Asset & Operations')
end

select @count = count(*) from dim_ent_function Where function_code = 'CMN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7¶ i>Eêœ]“ß.','1','2021-04-14 00:00:00.000',NULL,'N','CMN','Commissioning')
end

select @count = count(*) from dim_ent_function Where function_code = 'IDT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','6_+Bð™Ù¥yàÛÇ¹','1','2020-11-10 18:43:27.307',NULL,'N','IDT','Information & Digital Technology')
end

select @count = count(*) from dim_ent_function Where function_code = 'WLD'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','ŸÕ6kyÜ cÕ–%Ã¡«‰','1','2020-11-10 18:42:28.423',NULL,'N','WLD','Global Welding Organization')
end

select @count = count(*) from dim_ent_function Where function_code = 'OTH'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','¶gsÈ¹øŒ©˜$Ë¾ÓâW','1','2020-11-10 18:41:26.777',NULL,'N','OTH','Others')
end

select @count = count(*) from dim_ent_function Where function_code = 'SCM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from dim_ent_function
	insert into dim_ent_function(dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-01-01 00:00:00.000','L-ëãµ˜û6<ÇƒÇÍ‘','1','2020-11-10 18:45:49.223',NULL,'N','SCM','Supply Chain Management')
end

