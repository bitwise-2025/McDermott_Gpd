/****** Object:  Table [yardkpi].[stage_dc_survey_register]    Script Date: 10/3/2022 12:23:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--drop table [yardkpi].[stage_dc_survey_register]

CREATE TABLE [yardkpi].[stage_dc_survey_register]
(
	[stage_dc_survey_register_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[dc_function] [varchar](50) NULL,
	[contract_number] [varchar](50) NULL,
	[discipline_code] [varchar](50) NULL,
	[platform_name] [varchar](200) NULL,
	[report_number] [varchar](200) NULL,
	[rev] [varchar](50) NULL,
	[description] [varchar](1000) NULL,
	[dwg_ref] [varchar](1000) NULL,
	[work_pack_no] [varchar](1000) NULL,
	[work_pack_title] [varchar](300) NULL,
	[date_request] [varchar](50) NULL,
	[date_Inspect] [varchar](50) NULL,
	[date_report] [varchar](50) NULL,
	[qc_rfi_irn] [varchar](200) NULL,
	[pcm_status] [varchar](200) NULL,
	[yard_area] [varchar](100) NULL,
	[stages] [varchar](150) NULL,
	[weightage] [varchar](20) NULL,
	[status] [varchar](300) NULL,
	[defect_category] [varchar](500) NULL,
	[remarks] [varchar](1000) NULL,
	[trn_no] [varchar](100) NULL,
	[irn_no] [varchar](100) NULL,
	[date] [varchar](50) NULL,
	[misc] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



