/****** Object:  Table [gpd].[stage_office_supervisor_master]    Script Date: 2/17/2023 2:43:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[stage_office_supervisor_master]') AND type in (N'U'))
DROP TABLE [gpd].[stage_office_supervisor_master]
GO

/****** Object:  Table [gpd].[stage_office_supervisor_master]    Script Date: 2/17/2023 2:43:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[stage_office_supervisor_master]
(
	[stage_office_supervisor_master_id] [int] IDENTITY(1,1) NOT NULL,
	[supv_id] [varchar](100) NULL,
	[supervisor_name] [varchar](100) NULL,
	[supervisor_mail_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


