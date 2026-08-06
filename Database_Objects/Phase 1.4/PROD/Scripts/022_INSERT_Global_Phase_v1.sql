/*
ALTER dim_ent_global_phase
alter column [psrlevel1_code] varchar(10) NULL

ALTER dim_ent_global_phase
alter column [psrlevel2_code] varchar(10) NULL

*/

declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_global_phase Where phase_code = 'COM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'COM','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','îª!O§J¶z¤¾(HÅz‹','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Commissioning','CM|COM')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'CON'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'CON','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','³@¹—`«] ‚Bù,¯','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Construction','CN|CON')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'ENG'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'ENG','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ÅÿñÕåcžNkXd–õj8]','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Engineering','EN|ENG')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'FAB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'FAB','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','öjômqG¡ú‰eQï','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','FABRICATION','FA|FAB|FB')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'HUC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'HUC','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','&M(œ¢{ûŽ\-{a‰','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Hookup','HK|HUC|HU')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'INS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'INS','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ØÓ~ž“¶„½fÚ÷\‚','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Installation','IN|INS')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'MAO'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'MAO','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','‹ñfvXëæÑ˜ôºsÖ','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','MAO','MAO|MA')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'OTH'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'OTH','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','¦oålsb&]]ºPàw','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Other','OTH|OT')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'PCOM'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'PCOM','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ƒ‡óˆ€ài‹¾…æ³†','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Pre-Comm','PCOM|PCOMM')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'PH1'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'PH1','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','æ÷1jíuæ•','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Phase 1','PH1')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'PMT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'PMT','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','åÏáwb?ýïÙd5l1¤”','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Project Management','PMT|PM')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'PR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'PR','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','õ Ùš¨ÙÌ6õ°zú','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','SCM','SCM|PR')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'TR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'TR','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','i”PQ å','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Transportation','TR')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'WARR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'WARR','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','…ÇƒHÿw°¨{’-','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Warranty','WARR')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'MFB'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'MFB','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','H“â=þÏ#•1h°×UÉ','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Modular Fabrication','MFB')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'FEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'FEED','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','EÌCä$k¼)­JÄ-','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Feed','FEED')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'PRE-FEED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'PRE-FEED','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ê‚=‚”YeLD-9yXS9D','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Pre-Feed','PRE-FEED')
end

select @count = count(*) from dim_ent_global_phase Where phase_code = 'SC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_global_phase_nk),0) + 1 from dim_ent_global_phase
	insert into dim_ent_global_phase(dim_ent_global_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,phase_alternative)
	 values (@next_val,'SC','2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','1ûPšÖ‘µsÛIDT$#²','1','2022-01-01 00:00:00.000','2022-01-01 00:00:00.000','0','Subcontracts','SC')
end


--------UPDATE NCSA 1.4 created records per the new logic
update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='1H',
psrlevel2_code='1H20'
where phase_name='Engineering'

update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='4C',
psrlevel2_code='4C20'
where phase_name='Construction'


update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='3F',
psrlevel2_code='3F20'
where phase_name='FABRICATION'


update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='2P',
psrlevel2_code='2P20'
where phase_name='SCM'
