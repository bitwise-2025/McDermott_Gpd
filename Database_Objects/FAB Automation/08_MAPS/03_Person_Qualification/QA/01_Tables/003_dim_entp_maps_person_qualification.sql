
CREATE TABLE [dbo].[dim_entp_maps_person_qualification]
(
	[dim_entp_maps_person_qualification_sk] 	[bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_maps_person_qualification_nk] 	[bigint] NOT NULL,
	[ql_person_qual_id] 						[nvarchar](50) NULL,
	[start_date] 								[datetime] NOT NULL,
	[end_date] 									[datetime] NOT NULL,
	[hash_code] 								[varchar](8000) NOT NULL,
	[late_arrival_flag] 						[varchar](1) NOT NULL,
	[active] 									[int] NOT NULL,
	[created_date_time] 						[datetime] NULL,
	[modified_date_time] 						[datetime] NULL,
	[ql_qualification_id] 						[nvarchar](50) null,
	[id_number] 								[nchar](50) null,
	[ql_authority_id] 							[nvarchar](50) null,
	[itemdb_id] 								[numeric](4, 0) null,
	[itemtag_id] 								[numeric](18, 0) null,
	[date_created] 								[datetime] null,
	[date_last_mod] 							[datetime] null,
	[last_edit_by] 								[int] null,
	[activity_db] 								[numeric](4, 0) null,
	[activity_id] 								[numeric](18, 0) null,
	[b1m] 										[int] null,
	[b2m] 										[int] null,
	[b3m] 										[int] null,
	[b4m] 										[int] null,
	[b5m] 										[int] null,
	[b6m] 										[int] null,
	[b7m] 										[int] null,
	[b8m] 										[int] null,
	[spare_char_1_255] 							[nvarchar](255) null,
	[spare_char_1_100] 							[nvarchar](100) null,
	[spare_char_1_50] 							[nvarchar](50) null,
	[spare_int_1] 								[int] null,
	[spare_int_2] 								[int] null,
	[valid_from_date] 							[datetime] null,
	[valid_to_date] 							[datetime] null,
	[certificate_number] 						[nvarchar](50) null,
	[vessel_flag_certificate] 					[nvarchar](10) null,
	[issue_date] 								[datetime] null,
	[expiry_date] 								[datetime] null,
	[person_qual_state_id] 						[nvarchar](50) null,
	[person_qual_type_id] 						[nvarchar](50) null,
	[dim_entp_maps_person_nk]					[int] null,
	[dim_entp_maps_qualification_nk]			[int] null,	
	
 CONSTRAINT [Constr_dim_entp_maps_person_qualification_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_maps_person_qualification_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



