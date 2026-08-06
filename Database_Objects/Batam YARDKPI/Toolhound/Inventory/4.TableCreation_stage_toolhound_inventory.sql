/****** Object:  Table [yardkpi].[stage_toolhound_inventory]    Script Date: 10/12/2023 1:28:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[stage_toolhound_inventory]
(
	[stage_toolhound_inventory_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[partNo] [varchar](500) NULL,
	[Description] [varchar](500) NULL,
	[ident] [varchar](500) NULL,
	[ItemID] [varchar](500) NULL,
	[category] [varchar](500) NULL,
	[subcategory] [varchar](500) NULL,
	[InventoryType] [varchar](500) NULL,
	[LocationName] [varchar](500) NULL,
	[BinShelf] [varchar](500) NULL,
	[MinOnHand] [decimal](20, 10) NULL,
	[MaxOnHand] [decimal](20, 10) NULL,
	[QtyOnHand] [decimal](20, 10) NULL,
	[Issued] [decimal](20, 10) NULL,
	[TransitInBound] [decimal](20, 10) NULL,
	[Reserved] [decimal](20, 10) NULL,
	[InKit] [decimal](20, 10) NULL,
	[Total] [decimal](20, 10) NULL,
	[InTransitOutBound] [decimal](20, 10) NULL,
	[OnPurchaseOrder] [decimal](20, 10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


