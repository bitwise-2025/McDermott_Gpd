CREATE TABLE [dbo].[dim_entp_maps_authorised_user]
(
	[dim_entp_maps_authorised_user_sk] 			[bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_maps_authorised_user_nk] 			[bigint] NOT NULL,
	[auth_user_id] 								[int] null,	
	[start_date] 								[datetime] NOT NULL,
	[end_date] 									[datetime] NOT NULL,
	[hash_code] 								[varchar](8000) NOT NULL,
	[late_arrival_flag] 						[varchar](1) NOT NULL,
	[active] 									[int] NOT NULL,
	[created_date_time] 						[datetime] NULL,
	[modified_date_time] 						[datetime] NULL,
	[db_id] 									[numeric](4, 0) null,
	[mail_box_id] 								[nvarchar](100) null,
	[full_name] 								[nvarchar](100) null,
	[person_id_number] 							[nvarchar](50) null,
	[profile_auth_user_id] 						[int] null,
	[profile_user] 								[nvarchar](10) null,
	[obsolete_user] 							[nvarchar](10) null,
	[profile_type] 								[nvarchar](20) null,
	[profile_hidden] 							[nvarchar](10) null,
	
 CONSTRAINT [Constr_dim_entp_maps_authorised_user_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_maps_authorised_user_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
