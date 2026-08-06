declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¥¸Ä''h','1','2021-02-05 07:59:24.157',NULL,'N','17','Quantity','Earned Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Estimate To Complete Rate'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','rý+1Ñ¶ÊÍn©·t~','1','2021-02-02 18:58:30.070',NULL,'N','18','Rate','Estimate To Complete Rate')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'At Completion Units'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',CðjµäsÄ]d¥ùë¾','1','2020-12-01 00:00:00.000',NULL,'N','1','Time','At Completion Units')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Base Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5','1','2021-02-02 18:56:42.383',NULL,'N','17','Quantity','Progress Base Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = '6 Week Look Ahead'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìoX€?†*–;&(wSÿ&','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','6 Week Look Ahead')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Budget Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','åÍ¶Òê½£òY+Õòª›','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','Sitepro Budget Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Variance Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Çß©Ž(ãã±_á‘lÍ^ö','1','2021-03-23 00:00:00.000','2021-03-23 00:00:00.000','N','17','Quantity','Variance Earned Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Budget Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Ý§ˆª3ºPÂô Us+s','1','2020-10-07 00:00:00.000',NULL,'N','17','Quantity','Sitepro Budget Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰','1','2021-02-05 07:59:24.157',NULL,'N','1','Time','Earned Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Plan - Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','‡’=ŠëA''mõÈÏ^','1','2020-10-07 00:00:00.000',NULL,'N','4','Plan','Plan - Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Current Budget Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Q®£','1','2021-02-02 18:56:42.383',NULL,'N','16','Amount','Current Budget Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Remaining Early Units'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',']7 ÿŠæ‡_P''½o','1','2020-12-01 00:00:00.000',NULL,'N','1','Time','Remaining Early Units')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Plan - Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','No''`×‡£[lqfÂ','1','2020-10-07 00:00:00.000',NULL,'N','4','Plan','Plan - Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Take-Off Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','´Èô','1','2021-02-05 07:59:24.157',NULL,'N','1','Time','Take-Off Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Percentage Complete'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÔÕe”1µ&yý§ã¢£','1','2021-02-05 07:59:24.157',NULL,'N','5','Percentage','Percentage Complete')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Rate'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','öBbÛûbÜëš…','1','2021-02-05 07:59:24.157',NULL,'N','18','Rate','Actual Rate')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Committed Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','=ÖHgRq;|ð …x¦','1','2021-02-03 03:51:53.563',NULL,'N','16','Amount','Committed Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Forecast Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','±‹`ùíú´X’²m1£r','1','2021-02-05 07:59:24.157',NULL,'N','1','TIME','Forecast Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Committed Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¡êÝ3:A0ƒU”ÜËå€Þ','1','2021-02-05 07:59:24.157',NULL,'N','1','TIME','Committed Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Units'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','óÝsjÙ5ˆ…©Ë ÄDS','1','2020-12-01 00:00:00.000',NULL,'N','4','Plan','Actual Units')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Time - Labor'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','šn'']‘ÞŒNìgC”sé','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','Actual Time - Labor')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Time - Equipment'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','PKúÁÚ’¡ÏH×¡Õ\.','1','2020-10-07 00:00:00.000',NULL,'N','1','TIME','Actual Time - Equipment')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Estimate To Complete Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','&´`©¯µ)úšB@z_s¶†','1','2021-02-02 18:56:42.383',NULL,'N','16','Amount','Estimate To Complete Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Estimate At Completion Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000',' üTá¬G¹î-µ?S‡','1','2021-02-02 18:56:42.383',NULL,'N','16','Amount','Estimate At Completion Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Step Percentage'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','a[î‹7ç÷GT:­','1','2020-11-23 00:00:00.000',NULL,'N','5','Percentage','Step Percentage')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Original Budget Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¿—¼§—;ujù¾3‰','1','2021-02-02 18:56:42.383',NULL,'N','1','Time','Original Budget Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Planned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','³Ç}E/pûÔ×@*ö”‰','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','Sitepro Planned Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Forecast Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','q6BýíŠibIÂÇ“Xr','1','2021-02-05 07:59:24.157',NULL,'N','16','Amount','Forecast Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Forecast Rate'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÜÑ©+>(ÎE“ÍãÉ·æ','1','2021-02-05 07:59:24.157',NULL,'N','18','Rate','Forecast Rate')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Units'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','U!ü¡¶ƒÝ í°æöm·¥','1','2020-12-01 00:00:00.000',NULL,'N','1','Time','Earned Units')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Variance Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','‘úp·½¦a¨ÐáqzªåW','1','2021-03-23 00:00:00.000','2021-03-23 00:00:00.000','N','1','Time','Variance Earned Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Spent Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','•1ìïJeÄ«*âÝW£ºF¸','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','Sitepro Spent Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Earned Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ëóuà ¬rúÞ\','1','2020-10-07 00:00:00.000',NULL,'N','1','Time','Sitepro Earned Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Take-Off Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','~ØÛS¯¼$†«9eIM!','1','2021-02-05 07:59:24.157',NULL,'N','17','Quantity','Take-Off Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000',']ÅøÆéÿ¥t×§*~ùˆï','1','2021-02-05 07:59:24.157',NULL,'N','16','Amount','Actual Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Original Budget Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Dßa*¡’ÕŠÚ“äBe','1','2021-02-02 18:56:06.707',NULL,'N','17','Quantity','Original Budget Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Current Budget Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','¥nÜæ51 oBhA¨²ú','1','2021-02-02 18:56:42.383',NULL,'N','17','Quantity','Current Budget Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Earned Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÂF$qA¨]›Ž8¥Ü‘kx','1','2021-02-05 07:59:24.157',NULL,'N','16','Amount','Earned Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Original Budget Rate'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ïé/Í†ž1.NÓ$IXØ','1','2021-02-02 18:58:30.070',NULL,'N','18','Rate','Original Budget Rate')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Base Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','”Îˆ95Wô¸®>€¡r','1','2021-02-02 18:56:42.383',NULL,'N','1','Time','Progress Base Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Original Budget Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000',',Ž£û=›ƒª° Óž)','1','2021-02-02 18:56:42.383',NULL,'N','16','Amount','Original Budget Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Current Budget Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','W;„×å]”Â“Û»wî‘','1','2021-02-02 18:56:42.383',NULL,'N','1','Time','Current Budget Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Weekly Plan Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','XÄ?]ŸÒé®°A©Ê³¾','1','2021-03-24 15:36:08.567',NULL,'N','1','Time','Weekly Plan Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Installed Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÍàMùœ_îku½”?ì!','1','2020-10-07 00:00:00.000',NULL,'N','17','Quantity','Sitepro Installed Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Progress Base Amount'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','Y©/±}ÚX–Í)Mb''~J','1','2021-02-02 18:56:42.383',NULL,'N','16','Amount','Progress Base Amount')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Sitepro Earned Quantity'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','X*É‹K×GÄÀ','1','2020-10-07 00:00:00.000',NULL,'N','17','Quantity','Sitepro Earned Quantity')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Actual Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','×Ø·à‚v6|œlÛEÊ','1','2021-02-05 07:59:24.157',NULL,'N','1','Time','Actual Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Estimate To Complete Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','h(†æf »m €”²Þy','1','2021-02-02 18:56:42.383',NULL,'N','1','Time','Estimate To Complete Hours')
end

select @count = count(*) from dim_ent_data_sub_class Where data_sub_class_name = 'Estimate At Completion Hours'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_data_sub_class_nk),0) + 1 from dim_ent_data_sub_class
	insert into dim_ent_data_sub_class(dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_data_class_nk,data_class_name,data_sub_class_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ÛðƒÚXè¯Ýi¡‰@¸A¸','1','2021-02-02 18:56:42.383',NULL,'N','1','Time','Estimate At Completion Hours')
end

