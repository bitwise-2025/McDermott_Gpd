SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- DROP TABLE [yardkpi].[reprocess_fact_yardkpi_detailing_plan]

CREATE TABLE [yardkpi].[reprocess_fact_yardkpi_detailing_plan]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_rssk] [int] NULL,
	[dim_entp_yardkpi_detailing_engineering_nk] [bigint] NULL,
	[cutoff_date] [varchar](50) NULL,
	[project] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[plans] [varchar](50) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


