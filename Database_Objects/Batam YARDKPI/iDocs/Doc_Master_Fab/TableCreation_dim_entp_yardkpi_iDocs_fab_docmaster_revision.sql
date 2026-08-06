/****** Object:  Table [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision]    Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision]

CREATE TABLE [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision]
(
	[dim_entp_yardkpi_iDocs_fab_docmaster_revision_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_iDocs_fab_docmaster_revision_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_entp_yardkpi_iDocs_fab_docmaster_nk] [bigint] NULL,
	[doc_id] [varchar](200) NULL,
	[doc_number] [varchar](500) NULL,
	[revision_no] [varchar](200) NULL,
	[revision_date] [date] NULL,
	[overdue_reason] [varchar](500) NULL,
	[shop_dwg_type_of_error] [varchar](500) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


