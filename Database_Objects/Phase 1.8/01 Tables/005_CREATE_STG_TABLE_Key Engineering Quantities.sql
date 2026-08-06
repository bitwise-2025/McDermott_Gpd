/****** Object:  Table [gpd].[Global_Template_Engineering_Key_Quantities_JSON]    Script Date: 8/24/2022 11:24:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Global_Template_Engineering_Key_Quantities_JSON]
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


