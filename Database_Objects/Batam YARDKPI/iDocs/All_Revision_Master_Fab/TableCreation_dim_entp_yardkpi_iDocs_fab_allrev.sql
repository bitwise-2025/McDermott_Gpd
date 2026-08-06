/****** Object:  Table [dbo].[dim_entp_yardkpi_iDocs_fab_allrev]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_allrev]

CREATE TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_allrev]
(
	[dim_entp_yardkpi_iDocs_fab_allrev_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_iDocs_fab_allrev_nk] [bigint] NULL,
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
	[version_no] [int] NULL,
	[revision_no] [varchar](200) NULL,
	[revision_date] [date] NULL,
	[issue_state] [varchar](1000) NULL
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


