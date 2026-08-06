DROP TABLE [gpd].[stage_maps_person_qualification]
GO

CREATE TABLE [gpd].[stage_maps_person_qualification]
(
	[stage_maps_person_qualification_id] [int] IDENTITY(1,1) NOT NULL,
	[ql_person_qual_id] [nvarchar](500) NULL,
	[ql_qualification_id] [nvarchar](500) NULL,
	[id_number] [nchar](500) NULL,
	[ql_authority_id] [nvarchar](500) NULL,
	[itemdb_id] [nvarchar](500) NULL,
	[itemtag_id] [nvarchar](500) NULL,
	[date_created] [datetime] NULL,
	[date_last_mod] [datetime] NULL,
	[last_edit_by] [int] NULL,
	[activity_db] [nvarchar](500) NULL,
	[activity_id] [nvarchar](500) NULL,
	[b1m] [int] NULL,
	[b2m] [int] NULL,
	[b3m] [int] NULL,
	[b4m] [int] NULL,
	[b5m] [int] NULL,
	[b6m] [int] NULL,
	[b7m] [int] NULL,
	[b8m] [int] NULL,
	[spare_char_1_255] [nvarchar](500) NULL,
	[spare_char_1_100] [nvarchar](500) NULL,
	[spare_char_1_50] [nvarchar](500) NULL,
	[spare_int_1] [int] NULL,
	[spare_int_2] [int] NULL,
	[valid_from_date] [datetime] NULL,
	[valid_to_date] [datetime] NULL,
	[certificate_number] [nvarchar](500) NULL,
	[vessel_flag_certificate] [nvarchar](500) NULL,
	[issue_date] [datetime] NULL,
	[expiry_date] [datetime] NULL,
	[person_qual_state_id] [nvarchar](500) NULL,
	[person_qual_type_id] [nvarchar](500) NULL,
	[mandatory] [varchar](500) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------



DROP TABLE [gpd].[reprocess_dim_entp_maps_person_qualification]
GO

CREATE TABLE [gpd].[reprocess_dim_entp_maps_person_qualification]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[ql_person_qual_id] [nvarchar](500) NULL,
	[ql_qualification_id] [nvarchar](500) NULL,
	[id_number] [nchar](500) NULL,
	[ql_authority_id] [nvarchar](500) NULL,
	[itemdb_id] [nvarchar](500) NULL,
	[itemtag_id] [nvarchar](500) NULL,
	[date_created] [datetime] NULL,
	[date_last_mod] [datetime] NULL,
	[last_edit_by] [int] NULL,
	[activity_db] [nvarchar](500) NULL,
	[activity_id] [nvarchar](500) NULL,
	[b1m] [int] NULL,
	[b2m] [int] NULL,
	[b3m] [int] NULL,
	[b4m] [int] NULL,
	[b5m] [int] NULL,
	[b6m] [int] NULL,
	[b7m] [int] NULL,
	[b8m] [int] NULL,
	[spare_char_1_255] [nvarchar](500) NULL,
	[spare_char_1_100] [nvarchar](500) NULL,
	[spare_char_1_50] [nvarchar](500) NULL,
	[spare_int_1] [int] NULL,
	[spare_int_2] [int] NULL,
	[valid_from_date] [datetime] NULL,
	[valid_to_date] [datetime] NULL,
	[certificate_number] [nvarchar](500) NULL,
	[vessel_flag_certificate] [nvarchar](500) NULL,
	[issue_date] [datetime] NULL,
	[expiry_date] [datetime] NULL,
	[person_qual_state_id] [nvarchar](500) NULL,
	[person_qual_type_id] [nvarchar](500) NULL,
	[mandatory] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------


DROP TABLE [dbo].[dim_entp_maps_person_qualification]
GO

CREATE TABLE [dbo].[dim_entp_maps_person_qualification]
(
	[dim_entp_maps_person_qualification_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_maps_person_qualification_nk] [bigint] NOT NULL,
	[ql_person_qual_id] [nvarchar](500) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[ql_qualification_id] [nvarchar](500) NULL,
	[id_number] [nchar](500) NULL,
	[ql_authority_id] [nvarchar](500) NULL,
	[itemdb_id] [nvarchar](500) NULL,
	[itemtag_id] [nvarchar](500) NULL,
	[date_created] [datetime] NULL,
	[date_last_mod] [datetime] NULL,
	[last_edit_by] [int] NULL,
	[activity_db] [nvarchar](500) NULL,
	[activity_id] [nvarchar](500) NULL,
	[b1m] [int] NULL,
	[b2m] [int] NULL,
	[b3m] [int] NULL,
	[b4m] [int] NULL,
	[b5m] [int] NULL,
	[b6m] [int] NULL,
	[b7m] [int] NULL,
	[b8m] [int] NULL,
	[spare_char_1_255] [nvarchar](500) NULL,
	[spare_char_1_100] [nvarchar](500) NULL,
	[spare_char_1_50] [nvarchar](500) NULL,
	[spare_int_1] [int] NULL,
	[spare_int_2] [int] NULL,
	[valid_from_date] [datetime] NULL,
	[valid_to_date] [datetime] NULL,
	[certificate_number] [nvarchar](500) NULL,
	[vessel_flag_certificate] [nvarchar](500) NULL,
	[issue_date] [datetime] NULL,
	[expiry_date] [datetime] NULL,
	[person_qual_state_id] [nvarchar](500) NULL,
	[person_qual_type_id] [nvarchar](500) NULL,
	[mandatory] [varchar](500) NULL,
	[dim_entp_maps_person_nk] [int] NULL,
	[dim_entp_maps_qualification_nk] [int] NULL,
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




