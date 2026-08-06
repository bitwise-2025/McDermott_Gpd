declare @count int				
declare @next_val int				
select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-029'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-029','Workshops')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-041'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-041','EPCI Cost Estimate')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-042'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-042','EPCI Project Schedule')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-052'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-052','Site Survey')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-100'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-100','Design Basis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-105'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-105','Calculations / Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-106'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-106','Layout / Geometry Studies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-107'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-107','Lists, Schedules & Indices')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-110'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-110','Specifications')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-111'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-111','Data Sheets')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-112'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-112','Requisition / Vendor Inquiry')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-113'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-113','Technical Bid Evaluation (TBE)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-114'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-114','Purchase Requisitions')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-120'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-120','Reports & Studies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-124'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-124','MTO (Material Take-Off)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-125'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-125','Drawing Index')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-139'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-139','As-Built Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-142'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-142','Project Closeout Report)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-145'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-145','Manuals and Data Books')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-146'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-146','Constructability Review')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-147'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-147','Cathodic Protection Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-148'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-148','Material Selection Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-151'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-151','Line List')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-152'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-152','Process Simulation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-153'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-153','HAZOP / HAZID ')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-154'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-154','Design, Startup, & Operating Manuals')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-155'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-155','Philosophies (Isolation, Operation, Control Drain & Vents)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-156'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-156','S.A.F.E. Charts')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-171'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-171','Pipe Heat Tracing')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-172'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-172','Electrical Philosophy')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-173'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-173','Electrical Detail Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-190'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-190','Equipment List')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-191'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-191','Lube Schedule and Spare Parts')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-192'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-192','HVAC System')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-210'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-210','Telecommunications Philosophies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-220'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-220','INtools (Smart Plant Instrumentation)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-221'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-221','Cause & Effect Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-222'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-222','Automation System Design & Deliverables')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-223'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-223','SIL Classification & Verification Studies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-224'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-224','Instrument Index')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-225'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-225','Instrument Layout Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-226'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-226','Instrument and Control Philosophy')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-229'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-229','Panel Drawings, Sketches & Schematics')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-230'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-230','Safety Instrumented Systems (SIS) Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-231'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-231','Instrument Philosophies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-240'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-240','Fire & Safety Philosophies')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-260'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-260','Weight & CoG Control')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-261'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-261','Platform Push Over Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-262'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-262','Load Development')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-263'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-263','Jacket In-Place Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-264'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-264','Jacket Fatigue Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-265'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-265','Jacket Seismic Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-266'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-266','Jacket Ship Impact Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-267'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-267','Jacket Loadout Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-268'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-268','Jacket Transportation Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-269'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-269','Jacket Launch Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-270'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-270','Jacket Lift Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-271'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-271','Jacket Docking Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-272'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-272','Jacket On-Bottom Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-273'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-273','Topsides to Jacket Docking Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-274'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-274','Jacket Miscellaneous Analyses')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-275'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-275','Structural Integrity Assessment')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-276'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-276','Jacket Primary Steel Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-277'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-277','Jacket Secondary Steel Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-278'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-278','Template Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-279'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-279','Pile Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-280'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-280','Conductor Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-281'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-281','Flood & Vent System')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-282'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-282','Grouting System')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-284'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-284','Topsides / Deck In-Place Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-285'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-285','Topsides / Deck Fatigue Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-286'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-286','Topsides / Deck Seismic Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-287'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-287','Topsides / Deck Loadout Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-288'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-288','Topsides / Deck Transportation Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-289'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-289','Topsides / Deck Lift Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-290'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-290','Topsides / Deck Floatover Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-291'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-291','Topsides / Deck Miscellaneous Analyses')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-292'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-292','Topsides / Deck Primary Steel Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-293'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-293','Topsides / Deck Secondary Steel Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-294'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-294','Helideck Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-295'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-295','Bridge Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-296'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-296','Flare Boom / Tower Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-297'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-297','Modules/Skids')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-299'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-299','Installation Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-300'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-300','Miscellaneous Structural Engineering ')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-301'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-301','Existing Platform Assessments')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-302'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-302','Building Design (Structural)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-303'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-303','Building Design (Architectural)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-304'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-304','J-Lay System Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-305'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-305','Subsea Structure /PLEM / PLET Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-306'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-306','Soil Investigation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-314'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-314','Model Testing')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-315'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-315','Barge Modeling')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-316'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-316','Construction Vessel DP Station Keeping')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-317'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-317','Construction Vessel Workability')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-318'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-318','Derrick Barge Stability')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-319'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-319','Fatigue Analysis Tow')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-321'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-321','Floatover Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-322'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-322','Global Performance (Spar/FPSO In-Place Performance)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-323'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-323','Hull Analysis & Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-324'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-324','Hull Design Strength Main Steel')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-325'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-325','Hull Detail Steel Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-326'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-326','Hull Interface')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-327'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-327','In-Place Stability')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-328'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-328','Installation Aids')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-329'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-329','Launch Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-330'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-330','Loadout Ballasting')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-331'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-331','Marine Systems (Design & Analysis)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-332'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-332','Mooring Installation (Spars)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-333'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-333','Mooring System Design (Spar)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-334'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-334','Post Upend Installation (Spar)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-335'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-335','SPAR Truss Detail Steel')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-336'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-336','SPAR Truss Main Steel Fatigue')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-337'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-337','SPAR Truss Main Steel Strength')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-338'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-338','Stability Program Development')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-339'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-339','Tiedown Design / Seafastening Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-340'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-340','Transportation / Tow Stability')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-341'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-341','Upend Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-342'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-342','Vessel Motion Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-343'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-343','Mooring Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-344'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-344','Floatover Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-345'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-345','Jacket Upending Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-346'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-346','Engineered Lift Study')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-347'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-347','Docking Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-353'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-353','Pipeline Shore Approach Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-354'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-354','Subsea Well & Production Rigid Jumpers')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-355'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-355','Subsea Field Architecture')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-356'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-356','Subsea System Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-357'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-357','Subsea Pipeline Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-358'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-358','Subsea Riser Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-359'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-359','Subsea Hardware Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-360'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-360','Subsea Controls Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-361'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-361','Subsea Flexible Flowline Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-362'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-362','Subsea Umbilical Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-363'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-363','Flow Assurance Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-364'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-364','Subsea Pipeline Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-365'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-365','Subsea Riser Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-366'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-366','Subsea Hardware Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-367'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-367','Subsea Controls Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-368'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-368','Subsea Flexible Flowline Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-369'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-369','Subsea Umbilical Installation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-370'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-370','Artificial Lift System Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-371'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-371','Subsea Power Transmission & Distribution')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-372'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-372','3rd Party and In-House Specialist Study Including FA & QRA')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-373'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-373','Onshore Pipeline Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-376'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-376','Beachpull Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-377'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-377','Pipeline Installation Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-378'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-378','Pipeline Davit Lift and Riser Installation Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-379'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-379','Cables / Umbilicals / Flexibles Installation Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-380'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-380','Pipe-in-Pipe Design & Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-381'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-381','Pipe-in-Pipe Component Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-382'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-382','Suction Pile Design & Analysis Reports')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-383'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-383','Pipe Reeling Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-384'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-384','Clamp & Supports Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-385'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-385','Installation Equipment Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-386'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-386','Finite Element Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-400'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-400','P&IDs / Mechanical Flow Diagrams (MFD)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-401'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-401','Hydrotest Flow Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-402'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-402','Utility / Process Flow Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-403'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-403','Safety Flow Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-421'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-421','Layout Drawings - Instrumentation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-422'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-422','Instrument Loop Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-423'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-423','Instrument and F&G Loop Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-424'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-424','Cable Tray Support Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-426'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-426','Instrument Control Building')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-427'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-427','Block Diagrams & Wiring Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-428'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-428','Hookups and Installation Details')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-429'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-429','Sketches, Schematics, & Panel Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-440'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-440','Layout Drawings - Telecom')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-441'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-441','Telecommunications Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-450'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-450','Equipment Arrangement Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-451'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-451','CONSTRUCTSIM Administration')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-452'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-452','Isometrics')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-453'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-453','Spool Drawings (2 and above)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-454'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-454','Piping Details')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-455'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-455','Pipe Supports')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-456'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-456','Piping / Layout Input')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-457'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-457','Escape Route & Safety Layout')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-458'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-458','Material Handling Layout')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-460'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-460','Spool Drawings (1-1/2 and below)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-470'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-470','Area Classification Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-471'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-471','Electrical Block Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-472'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-472','Single Line Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-473'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-473','Wiring & Interconnection Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-474'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-474','Electrical Schematic Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-475'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-475','Electrical Installation Details')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-477'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-477','Living Quarters Electrical Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-479'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-479','Electrical Conduit / Cable Schedule')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-480'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-480','Electrical Miscellaneous Support Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-481'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-481','Layout Drawings-Electrical')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-482'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-482','Electrical Cable Tray Support Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-483'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-483','Electrical Control Building')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-530'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-530','Jacket General Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-531'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-531','Jacket Primary Steel Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-532'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-532','Jacket Secondary Steel Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-533'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-533','Jacket Appurtenances Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-534'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-534','Topsides/Deck General Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-535'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-535','Topsides/Deck Primary Steel Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-536'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-536','Topsides/Deck Secondary Steel Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-537'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-537','Topsides/Deck Access Platforms Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-538'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-538','Topsides/Deck Equipment Support Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-539'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-539','Topsides/Deck Appurtenances Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-540'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-540','Vent / Flare Boom Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-541'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-541','Helideck Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-542'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-542','Bridge Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-543'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-543','Module / Skid Primary Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-544'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-544','Module / Skid Secondary Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-545'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-545','Building Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-547'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-547','Loadout Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-548'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-548','Transportation, Seafastening & Grillage Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-549'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-549','Installation Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-550'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-550','Mooring System Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-551'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-551','Marine Systems Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-552'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-552','Barge Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-553'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-553','Portable Equipment Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-554'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-554','J-Lay System Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-555'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-555','Subsea Structure / PLEM / PLET Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-556'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-556','Architectural Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-570'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-570','Field Layout Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-571'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-571','Pipeline Alignment Sheets')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-572'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-572','Pipeline Installation Details')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-573'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-573','Riser System Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-574'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-574','SCR Routing Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-575'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-575','Subsea Structure / Equipment Details')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-576'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-576','Wellbay Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-577'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-577','Subsea GA and Detail Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-578'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-578','Subsea Structural Drawing - Valve Skid, Wye, Alignment Frame, etc.')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-579'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-579','Onshore Pipeline Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-580'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-580','Approach Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-581'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-581','Crossing Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-582'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-582','Miscellaneous Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-583'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-583','Clamp & Supports Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-584'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-584','Installation Equipment Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-585'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-585','Installation Sequence Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-603'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-603','Rigging Design for Structures')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-604'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-604','Pile Drivability and Pile Installation Checks')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-630'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-630','Miscellaneous Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-631'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-631','Deck - Construction Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-632'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-632','Deck - Construction Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-633'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-633','Jacket - Construction Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-634'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-634','Jacket - Construction Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-635'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-635','Installation Procedure Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-636'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-636','Yard Layouts')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-643'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-643','Anchor Pattern')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-644'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-644','Loadout Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-645'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-645','Transport Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-646'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-646','Instalation Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-660'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-660','RBI Input / Coordination')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-662'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-662','Materials Selection and Corrosion Engineering Reports / Diagrams')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-700'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-700','Riser Sizing and Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-701'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-701','Configuration and Layout Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-702'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-702','Riser Payload Calculation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-703'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-703','Riser Interference Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-704'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-704','Strength Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-705'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-705','Riser Stroke Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-706'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-706','Riser Component Sizing')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-707'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-707','Interface Loads and Support Reactions')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-708'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-708','VIV Fatigue Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-709'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-709','Wave Fatigue Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-710'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-710','VIM Fatigue Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-711'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-711','Fatigue Histogram Generation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-712'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-712','ECA Analysis Input')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-713'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-713','Centralizer Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-714'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-714','Thermal/Preload Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-715'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-715','Riser Anode Design')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-716'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-716','Riser Component FEA Verification')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-717'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-717','Installation Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-718'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-718','Jumper/Umbilical Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-719'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-719','CVA Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-720'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-720','Philosophy & Methodology ')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-721'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-721','Supplier Management Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-750'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-750','Riser Configuration Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-751'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-751','Riser Layout Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-752'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-752','Riser Component Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-753'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-753','Riser Installation Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-754'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-754','TTR Well bay layout')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-755'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-755','TTR Well bay Jumper/Umbilicals')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-756'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-756','TTR General Assembly')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-757'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-757','TTR Stroke w/tree')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-758'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-758','TTR Stroke w/BOP')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-800'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-800','Fluids Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-801'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-801','PVT Properties Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-803'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-803','SITP Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-804'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-804','SCSSV Location Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-810'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-810','Steady State Line Sizing and Flow Capacity')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-811'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-811','Evaluation of Insulation Requirement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-812'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-812','Thermal Analysis and Insulation Verification')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-813'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-813','Shutdown/Cooldown Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-814'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-814','Startup/Warmup Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-815'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-815','Packing Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-816'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-816','Depressurization (Blowdown) Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-817'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-817','Sand Mobilization Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-818'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-818','Slugging Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-819'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-819','Pigging Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-820'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-820','Gas Injection Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-821'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-821','Water Injection Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-822'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-822','Chemical Injection Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-823'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-823','Surge (Water Hammer) Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-824'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-824','Riser Base Gas Lift Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-825'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-825','Export Pipeline System Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-830'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','D-830','Flow Assurance Evaluation Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-831'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','D-831','Steady State Hydraulic Analysis Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-832'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','D-832','Transient Analysis Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-833'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','D-833','Operating Philosophy Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-834'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','D-834','Export Pipeline System Report')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-850'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','D-850','Brownfield data collection')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-851'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-851','Site activities involving inspection, Coordination and technical support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-853'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','D-853','Concrete Structural Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-854'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-854','Concrete Detailed Design Calculations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-855'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-855','Steel Structural Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-856'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','D-856','Steel Detailed Design Calculations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-857'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','D-857','Sub-Structural Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-858'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','D-858','Sub-Structural Design Calculations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-859'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','D-859','Foundation Analysis')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-860'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','D-860','Foundation Design Calculations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-861'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','D-861','Miscellaneous Structure Analysis and Design Calculations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-875'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','D-875','General Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-876'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','D-876','Layout Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-877'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','D-877','Pipe bridge/racks tire level general arrangement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-878'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','D-878','Civil works General Arrangement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-879'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','D-879','Concrete Structural Design Drawings - Superstructure')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-880'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','D-880','Concrete Structural Design Drawings - Substructure')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-881'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','D-881','Concrete Structural Design Drawings - Foundations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-882'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','D-882','Reinforcement Detail Drawings (all with BBS included) - Substructure')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-883'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','D-883','Reinforcement Detail Drawings (all with BBS included) - Superstructure')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-884'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','D-884','Reinforcement Detail Drawings (all with BBS included) - Foundations')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-885'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','D-885','Structural Steel Detail Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-886'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','D-886','Civil works Detail Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-890'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','D-890','Architectural Drawings')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-891'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','D-891','Building floor level Architectural (civil) General Arrangement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-892'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','D-892','Building floor level Concrete Structural General Arrangement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'D-893'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','D-893','Building floor level Steel Structural General Arrangement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'M-121'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','M-121','Modeling Equipment')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'M-122'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2022-05-31 00:00:00.000',NULL,'N','M-122','3D Modeling (non-equipment)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'M-123'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2022-05-31 00:00:00.000',NULL,'N','M-123','3D Model Reviews')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'M-126'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2022-05-31 00:00:00.000',NULL,'N','M-126','3D Model Administration')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-001'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2022-05-31 00:00:00.000',NULL,'N','N-001','Supervision')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-002'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2022-05-31 00:00:00.000',NULL,'N','N-002','Meetings ')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-003'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2022-05-31 00:00:00.000',NULL,'N','N-003','Estimating')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-004'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2022-05-31 00:00:00.000',NULL,'N','N-004','Planning & Scheduling-Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-005'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','N-005','Co-ordination')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-008'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','N-008','Travel')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-010'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2022-05-31 00:00:00.000',NULL,'N','N-010','TQA (Technical Quality Audit)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-012'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2022-05-31 00:00:00.000',NULL,'N','N-012','Task Force Stand-By')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-014'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2022-05-31 00:00:00.000',NULL,'N','N-014','Standards & Procedures')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-034'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2022-05-31 00:00:00.000',NULL,'N','N-034','Training, Education, & Development')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-036'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2022-05-31 00:00:00.000',NULL,'N','N-036','Field Construction Support / Hook-up Support (at site)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-038'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2022-05-31 00:00:00.000',NULL,'N','N-038','Regulatory Review/Submittals/Approvals')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-055'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2022-05-31 00:00:00.000',NULL,'N','N-055','FEED verification/Endorsement')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-056'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2022-05-31 00:00:00.000',NULL,'N','N-056','Follow-on Engineering')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-104'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2022-05-31 00:00:00.000',NULL,'N','N-104','Study Company Supplied Data (Customer)')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-127'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2022-05-31 00:00:00.000',NULL,'N','N-127','Inter Discipline Checking')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-131'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2022-05-31 00:00:00.000',NULL,'N','N-131','Support for 3rd Party Certification')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-143'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2022-05-31 00:00:00.000',NULL,'N','N-143','Pre-commissioning & Commissioning Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-374'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2022-05-31 00:00:00.000',NULL,'N','N-374','Review Documents')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-459'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2022-05-31 00:00:00.000',NULL,'N','N-459','VNET Administration')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-600'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2022-05-31 00:00:00.000',NULL,'N','N-600','E&M Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-601'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2022-05-31 00:00:00.000',NULL,'N','N-601','Diving Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-640'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2022-05-31 00:00:00.000',NULL,'N','N-640','Hook-Up Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-661'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2022-05-31 00:00:00.000',NULL,'N','N-661','Noise Support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-663'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2022-05-31 00:00:00.000',NULL,'N','N-663','Supplier Appraisal / Material Issues / Substitutions')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-722'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2022-05-31 00:00:00.000',NULL,'N','N-722','Inspection/Testing')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-802'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2022-05-31 00:00:00.000',NULL,'N','N-802','Flow Assurance Evaluation')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'N-852'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2022-05-31 00:00:00.000',NULL,'N','N-852','Site activities involving inspection, Coordination and technical support')
end

select @count = count(*) from [dbo].[dim_ent_gac] Where gac_code = 'V-118'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_gac_nk),0) + 1 from [dbo].[dim_ent_gac]
	insert into [dbo].[dim_ent_gac](dim_ent_gac_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,gac_code,gac_description)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2022-05-31 00:00:00.000',NULL,'N','V-118','Vendor Data Review/Engineering Subcontract Review')
end

