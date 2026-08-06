
CREATE TABLE [gpd].[stage_maps_person_nationality]
(
	[stage_maps_person_nationality_id] 	[int] IDENTITY(1,1) NOT NULL,
	[nationality_id] 					[nchar](50) null,
	[name] 								[nvarchar](100) null,
	[description]						[nvarchar](255) null,
	[nationality_code] 					[nvarchar](20) null,
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
	[b8m] 								[int] null

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

