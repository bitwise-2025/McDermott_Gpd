
CREATE TABLE [dbo].[dim_entp_maps_reasons]
(
	[dim_entp_maps_reasons_sk] 			[bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_maps_reasons_nk] 			[bigint] NOT NULL,
	[reas_code] 						[int] null,
	[reas_type] 						[nvarchar](25) null,	
	[start_date] 						[datetime] NOT NULL,
	[end_date] 							[datetime] NOT NULL,
	[hash_code] 						[varchar](8000) NOT NULL,
	[late_arrival_flag] 				[varchar](1) NOT NULL,
	[active] 							[int] NOT NULL,
	[created_date_time] 				[datetime] NULL,
	[modified_date_time] 				[datetime] NULL,
	[itemtag_id] 						[numeric](18, 0) null,
	[reas_sht_name] 					[nchar](10) null,
	[nerg_id] 							[nchar](27) null,
	[affects_leave] 					[int] null,
	[itemdb_id] 						[numeric](4, 0) null,
	[date_created] 						[datetime] null,
	[date_last_mod] 					[datetime] null,
	[last_edit_by] 						[int] null,
	[activity_id] 						[numeric](18, 0) null,
	[reas_text] 						[nvarchar](50) null,
	[activity_db] 						[numeric](4, 0) null,
	[valid_from_date] 					[datetime] null,
	[valid_to_date] 					[datetime] null,
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
	
 CONSTRAINT [Constr_dim_entp_maps_reasons_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_maps_reasons_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
