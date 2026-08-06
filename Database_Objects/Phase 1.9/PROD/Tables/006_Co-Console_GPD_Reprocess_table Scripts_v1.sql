/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_certstatus]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_certstatus]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Project] [varchar](30) NULL,
	[Sub_System] [varchar](50) NULL,
	[sub_system_description] [varchar](1000) NULL,
	[json_attribute] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_punchitem]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_punchitem]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
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
	[Verified_Date] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_sheet_trans]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_sheet_trans]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Sheet] [varchar](100) NULL,
	[System_No] [varchar](50) NULL,
	[Sub_System] [varchar](50) NULL,
	[Object] [varchar](50) NULL,
	[Sheet_Status] [varchar](100) NULL,
	[Project] [varchar](30) NULL,
	[Type] [varchar](100) NULL,
	[Disc] [varchar](30) NULL,
	[Ok] [varchar](50) NULL,
	[Approver] [varchar](50) NULL,
	[Status_date] [varchar](30) NULL,
	[Barcode] [varchar](30) NULL,
	[Phase_No] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_sheets]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_sheets]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Sheet] [varchar](100) NULL,
	[Sheet_Des] [varchar](1000) NULL,
	[Disc] [varchar](30) NULL,
	[Sub_System] [varchar](50) NULL,
	[SrcFileName] [varchar](100) NULL,
	[Object] [varchar](50) NULL,
	[Project] [varchar](100) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_sub_system]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_sub_system]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Sub_System] [varchar](50) NULL,
	[Sub_System_Descr] [varchar](1000) NULL,
	[System_No] [varchar](50) NULL,
	[Project] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_system]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_system]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[System_No] [varchar](50) NULL,
	[System_Description] [varchar](1000) NULL,
	[Project] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_tags_cs]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_tags_cs]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Object] [varchar](50) NULL,
	[Object_Description] [varchar](1000) NULL,
	[Type] [varchar](100) NULL,
	[Sub_System] [varchar](50) NULL,
	[Project] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_tags_pi]    Script Date: 7/25/2022 2:47:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_cc_dim_entp_comm_tags_pi]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[Tag_Number] [varchar](30) NULL,
	[Tag_Description] [varchar](1000) NULL,
	[Tag_Type] [varchar](100) NULL,
	[Sub_System] [varchar](50) NULL,
	[Project] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
