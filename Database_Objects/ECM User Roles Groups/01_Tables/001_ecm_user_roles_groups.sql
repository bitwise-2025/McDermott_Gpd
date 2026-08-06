CREATE TABLE [gpd].[ecm_user_roles_groups]
(
	[username] [varchar](4000) NULL,
	[email] [varchar](4000) NULL,
	[firstname] [varchar](4000) NULL,
	[lastname] [varchar](4000) NULL,
	[organization] [varchar](4000) NULL,
	[groups] [varchar](4000) NULL,
	[sitedetails_shortname] [varchar](4000) NULL,
	[sitedetails_name] [varchar](4000) NULL,
	[sitedetails_role] [varchar](4000) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

