/****** Object:  Table [yardkpi].[reprocess_iDocs_fab_msmaster]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_iDocs_fab_msmaster]

CREATE TABLE [yardkpi].[reprocess_iDocs_fab_msmaster]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[project_no] [varchar](120) NULL,
	[project_id] [varchar](120) NULL,
	[project_name] [varchar](300) NULL,
	[contract_no] [varchar](120) NULL,
	[deliverable] [varchar](200) NULL,
	[dl_import] [varchar](200) NULL,
	[doc_id] [varchar](200) NULL,
	[doc_number] [varchar](500) NULL,
	[type_class] [varchar](200) NULL,
	[ms_order] [int] NULL,
	[ms_id] [varchar](100) NULL,
	[ms_gate_name] [varchar](200) NULL,
	[ms_weight] [int] NULL,
	[scheduled_date_original] [date] NULL,
	[scheduled_date] [date] NULL,
	[forecast_date_original] [date] NULL,
	[forecast_date] [date] NULL,
	[actual_date_original] [date] NULL,
	[actual_date] [date] NULL,
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


