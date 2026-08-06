/* -- not required in PROD
UPDATE dim_ent_document_milestone_sequence
SET Milestone_order=Milestone_id,
Milestone_id=Milestone_order

Go
*/

declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100069399 and milestone_gate_name = 'FINAL ISSUE / IFC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','š‘Ú¿&¿düæ*Rà?`','1',@Date,NULL,'N',6,100069399,'FINAL ISSUE / IFC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50079067 and milestone_gate_name = 'ISSUED FOR PURCHASE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N',5,50079067,'ISSUED FOR PURCHASE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50083299 and milestone_gate_name = 'INTER-DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N',2,50083299,'INTER-DISCIPLINE CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100076147 and milestone_gate_name = 'IFC/IFI/IFU'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','KŸDN> ¶Ê™D§•}','1',@Date,NULL,'N',2,100076147,'IFC/IFI/IFU')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100076156 and milestone_gate_name = 'IFR/IFT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ýþ·¶Ñ³´ 4Ð=ŒöC3','1',@Date,NULL,'N',3,100076156,'IFR/IFT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100074162 and milestone_gate_name = 'ISSUED FOR REVIEW/APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','#i _š‹-„VP<tè','1',@Date,NULL,'N',3,100074162,'ISSUED FOR REVIEW/APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50080407 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N',3,50080407,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 19 and milestone_id = 100070973 and milestone_gate_name = 'AFC APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Ÿ—,>d•wXÚXCÂ§°','1',@Date,NULL,'N',19,100070973,'AFC APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50057780 and milestone_gate_name = 'EXTRACT / ANNOTATE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N',3,50057780,'EXTRACT / ANNOTATE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 50086293 and milestone_gate_name = 'MARKED-UP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N',7,50086293,'MARKED-UP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 15 and milestone_id = 100075687 and milestone_gate_name = 'AFC (HOLDS) APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ŸÕ.ŒSñ µ[M¢š¼s+','1',@Date,NULL,'N',15,100075687,'AFC (HOLDS) APPL (A)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50076078 and milestone_gate_name = 'ISSUED FOR ISOMETRIC CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1',@Date,NULL,'N',3,50076078,'ISSUED FOR ISOMETRIC CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50080419 and milestone_gate_name = 'MEETING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N',2,50080419,'MEETING')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50087372 and milestone_gate_name = 'REJECTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','š¤ž!g®³ñbž­ø÷­:”','1',@Date,NULL,'N',3,50087372,'REJECTED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50080413 and milestone_gate_name = 'ITEM CLOSURE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N',4,50080413,'ITEM CLOSURE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100053607 and milestone_gate_name = 'IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÿbu qÌ„©l}Æ‘;','1',@Date,NULL,'N',2,100053607,'IDC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 9 and milestone_id = 100076153 and milestone_gate_name = 'IAB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','{¦u y#çMr0ÿ Ñ“‚','1',@Date,NULL,'N',9,100076153,'IAB')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 10 and milestone_id = 100067291 and milestone_gate_name = 'INFORMATION ONLY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N',10,100067291,'INFORMATION ONLY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50082938 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N',4,50082938,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100074333 and milestone_gate_name = 'CODE D'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','j,dSÛw <:.YEæud','1',@Date,NULL,'N',7,100074333,'CODE D')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50082859 and milestone_gate_name = 'ISSUED FOR DESIGN 2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N',3,50082859,'ISSUED FOR DESIGN 2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50082853 and milestone_gate_name = 'ISSUED FOR INTERNAL REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N',4,50082853,'ISSUED FOR INTERNAL REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50079058 and milestone_gate_name = 'ISSUED FOR REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N',3,50079058,'ISSUED FOR REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50079281 and milestone_gate_name = 'ISSUED FOR INTER-DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N',2,50079281,'ISSUED FOR INTER-DISCIPLINE CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100076162 and milestone_gate_name = 'IFC/IFP/IFU'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','œ¢w˜_˜vðbqLQv[†','1',@Date,NULL,'N',1,100076162,'IFC/IFP/IFU')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50057853 and milestone_gate_name = 'INITIAL DATA ENTRY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N',2,50057853,'INITIAL DATA ENTRY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100074327 and milestone_gate_name = 'CODE B'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Û’³Dïëu','1',@Date,NULL,'N',7,100074327,'CODE B')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100074330 and milestone_gate_name = 'CODE A'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¬_5d?™ý#¾kÁ¯ ½','1',@Date,NULL,'N',7,100074330,'CODE A')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50080365 and milestone_gate_name = 'DEVELOPED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N',2,50080365,'DEVELOPED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 50057831 and milestone_gate_name = 'FINAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N',6,50057831,'FINAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100050188 and milestone_gate_name = 'APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N',5,100050188,'APPROVED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100076159 and milestone_gate_name = 'IFR/IFT AC/ACC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','º \ˆâž''ˆÆ¿R‹¬B”','1',@Date,NULL,'N',4,100076159,'IFR/IFT AC/ACC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50082938 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N',3,50082938,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 22 and milestone_id = 100075470 and milestone_gate_name = 'IFP APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ùÒ¥ÏCŸK´,''@8/3','1',@Date,NULL,'N',22,100075470,'IFP APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 100022595 and milestone_gate_name = 'ISSUED FOR APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','-rÒ³òÈ (s''[Ä›Ä','1',@Date,NULL,'N',8,100022595,'ISSUED FOR APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100074171 and milestone_gate_name = 'DESIGN COMPLETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','BHZæ9¹¡øC‹?‰Š','1',@Date,NULL,'N',3,100074171,'DESIGN COMPLETE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 50083039 and milestone_gate_name = 'AS-BUILT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N',8,50083039,'AS-BUILT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100069393 and milestone_gate_name = 'RECEIVED COMPANY COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','`3ÖÙuaÇYÈmá','1',@Date,NULL,'N',4,100069393,'RECEIVED COMPANY COMMENTS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50079061 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N',5,50079061,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50080461 and milestone_gate_name = 'PRELIMINARY CALCULATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N',2,50080461,'PRELIMINARY CALCULATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 10 and milestone_id = 100067936 and milestone_gate_name = 'IFA APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','{Ù:¼‰öÙ¸Ï€XOØ©ô>','1',@Date,NULL,'N',10,100067936,'IFA APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 14 and milestone_id = 100075693 and milestone_gate_name = 'APPROVED FOR CONSTRUCTION (HOLDS)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','íV}X2¿2<ÄÛÂëNß[','1',@Date,NULL,'N',14,100075693,'APPROVED FOR CONSTRUCTION (HOLDS)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100076165 and milestone_gate_name = 'IFC/IFP/IFU-AC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','3ú-½ìrK¾Ûå*#6)','1',@Date,NULL,'N',7,100076165,'IFC/IFP/IFU-AC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50057759 and milestone_gate_name = 'INPUT FOR ANALYSIS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N',2,50057759,'INPUT FOR ANALYSIS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 50057884 and milestone_gate_name = 'PERCENT COMPLETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N',1,50057884,'PERCENT COMPLETE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50057777 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N',2,50057777,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 19871 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1',@Date,NULL,'N',4,19871,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50057762 and milestone_gate_name = 'DETAIL ANALYSIS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N',3,50057762,'DETAIL ANALYSIS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 100074330 and milestone_gate_name = 'CODE A'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¬_5d?™ý#¾kÁ¯ ½','1',@Date,NULL,'N',8,100074330,'CODE A')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100065233 and milestone_gate_name = 'CODE 2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘Ü’GHj«ìÇxÞE^gê','1',@Date,NULL,'N',4,100065233,'CODE 2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50082998 and milestone_gate_name = 'ISSUED FOR DETAIL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N',2,50082998,'ISSUED FOR DETAIL ENGINEERING')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 50087016 and milestone_gate_name = 'AFD/AFC RECEIPT CPY1 RVW CODE 1/2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N',6,50087016,'AFD/AFC RECEIPT CPY1 RVW CODE 1/2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50082944 and milestone_gate_name = 'ISSUED MODEL FILE FOR CAD'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N',5,50082944,'ISSUED MODEL FILE FOR CAD')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100074159 and milestone_gate_name = 'ISSUED FOR REVIEW/APPROVAL/INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','b¢«ÍçÖ]Gç¦y¸(','1',@Date,NULL,'N',6,100074159,'ISSUED FOR REVIEW/APPROVAL/INFORMATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 50086290 and milestone_gate_name = 'ACCEPTED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N',6,50086290,'ACCEPTED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50083821 and milestone_gate_name = 'FIELD VERIFICATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N',2,50083821,'FIELD VERIFICATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50080407 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N',4,50080407,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100067840 and milestone_gate_name = 'APPROVED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N',4,100067840,'APPROVED WITH COMMENTS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100074183 and milestone_gate_name = 'FINAL ISSUE / IFD / IFC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¾­íÊk™AÜŠœ)üÞz','1',@Date,NULL,'N',7,100074183,'FINAL ISSUE / IFD / IFC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 100074186 and milestone_gate_name = 'IFI'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ižPêGeÑÜ(°ÏX,L´','1',@Date,NULL,'N',8,100074186,'IFI')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 14993 and milestone_gate_name = 'AFD'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1',@Date,NULL,'N',6,14993,'AFD')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 19549 and milestone_gate_name = 'AFC WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N',7,19549,'AFC WITH HOLDS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50080407 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N',5,50080407,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 18 and milestone_id = 100070970 and milestone_gate_name = 'AFC APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','èØø êÇÑãAU¯P''f','1',@Date,NULL,'N',18,100070970,'AFC APPL (A)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 50080458 and milestone_gate_name = 'PRELIMINARY ANALYSIS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N',1,50080458,'PRELIMINARY ANALYSIS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 15020 and milestone_gate_name = 'FINAL ISSUE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N',4,15020,'FINAL ISSUE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100065230 and milestone_gate_name = 'CODE 1'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÎŒçqÆT97mÐ¤œþÉ','1',@Date,NULL,'N',5,100065230,'CODE 1')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 17 and milestone_id = 100070967 and milestone_gate_name = 'APPROVED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','šKúr›MÏš9zKµ','1',@Date,NULL,'N',17,100070967,'APPROVED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 100067288 and milestone_gate_name = 'AFC FINAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N',8,100067288,'AFC FINAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100067285 and milestone_gate_name = 'RECEIVE CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N',5,100067285,'RECEIVE CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100074153 and milestone_gate_name = 'UPDATED HAZOP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','(œy¯·ªŠ°ÑâÍÐÐJ›','1',@Date,NULL,'N',6,100074153,'UPDATED HAZOP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50080374 and milestone_gate_name = 'FINAL REPORT / ISSUE FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N',5,50080374,'FINAL REPORT / ISSUE FOR INFORMATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 27 and milestone_id = 100075445 and milestone_gate_name = 'AS-BUILT/FINAL APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','RÂÐs÷ééýD×º*Ó','1',@Date,NULL,'N',27,100075445,'AS-BUILT/FINAL APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 19871 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','','1',@Date,NULL,'N',2,19871,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50082938 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N',2,50082938,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50082841 and milestone_gate_name = 'ISSUED FOR COMMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N',2,50082841,'ISSUED FOR COMMENT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 25 and milestone_id = 100075439 and milestone_gate_name = 'AS-BUILT/FINAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','9°Îî§…±Åâ:ÁàYR¢','1',@Date,NULL,'N',25,100075439,'AS-BUILT/FINAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 10 and milestone_id = 50079070 and milestone_gate_name = 'ISSUED FOR USE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N',10,50079070,'ISSUED FOR USE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100074988 and milestone_gate_name = 'CODE 3A'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','D´œ†Ë•[Âcîm¯“ß','1',@Date,NULL,'N',2,100074988,'CODE 3A')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100074991 and milestone_gate_name = 'CODE 3B'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','RÐóØíq”èúœü[{Jj','1',@Date,NULL,'N',1,100074991,'CODE 3B')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100074180 and milestone_gate_name = 'IFC (WITH HOLDS)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Àˆ/nç×¹kÚÄþ2','1',@Date,NULL,'N',6,100074180,'IFC (WITH HOLDS)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100074470 and milestone_gate_name = 'FIRST SUBMISSION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','àãŒS¶‡¾¡<6º]R§','1',@Date,NULL,'N',1,100074470,'FIRST SUBMISSION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50082850 and milestone_gate_name = 'INITIAL ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N',5,50082850,'INITIAL ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50079061 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N',4,50079061,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50057777 and milestone_gate_name = 'DEFINE SECTIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N',2,50057777,'DEFINE SECTIONS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100074168 and milestone_gate_name = 'STUDY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Å<– <2 P§)9','1',@Date,NULL,'N',2,100074168,'STUDY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100074327 and milestone_gate_name = 'CODE B'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Û’³Dïëu','1',@Date,NULL,'N',2,100074327,'CODE B')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100057527 and milestone_gate_name = 'ISSUED FOR IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N',2,100057527,'ISSUED FOR IDC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50080410 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N',5,50080410,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100069396 and milestone_gate_name = 'IFD OR IFC WITH HOLDS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',';“.­ßJà>c8°Ê¬d','1',@Date,NULL,'N',5,100069396,'IFD OR IFC WITH HOLDS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100074150 and milestone_gate_name = 'DRAFT COMPLETE & IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1dÂæ,ûÞ» ‹Qã•?','1',@Date,NULL,'N',2,100074150,'DRAFT COMPLETE & IDC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50082941 and milestone_gate_name = 'INPUT INTO MMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N',4,50082941,'INPUT INTO MMS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50079073 and milestone_gate_name = 'ISSUED FOR INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N',3,50079073,'ISSUED FOR INFORMATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50084558 and milestone_gate_name = 'REPORT / ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N',3,50084558,'REPORT / ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100067837 and milestone_gate_name = 'ISSUED TO CLIENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N',3,100067837,'ISSUED TO CLIENT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50062838 and milestone_gate_name = 'ISSUED FOR HAZOP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','èV²Y‹7¿Î.lc+Á','1',@Date,NULL,'N',4,50062838,'ISSUED FOR HAZOP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 17087 and milestone_gate_name = 'START'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N',1,17087,'START')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 15 and milestone_id = 50079064 and milestone_gate_name = 'ISSUED FOR INQUIRY / BID'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N',15,50079064,'ISSUED FOR INQUIRY / BID')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 50057887 and milestone_gate_name = 'SET UP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N',1,50057887,'SET UP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50080410 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N',4,50080410,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50058521 and milestone_gate_name = 'COMPLETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N',2,50058521,'COMPLETE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 16 and milestone_id = 100075690 and milestone_gate_name = 'AFC (HOLDS) APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™;‘Ý''žU)Z§…Ñ­©D','1',@Date,NULL,'N',16,100075690,'AFC (HOLDS) APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 9 and milestone_id = 100067933 and milestone_gate_name = 'IFA APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','.ÌknzØÀY›KU¨®ÝA','1',@Date,NULL,'N',9,100067933,'IFA APPL (A)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 50001364 and milestone_gate_name = 'STARTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N',1,50001364,'STARTED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100067834 and milestone_gate_name = 'APPROVED WITH ENGINEERING COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N',2,100067834,'APPROVED WITH ENGINEERING COMMENTS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100076153 and milestone_gate_name = 'IAB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','{¦u y#çMr0ÿ Ñ“‚','1',@Date,NULL,'N',4,100076153,'IAB')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100074330 and milestone_gate_name = 'CODE A'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¬_5d?™ý#¾kÁ¯ ½','1',@Date,NULL,'N',6,100074330,'CODE A')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50080410 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N',3,50080410,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100060547 and milestone_gate_name = 'IFH'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','EÆ''’ï:&oÇÛw‡½1','1',@Date,NULL,'N',7,100060547,'IFH')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 8 and milestone_id = 100074333 and milestone_gate_name = 'CODE D'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','j,dSÛw <:.YEæud','1',@Date,NULL,'N',8,100074333,'CODE D')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50087450 and milestone_gate_name = 'ISSUED FOR DETAIL DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','nøý6©Q°¼9AÛ\¦¬Ý','1',@Date,NULL,'N',5,50087450,'ISSUED FOR DETAIL DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50081538 and milestone_gate_name = 'ISSUED FOR INQUIRY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N',4,50081538,'ISSUED FOR INQUIRY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100076165 and milestone_gate_name = 'IFC/IFP/IFU-AC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','3ú-½ìrK¾Ûå*#6)','1',@Date,NULL,'N',2,100076165,'IFC/IFP/IFU-AC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100074159 and milestone_gate_name = 'ISSUED FOR REVIEW/APPROVAL/INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','b¢«ÍçÖ]Gç¦y¸(','1',@Date,NULL,'N',5,100074159,'ISSUED FOR REVIEW/APPROVAL/INFORMATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100074162 and milestone_gate_name = 'ISSUED FOR REVIEW/APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','#i _š‹-„VP<tè','1',@Date,NULL,'N',5,100074162,'ISSUED FOR REVIEW/APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100074147 and milestone_gate_name = 'MARKUP COMPLETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‹—•Ú£Ñ/¦,''ÃMw¬','1',@Date,NULL,'N',1,100074147,'MARKUP COMPLETE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 9 and milestone_id = 100067294 and milestone_gate_name = 'AS BUILT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N',9,100067294,'AS BUILT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 19871 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N',3,19871,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50057881 and milestone_gate_name = 'INTERNAL CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N',3,50057881,'INTERNAL CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 11 and milestone_id = 50083924 and milestone_gate_name = 'CANCELLED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N',11,50083924,'CANCELLED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50081085 and milestone_gate_name = 'ISSUED FOR ACCEPTANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N',4,50081085,'ISSUED FOR ACCEPTANCE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100069390 and milestone_gate_name = 'ISSUED FOR REVIEW/INFORMATION TO COMPANY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','<ö+#Ïh÷ã–}Çy¶Ù','1',@Date,NULL,'N',3,100069390,'ISSUED FOR REVIEW/INFORMATION TO COMPANY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100067927 and milestone_gate_name = 'IFR APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','û:¹V›úèØPñHWkò','1',@Date,NULL,'N',5,100067927,'IFR APPL (A)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100067282 and milestone_gate_name = 'SUBMIT CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N',4,100067282,'SUBMIT CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 14 and milestone_id = 50072598 and milestone_gate_name = 'SUPERSEDED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N',14,50072598,'SUPERSEDED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100074467 and milestone_gate_name = 'CODE A/D'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','úEr¦ý?Ûg§œ²ßGý','1',@Date,NULL,'N',3,100074467,'CODE A/D')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100067279 and milestone_gate_name = 'IDC COMPLETED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N',3,100067279,'IDC COMPLETED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 26 and milestone_id = 100075442 and milestone_gate_name = 'AS-BUILT/FINAL APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','•óykÖšêÐ7&ƒ','1',@Date,NULL,'N',26,100075442,'AS-BUILT/FINAL APPL (A)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100074159 and milestone_gate_name = 'ISSUED FOR REVIEW/APPROVAL/INFORMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','b¢«ÍçÖ]Gç¦y¸(','1',@Date,NULL,'N',3,100074159,'ISSUED FOR REVIEW/APPROVAL/INFORMATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50082878 and milestone_gate_name = 'ISSUED FOR CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N',2,50082878,'ISSUED FOR CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100074327 and milestone_gate_name = 'CODE B'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Û’³Dïëu','1',@Date,NULL,'N',4,100074327,'CODE B')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 50057738 and milestone_gate_name = 'DRAFT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N',2,50057738,'DRAFT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50057765 and milestone_gate_name = 'ISO SIGN-OFF'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N',5,50057765,'ISO SIGN-OFF')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50079278 and milestone_gate_name = 'ACCEPTED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N',5,50079278,'ACCEPTED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 50087010 and milestone_gate_name = 'IFA RECEIPT CPY1 RVW CODE 1/2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N',6,50087010,'IFA RECEIPT CPY1 RVW CODE 1/2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 100076150 and milestone_gate_name = 'IFC/IFI/IFU-AC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','WÀÈV·Ëž AîìÙñ','1',@Date,NULL,'N',3,100076150,'IFC/IFI/IFU-AC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 50080407 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N',6,50080407,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100074150 and milestone_gate_name = 'DRAFT COMPLETE & IDC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1dÂæ,ûÞ» ‹Qã•?','1',@Date,NULL,'N',4,100074150,'DRAFT COMPLETE & IDC')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100067930 and milestone_gate_name = 'IFR APPL (B)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ûÂ°W9ƒï‰š«l','1',@Date,NULL,'N',6,100067930,'IFR APPL (B)')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100076162 and milestone_gate_name = 'IFC/IFP/IFU'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','œ¢w˜_˜vðbqLQv[†','1',@Date,NULL,'N',6,100076162,'IFC/IFP/IFU')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 3 and milestone_id = 50082850 and milestone_gate_name = 'INITIAL ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N',3,50082850,'INITIAL ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 50087030 and milestone_gate_name = 'IFR RECEIPT CPY1 RVW CODE 1/2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N',4,50087030,'IFR RECEIPT CPY1 RVW CODE 1/2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 21 and milestone_id = 100075467 and milestone_gate_name = 'IFP APPL (A)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','àó9=D É¨U¥»Gœ:¼','1',@Date,NULL,'N',21,100075467,'IFP APPL (A)')
end


