 /****** Object:  Table [yardkpi].[stage_toolhound_transaction]    Script Date: 09-25-2023 9:42:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_toolhound_transaction]

CREATE TABLE [yardkpi].[stage_toolhound_transaction]
(
   [stage_toolhound_transaction_id] [BIGINT] IDENTITY (1,1) NOT NULL,
   [source_code] [VARCHAR] (100) NOT NULL,
   [sub_source_code] [VARCHAR] (100) NOT NULL,
   [TransactionNo] [VARCHAR] (500) NULL,
   [LocationName] [VARCHAR] (500) NULL,	
   [TransactionDate] [DATETIME] NULL,	
   [EntityID] [VARCHAR] (500) NULL,	
   [EmployeeNo]	[VARCHAR] (500) NULL,	
   [EmployeeName] [VARCHAR] (1000) NULL,	
   [craft] [VARCHAR] (500) NULL,	
   [partNo] [VARCHAR] (500) NULL,
   [Description] [VARCHAR] (3000) NULL,	
   [ident] [VARCHAR] (500) NULL,	
   [ItemID]	[VARCHAR] (500) NULL,
   [TransactionType] [VARCHAR] (500) NULL,
   [ReturnStatus] [VARCHAR] (500) NULL,	
   [Qty] [DEC] (30,10) NULL,	
   [UnitCost] [DEC] (30,10) NULL,	
   [TotalCost] [DEC] (30,10) NULL,	
   [DueDate] [DATETIME] NULL,	
   [Job] [VARCHAR] (500) NULL,	
   [SubJob] [VARCHAR] (500) NULL,	
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