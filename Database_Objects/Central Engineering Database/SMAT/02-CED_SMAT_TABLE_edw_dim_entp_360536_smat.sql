/****** Object:  Table [edw].[dim_entp_360536_smat]    Script Date: 11/25/2025 12:01:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [edw].[dim_entp_360536_smat_po_details]
(
	[PROJECT_ID] [nvarchar](max) NULL,
	[REQUISITION_NO] [nvarchar](max) NULL,
	[REQ_REV] [int] NULL,
	[REQ_ORIGINATOR] [nvarchar](max) NULL,
	[REQ_DATE] [nvarchar](max) NULL,
	[RELEASED_TO_PROC] [nvarchar](max) NULL,
	[PROC_ACK_DATE] [nvarchar](max) NULL,
	[MATL_WRK_GRP] [nvarchar](max) NULL,
	[MATL_WRK_NLS] [nvarchar](max) NULL,
	[RLI_POS] [bigint] NULL,
	[RLI_SUB_POS] [int] NULL,
	[RELEASED_QTY] [float] NULL,
	[UOM] [nvarchar](max) NULL,
	[ROS_DATE] [nvarchar](max) NULL,
	[PO_NUMBER] [nvarchar](max) NULL,
	[PO_REV] [int] NULL,
	[PO_DESCRIPTION] [nvarchar](max) NULL,
	[PO_STATUS] [nvarchar](max) NULL,
	[STATUS_DATE] [nvarchar](max) NULL,
	[PO_CREATED_DATE] [nvarchar](max) NULL,
	[PO_ISSUE_DATE] [nvarchar](max) NULL,
	[PO_APPROVED_DATE] [nvarchar](max) NULL,
	[SUPPLIER_CODE] [nvarchar](max) NULL,
	[SUPPLIER_NAME] [nvarchar](max) NULL,
	[SUPPLIER_LOCATION] [nvarchar](max) NULL,
	[COUNTRY_OF_ORIGIN] [nvarchar](max) NULL,
	[BUYER] [nvarchar](max) NULL,
	[SELECT_CODE] [nvarchar](max) NULL,
	[PAYMENT_MODE] [nvarchar](max) NULL,
	[COMMODITY_CODE] [nvarchar](max) NULL,
	[IDENT_CODE] [nvarchar](max) NULL,
	[ITEM_DESC] [nvarchar](max) NULL,
	[POLI_POS] [int] NULL,
	[POLI_SUB_POS] [int] NULL,
	[ACCOUNT_CODE_ITEM] [nvarchar](max) NULL,
	[POLI_UOM] [nvarchar](max) NULL,
	[POLI_QTY] [float] NULL,
	[UNIT_PRICE_ITEM] [decimal](38, 18) NULL,
	[PO_LINE_ITEM_PRICE] [decimal](38, 18) NULL,
	[PO_LINE_ITEM_PRICE_USD] [decimal](38, 18) NULL,
	[PO_TOTAL_COST] [decimal](38, 18) NULL,
	[PO_TOTAL_USD] [decimal](38, 18) NULL,
	[PO_CURRENCY] [nvarchar](max) NULL,
	[CURRENCY_PO_ITEM] [nvarchar](max) NULL,
	[DISCOUNT_PERCENTAGE] [decimal](38, 18) NULL,
	[INCOTERM] [nvarchar](max) NULL,
	[DELIVERY_PLACE] [nvarchar](max) NULL,
	[GROUP1] [nvarchar](max) NULL,
	[GROUP2] [nvarchar](max) NULL,
	[GROUP3] [nvarchar](max) NULL,
	[GROUP4] [nvarchar](max) NULL,
	[GROUP5] [nvarchar](max) NULL,
	[PROM_DELIVERY_DATE] [datetime2](7) NULL,
	[MRR_NUMBER] [nvarchar](max) NULL,
	[MRR_CREATION_DATE] [nvarchar](max) NULL,
	[MRR_RECV_DATE] [nvarchar](max) NULL,
	[MRR_POSTED_DATE] [nvarchar](max) NULL,
	[MRR_QUANTITY] [decimal](38, 18) NULL,
	[IS_MASTER_TAG] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


