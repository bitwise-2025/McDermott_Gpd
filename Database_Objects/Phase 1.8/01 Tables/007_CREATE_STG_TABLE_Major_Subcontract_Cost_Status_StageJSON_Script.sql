/****** Object:  Table [gpd].[Major_Subcontract_Cost_Status_JSON]    Script Date: 8/24/2022 4:56:44 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[Major_Subcontract_Cost_Status_JSON]') AND type in (N'U'))
DROP TABLE [gpd].[Major_Subcontract_Cost_Status_JSON]
GO

/****** Object:  Table [gpd].[Major_Subcontract_Cost_Status_JSON]    Script Date: 8/24/2022 4:56:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Major_Subcontract_Cost_Status_JSON]
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


