declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_data_class Where data_class_name = 'Progress'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','FµøÅ‹g›BCËÛWId,†','1','2020-10-07 00:00:00.000',NULL,'N','Progress')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','²ô…‹@NÑb½ôÇ','1','2021-02-02 18:10:52.657',NULL,'N','Amount')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Plan'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','l½÷­)(','1','2020-10-07 00:00:00.000',NULL,'N','Plan')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Budget'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','‚+êÖÁIÿ¬¾zÄL9Xí','1','2020-10-07 00:00:00.000',NULL,'N','Budget')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'TIME'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','4oó.ª< ˜?²ìxÓR','1','2020-10-07 00:00:00.000',NULL,'N','TIME')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','iN.àVùŽäˆ½Ä˜-s','1','2021-02-02 18:05:08.403',NULL,'N','Quantity')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Percentage'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7¾ ŸS¥Ö6ÕÉÊšæL','1','2020-11-23 00:00:00.000',NULL,'N','Percentage')
end

select @count = count(*) from dim_ent_data_class Where data_class_name = 'Rate'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_class_nk),0) + 1 from dim_ent_data_class
	insert into dim_ent_data_class(dim_ent_data_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,data_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Ü¶oöä¢QzÞ7y“œ','1','2021-02-02 18:11:53.780',NULL,'N','Rate')
end

