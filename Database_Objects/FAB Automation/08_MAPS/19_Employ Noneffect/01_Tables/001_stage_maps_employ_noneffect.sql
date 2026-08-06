CREATE TABLE [gpd].[stage_maps_employ_noneffect]
(
	[stage_maps_employ_noneffect_id] 		[int] IDENTITY(1,1) NOT NULL,
	[staff_number] 							[nchar](50) null,
	[noneff_sdate] 							[datetime] null,
	[noneff_reas] 							[int] null,
	[noneff_edate] 							[datetime] null,
	[noneff_id] 							[nchar](50) null,
	[noneff_state] 							[nvarchar](25) null,
	[noneff_payable] 						[int] null,
	[noneff_notes] 							[nvarchar](4000) null,
	[medically_certified] 					[int] null,
	[self_certified] 						[int] null,
	[reas_type] 							[nvarchar](25) null,
	[noneff_planned] 						[int] null,
	[itemtag_id] 							[numeric](18, 0) null,
	[date_created] 							[datetime] null,
	[date_last_mod] 						[datetime] null,
	[last_edit_by] 							[int] null,
	[activity_id] 							[numeric](18, 0) null,
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
	[b8m] 									[int] null,
	[posting_id] 							[nvarchar](50) null,
	[accrues_leave] 						[int] null,
	[account_code] 							[nvarchar](50) null,
	[expected_well_date] 					[datetime] null

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

