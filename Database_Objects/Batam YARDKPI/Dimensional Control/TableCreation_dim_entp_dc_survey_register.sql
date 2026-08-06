SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_dc_survey_register]
(
	[dim_entp_dc_survey_register_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_dc_survey_register_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dc_function] [varchar](50) NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[discipline_code] [varchar](50) NULL,
	[platform_name] [varchar](200) NULL,
	[report_number] [varchar](200) NULL,
	[rev] [varchar](50) NULL,
	[description] [varchar](1000) NULL,
	[dwg_ref] [varchar](1000) NULL,
	[work_pack_no] [varchar](1000) NULL,
	[work_pack_title] [varchar](300) NULL,
	[date_request] [date] NULL,
	[date_Inspect] [date] NULL,
	[date_report] [date] NULL,
	[qc_rfi_irn] [varchar](200) NULL,
	[pcm_status] [varchar](200) NULL,
	[yard_area] [varchar](100) NULL,
	[stages] [varchar](150) NULL,
	[weightage] DECIMAL(5,2) NULL,
	[status] [varchar](300) NULL,
	[defect_category] [varchar](500) NULL,
	[remarks] [varchar](1000) NULL,
	[trn_no] [varchar](100) NULL,
	[irn_no] [varchar](100) NULL,
	[date] [date] NULL,
	[misc] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO