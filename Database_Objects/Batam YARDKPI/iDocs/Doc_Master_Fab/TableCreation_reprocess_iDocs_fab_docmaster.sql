/****** Object:  Table [yardkpi].[reprocess_iDocs_fab_docmaster]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_iDocs_fab_docmaster]

CREATE TABLE [yardkpi].[reprocess_iDocs_fab_docmaster]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[project_no] [varchar](120) NULL,
	[project_id] [varchar](120) NULL,
	[project_name] [varchar](300) NULL,
	[contract_no] [varchar](120) NULL,
	[client_name] [varchar](300) NULL,
	[deliverable] [varchar](200) NULL,
	[dl_import] [varchar](200) NULL,
	[doc_id] [varchar](200) NULL,
	[type_class] [varchar](200) NULL,
	[deliverable_type] [varchar](500) NULL,
	[doc_type] [varchar](500) NULL,
	[doc_number] [varchar](500) NULL,
	[alternate_doc_number] [varchar](500) NULL,
	[title] [varchar](1000) NULL,
	[revision_no] [varchar](200) NULL,
	[revision_date] [date] NULL,
	[issue_state] [varchar](100) NULL,
	[client_rev_no] [varchar](500) NULL,
	[facility_plant_unit] [varchar](500) NULL,
	[overdue_reason] [varchar](500) NULL,
	[office_location] [varchar](500) NULL,
	[discipline] [varchar](500) NULL,
	[pcm_last_weld] [varchar](500) NULL,
	[ref_no] [varchar](500) NULL,
	[shop_dwg_type_of_error] [varchar](500) NULL,
	[superseded_by] [varchar](500) NULL,
	[idocs_url] [varchar](1000) NULL,
	[idocs_folder] [varchar](1000) NULL,
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


