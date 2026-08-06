/****** Object:  Table [dbo].[dim_entp_toolhound_transaction]   Script Date: 25-09-2023 09:15:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_toolhound_transaction]

CREATE TABLE [dbo].[dim_entp_toolhound_transaction]
(
   [dim_entp_toolhound_transaction_sk] [BIGINT] IDENTITY (1,1) NOT NULL,
   [dim_entp_toolhound_transaction_nk] [BIGINT] NOT NULL,
   [start_date] [DATETIME] NOT NULL,
   [end_date] [DATETIME] NOT NULL,
   [hash_code] [VARCHAR] (8000) NOT NULL,
   [active] [INT] NULL,
   [created_date_time] [DATETIME] NULL,
   [modified_date_time] [DATETIME] NULL,
   [late_arrival_flag] [VARCHAR] (10) NOT NULL,
   [dim_ent_source_nk] [bigint] NULL,
   [dim_ent_sub_source_nk] [bigint] NULL,
   [TransactionNo] [VARCHAR] (500) NULL,
   [LocationName] [VARCHAR] (500) NULL,
   [TransactionDate] [DATETIME] NULL,	
   [EntityID] [VARCHAR] (500) NULL,	
   [EmployeeNo] [VARCHAR] (500) NULL,	
   [EmployeeName] [VARCHAR] (500) NULL,	
   [craft] [VARCHAR] (500) NULL,	
   [partNo] [VARCHAR] (500) NULL,
   [Description] [VARCHAR] (1000) NULL,	
   [ident] [VARCHAR] (500) NULL,	
   [ItemID] [VARCHAR] (500) NULL,
   [TransactionType] [VARCHAR] (500) NULL,
   [ReturnStatus] [VARCHAR] (500) NULL,	
   [Qty] [DEC] (30,10) NULL,	
   [UnitCost] [DEC] (30,10) NULL,
   [TotalCost] [DEC] (30,10) NULL,	
   [DueDate] [DATETIME] NULL,	
   [Job] [VARCHAR] (500) NULL,	
   [SubJob]	[VARCHAR] (500) NULL,	
   [CostCode] [VARCHAR] (500) NULL,	
   [CostCodeDesc] [VARCHAR] (500) NULL,	
   [Reference] [VARCHAR] (500) NULL	
)

WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO