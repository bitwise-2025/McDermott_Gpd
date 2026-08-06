SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[stage_entp_pcm_paint_detail]
CREATE TABLE [yardkpi].[stage_entp_pcm_paint_detail]
(
	[stage_entp_pcm_paint_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50)  NULL,
	[sub_source_code] [varchar](50)  NULL,
	[trans_date] [datetime] NULL,
	[trans_type] [char](5) NULL,
	[fab_code] [varchar](3) NULL,
	[contract] [char](10) NULL,
	[contract_title] [varchar](255) NULL,
	[job] [char](5) NULL,
	[job_title] [varchar](50) NULL,
	[pctrl] [char](8) NULL,
	[paint_sys_code] [char](5) NULL,
	[color] [char](4) NULL,
	[surf_cleanliness] [char](10) NULL,
	[qr_no] [varchar](10) NULL,
	[bpctwd_num] [char](4) NULL,
	[paint_date] [datetime] NULL,
	[insp_date] [datetime] NULL,
	[shift] [char](1) NULL,
	[inspector] [varchar](10) NULL,
	[report_type] [char](2) NULL,
	[report_num] [varchar](50) NULL,
	[steel_code] [char](2) NULL,
	[cliam_zone] [char](3) NULL,
	[signed] [varchar](20) NULL,
	[jrm_signed] [char](1) NULL,
	[jrm_technician] [char](2) NULL,
	[jrm_sign_date] [datetime] NULL,
	[supervisor_id] [char](35) NULL,
	[supervisor_sign_date] [datetime] NULL,
	[signatory] [char](35) NULL,
	[sign_date] [varchar](50) NULL,
	[pnt_report] [varchar](30) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

