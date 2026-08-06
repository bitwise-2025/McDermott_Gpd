CREATE TABLE [gpd].[reprocess_dim_entp_maps_post_location]
(
	[rssk] 						[int] IDENTITY(1,1) NOT NULL,
	[created_date_time] 		[datetime] NULL,
	[hash_code] 				[varchar](4000) NULL,
	[post_id] 					[nvarchar](50) null,
	[post_loc_sdate] 			[datetime] null,
	[site_name] 				[nvarchar](50) null,
	[build_name]	 			[nvarchar](50) null,
	[room_no] 					[nvarchar](10) null,
	[itemtag_id] 				[numeric](18, 0) null,
	[date_created] 				[datetime] null,
	[date_last_mod] 			[datetime] null,
	[last_edit_by] 				[int] null,
	[activity_id] 				[numeric](18, 0) null,
	[spur] 						[nvarchar](20) null,
	[post_loc_edate] 			[datetime] null,
	[itemdb_id] 				[numeric](4, 0) null,
	[activity_db] 				[numeric](4, 0) null,
	[spare_char_1_255] 			[nvarchar](255) null,
	[spare_char_1_100] 			[nvarchar](100) null,
	[spare_char_1_50] 			[nvarchar](50) null,
	[spare_int_1] 				[int] null,
	[spare_int_2] 				[int] null,
	[b1m] 						[int] null,
	[b2m] 						[int] null,
	[b3m] 						[int] null,
	[b4m] 						[int] null,
	[b5m] 						[int] null,
	[b6m] 						[int] null,
	[b7m] 						[int] null,
	[b8m] 						[int] null,
	[rk_failure_info] 			[varchar](4000) null
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
