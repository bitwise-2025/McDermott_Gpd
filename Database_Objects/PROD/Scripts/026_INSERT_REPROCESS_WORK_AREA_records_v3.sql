declare @count int				
declare @next_val int				
select @count = count(*) from dim_entp_work_area Where work_area_code = '011'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','Ý/þDþž–ÙŠMIýG‘','1','2021-08-20 00:00:01.000',NULL,'N','011','Used by Co. 281 India - Engineering Labor','161','125','49','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '012'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','^}¥T¡–\·À;','1','2021-08-20 00:00:01.000',NULL,'N','012','Co. 281 - CSA-SO2 to SO1 Mhrs Transfer','161','125','49','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '109'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','109','1','2021-08-20 00:00:01.000',NULL,'N','109','Co. 281 - Test Pack','161','125','47','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '233'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','^}¥T¡–\·À;','1','2021-08-20 00:00:01.000',NULL,'N','233','Gas Recovery Area Module Stair (PAS) - 233M1','161','39','107','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '281'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','281','1','2021-08-20 00:00:01.000',NULL,'N','281','India Eng','161','125','195','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '311'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','311','1','2021-08-20 00:00:01.000',NULL,'N','311','Polymer Powder Bins Module Stair Tower (PAS)-311M1','161','39','167','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '583'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','583','1','2021-08-20 00:00:01.000',NULL,'N','583','AFY Subcontract','161','39','194','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '900'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','900','1','2021-08-20 00:00:01.000',NULL,'N','900','CCIP ADDITONAL COST FOR S/C','161','128','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '902'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','902','1','2021-08-20 00:00:01.000',NULL,'N','902','WALKER FAB COST','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '903'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','903','1','2021-08-20 00:00:01.000',NULL,'N','903','SITE PREP B','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '905'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','905','1','2021-08-20 00:00:01.000',NULL,'N','905','LEGACY MCDERMOTT STAFF (1008)','161','125','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '906'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','906','1','2021-08-20 00:00:01.000',NULL,'N','906','HOLDING ACCOUNT - GP','161','125','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '971'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','971','1','2021-08-20 00:00:01.000',NULL,'N','971','ALTAMIRA - MXC 20% REMAINING BUDGETS','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '973'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','973','1','2021-08-20 00:00:01.000',NULL,'N','973','Steel Go Carry Over Work','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = 'FRR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','FRR','1','2021-08-20 00:00:01.000',NULL,'N','FRR','WALKER Material Accrual (Co. 661)','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '001'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','001','1','2021-08-20 00:00:01.000',NULL,'N','001','001: TBD','161','39','49','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '972'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','972','1','2021-08-20 00:00:01.000',NULL,'N','972','AFY - Coperion Related Work','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '901'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','901','1','2021-08-20 00:00:01.000',NULL,'N','901','ALTAMIRA COST','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '904'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','904','1','2021-07-20 00:00:01.000',NULL,'N','904','WELDING RIG PAY','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '907'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','907','1','2021-07-20 00:00:01.000',NULL,'N','907','TWIK CARD PURCHASE','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '908'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','908','1','2021-07-20 00:00:01.000',NULL,'N','908','FORCE MAJEURE','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '910'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','910','1','2021-07-20 00:00:01.000',NULL,'N','910','SAFETY TRAINING (OTHER THAN INITIAL)','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '911'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','911','1','2021-07-20 00:00:01.000',NULL,'N','911','HURRICANE PREP','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '919'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','919','1','2021-07-20 00:00:01.000',NULL,'N','919','COVID19 IMPACT','161','126','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '920'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','920','1','2021-07-20 00:00:01.000',NULL,'N','920','MATL FOR COMP OWNED EQUIPMENT','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '965'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','965','1','2021-07-20 00:00:01.000',NULL,'N','965','INSULATION - SELF PERFORM','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '993'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','993','1','2021-07-20 00:00:01.000',NULL,'N','993','MATL HANDLING - DIRECT LABOR','161','39','109','99236910')
end

select @count = count(*) from dim_entp_work_area Where work_area_code = '999'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','999','1','2021-07-20 00:00:01.000',NULL,'N','999','AFY MODULE CARRYOVER WORK','161','39','109','99236910')
end

