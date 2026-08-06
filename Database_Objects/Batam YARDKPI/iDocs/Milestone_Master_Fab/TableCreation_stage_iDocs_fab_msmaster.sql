/****** Object:  Table [yardkpi].[stage_iDocs_fab_msmaster]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_iDocs_fab_msmaster]

CREATE TABLE [yardkpi].[stage_iDocs_fab_msmaster]
(
	[stage_iDocs_fab_msmaster_id] [bigint] IDENTITY(1,1) NOT NULL,
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
	[actual_date] [date] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


