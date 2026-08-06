CREATE TABLE [gpd].[reprocess_dim_entp_maps_authorised_user]
(
	[rssk] 										[int] IDENTITY(1,1) NOT NULL,
	[created_date_time] 						[datetime] NULL,
	[hash_code] 								[varchar](4000) NULL,
	[db_id] 									[numeric](4, 0) null,
	[mail_box_id] 								[nvarchar](100) null,
	[full_name] 								[nvarchar](100) null,
	[person_id_number] 							[nvarchar](50) null,
	[auth_user_id] 								[int] null,
	[profile_auth_user_id] 						[int] null,
	[profile_user] 								[nvarchar](10) null,
	[obsolete_user] 							[nvarchar](10) null,
	[profile_type] 								[nvarchar](20) null,
	[profile_hidden] 							[nvarchar](10) null,
	[rk_failure_info] 							[varchar](4000) null
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
