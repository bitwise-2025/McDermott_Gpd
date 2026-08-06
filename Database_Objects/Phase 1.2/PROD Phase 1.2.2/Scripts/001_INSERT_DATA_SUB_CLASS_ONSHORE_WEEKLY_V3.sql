declare @count int				
declare @next_val int
declare @Qnty_NK int
declare @Time_NK int
declare @Amt_NK int

select @Qnty_NK = dim_ent_data_class_nk from dim_ent_data_class Where active=1 and data_class_name = 'Quantity'
select @Time_NK = dim_ent_data_class_nk from dim_ent_data_class Where active=1 and data_class_name = 'Time'
select @Amt_NK = dim_ent_data_class_nk from dim_ent_data_class Where active=1 and data_class_name = 'Amount'




select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','•∏ƒ''h','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module Earned Quantity','Progress Module Earned Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','r˝+1—∂ Õn©∑t~','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Earned Hours','Progress Module Earned Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Previous Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',Cjµ‰sƒ]d•˘Îæ','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module Previous Earned Quantity','Progress Module Previous Earned Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Previous Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ó∞(, ¢«U˙n€k5','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Previous Earned Hours','Progress Module Previous Earned Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Variance Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÏoXÄ?Ü*ñ;&(wSˇ&','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module Variance Earned Quantity','Progress Module Variance Earned Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Variance Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÂÕ∂“ÍΩ£ÚY+’Ú™õ','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Variance Earned Hours','Progress Module Variance Earned Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module TakeOff Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','«ﬂ©é(„„±_·ëlÕ^ˆ','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module TakeOff Quantity','Progress Module TakeOff Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module TakeOff Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','›ßà™3∫P¬Ùç Us+s','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module TakeOff Hours','Progress Module TakeOff Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Progress Base Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÏU1Ë@Œ⁄ö,%ˇØ^∫˚â','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module Progress Base Quantity','Progress Module Progress Base Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Progress Base Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','áí=äÎA''mı»œ^','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Progress Base Hours','Progress Module Progress Base Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Progress Base Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','QÆê£','1','2022-09-19 07:59:24.157',NULL,'N',@Amt_NK,'Amount','Progress Module Progress Base Amount','Progress Module Progress Base Amount','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Actual Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',']7 ˇäÊá_P''Ωo','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Actual Hours','Progress Module Actual Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Actual Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','No''`◊á£[lqf¬','1','2022-09-19 07:59:24.157',NULL,'N',@Amt_NK,'Amount','Progress Module Actual Amount','Progress Module Actual Amount','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Original Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¥»Ù','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Original Hours','Progress Module Original Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Original Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','‘’eî1êµ&y˝ß„¢£','1','2022-09-19 07:59:24.157',NULL,'N',@Qnty_NK,'Quantity','Progress Module Original Quantity','Progress Module Original Quantity','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Original Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ˆBb€˚bèè‹çÎöÖ','1','2022-09-19 07:59:24.157',NULL,'N',@Amt_NK,'Amount','Progress Module Original Amount','Progress Module Original Amount','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Variance Actual Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','=÷HgRq;|†Öx¶','1','2022-09-19 07:59:24.157',NULL,'N',@Time_NK,'Time','Progress Module Variance Actual Hours','Progress Module Variance Actual Hours','BY JDE COA')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Module Variance Actual Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_class_name,gpd_level)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','±ã`˘Ì˙¥Xí≤m1£r','1','2022-09-19 07:59:24.157',NULL,'N',@Amt_NK,'Amount','Progress Module Variance Actual Amount','Progress Module Variance Actual Amount','BY JDE COA')
end