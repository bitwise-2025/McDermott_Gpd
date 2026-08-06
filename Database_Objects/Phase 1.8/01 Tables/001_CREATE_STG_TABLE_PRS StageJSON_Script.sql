--[gpd].[NCSA_procurement_status] 

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[procurement_status_report_planning_JSON]') AND type in (N'U'))
DROP TABLE [gpd].[procurement_status_report_planning_JSON]
GO



/****** Object:  Table [gpd].[procurement_status_report_planning_JSON]    Script Date: 8/11/2022 7:29:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[procurement_status_report_planning_JSON]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[JSON_Attribute] [varchar](8000) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


