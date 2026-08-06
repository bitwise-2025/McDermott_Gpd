declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'For Use'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.005','2050-12-31 00:00:00.005','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','For Use','For Use')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'REJ - REJECTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.006','2050-12-31 00:00:00.006','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','REJ - REJECTED','REJ - REJECTED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'RNR - RETURN NOT REVIEWED (7)'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.007','2050-12-31 00:00:00.007','7­È• Ø1{Z1ºË¥Ì','1',@Date,NULL,'N','RNR - RETURN NOT REVIEWED (7)','RNR - RETURN NOT REVIEWED (7)')
end