select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100053610 and milestone_gate_name = 'IFR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','c[¿ ®;ó2‹“/qñ]','1',@Date,NULL,'N',2,100053610,'IFR','IFR')
end
	
select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 25 and milestone_id = 100077407 and milestone_gate_name = 'AS-BUILT/FINAL APPL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇSMLhuÇ—3MAdÌ','1',@Date,NULL,'N',25,100077407,'AS-BUILT/FINAL APPL','AS BUILT')
end
	
-----07/19/2022 Missing Entries---


select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 100076027 and milestone_gate_name = 'RECEIVE CLIENT APPROVAL 1'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇS45huÇ—3MAdÌ','1',@Date,NULL,'N',5,100076027,'RECEIVE CLIENT APPROVAL 1','TBD')
end


select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 100076030 and milestone_gate_name = 'RECEIVE CLIENT APPROVAL 2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇS45huÇ—3MAdÌ','1',@Date,NULL,'N',7,100076030,'RECEIVE CLIENT APPROVAL 2','TBD')
end


select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 5 and milestone_id = 50082862 and milestone_gate_name = 'ISSUED FOR PURCHASE / SUBCONTRACT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇS45huÇ—3MAdÌ','1',@Date,NULL,'N',5,50082862,'ISSUED FOR PURCHASE / SUBCONTRACT','IFP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100074207 and milestone_gate_name = 'RELEASE OF MR / PR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇS45huÇ—3MAdÌ','1',@Date,NULL,'N',1,100074207,'RELEASE OF MR / PR','TBD')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 1 and milestone_id = 100074210 and milestone_gate_name = 'RELEASE OF TQ''S / TBE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇS45huÇ—3MAdÌ','1',@Date,NULL,'N',1,100074210,'RELEASE OF TQ''S / TBE','TBD')
end

