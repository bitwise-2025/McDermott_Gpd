/****** Object:  Table [gpd].[NCSA_coconsole_certificatestatus]    Script Date: 7/25/2022 2:01:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_coconsole_certificatestatus]
(
	[stage_coconsole_certstatus_id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [varchar](30) NULL,
	[System] [varchar](50) NULL,
	[Sub_System] [varchar](50) NULL,
	[Sub_System_Description] [varchar](1000) NULL,
	[SrcFileName] [varchar](200) NULL,
	[Certificate] [varchar](500) NULL,
	[Cert_Value] [varchar](500) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_coconsole_checksheet]    Script Date: 7/25/2022 2:01:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_coconsole_checksheet]
(
	[stage_coconsole_checksheet_id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [varchar](30) NULL,
	[System_No] [varchar](50) NULL,
	[System_Description] [varchar](1000) NULL,
	[Sub_System] [varchar](50) NULL,
	[Sub_System_Descr] [varchar](1000) NULL,
	[Object] [varchar](50) NULL,
	[Object_Description] [varchar](1000) NULL,
	[Type] [varchar](100) NULL,
	[Disc] [varchar](30) NULL,
	[Discipline_Description] [varchar](1000) NULL,
	[Sheet] [varchar](100) NULL,
	[Sheet_Des] [varchar](1000) NULL,
	[Sheet_Status] [varchar](100) NULL,
	[Ok] [varchar](50) NULL,
	[Approver] [varchar](50) NULL,
	[Status_date] [varchar](30) NULL,
	[A] [varchar](10) NULL,
	[B] [varchar](10) NULL,
	[C] [varchar](10) NULL,
	[D] [varchar](10) NULL,
	[Barcode] [varchar](30) NULL,
	[Phase_No] [varchar](30) NULL,
	[SrcFileName] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_coconsole_punchitem]    Script Date: 7/25/2022 2:01:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_coconsole_punchitem]
(
	[stage_coconsole_punchitem_id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [varchar](30) NOT NULL,
	[System] [varchar](100) NULL,
	[System_Description] [varchar](1000) NULL,
	[Sub_System] [varchar](100) NULL,
	[Sub_System_Description] [varchar](1000) NULL,
	[Tag_Number] [varchar](30) NULL,
	[Tag_Description] [varchar](1000) NULL,
	[Tag_Type] [varchar](100) NULL,
	[Punch_Item] [varchar](100) NULL,
	[Punch_Item_Description] [varchar](1000) NULL,
	[Discipline] [varchar](100) NULL,
	[Discipline_Desc] [varchar](100) NULL,
	[Category] [varchar](100) NULL,
	[Raised_By] [varchar](100) NULL,
	[Raised_Date] [varchar](30) NULL,
	[Action_By] [varchar](100) NULL,
	[Notes] [varchar](1000) NULL,
	[Status] [varchar](100) NULL,
	[Cleared_By] [varchar](100) NULL,
	[Cleared_Date] [varchar](30) NULL,
	[Verified_By] [varchar](100) NULL,
	[Verified_Date] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
