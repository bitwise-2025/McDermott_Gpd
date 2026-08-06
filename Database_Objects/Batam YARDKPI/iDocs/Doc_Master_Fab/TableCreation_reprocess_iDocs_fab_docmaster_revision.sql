/****** Object:  Table [yardkpi].[reprocess_iDocs_fab_docmaster_revision]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_iDocs_fab_docmaster_revision]

CREATE TABLE [yardkpi].[reprocess_iDocs_fab_docmaster_revision]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[doc_id] [varchar](200) NULL,
	[doc_number] [varchar](500) NULL,
	[revision_no] [varchar](200) NULL,
	[revision_date] [date] NULL,
	[overdue_reason] [varchar](500) NULL,
	[shop_dwg_type_of_error] [varchar](500) NULL,
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


