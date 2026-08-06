SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [dbo].[dim_entp_toolhound_transaction_v]

CREATE VIEW [dbo].[dim_entp_toolhound_transaction_v]
AS SELECT [dim_entp_toolhound_transaction_sk]
         ,[dim_entp_toolhound_transaction_nk]
         ,[start_date] 
         ,[end_date] 
         ,[hash_code] 
         ,[active] 
         ,[created_date_time] 
         ,[modified_date_time] 
         ,[late_arrival_flag] 
         ,[TransactionNo]
         ,[LocationName]
         ,[TransactionDate]
         ,[EntityID]
         ,[EmployeeNo]
         ,[EmployeeName]
         ,[craft]
         ,[partNo]
         ,[Description]
         ,[ident]
         ,[ItemID]
         ,[TransactionType]
         ,[ReturnStatus]
         ,[Qty]
         ,[UnitCost]
         ,[TotalCost]
         ,[DueDate]
         ,[Job]
         ,[SubJob]
         ,[CostCode]
         ,[CostCodeDesc]
         ,[Reference]
from [dbo].[dim_entp_toolhound_transaction] where active = 1;

GO