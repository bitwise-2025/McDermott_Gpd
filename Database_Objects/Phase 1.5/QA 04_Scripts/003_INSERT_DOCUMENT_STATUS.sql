declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'PLANNED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','','1',@Date,NULL,'N','PLANNED','PLANNED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'APPROVED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N','APPROVED FOR DESIGN','APPROVED FOR DESIGN')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'VOID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','VOID','VOID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'A - NO COMMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','fQåS?eþR,Š…P Il,','1',@Date,NULL,'N','A - NO COMMENT','A - NO COMMENT')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','§åŸ§ÁCíßˆ¼4y§î','1',@Date,NULL,'N','SUPERSEDED','SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'A - APPROVED. FABRICATION MAY PROCEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N','A - APPROVED. FABRICATION MAY PROCEED','A - APPROVED. FABRICATION MAY PROCEED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'APPROVED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','šKúr›MÏš9zKµ','1',@Date,NULL,'N','APPROVED FOR CONSTRUCTION','APPROVED FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'CANCELLED (CAN)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N','CANCELLED (CAN)','CANCELLED (CAN)')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3B - WORK MAY NOT PROCEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LhNU—ÝÇ×Æê.''nF#','1',@Date,NULL,'N','3B - WORK MAY NOT PROCEED','3B - WORK MAY NOT PROCEED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '2-REVIEWED WITH MINOR COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñkF’ÓÅOÙu•þtW','1',@Date,NULL,'N','2-REVIEWED WITH MINOR COMMENTS','2-REVIEWED WITH MINOR COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW. W'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','†… X-Õ‹”P_ÌwÑ±3','1',@Date,NULL,'N','3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW. W','3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW. W')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '4 - CERTIFIED FINAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','È[+Çšåñ| hÀÃ0a','1',@Date,NULL,'N','4 - CERTIFIED FINAL','4 - CERTIFIED FINAL')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÇäÎ-§SÎÝ¬¬×Ìt]‹','1',@Date,NULL,'N','3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW','3A - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ßBLHÐ¢Ók,^=«f','1',@Date,NULL,'N','ISSUED FOR CONSTRUCTION','ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'INF - FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','1Öæ_Ž¬ÈZ‘Øzb','1',@Date,NULL,'N','INF - FOR INFORMATION','INF - FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR TENDER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','™¶ƒ%YU‘ËXqàa~','1',@Date,NULL,'N','ISSUED FOR TENDER','ISSUED FOR TENDER')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'CANCELLED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','CANCELLED','CANCELLED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AS BUILT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Rpµã½¸1‹¦¼4Î¨’','1',@Date,NULL,'N','AS BUILT','AS BUILT')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '7 - SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','CÅg^ )ŽyÎ‚„','1',@Date,NULL,'N','7 - SUPERSEDED','7 - SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '2 - REVISE AS NOTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','… ãg','1',@Date,NULL,'N','2 - REVISE AS NOTED','2 - REVISE AS NOTED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3A - WORK MAY PROCEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Ñb6…z]™Ìeš$°¦Æ™','1',@Date,NULL,'N','3A - WORK MAY PROCEED','3A - WORK MAY PROCEED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '7 - FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','qœ­Qö&BwñŸ»DO]Ð','1',@Date,NULL,'N','7 - FOR INFORMATION','7 - FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3 - REVIEWED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Œ#','1',@Date,NULL,'N','3 - REVIEWED WITH COMMENTS','3 - REVIEWED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'STOP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','»i©0¯—¾ |ìñ~êæO','1',@Date,NULL,'N','STOP','STOP')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR COMPANY REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž»ÊŠÓ°Ï¦°¨ÿ3_d','1',@Date,NULL,'N','ISSUED FOR COMPANY REVIEW','ISSUED FOR COMPANY REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'E - SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N','E - SUPERSEDED','E - SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR DETAIL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','a&3³–xÙ´¿1µšßÓY','1',@Date,NULL,'N','ISSUED FOR DETAIL ENGINEERING','ISSUED FOR DETAIL ENGINEERING')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CONSTRUCTION (IFC)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‰Í6—5ckÖHßg¹Zj','1',@Date,NULL,'N','ISSUED FOR CONSTRUCTION (IFC)','ISSUED FOR CONSTRUCTION (IFC)')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C1-ACCEPTED WITHOUT COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N','C1-ACCEPTED WITHOUT COMMENTS','C1-ACCEPTED WITHOUT COMMENTS ')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - C - NOT APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','Íq+’o–Æ¶','1',@Date,NULL,'N','LOI STAGE - C - NOT APPROVED','LOI STAGE - C - NOT APPROVED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'SUPERSEDED (SPD)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','GGj!@Ã=¯Çºº|','1',@Date,NULL,'N','SUPERSEDED (SPD)','SUPERSEDED (SPD)')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'B - APPROVED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','B - APPROVED WITH COMMENTS','B - APPROVED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'F - VOID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N','F - VOID','F - VOID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR PURCHASE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','ISSUED FOR PURCHASE','ISSUED FOR PURCHASE')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LFÞR»bñ•{âØ?','1',@Date,NULL,'N','ISSUED FOR DESIGN','ISSUED FOR DESIGN')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'Cleared'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','Cleared','Cleared')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR BID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','?âªÕ½k§”¬Gƒ','1',@Date,NULL,'N','ISSUED FOR BID','ISSUED FOR BID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'V - VOID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','A–¢b‡2- G¯´ h','1',@Date,NULL,'N','V - VOID','V - VOID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'INTER-DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','INTER-DISCIPLINE CHECK','INTER-DISCIPLINE CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ACCEPTED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','ACCEPTED FOR DESIGN','ACCEPTED FOR DESIGN')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INTERNAL REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N','ISSUED FOR INTERNAL REVIEW','ISSUED FOR INTERNAL REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'REVIEWED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','REVIEWED WITH COMMENTS','REVIEWED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR FEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','§5À6²I}Q¿vž?HØ_','1',@Date,NULL,'N','ISSUED FOR FEED','ISSUED FOR FEED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'A - APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','²¨ÝBiïoîõQ&êè‰','1',@Date,NULL,'N','A - APPROVED','A - APPROVED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','o‘ˆòÛ T}^','1',@Date,NULL,'N','ISSUED FOR CLIENT APPROVAL','ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'Open'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','Open','Open')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C4-FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N','C4-FOR INFORMATION','C4-FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR DEMOLITION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','_€{~Ðr|]÷†÷Tx­*','1',@Date,NULL,'N','ISSUED FOR DEMOLITION','ISSUED FOR DEMOLITION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED PRELIMINARY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','0ùg“+—ÔÑ!‡Ó7í7Â','1',@Date,NULL,'N','ISSUED PRELIMINARY','ISSUED PRELIMINARY')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3B - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','û1ñÅP¾7ªYãÃvÕ','1',@Date,NULL,'N','3B - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW','3B - REVISE AS DIRECTED AND RESUBMIT FOR REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR PERMITTING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','~íYc”@py¤~…~†¶¥','1',@Date,NULL,'N','ISSUED FOR PERMITTING','ISSUED FOR PERMITTING')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR ACCEPTANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','ISSUED FOR ACCEPTANCE','ISSUED FOR ACCEPTANCE')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C2-ACCEPTED AS MARKED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','C2-ACCEPTED AS MARKED','C2-ACCEPTED AS MARKED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'S - SUPERCEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N','S - SUPERCEDED','S - SUPERCEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','ISSUED FOR APPROVAL','ISSUED FOR APPROVAL')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'B - REVIEWED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','0Ä‚Ôï™(ÿ³µ’:K›','1',@Date,NULL,'N','B - REVIEWED WITH COMMENTS','B - REVIEWED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR ISOMETRIC CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','0Çè+TT©\¡²[™','1',@Date,NULL,'N','ISSUED FOR ISOMETRIC CHECK','ISSUED FOR ISOMETRIC CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR SINGLE-DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','œ²Ý¬—ô=Uýã±š\F','1',@Date,NULL,'N','ISSUED FOR SINGLE-DISCIPLINE CHECK','ISSUED FOR SINGLE-DISCIPLINE CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INVITATION TO TENDER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','! òõ 5¹&AhÁÈ8','1',@Date,NULL,'N','ISSUED FOR INVITATION TO TENDER','ISSUED FOR INVITATION TO TENDER')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C - NOT APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N','C - NOT APPROVED','C - NOT APPROVED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'B1 - REVIEWED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','B1 - REVIEWED WITH COMMENTS','B1 - REVIEWED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '5-CANCELLED/SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','5-CANCELLED/SUPERSEDED','5-CANCELLED/SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'INITIAL ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','INITIAL ISSUED FOR CONSTRUCTION','INITIAL ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IFC WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','IFC WITH HOLDS','IFC WITH HOLDS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - D - FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','´`&Ym^MŠô˜Säð','1',@Date,NULL,'N','LOI STAGE - D - FOR INFORMATION','LOI STAGE - D - FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '1 - NO COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',';E­-ÄõüE›Ö(‹È®Ó','1',@Date,NULL,'N','1 - NO COMMENTS','1 - NO COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '5 - INFORMATION ONLY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¾›àJß£ÁFøêz}t§•e','1',@Date,NULL,'N','5 - INFORMATION ONLY','5 - INFORMATION ONLY')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','','1',@Date,NULL,'N','ISSUED FOR IDC','ISSUED FOR IDC')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CONSTRUCTION WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','8â','1',@Date,NULL,'N','ISSUED FOR CONSTRUCTION WITH HOLDS','ISSUED FOR CONSTRUCTION WITH HOLDS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INQUIRY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ˆl:ª”à ŸîW÷;³','1',@Date,NULL,'N','ISSUED FOR INQUIRY','ISSUED FOR INQUIRY')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'VOIDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','êGÈr—Š”¹If™¹ŒÑ','1',@Date,NULL,'N','VOIDED','VOIDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'INTER DISCIPLINE REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£Övà+ˆÕ.o­`ç_''','1',@Date,NULL,'N','INTER DISCIPLINE REVIEW','INTER DISCIPLINE REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR USE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','t]ô˜¥ Ÿª·áÕä±à','1',@Date,NULL,'N','ISSUED FOR USE','ISSUED FOR USE')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AFC WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','AFC WITH HOLDS','AFC WITH HOLDS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR HAZOP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','èV²Y‹7¿Î.lc+Á','1',@Date,NULL,'N','ISSUED FOR HAZOP','ISSUED FOR HAZOP')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INQUIRY / BID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','ISSUED FOR INQUIRY / BID','ISSUED FOR INQUIRY / BID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AS BUILT MARKUPS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','AS BUILT MARKUPS','AS BUILT MARKUPS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','·ëÒézðÝ >ÌÂolN','1',@Date,NULL,'N','ISSUED FOR INFORMATION','ISSUED FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Ù‡²AØ³” ,Ý9f¸','1',@Date,NULL,'N','ISSUED FOR REVIEW','ISSUED FOR REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C5-NOT ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','C5-NOT ACCEPTED','C5-NOT ACCEPTED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '7 - CANCELLED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N','7 - CANCELLED','7 - CANCELLED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','iJÈ7¦ž¹¸šU:@»¤','1',@Date,NULL,'N','ISSUED FOR CLIENT REVIEW','ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR PHA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','wŽ…úÇ ­¸5m#¨ùî','1',@Date,NULL,'N','ISSUED FOR PHA','ISSUED FOR PHA')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR HAZID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','ISSUED FOR HAZID','ISSUED FOR HAZID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - ISSUED FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','¹#UŸ` YU`>ÞOjhK','1',@Date,NULL,'N','LOI STAGE - ISSUED FOR REVIEW','LOI STAGE - ISSUED FOR REVIEW')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR DESIGN CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','2úª{çZ£9¾«Û©´ô','1',@Date,NULL,'N','ISSUED FOR DESIGN CHECK','ISSUED FOR DESIGN CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '6 - VOIDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','6 - VOIDED','6 - VOIDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR INTER-DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','ISSUED FOR INTER-DISCIPLINE CHECK','ISSUED FOR INTER-DISCIPLINE CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'D - FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','D - FOR INFORMATION','D - FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C3-CORRECT AND RESUBMIT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N','C3-CORRECT AND RESUBMIT','C3-CORRECT AND RESUBMIT')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ACCEPTED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','ACCEPTED FOR CONSTRUCTION','ACCEPTED FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'Verified'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','Verified','Verified')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'RE-IFC WITH HOLD'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','³„ì>lM9€TKcÜàß','1',@Date,NULL,'N','RE-IFC WITH HOLD','RE-IFC WITH HOLD')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '2 - REVIEWED WITH MINOR COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',' økVm''ÓÇùìŒÿH','1',@Date,NULL,'N','2 - REVIEWED WITH MINOR COMMENTS','2 - REVIEWED WITH MINOR COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '8 - CANCELLED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','$ï<ÔýÝåŠ‡EÄ>EŸ','1',@Date,NULL,'N','8 - CANCELLED','8 - CANCELLED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'D - FOR INFORMATION ONLY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','}PÝ÷{DM´0îòžS(ò','1',@Date,NULL,'N','D - FOR INFORMATION ONLY','D - FOR INFORMATION ONLY')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUE FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ôgxÙöCU“xR—Îï½2','1',@Date,NULL,'N','ISSUE FOR CONSTRUCTION','ISSUE FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR CLIENT COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','À|ï¯‚Áwœ','1',@Date,NULL,'N','ISSUED FOR CLIENT COMMENTS','ISSUED FOR CLIENT COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - B - APPROVED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LOI STAGE - B - APPROVED WITH COMMENTS','1',@Date,NULL,'N','LOI STAGE - B - APPROVED WITH COMMENTS','LOI STAGE - B - APPROVED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - A - APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LOI STAGE - A - APPROVED','1',@Date,NULL,'N','LOI STAGE - A - APPROVED','LOI STAGE - A - APPROVED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'A - ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','A - ACCEPTED','1',@Date,NULL,'N','A - ACCEPTED','A - ACCEPTED')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ACC - ACCEPTED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ACC - ACCEPTED WITH COMMENTS','1',@Date,NULL,'N','ACC - ACCEPTED WITH COMMENTS','ACC - ACCEPTED WITH COMMENTS')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'NAC - NOT ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','NAC - NOT ACCEPTED','1',@Date,NULL,'N','NAC - NOT ACCEPTED','NAC - NOT ACCEPTED')
end

