declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_discipline Where discipline_code = 'TANKS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'TANKS','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','îª!O§J¶z¤¾(HÅz‹','1','2021-08-08 00:00:00.000','2021-01-01 00:00:00.000','0','TANKS')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'PAINTING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'PAINTING','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','³@¹—`«] ‚Bù,¯','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','PAINTING')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'CONSTRUCTION','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÅÿñÕåcžNkXd–õj8]','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','CONSTRUCTION')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'PIPING DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'PIPING DESIGN','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öjômqG¡ú‰eQï','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','PIPING DESIGN')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'CONCRETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'CONCRETE','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','&M(œ¢{ûŽ\-{a‰','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','CONCRETE')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'SITE PREP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'SITE PREP','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ØÓ~ž“¶„½fÚ÷\‚','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','SITE PREP')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'MECHANICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'MECHANICAL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‹ñfvXëæÑ˜ôºsÖ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','MECHANICAL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'HEALTH, SAFETY, SECURITY, AND ENVIRONMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'HEALTH, SAFETY, SECURITY, AND ENVIRONMENT','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¦oålsb&]]ºPàw','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','HEALTH, SAFETY, SECURITY, AND ENVIRONMENT')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'PROCESS','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ƒ‡óˆ€ài‹¾…æ³†','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','PROCESS')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'ARCHITECTUAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'ARCHITECTUAL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','æ÷''jíuæ•','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ARCHITECTUAL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'CIVIL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','åÏáwb?ýïÙd5l¤”','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','CIVIL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'INSULATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'INSULATION','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','õ Ùš¨ÙÌ6õ°zú','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','INSULATION')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'ARCHITECTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'ARCHITECTURAL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i”PQ å','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ARCHITECTURAL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'PIPING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'PIPING','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','…ÇƒHÿw°¨{’-','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','PIPING')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'ELECTRICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'ELECTRICAL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','H“â=þÏ#•''h°×UÉ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ELECTRICAL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'STRUCTURAL','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','EÌCä$k¼)­JÄ-','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','STRUCTURAL')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'INSTRUMENTATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'INSTRUMENTATION','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ê‚=‚”YeLD-9yXS9D','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','INSTRUMENTATION')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'FIREPROOFING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'FIREPROOFING','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1ûPšÖ‘µsÛIDT$#²','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','FIREPROOFING')
end

select @count = count(*) from dim_ent_discipline Where discipline_code = 'INSTRUMENTATIONS AND CONTROL SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dim_ent_discipline
	insert into dim_ent_discipline(dim_ent_discipline_nk,discipline_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_name)
	 values (@next_val,'INSTRUMENTATIONS AND CONTROL SYSTEMS','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%‚QæzSïû8 ø+K‰','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','INSTRUMENTATIONS AND CONTROL SYSTEMS')
end

