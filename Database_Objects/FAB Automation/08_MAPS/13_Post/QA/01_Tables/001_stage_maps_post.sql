
CREATE TABLE [gpd].[stage_maps_post]
(
	[stage_maps_post_id] 				[int] IDENTITY(1,1) NOT NULL,
	[ou_id] 							[nvarchar](50) null,
	[post_id] 							[nvarchar](50) null,
	[cpma_uin_id] 						[nvarchar](10) null,
	[prfscid_code] 						[nvarchar](50) null,
	[subprfscid_code] 					[nvarchar](50) null,
	[job_group] 						[int] null,
	[job_function1] 					[int] null,
	[job_function2] 					[int] null,
	[job_function3] 					[int] null,
	[epost_rtype] 						[nvarchar](50) null,
	[epost_reas] 						[int] null,
	[post_category] 					[int] null,
	[post_title] 						[nvarchar](50) null,
	[grade_equiv] 						[int] null,
	[public_service] 					[int] null,
	[part_tm_ind] 						[int] null,
	[collocation_ind] 					[int] null,
	[post_sdate] 						[datetime] null,
	[post_edate] 						[datetime] null,
	[sob_required] 						[int] null,
	[wte_hrs] 							[decimal](5, 2) null,
	[template_post_id] 					[nvarchar](50) null,
	[itemtag_id] 						[numeric](18, 0) null,
	[activity_db] 						[numeric](4, 0) null,
	[last_edit_by] 						[int] null,
	[itemdb_id] 						[numeric](4, 0) null,
	[activity_id] 						[numeric](18, 0) null,
	[date_created] 						[datetime] null,
	[date_last_mod] 					[datetime] null,
	[spare_char_1_255] 					[nvarchar](255) null,
	[spare_char_1_100] 					[nvarchar](100) null,
	[spare_char_1_50] 					[nvarchar](50) null,
	[spare_int_1] 						[int] null,
	[spare_int_2] 						[int] null,
	[post_type_id] 						[nvarchar](50) null,
	[extra_code_1] 						[nvarchar](50) null,
	[extra_code_2] 						[nvarchar](50) null,
	[notes] 							[nvarchar](2048) null,
	[job_description] 					[nvarchar](255) null,
	[jd_file_pointer] 					[nvarchar](255) null,
	[b1m] 								[int] null,
	[b2m] 								[int] null,
	[b3m] 								[int] null,
	[b4m] 								[int] null,
	[b5m] 								[int] null,
	[b6m] 								[int] null,
	[b7m] 								[int] null,
	[b8m] 								[int] null,
	[role_id] 							[nchar](50) null

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

