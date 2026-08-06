/****** Object:  Table [yardkpi].[stage_entp_mcr_register]    Script Date: 7/16/2024 4:16:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[stage_entp_mcr_register]
(
	[stage_entp_mcr_register_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[MTN_Number] [varchar](150) NOT NULL,
	[P_NAMEid] [bigint] NULL,
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
	[CLIENT_REPLY_DATE] [varchar](50) NULL,
	[created_date_time] [datetime] NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


