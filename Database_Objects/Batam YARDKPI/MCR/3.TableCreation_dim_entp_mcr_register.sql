/****** Object:  Table [dbo].[dim_entp_mcr_register]    Script Date: 7/16/2024 4:19:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_mcr_register]
(
	[dim_entp_mcr_register_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_mcr_register_nk] [bigint] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[contract_id] [varchar](20) NULL,
	[contract_name] [varchar](250) NULL,
	[P_NAME] [varchar](100) NULL,
	[MTN_Number] [varchar](150) NULL,
	[P_ID] [varchar](25) NULL,
	[P_TYPE] [varchar](25) NULL,
	[P_SEQ1] [varchar](25) NULL,
	[P_SEQ2] [varchar](25) NULL,
	[P_SEQ3] [varchar](25) NULL,
	[TYPE] [varchar](25) NULL,
	[RFI] [varchar](100) NULL,
	[LOG] [varchar](500) NULL,
	[MCR_REVIEWED_BY_MCD_ENG] [varchar](50) NULL,
	[BY_MCD_ENG_TRANSMITTAL_NO] [varchar](100) NULL,
	[DATE_SUBMITTED_ENG] [varchar](100) NULL,
	[CLIENT_REP] [varchar](25) NULL,
	[BY_CLIENT_REP_TRANSMITTAL_NO] [varchar](100) NULL,
	[DATE_SUBMITTED_CLIENT] [varchar](50) NULL,
	[SOFTCOPY_SUBMISSION] [varchar](25) NULL,
	[REQUIRED_CLIENT_REVIEW] [varchar](10) NULL,
	[REMARK] [varchar](2000) NULL,
	[ID] [bigint] NULL,
	[Created] [varchar](50) NULL,
	[Created_By] [varchar](150) NULL,
	[Modified] [varchar](50) NULL,
	[Modified_By] [varchar](150) NULL,
	[refedit] [varchar](2000) NULL,
	[Path] [varchar](2000) NULL,
	[CLIENT_REPLY_DATE] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


