USE [EnterpriseAnalyticsStaging]
GO

/****** Object:  Table [Staging].[LOAPurchaseOrderVendorDelivery]    Script Date: 3/7/2024 11:52:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Staging].[LOAPurchaseOrderVendorDelivery](
	[PROJ_ID] [nvarchar](25) NULL,
	[PROJECT_DESCRIPTION] [nvarchar](50) NULL,
	[JDE_PROJ_NUMBER] [nvarchar](12) NULL,
	[OPERATING_GROUP] [nvarchar](5) NULL,
	[SECTOR] [nvarchar](5) NULL,
	[Client] [nvarchar](15) NULL,
	[JDE_SUPPLIER_NUMBER] [numeric](10, 0) NULL,
	[SUPPLIER_NAME] [nvarchar](80) NULL,
	[IDENT] [numeric](10, 0) NULL,
	[TAG_NUMBER] [nvarchar](20) NULL,
	[Description] [nvarchar](50) NULL,
	[PO_NUMBER] [nvarchar](10) NULL,
	[SPM_POH_ID] [nvarchar](10) NULL,
	[SUPPLEMENT] [nvarchar](5) NULL,
	[SUP_POH_ID] [nvarchar](5) NULL,
	[POLI_POS] [nvarchar](5) NULL,
	[POLI_SUB_POS] [nvarchar](5) NULL,
	[ITEM_SHIP_POS] [decimal](8, 0) NULL,
	[ITEM_SHIP_SUB_POS] [decimal](31, 26) NULL,
	[FREIGHT_TERM] [nvarchar](5) NULL,
	[POLI_QTY] [decimal](31, 16) NULL,
	[UOM] [nvarchar](2) NULL,
	[ISH_PROM_CONTRACT_DATE] [date] NULL,
	[MATL_RECV_DATE] [date] NULL,
	[ISH_ITEM_SHIP_QTY] [varchar](8) NULL,
	[RECV_QTY] [decimal](31, 16) NULL,
	[RECV_TYPE] [nvarchar](2) NULL,
	[RECV_DOC_NUMBER] [numeric](10, 0) NULL,
	[JDE_PO_NUMBER] [nvarchar](10) NULL,
	[JDE_PO_LINE] [nvarchar](50) NULL,
	[ORDER_TYPE] [nvarchar](2) NULL,
	[ORDER_SUFFIX] [nvarchar](5) NULL,
	[ORDER_COMPANY] [nvarchar](10) NULL,
	[SPM_PO_NUMBER] [nvarchar](50) NULL,
	[SystemOfRecord] [nvarchar](50) NULL,
	[SORId] [nvarchar](150) NULL,
	[ACCOUNT_COMPANY] [nvarchar](10) NULL
) ON [PRIMARY]
GO


