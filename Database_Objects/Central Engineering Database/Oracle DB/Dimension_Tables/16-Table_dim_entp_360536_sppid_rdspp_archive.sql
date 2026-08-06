/****** Object:  Table [edw].[dim_entp_360536_sppid_rdspp_archive]    Script Date: 11/25/2025 12:26:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_sppid_rdspp_archive]
(
	[SP_ID] [nvarchar](max) NULL,
	[SPPID_ITEMTAG] [nvarchar](max) NULL,
	[RDSPP] [nvarchar](max) NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[P_ID] [nvarchar](max) NULL,
	[FILE_NAME] [nvarchar](max) NULL,
	[SPPID_CLASS_L1] [nvarchar](max) NULL,
	[SPPID_CLASS_L2] [nvarchar](max) NULL,
	[SPPID_CLASS_L3] [nvarchar](max) NULL,
	[SPPID_CLASS_L4] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO