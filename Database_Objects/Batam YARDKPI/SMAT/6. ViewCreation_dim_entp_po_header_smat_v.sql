SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_po_header_smat_v] AS
SELECT [dim_entp_po_header_smat_sk]
      ,[dim_entp_po_header_smat_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[Project]
      ,[RequisitionNOs]
      ,[ReqRevs]
      ,[ReqCreatedDate]
      ,[ReqOriginator]
      ,[ReqApprover]
      ,[ReleasedToProcDate]
      ,[ProcAcknowDate]
      ,[MaterialWorkGroup]
      ,[MaterialWorkDesc]
      ,[PONumber]
      ,[PORev]
      ,[POTitle]
      ,[POStatus]
      ,[StatusDate]
      ,[Rev0POIssueDate]
      ,[POApprovedDate]
      ,[POIssueDate]
      ,[SupplierCode]
      ,[SupplierName]
      ,[SupplierLocation]
      ,[Purchaser]
      ,[Buyer]
      ,[SelectCode]
      ,[PaymentMode]
      ,[ItemsCountPO]
      ,[TotalCostPO]
      ,[CurrencyPO]
      ,[TotalinUSD]
      ,[AccountCodePO]
      ,[ReqBudget]
      ,[AgreementBudget]
      ,[Revision0PoValueInUsd]
      ,[ProjectTitle]
  FROM [dbo].[dim_entp_po_header_smat]
  WHERE active =1;
GO


