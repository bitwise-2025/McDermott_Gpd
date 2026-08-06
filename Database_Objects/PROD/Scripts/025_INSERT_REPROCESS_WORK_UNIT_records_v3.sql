declare @count int				
declare @next_val int				
select @count = count(*) from dim_entp_work_unit Where work_unit_code = '500'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_unit_nk),0) + 1 from dim_entp_work_unit
	insert into dim_entp_work_unit(dim_entp_work_unit_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_unit_code,work_unit_name,dim_entp_project_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','Ý/þDþž–ÙŠMIýG‘','1','2021-08-20 00:00:01.000',NULL,'N','500','AFY Subcontract','161','99236910')
end

select @count = count(*) from dim_entp_work_unit Where work_unit_code = '281'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_unit_nk),0) + 1 from dim_entp_work_unit
	insert into dim_entp_work_unit(dim_entp_work_unit_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_unit_code,work_unit_name,dim_entp_project_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','PR','1','2021-08-20 00:00:01.000',NULL,'N','281','India Engineering','161','99236910')
end

