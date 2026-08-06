/****** Object:  Table [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster]    Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster]

CREATE TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster]
(
	[dim_entp_yardkpi_iDocs_fab_msmaster_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_iDocs_fab_msmaster_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
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


