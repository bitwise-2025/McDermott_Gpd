/****** Object:  Table  [gpd].[Critical_Vendor_Payments_PMR_JSON]   Script Date: 8/22/2022 6:56:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Critical_Vendor_Payments_PMR_JSON]
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


/****** Object:  Table  [gpd].[Offshore_Client_Schedule_PMR_JSON]   Script Date: 8/22/2022 6:56:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[Offshore_Client_Schedule_PMR_JSON]
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


/****** Object:  Table  [gpd].[Vendor_Payment_Summary_PMR_JSON]   Script Date: 8/22/2022 6:56:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Vendor_Payment_Summary_PMR_JSON]
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


/****** Object:  Table  [gpd].[Offshore_Yard_Layout_PMR_JSON]   Script Date: 8/22/2022 6:56:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Offshore_Yard_Layout_PMR_JSON]
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

/****** Object:  Table  [gpd].[Vendor_Payment_Forecast_PMR_JSON]   Script Date: 8/22/2022 6:56:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[Vendor_Payment_Forecast_PMR_JSON]
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
