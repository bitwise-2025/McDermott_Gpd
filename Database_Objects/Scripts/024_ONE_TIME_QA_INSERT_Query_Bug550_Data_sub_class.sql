declare @count int				
declare @next_val int				

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Quantity Wk'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¥¸Ä''h','1','2021-07-05 07:59:24.157',NULL,'N','17','Quantity','Earned Quantity Wk','Earned Quantity Wk','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Hours Wk'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰','1','2021-07-05 07:59:24.157',NULL,'N','1','Hours','Earned Hours Wk','Earned Hours Wk','BY JDE COA')
end


