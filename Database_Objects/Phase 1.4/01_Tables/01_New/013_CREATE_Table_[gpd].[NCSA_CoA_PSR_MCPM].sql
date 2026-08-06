/****** Object:  Table [gpd].[NCSA_CoA_PSR_MCPM]    Script Date: 8/5/2022 4:20:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[NCSA_CoA_PSR_MCPM]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[Domain] [nvarchar](50) NOT NULL,
	[CoA] [nvarchar](100) NULL,
	[Coa_Title] [varchar](1000) NULL,
	[CostCode] [varchar](200) NULL,
	[CostCode_Title] [varchar](1000) NULL,
	[CostType] [varchar](100) NULL,
	[SCT] [varchar](200) NULL,
	[WBS] [nvarchar](50) NULL,
	[WBS_Title] [varchar](200) NULL,
	[WBSLevel2] [varchar](50) NULL,
	[WBSLevel2_Title] [varchar](200) NULL,
	[WBSLevel3] [varchar](50) NULL,
	[WBSLevel3_Title] [varchar](200) NULL,
	[WBSLevel4] [varchar](50) NULL,
	[WBSLevel4_Title] [varchar](200) NULL,
	[KeyUoMImperial] [varchar](50) NULL,
	[KeyUoMMetric] [varchar](50) NULL,
	[PSRLevel1] [varchar](10) NULL,
	[PSRLevel2] [varchar](10) NULL,
	[PSRLevel1_Title] [varchar](100) NULL,
	[PSRLevel2_Title] [varchar](100) NULL,
	[Phase] [varchar](16) NULL,
	[Phase_Title] [varchar](50) NULL,
	[Source] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO