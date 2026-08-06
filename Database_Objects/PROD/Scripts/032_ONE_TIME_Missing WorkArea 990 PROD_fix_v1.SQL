declare @count int			
declare @next_val int			

select @count = count(*) from dim_entp_work_area Where work_area_code = '990'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_entp_work_area_nk),0) + 1 from dim_entp_work_area
	insert into dim_entp_work_area(dim_entp_work_area_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_code,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk,project_number)
	 values (@next_val,'2000-01-01 00:00:00.000','9999-12-30 00:00:00.000','+n½[+Y-¦lÌ4C','1','2022-01-17 00:00:01.000',NULL,'N','990','SLOTO - CONSTRUCTION SUPPORT','161','39','109','99236910')
end

