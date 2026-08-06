CREATE TABLE [gpd].[reprocess_dim_entp_maps_org_name_history]
(
	[rssk] 								[int] IDENTITY(1,1) NOT NULL,
	[created_date_time] 				[datetime] NULL,
	[hash_code] 						[varchar](4000) NULL,
	[org_name_history_id] 				[nvarchar](50) null,
	[ou_id] 							[nvarchar](50) null,
	[valid_from_date] 					[datetime] null,
	[valid_to_date] 					[datetime] null,
	[ou_fl_title] 						[nvarchar](255) null,
	[ou_sht_title] 						[nvarchar](60) null,
	[itemtag_id] 						[numeric](18, 0) null,
	[itemdb_id] 						[numeric](4, 0) null,
	[date_created] 						[datetime] null,
	[date_last_mod] 					[datetime] null,
	[last_edit_by] 						[int] null,
	[activity_id] 						[numeric](18, 0) null,
	[activity_db] 						[numeric](4, 0) null,
	[spare_char_1_255] 					[nvarchar](255) null,
	[spare_char_1_100] 					[nvarchar](100) null,
	[spare_char_1_50] 					[nvarchar](50) null,
	[spare_int_1] 						[int] null,
	[spare_int_2] 						[int] null,
	[b1m] 								[int] null,
	[b2m] 								[int] null,
	[b3m] 								[int] null,
	[b4m] 								[int] null,
	[b5m] 								[int] null,
	[b6m] 								[int] null,
	[b7m] 								[int] null,
	[b8m] 								[int] null,
	[ou_primary_site]					[nvarchar](50) null,
	[rk_failure_info] 					[varchar](4000) null
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