--0704/2022 additional entries required per QA runs_v1


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR COMPANY APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N','ISSUED FOR COMPANY APPROVAL','ISSUED FOR COMPANY APPROVAL')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '5 - SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','5 - SUPERSEDED','5 - SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'S - SUPERSEDED (5)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','S - SUPERSEDED (5)','S - SUPERSEDED (5)')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'X - VOID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','X - VOID','X - VOID')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'APPROVED FOR CONSTRUCTION WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','APPROVED FOR CONSTRUCTION WITH HOLDS','APPROVED FOR CONSTRUCTION WITH HOLDS')
end


--07/22/2022 additional entries required per QA runs_v3

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IFA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','IFA','IFA')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IFR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','IFR','IFR')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','IDC','IDC')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '2 - ACCEPTED WITH MINOR COMMENTS. REVISE AND RE-IS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.001','2050-12-31 00:00:00.001','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','2 - ACCEPTED WITH MINOR COMMENTS. REVISE AND RE-IS','2 - ACCEPTED WITH MINOR COMMENTS. REVISE AND RE-IS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'S - SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.002','2050-12-31 00:00:00.002','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N','S - SUPERSEDED','S - SUPERSEDED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'B - ACCEPTED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','B - ACCEPTED WITH COMMENTS','B - ACCEPTED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUE FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.004','2050-12-31 00:00:00.004','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','ISSUE FOR INFORMATION','ISSUE FOR INFORMATION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'C - NOT APPROVED, WORK SHALL NOT PROCEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.005','2050-12-31 00:00:00.005','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','C - NOT APPROVED, WORK SHALL NOT PROCEED','C - NOT APPROVED, WORK SHALL NOT PROCEED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AC - ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.006','2050-12-31 00:00:00.006','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','AC - ACCEPTED','AC - ACCEPTED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IFI'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.007','2050-12-31 00:00:00.007','ÒƒŒ$58+ƒÒƒŒ','1',@Date,NULL,'N','IFI','IFI')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AFC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.008','2050-12-31 00:00:00.008','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','AFC','AFC')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'IDC - INTERDISCIPLINARY CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.009','2050-12-31 00:00:00.009','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','IDC - INTERDISCIPLINARY CHECK','IDC - INTERDISCIPLINARY CHECK')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'REDLINE MARKUP - ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.010','2050-12-31 00:00:00.010','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','REDLINE MARKUP - ISSUED FOR CONSTRUCTION','REDLINE MARKUP - ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'AS-BUILT (IAB)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.011','2050-12-31 00:00:00.011','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','AS-BUILT (IAB)','AS-BUILT (IAB)')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = '3 - ACCEPTED. RE-ISSUE IF REQUIRED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.012','2050-12-31 00:00:00.012','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','3 - ACCEPTED. RE-ISSUE IF REQUIRED','3 - ACCEPTED. RE-ISSUE IF REQUIRED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ISSUED FOR ENQUIRY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.013','2050-12-31 00:00:00.013','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','ISSUED FOR ENQUIRY','ISSUED FOR ENQUIRY')
end



