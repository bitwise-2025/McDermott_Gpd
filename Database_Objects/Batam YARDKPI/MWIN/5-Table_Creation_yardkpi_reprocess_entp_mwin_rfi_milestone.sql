SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_entp_mwin_rfi_milestone]

CREATE TABLE [yardkpi].[reprocess_entp_mwin_rfi_milestone]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[rbt_id] [varchar](20) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[location] [varchar](30) NULL,
	[rbt_hdr_category] [char](50) NULL,
	[rbt_version] [varchar](10) NULL,
	[qr_number] [float] NULL,
	[project_id] [varchar](120) NULL,
	[rbt_revision] [varchar](10) NULL,
	[rbt_number] [varchar](150) NULL,
	[rbt_title] [varchar](500) NULL,
	[qc_inspector] [varchar](50) NULL,
	[qc_inspector_name] [varchar](50) NULL,
	[area_id] [varchar](150) NULL,
	[area_title] [varchar](1500) NULL,
	[discipline_id] [varchar](200) NULL,
	[discipline_title] [varchar](1000) NULL,
	[project_title] [varchar](250) NULL,
	[rbt_hdr_categoryname] [varchar](1500) NULL,
	[drawing_no] [varchar](500) NULL,
	[qc_inspection_date] [datetime] NULL,
	[qc_inspection_time] [varchar](50) NULL,
	[qc_inspection_enddate] [datetime] NULL,
	[qc_inspection_endtime] [varchar](50) NULL,
	[submitted_date] [datetime] NULL,
	[inspection_date] [datetime] NULL,
	[remark] [varchar](8000) NULL,
	[rbt_status] [varchar](30) NULL,
	[rbt_type] [varchar](10) NULL,
	[appr1_title] [varchar](100) NULL,
	[appr1_name] [varchar](150) NULL,
	[appr1_appr_status] [varchar](100) NULL,
	[appr1_approval_dt] [datetime] NULL,
	[appr2_title] [varchar](150) NULL,
	[appr2_name] [varchar](150) NULL,
	[appr2_appr_status] [varchar](100) NULL,
	[appr2_approval_dt] [datetime] NULL,
	[appr3_title] [varchar](150) NULL,
	[appr3_name] [varchar](150) NULL,
	[appr3_appr_status] [varchar](100) NULL,
	[appr3_approval_dt] [datetime] NULL,
	[appr4_title] [varchar](150) NULL,
	[appr4_name] [varchar](150) NULL,
	[appr4_appr_status] [varchar](100) NULL,
	[appr4_approval_dt] [datetime] NULL,
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