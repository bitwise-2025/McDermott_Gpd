declare @count int				
declare @next_val int				

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Variance Actual Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Çß©Ž(ãã±_á‘lÍ^ö','1','2021-07-12 00:59:00.157',NULL,'N','16','Amount','Variance Actual Amount','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Variance Actual Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','‘úp·½¦a¨ÐáqzªåW','1','2021-07-12 00:59:00.157',NULL,'N','1','Time','Variance Actual Hours','BY JDE COA')
end