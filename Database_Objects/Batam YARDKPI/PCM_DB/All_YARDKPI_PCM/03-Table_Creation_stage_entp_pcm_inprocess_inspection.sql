/****** Object:  Table [yardkpi].[stage_entp_pcm_inprocess_inspection]    Script Date: 6/19/2025 8:44:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection]
CREATE TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection]
(
	[stage_entp_pcm_inprocess_inspection_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[trans_date] [datetime] NULL,
	[trans_type] [char](4) NULL,
	[fab_code] [varchar](3) NULL,
	[contract] [char](10) NULL,
	[contract_title] [varchar](255) NULL,
	[job] [char](5) NULL,
	[job_title] [varchar](50) NULL,
	[item] [char](2) NULL,
	[item_title] [varchar](50) NULL,
	[include_in_rr_calc] [varchar](10) NULL,
	[ndt_drawing] [char](40) NULL,
	[ndt_drawing_desc] [varchar](100) NULL,
	[wctrl] [varchar](10) NULL,
	[weld_suffix] [varchar](10) NULL,
	[stress_relief] [char](10) NULL,
	[weld_repair_ref] [int] NULL,
	[discipline] [char](10) NULL,
	[weld] [varchar](10) NULL,
	[activity_type] [varchar](10) NULL,
	[report_type] [varchar](10) NULL,
	[report_num] [decimal](12, 4) NULL,
	[inspector] [char](10) NULL,
	[remarks] [varchar](255) NULL,
	[activity_done_by] [varchar](35) NULL,
	[activity_done_on] [datetime] NULL,
	[action_taken] [varchar](255) NULL,
	[action_taken_on] [datetime] NULL,
	[other_remarks] [varchar](255) NULL,
	[created_date_time] [datetime] NULL,
	[seq_no] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




