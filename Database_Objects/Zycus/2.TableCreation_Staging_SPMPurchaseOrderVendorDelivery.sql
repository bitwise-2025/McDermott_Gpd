USE [EnterpriseAnalyticsStaging]
GO

/****** Object:  Table [Staging].[SPMPurchaseOrderVendorDelivery]    Script Date: 3/7/2024 11:54:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Staging].[SPMPurchaseOrderVendorDelivery](
	[PROJ_ID] [nvarchar](50) NULL,
	[Project_Description] [nvarchar](150) NULL,
	[JDE_PROJ_NUMBER] [nvarchar](50) NULL,
	[OPERATING_GROUP] [nvarchar](25) NULL,
	[SECTOR] [nvarchar](10) NULL,
	[Client] [nvarchar](50) NULL,
	[JDE_SUPPLIER_NUMBER] [nvarchar](25) NULL,
	[SUPPLIER_NAME] [nvarchar](80) NULL,
	[POLI_QTY] [decimal](31, 16) NULL,
	[UOM] [nvarchar](5) NULL,
	[ISH_PROM_CONTRACT_DATE] [date] NULL,
	[MATL_RECV_DATE] [date] NULL,
	[ISH_ITEM_SHIP_QTY] [decimal](31, 16) NULL,
	[RECV_QTY] [decimal](31, 16) NULL,
	[DESCRIPTION] [nvarchar](150) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[SPM_POH_ID] [nvarchar](25) NULL,
	[SUPPLEMENT] [nvarchar](10) NULL,
	[SUP_POH_ID] [nvarchar](15) NULL,
	[POLI_POS] [nvarchar](5) NULL,
	[POLI_SUB_POS] [nvarchar](5) NULL,
	[ITEM_SHIP_POS] [nvarchar](5) NULL,
	[ITEM_SHIP_SUB_POS] [nvarchar](5) NULL,
	[FREIGHT_TERM] [nvarchar](5) NULL,
	[RECV_TYPE] [nvarchar](15) NULL,
	[RECV_DOC_NUMBER] [nvarchar](50) NULL,
	[IDENT] [bigint] NULL,
	[TAG_NUMBER] [nvarchar](50) NULL,
	[SystemOfRecord] [nvarchar](150) NULL,
	[SORId] [nvarchar](150) NULL
) ON [PRIMARY]
GO


