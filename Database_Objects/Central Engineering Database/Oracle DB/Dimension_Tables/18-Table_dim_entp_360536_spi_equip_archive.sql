/****** Object:  Table [edw].[dim_entp_360536_spi_equip]    Script Date: 12/10/2025 10:34:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_spi_equip_archive]
(
	[CMPNT_ID] [nvarchar](max) NULL,
	[PAU] [nvarchar](max) NULL,
	[SPI_TAG] [nvarchar](max) NULL,
	[RDSPP_TAG] [nvarchar](max) NULL,
	[I_TYPE] [nvarchar](max) NULL,
	[TAG_SERVICE] [nvarchar](max) NULL,
	[LOCATION] [nvarchar](max) NULL,
	[PID] [nvarchar](max) NULL,
	[SCOPE] [nvarchar](max) NULL,
	[REQ] [nvarchar](max) NULL,
	[SOI] [nvarchar](max) NULL,
	[POI] [nvarchar](max) NULL,
	[DISCIPLINE] [nvarchar](max) NULL,
	[MANUFACTURER_NAME] [nvarchar](max) NULL,
	[MODEL_NAME] [nvarchar](max) NULL,
	[SERIAL_NUMBER] [nvarchar](max) NULL,
	[EQA_DECK] [nvarchar](max) NULL,
	[EQA_ROOM] [nvarchar](max) NULL,
	[RDS_CODE] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO