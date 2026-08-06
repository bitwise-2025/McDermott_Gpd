SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[reprocess_po_header_smat]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[Project] [varchar](100) NULL,
	[RequisitionNOs] [varchar](100) NOT NULL,
	[ReqRevs] [varchar](20) NULL,
	[ReqCreatedDate] [datetime] NULL,
	[ReqOriginator] [varchar](250) NULL,
	[ReqApprover] [varchar](250) NULL,
	[ReleasedToProcDate] [datetime] NULL,
	[ProcAcknowDate] [datetime] NULL,
	[MaterialWorkGroup] [varchar](100) NULL,
	[MaterialWorkDesc] [varchar](500)  NULL,
	[PONumber] [varchar](100) NOT NULL,
	[PORev] [varchar](20) NULL,
	[POTitle] [varchar](500) NULL,
	[POStatus] [varchar](50) NULL,
	[StatusDate] [datetime] NULL,
	[Rev0POIssueDate] [datetime] NULL,
	[POApprovedDate] [datetime] NULL,
	[POIssueDate] [datetime] NULL,
	[SupplierCode] [varchar](50) NULL,
	[SupplierName] [varchar](250) NULL,
	[SupplierLocation] [varchar](50) NULL,
	[Purchaser] [varchar](150) NULL,
	[Buyer] [varchar](100) NULL,
	[SelectCode] [varchar](50) NULL,
	[PaymentMode] [varchar](50) NULL,
	[ItemsCountPO] [int] NULL,
	[TotalCostPO] [money] NULL,
	[CurrencyPO] [varchar](20) NULL,
	[TotalinUSD] [money] NULL,
	[AccountCodePO] [varchar](250) NULL,
	[ReqBudget] [money] NULL,
	[AgreementBudget] [money] NULL,
	[Revision0PoValueInUsd] [money] NULL,
	[ProjectTitle] [varchar](250) NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


