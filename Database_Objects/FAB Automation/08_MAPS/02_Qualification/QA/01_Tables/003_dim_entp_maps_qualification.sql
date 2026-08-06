
CREATE TABLE [dbo].[dim_entp_maps_qualification]
(
	[dim_entp_maps_qualification_sk] 	[bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_maps_qualification_nk] 	[bigint] NOT NULL,
	[ql_qualification_id] 				[nvarchar](50) NULL,
	[start_date] 						[datetime] NOT NULL,
	[end_date] 							[datetime] NOT NULL,
	[hash_code] 						[varchar](8000) NOT NULL,
	[late_arrival_flag] 				[varchar](1) NOT NULL,
	[active] 							[int] NOT NULL,
	[created_date_time] 				[datetime] NULL,
	[modified_date_time] 				[datetime] NULL,
	[ql_qualification_group_id]			[nvarchar](50) NULL,
	[role_dependant]					[nvarchar](10) NULL,
	[qualification_name]				[nvarchar](255) NULL,
	[ql_authority_id]					[nvarchar](50) NULL,
	[qualification_desc]				[nvarchar](255) NULL,
	[expiry_duration_reason_id]			[nvarchar](50) NULL,
	[expire_duration]					[nvarchar](10) NULL,
	[itemdb_id]							[numeric](4, 0) NULL,
	[itemtag_id]						[numeric](18, 0) NULL,
	[date_created]						[datetime] NULL,
	[date_last_mod]                   	[datetime] NULL,
	[last_edit_by]						[int] NULL,
	[activity_db]						[numeric](4, 0) NULL,
	[activity_id]						[numeric](18, 0) NULL,
	[b1m]								[int] NULL,
	[b2m]                             	[int] NULL,
	[b3m]                             	[int] NULL,
	[b4m]                             	[int] NULL,
	[b5m]                             	[int] NULL,
	[b6m]                             	[int] NULL,
	[b7m]                             	[int] NULL,
	[b8m]                             	[int] NULL,
	[spare_char_1_255]					[nvarchar](255) NULL,
	[spare_char_1_100]                	[nvarchar](100) NULL,
	[spare_char_1_50]                	[nvarchar](50) NULL,
	[spare_int_1]						[int] NULL,
	[spare_int_2]                     	[int] NULL,
	[valid_from_date]					[datetime] NULL,
	[valid_to_date]						[datetime] NULL,
	[ql_group_name]						[nvarchar](50) NULL,		
	[ql_group_description]            	[nvarchar](255) NULL,
	
 CONSTRAINT [Constr_dim_entp_maps_qualification_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_maps_qualification_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

