declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50079061 and milestone_id = 5 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50079061,5,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080365 and milestone_id = 2 and milestone_gate_name = 'DEVELOPED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080365,2,'DEVELOPED')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50076078 and milestone_id = 3 and milestone_gate_name = 'ISSUED FOR ISOMETRIC CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðH''r¢','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50076078,3,'ISSUED FOR ISOMETRIC CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080407 and milestone_id = 5 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080407,5,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 19871 and milestone_id = 2 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',19871,2,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50057887 and milestone_id = 1 and milestone_gate_name = 'SET UP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50057887,1,'SET UP')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082938 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082938,4,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 19871 and milestone_id = 3 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',19871,3,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080410 and milestone_id = 5 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080410,5,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50057780 and milestone_id = 3 and milestone_gate_name = 'EXTRACT / ANNOTATE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50057780,3,'EXTRACT / ANNOTATE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082938 and milestone_id = 3 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082938,3,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50081538 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR INQUIRY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50081538,4,'ISSUED FOR INQUIRY')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50057738 and milestone_id = 2 and milestone_gate_name = 'DRAFT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50057738,2,'DRAFT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50057777 and milestone_id = 2 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50057777,2,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50079067 and milestone_id = 5 and milestone_gate_name = 'ISSUED FOR PURCHASE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50079067,5,'ISSUED FOR PURCHASE')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50079061 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR CLIENT REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50079061,4,'ISSUED FOR CLIENT REVIEW')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082850 and milestone_id = 3 and milestone_gate_name = 'INITIAL ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082850,3,'INITIAL ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50083821 and milestone_id = 2 and milestone_gate_name = 'FIELD VERIFICATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50083821,2,'FIELD VERIFICATION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080410 and milestone_id = 3 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080410,3,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082998 and milestone_id = 2 and milestone_gate_name = 'ISSUED FOR DETAIL ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082998,2,'ISSUED FOR DETAIL ENGINEERING')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080407 and milestone_id = 3 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080407,3,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080407 and milestone_id = 6 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080407,6,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082850 and milestone_id = 5 and milestone_gate_name = 'INITIAL ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082850,5,'INITIAL ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082859 and milestone_id = 3 and milestone_gate_name = 'ISSUED FOR DESIGN 2'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082859,3,'ISSUED FOR DESIGN 2')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 17087 and milestone_id = 1 and milestone_gate_name = 'START'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',17087,1,'START')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082938 and milestone_id = 2 and milestone_gate_name = 'ISSUED FOR CLIENT APPROVAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082938,2,'ISSUED FOR CLIENT APPROVAL')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080410 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080410,4,'ISSUED FOR DESIGN')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 19871 and milestone_id = 4 and milestone_gate_name = 'CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯ ','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',19871,4,'CHECK')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50057777 and milestone_id = 2 and milestone_gate_name = 'DEFINE SECTIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50057777,2,'DEFINE SECTIONS')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080407 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080407,4,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50080407 and milestone_id = 6 and milestone_gate_name = 'ISSUED FOR CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50080407,6,'ISSUED FOR CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 50082853 and milestone_id = 4 and milestone_gate_name = 'ISSUED FOR INTERNAL REVIEW'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1','2021-01-01 00:00:00.000','2021-01-01 00:00:00.000','0',50082853,4,'ISSUED FOR INTERNAL REVIEW')
end

