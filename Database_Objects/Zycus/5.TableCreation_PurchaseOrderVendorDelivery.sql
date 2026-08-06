USE [EnterpriseAnalytics]
GO

/****** Object:  Table [Logistics].[PurchaseOrderVendorDelivery]    Script Date: 3/7/2024 11:47:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Logistics].[PurchaseOrderVendorDelivery](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PROJ_ID] [nvarchar](25) NULL,
	[PROJECT_DESCRIPTION] [nvarchar](150) NULL,
	[JDE_PROJ_NUMBER] [nvarchar](50) NULL,
	[OPERATING_GROUP] [nvarchar](25) NULL,
	[SECTOR] [nvarchar](10) NULL,
	[Client] [nvarchar](50) NULL,
	[JDE_SUPPLIER_NUMBER] [nvarchar](25) NULL,
	[SUPPLIER_NAME] [nvarchar](80) NULL,
	[IDENT] [numeric](31, 0) NULL,
	[TAG_NUMBER] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[PO_NUMBER] [nvarchar](50) NULL,
	[SPM_POH_ID] [nvarchar](25) NULL,
	[SUPPLEMENT] [nvarchar](10) NULL,
	[SUP_POH_ID] [nvarchar](15) NULL,
	[POLI_POS] [nvarchar](5) NULL,
	[POLI_SUB_POS] [nvarchar](5) NULL,
	[ITEM_SHIP_POS] [nvarchar](10) NULL,
	[ITEM_SHIP_SUB_POS] [nvarchar](31) NULL,
	[FREIGHT_TERM] [nvarchar](5) NULL,
	[POLI_QTY] [decimal](31, 16) NULL,
	[UOM] [nvarchar](5) NULL,
	[ISH_PROM_CONTRACT_DATE] [date] NULL,
	[MATL_RECV_DATE] [date] NULL,
	[ISH_ITEM_SHIP_QTY] [nvarchar](31) NULL,
	[RECV_QTY] [decimal](31, 16) NULL,
	[RECV_TYPE] [nvarchar](15) NULL,
	[RECV_DOC_NUMBER] [nvarchar](50) NULL,
	[JDE_PO_NUMBER] [nvarchar](10) NULL,
	[JDE_PO_LINE] [nvarchar](50) NULL,
	[ORDER_TYPE] [nvarchar](2) NULL,
	[ORDER_SUFFIX] [nvarchar](5) NULL,
	[ORDER_COMPANY] [nvarchar](10) NULL,
	[SPM_PO_NUMBER] [nvarchar](50) NULL,
	[SytemOfRecord] [nvarchar](50) NULL,
	[SORId] [nvarchar](150) NULL,
	[BatchDate] [datetime] NULL,
	[ACCOUNT_COMPANY] [nvarchar](10) NULL,
 CONSTRAINT [PK_PurchaseOrderVendorDelivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO