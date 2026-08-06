declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();


select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ME MECHANICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N','ME MECHANICAL','ME MECHANICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ST STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','ST STRUCTURAL','ST STRUCTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','PC','PROJECT CONTROLS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','INS','INSPECTION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CAPITAL EXPENDITURE (CAPEX)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','CAPITAL EXPENDITURE (CAPEX)','Capital Expenditure (CAPEX)')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EQUIPMENT, TOOLS AND INDIRECT MATERIALS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N','EQUIPMENT, TOOLS AND INDIRECT MATERIALS','Equipment, Tools and Indirect Materials')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'S2 - STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­… ¼ÖL,Õæ¦Ç·Y÷','1',@Date,NULL,'N','S2 - STRUCTURAL','S2 - STRUCTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ARCHITECTUAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','æ÷''jíuæ•','1',@Date,NULL,'N','ARCHITECTUAL','ARCHITECTUAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'DOCUMENT CONTROL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Éd®7¼3ÚŽñ>','1',@Date,NULL,'N','DOCUMENT CONTROL','DOCUMENT CONTROL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'OVERHEAD COSTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','OVERHEAD COSTS','Overhead Costs')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TAXES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','TAXES','Taxes')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M3 - MAINTENANCE - MAJOR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','€¹K}ëÂêp<¡óSfu','1',@Date,NULL,'N','M3 - MAINTENANCE - MAJOR','M3 - MAINTENANCE - MAJOR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'AR ARCHITECTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N','AR ARCHITECTURAL','AR ARCHITECTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','«[üN¦a0·œŽq+(æ','1',@Date,NULL,'N','PIPING','PIPING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','} !þîƒoÀ/°Ë®','1',@Date,NULL,'N','PROCESS','PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'C'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','C','Civil')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SAFETY (HSE)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','.ƒž_pvÏàÓÝt40yÄ‘','1',@Date,NULL,'N','SAFETY (HSE)','SAFETY (HSE)')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PMT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N','PMT','PMT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N','PT','PT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'S'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N','S','Structural')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'COATINGS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','COATINGS','Coatings')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ST'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','ST','STRUCTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'OTHER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','OTHER','Other')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PI PIPING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','PI PIPING','PI PIPING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PX PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','PX PROCESS','PX PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EL ELECTRICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N','EL ELECTRICAL','EL ELECTRICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QA QUALITY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','QA QUALITY','QA QUALITY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PMT NON LABOR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N','PMT NON LABOR','PMT Non Labor')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENTATION AND CONTROL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','INSTRUMENTATION AND CONTROL','INSTRUMENTATION AND CONTROL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'H'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','H','HVAC')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','ENGINEERING','Engineering')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'G1 - GENERAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‹_Ä³èù,¥ÇÊ~ˆ“Üh','1',@Date,NULL,'N','G1 - GENERAL','G1 - GENERAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'R2 - OPERATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1|z©ÿ†°åy÷€ó«0 Z','1',@Date,NULL,'N','R2 - OPERATION','R2 - OPERATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HV'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','HV','HV')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FS PROCESS AND FACILITIES SAFETY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','FS PROCESS AND FACILITIES SAFETY','FS PROCESS AND FACILITIES SAFETY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'G2 - RISK & COMPLIANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜úuXý´AÙZkŽÐx9','1',@Date,NULL,'N','G2 - RISK & COMPLIANCE','G2 - RISK & COMPLIANCE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HEALTH, SAFETY, SECURITY, AND ENVIRONMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¦oålsb&]]ºPàw','1',@Date,NULL,'N','HEALTH, SAFETY, SECURITY, AND ENVIRONMENT','HEALTH, SAFETY, SECURITY, AND ENVIRONMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MX MECHANICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','MX MECHANICAL','MX MECHANICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'JA INFORMATION MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','JA INFORMATION MANAGEMENT','JA INFORMATION MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'B'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','B','Buildings')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','åÏáwb?ýïÙd5l¤”','1',@Date,NULL,'N','CIVIL','CIVIL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N','SC','SC')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','TE','TELECOMMUNICATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MISCELLANEOUS MARINE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N','MISCELLANEOUS MARINE','Miscellaneous Marine')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M6 - ROTATING EQUIPMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¾ Ë¸!È×Ôv, ÆÎh','1',@Date,NULL,'N','M6 - ROTATING EQUIPMENT','M6 - ROTATING EQUIPMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'METALLURGY & CORROSION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','METALLURGY & CORROSION','METALLURGY & CORROSION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Q1 - QUALITY ASSURANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','júáÃ^Ò§‘{HsÜŒK','1',@Date,NULL,'N','Q1 - QUALITY ASSURANCE','Q1 - QUALITY ASSURANCE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'STR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','STR','STR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IT INFORMATION TECHNOLOGY AND MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','IT INFORMATION TECHNOLOGY AND MANAGEMENT','IT INFORMATION TECHNOLOGY AND MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'T'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','T','Telecommunications')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'H1 - ENVIRONMENTAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','lr¥Éàu˜øúy»ñ~-','1',@Date,NULL,'N','H1 - ENVIRONMENTAL','H1 - ENVIRONMENTAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CO CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N','CO CONSTRUCTION','CO CONSTRUCTION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'I'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','I','Instruments & Controls')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'F1 - HEALTH SAFETY ENVIRONMENT & RISK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ˆëJš™ü¤Y±@ñÍ#V','1',@Date,NULL,'N','F1 - HEALTH SAFETY ENVIRONMENT & RISK','F1 - HEALTH SAFETY ENVIRONMENT & RISK')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'YARD SERVICES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N','YARD SERVICES','Yard Services')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'K3 - INFORMATION TECHNOLOGY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¨‹ëeêc^o<=þ÷Â0','1',@Date,NULL,'N','K3 - INFORMATION TECHNOLOGY','K3 - INFORMATION TECHNOLOGY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N','PM','PROJECT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HEDGING COST'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','HEDGING COST','Hedging Cost')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PREPARATION WORKS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','PREPARATION WORKS','Preparation Works')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'S1 - LIFTING EQUIPMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','—¶’œSãhV·s¬Žaêv','1',@Date,NULL,'N','S1 - LIFTING EQUIPMENT','S1 - LIFTING EQUIPMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QA QUALITY (QA/QC)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','QA QUALITY (QA/QC)','QA QUALITY (QA/QC)')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N','EL','ELECTRICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TELECOMMUNICATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','TELECOMMUNICATIONS','TELECOMMUNICATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'BILLINGS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N','BILLINGS','Billings')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'REVENUE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','REVENUE','Revenue')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TANKS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','îª!O§J¶z¤¾(HÅz‹','1',@Date,NULL,'N','TANKS','TANKS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N','QA','QUALITY (QA/QC)')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CONSTRUCTION SUPPORT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','EtWU{805|dH„¼ÚÉd','1',@Date,NULL,'N','CONSTRUCTION SUPPORT','CONSTRUCTION SUPPORT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPELINE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','#HºMœõñªÉ&¯$õ„','1',@Date,NULL,'N','PIPELINE','PIPELINE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'W1 - SHIPPING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','3«7›æÐòï™w+‡‰Š','1',@Date,NULL,'N','W1 - SHIPPING','W1 - SHIPPING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'E'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','E','Electrical')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ONSHORE WELDING FOR OFFSHORE PIPELAY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','ONSHORE WELDING FOR OFFSHORE PIPELAY','Onshore Welding for Offshore Pipelay')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SERVICES, FREIGHT AND SPARES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','SERVICES, FREIGHT AND SPARES','Services, Freight and Spares')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TECHNICAL ASSISTANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N','TECHNICAL ASSISTANCE','Technical Assistance')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','PE','PE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'COST OF MONEY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N','COST OF MONEY','Cost of Money')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IN INSTALLATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','IN INSTALLATION','IN INSTALLATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'OFFSHORE SPREAD COSTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','OFFSHORE SPREAD COSTS','Offshore Spread Costs')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'D1 - DRILLING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ª½{}£&âAÛÊ8‚','1',@Date,NULL,'N','D1 - DRILLING','D1 - DRILLING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'F2 - SAFETY - FIRE & GAS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','j»UÊ9z9My¼•','1',@Date,NULL,'N','F2 - SAFETY - FIRE & GAS','F2 - SAFETY - FIRE & GAS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'X'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','X','Surface Protection')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ELECTRICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‰R`‡’¥¹Èœ>î§:','1',@Date,NULL,'N','ELECTRICAL','ELECTRICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FABRICATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N','FABRICATION','Fabrication')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSURANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','INSURANCE','Insurance')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPING DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öjômqG¡ú‰eQï','1',@Date,NULL,'N','PIPING DESIGN','PIPING DESIGN')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PMT THIRD PARTY SERVICES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N','PMT THIRD PARTY SERVICES','PMT Third Party Services')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SPOOLBASE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N','SPOOLBASE','Spoolbase')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'J1 - INSTRUMENTATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Ëº7îói%a','1',@Date,NULL,'N','J1 - INSTRUMENTATION','J1 - INSTRUMENTATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IT INFORMATION MANAGEMENT AND TECHNOLOGY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñ¦\”[¾fØ»i©§)èu','1',@Date,NULL,'N','IT INFORMATION MANAGEMENT AND TECHNOLOGY','IT INFORMATION MANAGEMENT AND TECHNOLOGY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EM ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','EM ENGINEERING','EM ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ALLOCATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N','ALLOCATIONS','Allocations')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPELINES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N','PIPELINES','PIPELINES')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'DM DOCUMENT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','DM DOCUMENT MANAGEMENT','DM DOCUMENT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'COMMISSIONING ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','COMMISSIONING ENGINEERING','COMMISSIONING ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'P'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','P','Piping')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CI CIVIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','CI CIVIL','CI CIVIL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TE TELECOMMUNICATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N','TE TELECOMMUNICATIONS','TE TELECOMMUNICATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N','SE','SE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HVAC ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','HVAC ENGINEERING','HVAC ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ENGINEERING NON LABOR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','ENGINEERING NON LABOR','Engineering Non Labor')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INTERCOMPANY INVOICING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','B ¤„ýYÅpÁ8Gž ï','1',@Date,NULL,'N','INTERCOMPANY INVOICING','Intercompany Invoicing')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUB-CONTRACT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N','SUB-CONTRACT','SUB-CONTRACT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HS HEALTH, SAFETY, SECURITY, AND ENVIRONMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','HS HEALTH, SAFETY, SECURITY, AND ENVIRONMENT','HS HEALTH, SAFETY, SECURITY, AND ENVIRONMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUBCONTRACTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N','SUBCONTRACTS','Subcontracts')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUBSEA AND OFFSHORE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¹¤ZE4\','1',@Date,NULL,'N','SUBSEA AND OFFSHORE','Subsea and Offshore')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Z1 - MOORING SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','-ÄP÷c;','1',@Date,NULL,'N','Z1 - MOORING SYSTEMS','Z1 - MOORING SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SITE PREP'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ØÓ~ž“¶„½fÚ÷\‚','1',@Date,NULL,'N','SITE PREP','SITE PREP')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'LO LOGISTICS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N','LO LOGISTICS','LO LOGISTICS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'LG'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N','LG','LG')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PS PROJECT SERVICES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','PS PROJECT SERVICES','PS PROJECT SERVICES')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HX HSE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N','HX HSE','HX HSE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SU SUPPLY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','SU SUPPLY','SU SUPPLY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HUC SUBCONTRACTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','HUC SUBCONTRACTS','HUC Subcontracts')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'J2 - CONTROLS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡™‹(„¼Ž¾h2.’cÕ','1',@Date,NULL,'N','J2 - CONTROLS','J2 - CONTROLS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CIVIL & STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¸¬wKê]ºLhUuKB','1',@Date,NULL,'N','CIVIL & STRUCTURAL','CIVIL & STRUCTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CN CONCRETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','CN CONCRETE','CN CONCRETE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','E483DD2BB8C46805CE0BC6B52EC2F5A8','1',@Date,NULL,'N','INSTRUMENT','INSTRUMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'BONDS AND GUARANTEE COSTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N','BONDS AND GUARANTEE COSTS','Bonds and Guarantee Costs')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'R1 - COMMISSIONING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Yž©î_ïU øÿÎi','1',@Date,NULL,'N','R1 - COMMISSIONING','R1 - COMMISSIONING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÅÿñÕåcžNkXd–õj8]','1',@Date,NULL,'N','CONSTRUCTION','CONSTRUCTION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','IC','IC')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M1 - MAINTENANCE - CORE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ýœrä†©*ˆ]ú$N“èI','1',@Date,NULL,'N','M1 - MAINTENANCE - CORE','M1 - MAINTENANCE - CORE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IN INSPECTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','IN INSPECTION','IN INSPECTION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PP PROCUREMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','PP PROCUREMENT','PP PROCUREMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IA INSTRUMENTATIONS AND CONTROL SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','IA INSTRUMENTATIONS AND CONTROL SYSTEMS','IA INSTRUMENTATIONS AND CONTROL SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MRO'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','šÎ–ñüYŽ}b„&ÿõ','1',@Date,NULL,'N','MRO','MRO')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FINANCIALS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N','FINANCIALS','Financials')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‡0ËèÈ“êì¸Ë°ªö&','1',@Date,NULL,'N','HS','HEALTH, SAFETY, SECURITY, AND ENVIRONMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','IN','IN')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FIELD'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','C480DB5DBD47FC3CBC0BDCC79363FB34','1',@Date,NULL,'N','FIELD','FIELD')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HUC LABOR AND SUPPORT LABOR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÒƒŒ$58+ƒ','1',@Date,NULL,'N','HUC LABOR AND SUPPORT LABOR','HUC Labor and Support Labor')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','EÌCä$k¼)­JÄ-','1',@Date,NULL,'N','STRUCTURAL','STRUCTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'RG REGULATORY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','RG REGULATORY','RG REGULATORY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ENGINEERING SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','ENGINEERING SYSTEMS','Engineering Systems')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'A1 - ARCHITECTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ŒwøÑ»ZÖ½‚·û¡','1',@Date,NULL,'N','A1 - ARCHITECTURAL','A1 - ARCHITECTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CV'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','CV','CV')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N','HR','HR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TECH'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','hûmF» šUh?I ','1',@Date,NULL,'N','TECH','TECH')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SYSTEMS ENGINEER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ŒŸûPq-¸4Ø€¦9~þÛ','1',@Date,NULL,'N','SYSTEMS ENGINEER','SYSTEMS ENGINEER')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CONCRETE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','&M(œ¢{ûŽ\-{a‰','1',@Date,NULL,'N','CONCRETE','CONCRETE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'EM ENGINEERING MANAGER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','EM ENGINEERING MANAGER','EM ENGINEERING MANAGER')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PN PIPING ENGINEERING (MATERIALS AND SPECS)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N','PN PIPING ENGINEERING (MATERIALS AND SPECS)','PN PIPING ENGINEERING (MATERIALS AND SPECS)')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'DM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N','DM','DOCUMENT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PO PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','½’^ÆŽ¡‰W ñY*S','1',@Date,NULL,'N','PO PROCESS','PO PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','CN','CONCRETE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUBSEA'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Û=àúÃ˜15WýÒÐÄÔ','1',@Date,NULL,'N','SUBSEA','SUBSEA')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENTATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','âûûµo<GÛ!_‡(','1',@Date,NULL,'N','INSTRUMENTATION','INSTRUMENTATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ARCHITECTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i”PQ å','1',@Date,NULL,'N','ARCHITECTURAL','ARCHITECTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PM PROJECT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','PM PROJECT MANAGEMENT','PM PROJECT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FOREIGN EXCHANGE DIFFERENTIAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N','FOREIGN EXCHANGE DIFFERENTIAL','Foreign Exchange Differential')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'LEGALIZATION CHARGES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','LEGALIZATION CHARGES','Legalization Charges')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M2 - MAINTENANCE - INTEGRATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÏìUì*E>äÃ5Ó€','1',@Date,NULL,'N','M2 - MAINTENANCE - INTEGRATION','M2 - MAINTENANCE - INTEGRATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MC MATERIALS, CORROSION & COATINGS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','MC MATERIALS, CORROSION & COATINGS','MC MATERIALS, CORROSION & COATINGS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ABSORPTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','˜U…_P*Åvü','1',@Date,NULL,'N','ABSORPTION','Absorption')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'K2 - INFORMATION MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ŠÚ cm: ìà@!³àF«–','1',@Date,NULL,'N','K2 - INFORMATION MANAGEMENT','K2 - INFORMATION MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PAINTING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','³@¹—`«] ‚Bù,¯','1',@Date,NULL,'N','PAINTING','PAINTING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','M','Mechanical')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FIRE & GAS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¡¸oË§\s4 åÔ½ƒ','1',@Date,NULL,'N','FIRE & GAS','Fire & Gas')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROCUREMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','PROCUREMENT','Procurement')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'AR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N','AR','ARCHITECTURAL / BUILDINGS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ME'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N','ME','MECHANICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'COMMISSIONING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1|REkÐÈ+éÕßå','1',@Date,NULL,'N','COMMISSIONING','COMMISSIONING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSULATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','õ Ùš¨ÙÌ6õ°zú','1',@Date,NULL,'N','INSULATION','INSULATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SINOPEC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%Ú®™2iÿ·X¯i¢)Æ','1',@Date,NULL,'N','SINOPEC','SINOPEC')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TR LOADOUT AND TRANSPORTATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','FB3BB0D61F32E8FF987E2C25B55924CF','1',@Date,NULL,'N','TR LOADOUT AND TRANSPORTATION','TR LOADOUT AND TRANSPORTATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','CM','CM')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','IM','IM')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MS MARINE SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','MS MARINE SYSTEMS','MS MARINE SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PI'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¶ÝzCwéå}‡×F.V','1',@Date,NULL,'N','PI','PIPING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROJECT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','PROJECT MANAGEMENT','PROJECT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'K1 - COMMUNICATIONS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','®U.º×•Rn‡ýW','1',@Date,NULL,'N','K1 - COMMUNICATIONS','K1 - COMMUNICATIONS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'BUILDING SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','™ñ÷Åñ.6 ØfhÕ)','1',@Date,NULL,'N','BUILDING SYSTEMS','Building Systems')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'M5 - MECHANICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','AËöWkw#`Û…Ö¢,Üv','1',@Date,NULL,'N','M5 - MECHANICAL','M5 - MECHANICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'P2 - PROCESS CONTROL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7 ÄŽÝ7ß~øš&Ú¿','1',@Date,NULL,'N','P2 - PROCESS CONTROL','P2 - PROCESS CONTROL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FIRE PROTECTION & SAFETY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','5táMÜËšô”&x]™=','1',@Date,NULL,'N','FIRE PROTECTION & SAFETY','FIRE PROTECTION & SAFETY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'V1 - MARINE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','iS2ô5aÒw¾¶3','1',@Date,NULL,'N','V1 - MARINE','V1 - MARINE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MARINE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',':ß¶ž?1Ïãø¯','1',@Date,NULL,'N','MARINE','MARINE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'Q'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','Q','Insulation')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HUC EQUIPMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','*c>bÚ¿”¢¹Ú´åI','1',@Date,NULL,'N','HUC EQUIPMENT','HUC Equipment')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'AR ARCHITECTURAL / BUILDINGS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','AR ARCHITECTURAL / BUILDINGS','AR ARCHITECTURAL / BUILDINGS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'L'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','L','Loss Control')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CONTINGENCY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','CONTINGENCY','Contingency')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'E1 - ELECTRICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','sÕŒ×Fñ¶’ú´}<Rn‚','1',@Date,NULL,'N','E1 - ELECTRICAL','E1 - ELECTRICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FIREPROOFING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1ûPšÖ‘µsÛIDT$#²','1',@Date,NULL,'N','FIREPROOFING','FIREPROOFING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENTATIONS AND CONTROL SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','%‚QæzSïû8 ø+K‰','1',@Date,NULL,'N','INSTRUMENTATIONS AND CONTROL SYSTEMS','INSTRUMENTATIONS AND CONTROL SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'METALLURGY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i_Úlï&§ðHr¢','1',@Date,NULL,'N','METALLURGY','METALLURGY')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROCUREMEN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','7FA4F775CB501FEFB87F4527D34B27CD','1',@Date,NULL,'N','PROCUREMEN','PROCUREMEN')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CMG'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','CMG','CMG')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'NA NAVAL ARCHITECTURE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','NA NAVAL ARCHITECTURE','NA NAVAL ARCHITECTURE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'P1 - PROCESS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','$]}VÚ.¯MÕ±bä‹þ','1',@Date,NULL,'N','P1 - PROCESS','P1 - PROCESS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'IS INSTRUMENTATION AND AUTOMATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','­HÅyL`‡|š(ýT>ç','1',@Date,NULL,'N','IS INSTRUMENTATION AND AUTOMATION','IS INSTRUMENTATION AND AUTOMATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','PL','PL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PMT LABOR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ñZ\\ß-§ÉÒÒç’','1',@Date,NULL,'N','PMT LABOR','PMT Labor')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'L1 - MICE MATERIALS - INSPECTION & CORROSION ENG'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6âìN†Q Ít±ÿÐ','1',@Date,NULL,'N','L1 - MICE MATERIALS - INSPECTION & CORROSION ENG','L1 - MICE MATERIALS - INSPECTION & CORROSION ENG')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'F3 - PROCESS SAFETY ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÀÅYøÉ*%‡¿tê- /','1',@Date,NULL,'N','F3 - PROCESS SAFETY ENGINEERING','F3 - PROCESS SAFETY ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','å¦†|Ëd xÅÝ’é','1',@Date,NULL,'N','PR','PR')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROJECT ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','aÔ¼3®ë¿¨}úç','1',@Date,NULL,'N','PROJECT ENGINEERING','PROJECT ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CUSTOMS DUTY'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N','CUSTOMS DUTY','Customs Duty')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MECHANICAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','é'')à¤`H—%Àúùw','1',@Date,NULL,'N','MECHANICAL','MECHANICAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'L2 - PRESERVATION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',' ¾ÂŸM÷çoªœþxqë0','1',@Date,NULL,'N','L2 - PRESERVATION','L2 - PRESERVATION')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUBSEA / SURF'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','Þ#£nëø6¨£à¯','1',@Date,NULL,'N','SUBSEA / SURF','Subsea / SURF')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PC PROJECT CONTROLS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','gžçã%ë„X€{½)ÎÁ','1',@Date,NULL,'N','PC PROJECT CONTROLS','PC PROJECT CONTROLS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'NAVAL ARCHITECTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÊË Ž~—ºxDÚ;ÖÉ!Ç','1',@Date,NULL,'N','NAVAL ARCHITECTURAL','NAVAL ARCHITECTURAL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ENGINEERING THIRD PARTY SERVICES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','6’Dm¾m¢€0\','1',@Date,NULL,'N','ENGINEERING THIRD PARTY SERVICES','Engineering Third Party Services')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FABRICATION LABOR AND DOE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','\žj$%ûÆÅ¡gâ','1',@Date,NULL,'N','FABRICATION LABOR AND DOE','Fabrication Labor and DOE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PI PIPING DESIGN'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','PI PIPING DESIGN','PI PIPING DESIGN')
end

--07/04/2022 -- POST QA rejection records analysis

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'TS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','u¢ÏÍ||ÐÙŸ1&ÉNÖ','1',@Date,NULL,'N','TS','TS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PI - PIPING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‘‘\VG J„¹‘ålTÝõ','1',@Date,NULL,'N','PI - PIPING','PI - PIPING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'INSTRUMENT & CONTROL SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','£#iX¢Š©¿< jìó','1',@Date,NULL,'N','INSTRUMENT & CONTROL SYSTEMS','INSTRUMENT & CONTROL SYSTEMS')
end

/*
select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PIPING ENGIEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','k–:È£d˜sé–ï¿´µ`','1',@Date,NULL,'N','PIPING ENGIEERING','PIPING ENGIEERING')
end
*/

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CIVIL STRUCTURAL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öÆÓŠÇÐf5kôš¨#','1',@Date,NULL,'N','CIVIL STRUCTURAL','CIVIL STRUCTURAL')
end

--07/22/2022 QA Runs resolving rejected records 


select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QA QUALITY ASSURANCE'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.001','2050-12-31 00:00:00.001','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','QA QUALITY ASSURANCE','QA QUALITY ASSURANCE')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CS STRUCTURES'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.002','2050-12-31 00:00:00.002','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','CS STRUCTURES','CS STRUCTURES')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'AA MANAGEMENT & PROJECT ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.003','2050-12-31 00:00:00.003','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','AA MANAGEMENT & PROJECT ENGINEERING','AA MANAGEMENT & PROJECT ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'SUBCONTRACT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.004','2050-12-31 00:00:00.004','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','SUBCONTRACT MANAGEMENT','SUBCONTRACT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'FABRICATION MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.005','2050-12-31 00:00:00.005','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','FABRICATION MANAGEMENT','FABRICATION MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HSE MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.006','2050-12-31 00:00:00.006','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','HSE MANAGEMENT','HSE MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CONSTRUCTION SUPPORT ENGINEERING'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.007','2050-12-31 00:00:00.007','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','CONSTRUCTION SUPPORT ENGINEERING','CONSTRUCTION SUPPORT ENGINEERING')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'CX CIVIL & STRUCTURAL OTHER'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.008','2050-12-31 00:00:00.008','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','CX CIVIL & STRUCTURAL OTHER','CX CIVIL & STRUCTURAL OTHER')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROJECT CONTROLS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.009','2050-12-31 00:00:00.009','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','PROJECT CONTROLS','PROJECT CONTROLS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'HUC MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.010','2050-12-31 00:00:00.010','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','HUC MANAGEMENT','HUC MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'MARINE SYSTEMS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.011','2050-12-31 00:00:00.011','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','MARINE SYSTEMS','MARINE SYSTEMS')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'PROCUREMENT MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.012','2050-12-31 00:00:00.012','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','PROCUREMENT MANAGEMENT','PROCUREMENT MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'RL RAIL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.013','2050-12-31 00:00:00.013','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','RL RAIL','RL RAIL')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'ENGINEERING MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.014','2050-12-31 00:00:00.014','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','ENGINEERING MANAGEMENT','ENGINEERING MANAGEMENT')
end

select @count = count(*) from dbo.dim_ent_discipline Where discipline_code = 'QUALITY MANAGEMENT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_discipline_nk),0) + 1 from dbo.dim_ent_discipline
	insert into dbo.dim_ent_discipline(dim_ent_discipline_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,discipline_code,discipline_name)
	 values (@next_val,'2000-01-01 00:00:00.015','2050-12-31 00:00:00.015','ž¬¦.ñÆ©sÍ`Ýmû¡','1',@Date,NULL,'N','QUALITY MANAGEMENT','QUALITY MANAGEMENT')
end



