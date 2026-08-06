declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();



select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'U - SURVEYING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.020','2050-12-31 00:00:00.020','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','U - SURVEYING','U - SURVEYING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'R - COMMISSIONING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.021','2050-12-31 00:00:00.021','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','R - COMMISSIONING','R - COMMISSIONING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'J - INSTRUMENTATION AND CONTROLS ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.022','2050-12-31 00:00:00.022','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','J - INSTRUMENTATION AND CONTROLS ENGINEERING','J - INSTRUMENTATION AND CONTROLS ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Q - QUALITY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.023','2050-12-31 00:00:00.023','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','Q - QUALITY','Q - QUALITY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'H - HEALTH, SAFETY AND ENVIRONMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.024','2050-12-31 00:00:00.024','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','H - HEALTH, SAFETY AND ENVIRONMENT','H - HEALTH, SAFETY AND ENVIRONMENT')
end



select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'N - HUMAN RESOURCES AND INDUSTRIAL RELATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.026','2050-12-31 00:00:00.026','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','N - HUMAN RESOURCES AND INDUSTRIAL RELATIONS','N - HUMAN RESOURCES AND INDUSTRIAL RELATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Y - SUBSEA ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.027','2050-12-31 00:00:00.027','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','Y - SUBSEA ENGINEERING','Y - SUBSEA ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'L - MATERIAL SELECTION AND PRESERVATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.028','2050-12-31 00:00:00.028','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','L - MATERIAL SELECTION AND PRESERVATION','L - MATERIAL SELECTION AND PRESERVATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'B - PROJECT AND CONSTRUCTION MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.029','2050-12-31 00:00:00.029','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','B - PROJECT AND CONSTRUCTION MANAGEMENT','B - PROJECT AND CONSTRUCTION MANAGEMENT')
end







select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.031','2050-12-31 00:00:00.031','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','MA','MA')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SX'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.032','2050-12-31 00:00:00.032','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','SX','SX')
end





select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SCM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.035','2050-12-31 00:00:00.035','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','SCM','SCM')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'GT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.036','2050-12-31 00:00:00.036','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','GT','GT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'VP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.037','2050-12-31 00:00:00.037','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','VP','VP')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'AS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.038','2050-12-31 00:00:00.038','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','AS','AS')
end



select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.040','2050-12-31 00:00:00.040','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','FA','FA')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.041','2050-12-31 00:00:00.041','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','SS','SS')
end


