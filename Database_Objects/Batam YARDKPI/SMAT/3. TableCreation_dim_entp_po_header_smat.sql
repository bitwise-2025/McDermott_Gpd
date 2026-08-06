
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_po_header_smat]
(
	[dim_entp_po_header_smat_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_po_header_smat_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](10) NOT NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,	
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
	[ProjectTitle] [varchar](250) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
