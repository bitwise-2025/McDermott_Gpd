/****** Object:  Table [yardkpi].[stage_entp_pcm_ndt_details]    Script Date: 6/20/2025 7:42:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE [yardkpi].[stage_entp_pcm_ndt_details]
CREATE TABLE [yardkpi].[stage_entp_pcm_ndt_details]
(
	[stage_entp_pcm_ndt_details_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[trans_date] [varchar](50) NULL,
	[trans_type] [char](5) NULL,
	[fab_code] [varchar](3) NULL,
	[contract] [varchar](50) NULL,
	[contract_title] [varchar](500) NULL,
	[job] [varchar](5) NULL,
	[job_title] [varchar](300) NULL,
	[item] [varchar](2) NULL,
	[item_title] [varchar](300) NULL,
	[ndt_drawing] [varchar](40) NULL,
	[ndt_drawing_desc] [varchar](1000) NULL,
	[wctrl] [varchar](8) NULL,
	[weld_suffix] [varchar](7) NULL,
	[stress_relief] [varchar](50) NULL,
	[weld_repair_ref] [int] NULL,
	[ndt_type] [varchar](2) NULL,
	[weldcount] [int] NULL,
	[spool] [varchar](2) NULL,
	[report_num] [varchar](20) NULL,
	[ndt_procedure] [varchar](5) NULL,
	[ndt_percent] [varchar](20) NULL,
	[test_percent] [int] NULL,
	[test_date] [varchar](50) NULL,
	[pass_fail] [varchar](20) NULL,
	[narrative] [varchar](1000) NULL,
	[inspector] [varchar](50) NULL,
	[insp_name] [varchar](20) NULL,
	[signed] [varchar](20) NULL,
	[sign_override] [varchar](20) NULL,
	[clt_jrm] [varchar](50) NULL,
	[signatory] [varchar](35) NULL,
	[sign_date] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[jrm_signed] [varchar](50) NULL,
	[jrm_sign_date] [varchar](50) NULL,
	[jrm_technician] [varchar](2) NULL,
	[jrm_technician_org] [varchar](2) NULL,
	[ndt_report_format] [varchar](50) NULL,
	[is_approval_required] [varchar](50) NULL,
	[jrm_approver] [varchar](35) NULL,
	[jrm_approver_signed] [varchar](50) NULL,
	[jrm_approver_sign_date] [varchar](50) NULL,
	[defect_type] [varchar](2) NULL,
	[defect_title] [varchar](30) NULL,
	[defect_length] [varchar](20) NULL,
	[created_date_time] [datetime] NULL,
	[include_in_rr_calc] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


