DROP TABLE [gpd].[reprocess_dim_ent_weld_process]
GO
CREATE TABLE [gpd].[reprocess_dim_ent_weld_process]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[fab_code] [varchar](5) NULL,
	[process] [varchar](5) NULL,
	[process_title] [varchar](100) NULL,
	[discipline] [varchar](5) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL,
	[position] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

