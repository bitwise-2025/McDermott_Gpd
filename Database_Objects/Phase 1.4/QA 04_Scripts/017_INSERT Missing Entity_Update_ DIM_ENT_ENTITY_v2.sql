declare @count int				
declare @next_val int				
select @count = count(*) from [dbo].[dim_ent_entity] Where [entity_id] = '0258'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_entity_nk),0) + 1 from [dbo].[dim_ent_entity]
	insert into [dbo].[dim_ent_entity](dim_ent_entity_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,entity_id,entity_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-03-23 00:00:00.000',NULL,'N','0258',NULL)
end

select @count = count(*) from [dbo].[dim_ent_entity] Where [entity_id] = '0264'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_entity_nk),0) + 1 from [dbo].[dim_ent_entity]
	insert into [dbo].[dim_ent_entity](dim_ent_entity_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,entity_id,entity_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-03-23 00:00:00.000',NULL,'N','0264',NULL)
end

GO
-----Update Existing Entries-----

declare @count int 
declare @next_val int		
select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0169'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Singapore'
 Where entity_id =  '0169'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0213'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Batam'
 Where entity_id =  '0213'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0244'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '0244'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0258'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '0258'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0264'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '0264'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0341'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '0341'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0898'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Doha'
 Where entity_id =  '0898'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0921'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Al Khobar'
 Where entity_id =  '0921'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0923'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Dubai'
 Where entity_id =  '0923'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '0950'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Doha'
 Where entity_id =  '0950'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '1008'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '1008'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '1183'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '1183'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '1187'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '1187'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '1370'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Abudhabi'
 Where entity_id =  '1370'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '1391'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '1391'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2001'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '2001'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2097'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Kuala Lumpur'
 Where entity_id =  '2097'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2101'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Chennai'
 Where entity_id =  '2101'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2214'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Brazil'
 Where entity_id =  '2214'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2217'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Dammam'
 Where entity_id =  '2217'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2230'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'London'
 Where entity_id =  '2230'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2231'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '2231'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2258'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  'Kuala Lumpur'
 Where entity_id =  '2258'
 end

select @count = count(*) from dbo.dim_ent_entity Where entity_id = '2260'
	if isnull(@count,0) != 0
begin
	Update dbo.dim_ent_entity
 set Office =  NULL
 Where entity_id =  '2260'
 end

GO