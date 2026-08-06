declare @count int				
declare @next_val int				
select @count = count(*) from dim_entp_phase Where phase_code = 'EN '
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_phase_nk),0) + 1 from dim_entp_phase
	insert into dim_entp_phase(dim_entp_phase_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_code,phase_name,dim_entp_project_nk,project_number)
	 values (@next_val,'1900-01-01 00:00:00.000','9999-12-30 00:00:00.000','Ý/þDþž–ÙŠMIýG‘','1','2021-08-20 00:00:01.000',NULL,'N','EN','Engineering','161','99236910')
end

select @count = count(*) from dim_entp_phase Where phase_code = 'PR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_phase_nk),0) + 1 from dim_entp_phase
	insert into dim_entp_phase(dim_entp_phase_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_code,phase_name,dim_entp_project_nk,project_number)
	 values (@next_val,'1900-01-01 00:00:00.000','9999-12-30 00:00:00.000','PR','1','2021-08-20 00:00:01.000',NULL,'N','PR','Procurement','161','99236910')
end

select @count = count(*) from dim_entp_phase Where phase_code = 'FB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_phase_nk),0) + 1 from dim_entp_phase
	insert into dim_entp_phase(dim_entp_phase_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_code,phase_name,dim_entp_project_nk,project_number)
	 values (@next_val,'1900-01-01 00:00:00.000','9999-12-30 00:00:00.000','FB','1','2021-08-20 00:00:01.000',NULL,'N','FB','Fabrication','161','99236910')
end

select @count = count(*) from dim_entp_phase Where phase_code = 'PM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_phase_nk),0) + 1 from dim_entp_phase
	insert into dim_entp_phase(dim_entp_phase_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_code,phase_name,dim_entp_project_nk,project_number)
	 values (@next_val,'1900-01-01 00:00:00.000','9999-12-30 00:00:00.000','^}¥T¡–\·À;','1','2021-08-20 00:00:01.000',NULL,'N','PM','Project Management','161','99236910')
end

select @count = count(*) from dim_entp_phase Where phase_code = 'CM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_phase_nk),0) + 1 from dim_entp_phase
	insert into dim_entp_phase(dim_entp_phase_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_code,phase_name,dim_entp_project_nk,project_number)
	 values (@next_val,'1900-01-01 00:00:00.000','9999-12-30 00:00:00.000','CM','1','2021-08-20 00:00:01.000',NULL,'N','CM','Commissioning','161','99236910')
end

