DROP TABLE [gpd].[reprocess_dim_ent_jcc]
GO
CREATE TABLE [gpd].[reprocess_dim_ent_jcc]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[Jcc_no] [varchar](25) NOT NULL,
	[process] [varchar](3) NULL,
	[fab_code] [varchar](3) NOT NULL,
	[discipline] [varchar](3) NULL,
	[certificate_num] [varchar](15) NOT NULL,
	[jcc_submit_date] [datetime] NULL,
	[jcc_sign_date] [datetime] NULL,
	[jcc_receive_date] [datetime] NULL,
	[jcc_expiry_date] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

