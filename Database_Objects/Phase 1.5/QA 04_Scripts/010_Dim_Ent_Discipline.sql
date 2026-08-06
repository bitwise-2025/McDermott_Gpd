declare @count int
declare @next_val int
select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENTS & CONTR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','INSTRUMENTS & CONTR','1','2021-07-31 00:00:00.000',NULL,'N','INSTRUMENTS & CONTR','INSTRUMENTS & CONTR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'S - STRUCTURAL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.001','2050-12-31 00:00:00.001','S - STRUCTURAL ENGINEERING','1','2021-07-31 00:00:00.001',NULL,'N','S - STRUCTURAL ENGINEERING','S - STRUCTURAL ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ST STRUCTURAL STEEL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.002','2050-12-31 00:00:00.002','ST STRUCTURAL STEEL','1','2021-07-31 00:00:00.002',NULL,'N','ST STRUCTURAL STEEL','ST STRUCTURAL STEEL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'E - ELECTRICAL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','E - ELECTRICAL ENGINEERING','1','2021-07-31 00:00:00.003',NULL,'N','E - ELECTRICAL ENGINEERING','E - ELECTRICAL ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'B - PROJECT DEVELOPMENT AND EXECUTION MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.004','2050-12-31 00:00:00.004','B - PROJECT DEVELOPMENT AND EXECUTION MANAGEMENT','1','2021-07-31 00:00:00.004',NULL,'N','B - PROJECT DEVELOPMENT AND EXECUTION MANAGEMENT','B - PROJECT DEVELOPMENT AND EXECUTION MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CV CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.005','2050-12-31 00:00:00.005','CV CIVIL','1','2021-07-31 00:00:00.005',NULL,'N','CV CIVIL','CV CIVIL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IN INSTRUMENTATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.006','2050-12-31 00:00:00.006','IN INSTRUMENTATION','1','2021-07-31 00:00:00.006',NULL,'N','IN INSTRUMENTATION','IN INSTRUMENTATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'K - INFORMATION TECHNOLOGY AND TELECOMMUNICATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.007','2050-12-31 00:00:00.007','K - INFORMATION TECHNOLOGY AND TELECOMMUNICATIONS','1','2021-07-31 00:00:00.007',NULL,'N','K - INFORMATION TECHNOLOGY AND TELECOMMUNICATIONS','K - INFORMATION TECHNOLOGY AND TELECOMMUNICATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M - MECHANICAL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.008','2050-12-31 00:00:00.008','M - MECHANICAL ENGINEERING','1','2021-07-31 00:00:00.008',NULL,'N','M - MECHANICAL ENGINEERING','M - MECHANICAL ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'J - INSTRUMENTATION AND CONTROLS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.009','2050-12-31 00:00:00.009','J - INSTRUMENTATION AND CONTROLS','1','2021-07-31 00:00:00.009',NULL,'N','J - INSTRUMENTATION AND CONTROLS','J - INSTRUMENTATION AND CONTROLS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'P - PROCESS ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.010','2050-12-31 00:00:00.010','P - PROCESS ENGINEERING','1','2021-07-31 00:00:00.010',NULL,'N','P - PROCESS ENGINEERING','P - PROCESS ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.011','2050-12-31 00:00:00.011','MT','1','2021-07-31 00:00:00.011',NULL,'N','MT','MT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = '1 - OPERATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.012','2050-12-31 00:00:00.012','1 - OPERATIONS','1','2021-07-31 00:00:00.012',NULL,'N','1 - OPERATIONS','1 - OPERATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'R - COMMISSIONING AND STARTUP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.013','2050-12-31 00:00:00.013','R - COMMISSIONING AND STARTUP','1','2021-07-31 00:00:00.013',NULL,'N','R - COMMISSIONING AND STARTUP','R - COMMISSIONING AND STARTUP')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'X - PIPING ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.014','2050-12-31 00:00:00.014','X - PIPING ENGINEERING','1','2021-07-31 00:00:00.014',NULL,'N','X - PIPING ENGINEERING','X - PIPING ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'F - SAFETY RISK ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.015','2050-12-31 00:00:00.015','F - SAFETY RISK ENGINEERING','1','2021-07-31 00:00:00.015',NULL,'N','F - SAFETY RISK ENGINEERING','F - SAFETY RISK ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'H - HEALTH, SAFETY, ENVIRONMENT AND SECURITY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.016','2050-12-31 00:00:00.016','H - HEALTH, SAFETY, ENVIRONMENT AND SECURITY','1','2021-07-31 00:00:00.016',NULL,'N','H - HEALTH, SAFETY, ENVIRONMENT AND SECURITY','H - HEALTH, SAFETY, ENVIRONMENT AND SECURITY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SAFETY & ENV. ENG.'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.017','2050-12-31 00:00:00.017','SAFETY & ENV. ENG.','1','2021-07-31 00:00:00.017',NULL,'N','SAFETY & ENV. ENG.','SAFETY & ENV. ENG.')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.018','2050-12-31 00:00:00.018','CS','1','2021-07-31 00:00:00.018',NULL,'N','CS','CS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TRUE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.019','2050-12-31 00:00:00.019','TRUE','1','2021-07-31 00:00:00.019',NULL,'N','TRUE','TRUE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'L - MATERIAL SELECTION AND CORROSION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.020','2050-12-31 00:00:00.020','L - MATERIAL SELECTION AND CORROSION','1','2021-07-31 00:00:00.020',NULL,'N','L - MATERIAL SELECTION AND CORROSION','L - MATERIAL SELECTION AND CORROSION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PR PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.021','2050-12-31 00:00:00.021','PR PROCESS','1','2021-07-31 00:00:00.021',NULL,'N','PR PROCESS','PR PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PJ PROJECT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.022','2050-12-31 00:00:00.022','PJ PROJECT','1','2021-07-31 00:00:00.022',NULL,'N','PJ PROJECT','PJ PROJECT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QUALITY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.023','2050-12-31 00:00:00.023','QUALITY','1','2021-07-31 00:00:00.023',NULL,'N','QUALITY','QUALITY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PL PILING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.024','2050-12-31 00:00:00.024','PL PILING','1','2021-07-31 00:00:00.024',NULL,'N','PL PILING','PL PILING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HS HSE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.025','2050-12-31 00:00:00.025','HS HSE','1','2021-07-31 00:00:00.025',NULL,'N','HS HSE','HS HSE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HSE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.026','2050-12-31 00:00:00.026','HSE','1','2021-07-31 00:00:00.026',NULL,'N','HSE','HSE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'GENERAL FOR ALL DEPT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.027','2050-12-31 00:00:00.027','GENERAL FOR ALL DEPT','1','2021-07-31 00:00:00.027',NULL,'N','GENERAL FOR ALL DEPT','GENERAL FOR ALL DEPT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'N - HUMAN RECOURSES AND IF'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.028','2050-12-31 00:00:00.028','N - HUMAN RECOURSES AND IF','1','2021-07-31 00:00:00.028',NULL,'N','N - HUMAN RECOURSES AND IF','N - HUMAN RECOURSES AND IF')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Q - QUALITY MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.029','2050-12-31 00:00:00.029','Q - QUALITY MANAGEMENT','1','2021-07-31 00:00:00.029',NULL,'N','Q - QUALITY MANAGEMENT','Q - QUALITY MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'DOCUMENT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.030','2050-12-31 00:00:00.030','DOCUMENT MANAGEMENT','1','2021-07-31 00:00:00.030',NULL,'N','DOCUMENT MANAGEMENT','DOCUMENT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FALSE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.031','2050-12-31 00:00:00.031','FALSE','1','2021-07-31 00:00:00.031',NULL,'N','FALSE','FALSE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'P - PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.032','2050-12-31 00:00:00.032','P - PROCESS','1','2021-07-31 00:00:00.032',NULL,'N','P - PROCESS','P - PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HS - HEALTH, SAFETY & ENVIRONMENT ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.033','2050-12-31 00:00:00.033','HS - HEALTH, SAFETY & ENVIRONMENT ENGINEERING','1','2021-07-31 00:00:00.033',NULL,'N','HS - HEALTH, SAFETY & ENVIRONMENT ENGINEERING','HS - HEALTH, SAFETY & ENVIRONMENT ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CI CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.034','2050-12-31 00:00:00.034','CI CIVIL','1','2021-07-31 00:00:00.034',NULL,'N','CI CIVIL','CI CIVIL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ME - MECHANICAL EQUIPMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.035','2050-12-31 00:00:00.035','ME - MECHANICAL EQUIPMENT','1','2021-07-31 00:00:00.035',NULL,'N','ME - MECHANICAL EQUIPMENT','ME - MECHANICAL EQUIPMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.036','2050-12-31 00:00:00.036','MR','1','2021-07-31 00:00:00.036',NULL,'N','MR','MR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'G - SUPPLY CHAIN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.037','2050-12-31 00:00:00.037','G - SUPPLY CHAIN','1','2021-07-31 00:00:00.037',NULL,'N','G - SUPPLY CHAIN','G - SUPPLY CHAIN')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PT - PROCUREMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.038','2050-12-31 00:00:00.038','PT - PROCUREMENT','1','2021-07-31 00:00:00.038',NULL,'N','PT - PROCUREMENT','PT - PROCUREMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPING ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.039','2050-12-31 00:00:00.039','PIPING ENGINEERING','1','2021-07-31 00:00:00.039',NULL,'N','PIPING ENGINEERING','PIPING ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IN - INSPECTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.040','2050-12-31 00:00:00.040','IN - INSPECTION','1','2021-07-31 00:00:00.040',NULL,'N','IN - INSPECTION','IN - INSPECTION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MR - MECHANICAL ROTATING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.041','2050-12-31 00:00:00.041','MR - MECHANICAL ROTATING','1','2021-07-31 00:00:00.041',NULL,'N','MR - MECHANICAL ROTATING','MR - MECHANICAL ROTATING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = '0 - COMPANY GOVERNANCE AND MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.042','2050-12-31 00:00:00.042','0 - COMPANY GOVERNANCE AND MANAGEMENT','1','2021-07-31 00:00:00.042',NULL,'N','0 - COMPANY GOVERNANCE AND MANAGEMENT','0 - COMPANY GOVERNANCE AND MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IC - INSTRUMENT AND CONTROL SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.043','2050-12-31 00:00:00.043','IC - INSTRUMENT AND CONTROL SYSTEMS','1','2021-07-31 00:00:00.043',NULL,'N','IC - INSTRUMENT AND CONTROL SYSTEMS','IC - INSTRUMENT AND CONTROL SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EL - ELECTRICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.044','2050-12-31 00:00:00.044','EL - ELECTRICAL','1','2021-07-31 00:00:00.044',NULL,'N','EL - ELECTRICAL','EL - ELECTRICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.045','2050-12-31 00:00:00.045','IS','1','2021-07-31 00:00:00.045',NULL,'N','IS','IS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'C1 - CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.046','2050-12-31 00:00:00.046','C1 - CIVIL','1','2021-07-31 00:00:00.046',NULL,'N','C1 - CIVIL','C1 - CIVIL')
end

