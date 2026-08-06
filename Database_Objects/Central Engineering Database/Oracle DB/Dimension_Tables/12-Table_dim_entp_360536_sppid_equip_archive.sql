/****** Object:  Table [edw].[dim_entp_360536_sppid_equip_archive]    Script Date: 11/25/2025 12:14:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_sppid_equip_archive]
(
	[SP_ID] [nvarchar](max) NULL,
	[RDSPP] [nvarchar](max) NULL,
	[SEQUENCE_NUMBER] [nvarchar](max) NULL,
	[EQUIPMENT_NAME] [nvarchar](max) NULL,
	[P_ID] [nvarchar](max) NULL,
	[DESIGN_P_BARG] [decimal](38, 18) NULL,
	[DESIGN_T_DEGC] [nvarchar](max) NULL,
	[MIN_DESIGN_T_DEGC] [nvarchar](max) NULL,
	[VAC_BARG] [decimal](38, 18) NULL,
	[MAX_OPERATING_P_BARG] [decimal](38, 18) NULL,
	[MAX_OPERATING_T_DEGC] [nvarchar](max) NULL,
	[DESIGN_TUBE_P_BARG] [decimal](38, 18) NULL,
	[DESIGN_T_TUBE_DEGC] [nvarchar](max) NULL,
	[MIN_DESIGN_T_TUBE_DEGC] [nvarchar](max) NULL,
	[VAC_TUBE_BARG] [decimal](38, 18) NULL,
	[MAX_OPERATING_P_TUBE_BARG] [decimal](38, 18) NULL,
	[MAX_OPERATING_T_TUBE_DEGC] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO