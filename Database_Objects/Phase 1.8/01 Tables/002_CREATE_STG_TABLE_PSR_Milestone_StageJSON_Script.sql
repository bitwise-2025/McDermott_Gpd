--[gpd].[Milestone_PSRP_SCM_JSON] 

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[Milestone_PSRP_SCM_JSON]') AND type in (N'U'))
DROP TABLE [gpd].[Milestone_PSRP_SCM_JSON]
GO



/****** Object:  Table [gpd].[Milestone_PSRP_SCM_JSON]    Script Date: 8/11/2022 7:29:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Milestone_PSRP_SCM_JSON]
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


