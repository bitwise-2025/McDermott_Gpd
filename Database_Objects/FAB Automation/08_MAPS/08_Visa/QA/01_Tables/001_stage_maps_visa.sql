
CREATE TABLE [gpd].[stage_maps_visa]
(
	[stage_maps_visa_id] 			[int] IDENTITY(1,1) NOT NULL,
	[visa_id] 						[nchar](50) null,
	[id_number] 					[nchar](50) null,
	[country_id] 					[nchar](50) null,
	[passport_id] 					[nchar](50) null,
	[type] 							[nvarchar](100) null,
	[visa_number] 					[nvarchar](50) null,
	[valid_from_date] 				[datetime] null,
	[valid_to_date] 				[datetime] null,
	[visa_issuing_office] 			[nvarchar](100) null,
	[visa_entries] 					[nvarchar](50) null,
	[spare_char_1_255] 				[nvarchar](255) null,
	[spare_char_1_100] 				[nvarchar](100) null,
	[spare_char_1_50] 				[nvarchar](50) null,
	[spare_int_1] 					[int] null,
	[spare_int_2] 					[int] null,
	[itemdb_id] 					[numeric](4, 0) null,
	[itemtag_id] 					[numeric](18, 0) null,
	[date_created] 					[datetime] null,
	[date_last_mod] 				[datetime] null,
	[last_edit_by] 					[int] null,
	[activity_db] 					[numeric](4, 0) null,
	[activity_id] 					[numeric](18, 0) null,
	[b1m] 							[int] null,
	[b2m] 							[int] null,
	[b3m] 							[int] null,
	[b4m] 							[int] null,
	[b5m] 							[int] null,
	[b6m] 							[int] null,
	[b7m] 							[int] null,
	[b8m] 							[int] null

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

