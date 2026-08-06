DROP TABLE [gpd].[reprocess_dim_ent_welder]
GO
CREATE TABLE [gpd].[reprocess_dim_ent_welder]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[fab_code] [varchar](3) NULL,
	[welder] [varchar](15) NULL,
	[welder_name] [varchar](30) NULL,
	[load_date] [varchar](50) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
