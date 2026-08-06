/****** Object:  Table [edw].[dim_entp_360536_p6]    Script Date: 11/19/2025 7:43:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_p6]
(
	[Activity_ID] [nvarchar](max) NULL,
	[Activity_Status] [nvarchar](max) NULL,
	[WBS_Code] [nvarchar](max) NULL,
	[Activity_Name] [nvarchar](max) NULL,
	[Total_Float_d] [nvarchar](max) NULL,
	[Remaining_Duration_d] [nvarchar](max) NULL,
	[Start] [nvarchar](max) NULL,
	[Finish] [nvarchar](max) NULL,
	[BL_Project_Start] [nvarchar](max) NULL,
	[BL_Project_Finish] [nvarchar](max) NULL,
	[Variance_BL_Project_Finish Date(d)] [nvarchar](max) NULL,
	[Longest_Path] [nvarchar](max) NULL,
	[GEM_TT_Responsibility] [nvarchar](max) NULL,
	[GEM_MCD_Discipline] [nvarchar](max) NULL,
	[GEM_MCD_Procurement Items] [nvarchar](max) NULL,
	[GEM_TT_Phase] [nvarchar](max) NULL,
	[Delete_This_Row] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


