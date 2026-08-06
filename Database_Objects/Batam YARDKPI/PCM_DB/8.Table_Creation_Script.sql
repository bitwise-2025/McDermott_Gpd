--Table [yardkpi].[stage_entp_pcm_inprocess_inspection]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection]

CREATE TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection]
(
	[stage_entp_pcm_inprocess_inspection_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
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
	[created_date_time] [datetime] NOT NULL,
	[seq_no] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

ALTER TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection] ADD  CONSTRAINT [css_sprii]  DEFAULT ('2023-03-10 08:17:55.433') FOR [created_date_time]
GO

ALTER TABLE [yardkpi].[stage_entp_pcm_inprocess_inspection] ADD  CONSTRAINT [css_seqno]  DEFAULT ('') FOR [seq_no]
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [yardkpi].[stage_entp_pcm_ndt_details]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[stage_entp_pcm_ndt_details]

CREATE TABLE [yardkpi].[stage_entp_pcm_ndt_details]
(
	[stage_entp_pcm_ndt_details_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
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
	[created_date_time] [datetime] NOT NULL,
	[include_in_rr_calc] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [dbo].[dim_entp_pcm_ndt_details]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[dim_entp_pcm_ndt_details]

CREATE TABLE [dbo].[dim_entp_pcm_ndt_details]
(
	[dim_entp_pcm_ndt_details_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_pcm_ndt_details_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[dim_entp_pcm_job_item_nk] [bigint] NULL,
	[ndt_drawing] [varchar](40) NULL,
	[ndt_drawing_desc] [varchar](1000) NULL,
	[trans_date] [varchar](50) NULL,
	[trans_type] [char](5) NULL,
	[fab_code] [varchar](3) NULL,
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
	[defect_length] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [yardkpi].[reprocess_entp_pcm_ndt_details]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]

CREATE TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[trans_date] [varchar](50) NULL,
	[trans_type] [char](5) NULL,
	[fab_code] [varchar](3) NULL,
	[contract] [varchar](10) NULL,
	[contract_title] [varchar](255) NULL,
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
	[hash_code] [varchar](8000) NOT NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NOT NULL,
	[include_in_rr_calc] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [yardkpi].[stage_entp_pcm_Welder_activity]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[stage_entp_pcm_Welder_activity]

CREATE TABLE [yardkpi].[stage_entp_pcm_Welder_activity]
(
	[stage_entp_pcm_Welder_activity_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[trans_date] [varchar](100) NULL,
	[trans_type] [varchar](20) NULL,
	[fab_code] [varchar](20) NULL,
	[contract] [varchar](10) NULL,
	[contract_title] [varchar](255) NULL,
	[job] [varchar](5) NULL,
	[job_title] [varchar](50) NULL,
	[item] [varchar](20) NULL,
	[item_title] [varchar](50) NULL,
	[ndt_drawing] [varchar](40) NULL,
	[ndt_drawing_desc] [varchar](1000) NULL,
	[wctrl] [varchar](8) NULL,
	[weld_suffix] [varchar](7) NULL,
	[stress_relief] [varchar](50) NULL,
	[weld_repair_ref] [varchar](50) NULL,
	[spool] [varchar](2) NULL,
	[weld] [varchar](4) NULL,
	[welder] [varchar](15) NULL,
	[weld_procedure] [varchar](25) NULL,
	[welding_process] [varchar](2) NULL,
	[batch_id] [varchar](100) NULL,
	[SAP_id] [varchar](50) NULL,
	[welding_status] [varchar](1) NULL,
	[weld_date] [varchar](50) NULL,
	[discipline] [varchar](1) NULL,
	[created_date_time] [datetime] NOT NULL,
	[include_in_rr_calc] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [dbo].[dim_entp_pcm_welder_activity]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[dim_entp_pcm_welder_activity]

CREATE TABLE [dbo].[dim_entp_pcm_welder_activity]
(
	[dim_entp_pcm_welder_activity_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_pcm_welder_activity_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[dim_entp_pcm_job_item_nk] [bigint] NULL,
	[ndt_drawing] [varchar](40) NULL,
	[ndt_drawing_desc] [varchar](1000) NULL,
	[fab_code] [varchar](20) NULL,
	[wctrl] [varchar](8) NULL,
	[weld_suffix] [varchar](7) NULL,
	[stress_relief] [varchar](50) NULL,
	[weld_repair_ref] [varchar](50) NULL,
	[spool] [varchar](2) NULL,
	[weld] [varchar](4) NULL,
	[welder] [varchar](15) NULL,
	[weld_procedure] [varchar](25) NULL,
	[batch_id] [varchar](100) NULL,
	[SAP_id] [varchar](50) NULL,
	[welding_process] [varchar](2) NULL,
	[welding_status] [varchar](1) NULL,
	[weld_date] [varchar](50) NULL,
	[discipline] [varchar](1) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table [yardkpi].[reprocess_entp_pcm_welder_activity]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [yardkpi].[reprocess_entp_pcm_welder_activity]

CREATE TABLE [yardkpi].[reprocess_entp_pcm_welder_activity]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[trans_date] [datetime] NULL,
	[trans_type] [char](5) NULL,
	[fab_code] [varchar](20) NULL,
	[contract] [varchar](10) NULL,
	[contract_title] [varchar](255) NULL,
	[job] [varchar](5) NULL,
	[job_title] [varchar](50) NULL,
	[item] [varchar](2) NULL,
	[item_title] [varchar](50) NULL,
	[ndt_drawing] [varchar](40) NULL,
	[ndt_drawing_desc] [varchar](1000) NULL,
	[wctrl] [varchar](8) NULL,
	[weld_suffix] [varchar](7) NULL,
	[stress_relief] [varchar](50) NULL,
	[weld_repair_ref] [varchar](50) NULL,
	[spool] [varchar](2) NULL,
	[weld] [varchar](4) NULL,
	[welder] [varchar](15) NULL,
	[weld_procedure] [varchar](25) NULL,
	[welding_process] [varchar](2) NULL,
	[batch_id] [varchar](100) NULL,
	[SAP_id] [varchar](50) NULL,
	[welding_status] [varchar](1) NULL,
	[weld_date] [varchar](50) NULL,
	[discipline] [varchar](1) NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NOT NULL,
	[include_in_rr_calc] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------