
declare @count int
declare @next_val int
select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - B - APPROVED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LOI STAGE - B - APPROVED WITH COMMENTS','1','2021-07-28 00:00:00.000',NULL,'N','LOI STAGE - B - APPROVED WITH COMMENTS','LOI STAGE - B - APPROVED WITH COMMENTS')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'LOI STAGE - A - APPROVED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','LOI STAGE - A - APPROVED','1','2021-07-28 00:00:00.000',NULL,'N','LOI STAGE - A - APPROVED','LOI STAGE - A - APPROVED')
end

select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'A - ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','A - ACCEPTED','1','2021-07-28 00:00:00.000',NULL,'N','A - ACCEPTED','A - ACCEPTED')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'ACC - ACCEPTED WITH COMMENTS'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','ACC - ACCEPTED WITH COMMENTS','1','2021-07-28 00:00:00.000',NULL,'N','ACC - ACCEPTED WITH COMMENTS','ACC - ACCEPTED WITH COMMENTS')
end


select @count = count(*) from [dbo].[dim_ent_document_status] Where document_status_code = 'NAC - NOT ACCEPTED'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_status_nk),0) + 1 from [dbo].[dim_ent_document_status]
	insert into [dbo].[dim_ent_document_status](dim_ent_document_status_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,document_status_code,document_status_desc)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','NAC - NOT ACCEPTED','1','2021-07-28 00:00:00.000',NULL,'N','NAC - NOT ACCEPTED','NAC - NOT ACCEPTED')
	 end




