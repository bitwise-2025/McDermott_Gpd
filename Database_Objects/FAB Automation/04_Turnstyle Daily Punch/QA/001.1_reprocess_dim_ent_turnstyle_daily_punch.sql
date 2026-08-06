DROP TABLE [gpd].[reprocess_dim_ent_turnstyle_daily_punch]
GO

CREATE TABLE [gpd].[reprocess_dim_ent_turnstyle_daily_punch]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[person_no_external] [nvarchar](50) NOT NULL,
	[ts_date] [date] NULL,
	[punch] [time](7) NULL,
	[device_name] [nvarchar](200) NULL,
	[punch_type] [varchar](100) NULL,
	[run_timestamp] [datetime] NULL,
	[load_date] [varchar](50) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


