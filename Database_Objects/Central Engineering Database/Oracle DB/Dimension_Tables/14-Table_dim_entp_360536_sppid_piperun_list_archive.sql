/****** Object:  Table [edw].[dim_entp_360536_sppid_piperun_list_archive]    Script Date: 11/25/2025 12:19:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_sppid_piperun_list_archive]
(
	[SP_ID] [nvarchar](max) NULL,
	[RDSPP] [nvarchar](max) NULL,
	[SEQUENCE_NUMBER] [nvarchar](max) NULL,
	[FLUID_CODE] [nvarchar](max) NULL,
	[NOMINAL_SIZE_MM] [nvarchar](max) NULL,
	[PIPE_CLASS] [nvarchar](max) NULL,
	[INSULATION_CLASS] [nvarchar](max) NULL,
	[TRACE_TYPE] [nvarchar](max) NULL,
	[FLUID_DESCRIPTION] [nvarchar](max) NULL,
	[REMARK] [nvarchar](max) NULL,
	[P_ID] [nvarchar](max) NULL,
	[NORMAL_OPERATING_P_BARG] [decimal](38, 18) NULL,
	[NORMAL_OPERATING_T_DEGC] [nvarchar](max) NULL,
	[PHASE] [nvarchar](max) NULL,
	[MAX_DESIGN_P_BARG] [decimal](38, 18) NULL,
	[MAX_DESIGN_T_DEGC] [nvarchar](max) NULL,
	[MIN_DESIGN_P_BARG] [decimal](38, 18) NULL,
	[MIN_DESIGN_T_DEGC] [nvarchar](max) NULL,
	[ALT_DESIGN_P_BARG] [decimal](38, 18) NULL,
	[ALT_DESIGN_T_DEGC] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO