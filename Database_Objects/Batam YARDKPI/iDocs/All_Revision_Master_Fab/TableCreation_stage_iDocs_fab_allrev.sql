/****** Object:  Table [yardkpi].[stage_iDocs_fab_allrev]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_iDocs_fab_allrev]

CREATE TABLE [yardkpi].[stage_iDocs_fab_allrev]
(
	[stage_iDocs_fab_allrev_id] [bigint] IDENTITY(1,1) NOT NULL,
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


