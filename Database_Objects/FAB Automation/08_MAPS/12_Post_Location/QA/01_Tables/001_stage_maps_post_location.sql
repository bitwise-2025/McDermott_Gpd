CREATE TABLE [gpd].[stage_maps_post_location]
(
	[stage_maps_post_location_id] 			[int] IDENTITY(1,1) NOT NULL,
	[post_id] 								[nvarchar](50) null,
	[post_loc_sdate] 						[datetime] null,
	[site_name] 							[nvarchar](50) null,
	[build_name]	 						[nvarchar](50) null,
	[room_no] 								[nvarchar](10) null,
	[itemtag_id] 							[numeric](18, 0) null,
	[date_created] 							[datetime] null,
	[date_last_mod] 						[datetime] null,
	[last_edit_by] 							[int] null,
	[activity_id] 							[numeric](18, 0) null,
	[spur] 									[nvarchar](20) null,
	[post_loc_edate] 						[datetime] null,
	[itemdb_id] 							[numeric](4, 0) null,
	[activity_db] 							[numeric](4, 0) null,
	[spare_char_1_255] 						[nvarchar](255) null,
	[spare_char_1_100] 						[nvarchar](100) null,
	[spare_char_1_50] 						[nvarchar](50) null,
	[spare_int_1] 							[int] null,
	[spare_int_2] 							[int] null,
	[b1m] 									[int] null,
	[b2m] 									[int] null,
	[b3m] 									[int] null,
	[b4m] 									[int] null,
	[b5m] 									[int] null,
	[b6m] 									[int] null,
	[b7m] 									[int] null,
	[b8m] 									[int] null

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
