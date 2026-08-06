declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_document_status Where document_status_code = 'VOIDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','êGÈr—Š”¹If™¹ŒÑ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','VOIDED','VOIDED')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'INTER DISCIPLINE REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£Övà+ˆÕ.o­`ç_''','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','INTER DISCIPLINE REVIEW','INTER DISCIPLINE REVIEW')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LFÞR»bñ•{âØ?','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR DESIGN','ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR DESIGN CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','2úª{çZ£9¾«Û©´ô','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR DESIGN CHECK','ISSUED FOR DESIGN CHECK')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR DEMOLITION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','_€{~Ðr|]÷†÷Tx­*','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR DEMOLITION','ISSUED FOR DEMOLITION')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ßBLHÐ¢Ók,^=«f','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR CONSTRUCTION','ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR USE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','t]ô˜¥ Ÿª·áÕä±à','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR USE','ISSUED FOR USE')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','§åŸ§ÁCíßˆ¼4y§î','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','SUPERSEDED','SUPERSEDED')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR COMPANY REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž»ÊŠÓ°Ï¦°¨ÿ3_d','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR COMPANY REVIEW','ISSUED FOR COMPANY REVIEW')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','·ëÒézðÝ >ÌÂolN','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR INFORMATION','ISSUED FOR INFORMATION')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Ù‡²AØ³” ,Ý9f¸','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR REVIEW','ISSUED FOR REVIEW')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR DETAIL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','a&3³–xÙ´¿1µšßÓY','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR DETAIL ENGINEERING','ISSUED FOR DETAIL ENGINEERING')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','o‘ˆòÛ T}^','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR CLIENT APPROVAL','ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','iJÈ7¦ž¹¸šU:@»¤','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR CLIENT REVIEW','ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR PHA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','wŽ…úÇ ­¸5m#¨ùî','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR PHA','ISSUED FOR PHA')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'PLANNED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','PLANNED','PLANNED')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'STOP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','»i©0¯—¾ |ìñ~êæO','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','STOP','STOP')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'ISSUED FOR ISOMETRIC CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','0Çè+TT©\¡²[™','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','ISSUED FOR ISOMETRIC CHECK','ISSUED FOR ISOMETRIC CHECK')
end

select @count = count(*) from dim_ent_document_status Where document_status_code = 'APPROVED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from dim_ent_document_status
	insert into dim_ent_document_status(dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','šKúr›MÏš9zKµ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0','APPROVED FOR CONSTRUCTION','APPROVED FOR CONSTRUCTION')
end

