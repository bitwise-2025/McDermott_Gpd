/****** Object:  Table [dbo].[dim_entp_toolhound_inventory]    Script Date: 10/12/2023 1:13:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_toolhound_inventory]
(
	[dim_entp_toolhound_inventory_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_toolhound_inventory_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](10) NOT NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[partNo] [varchar](500) NOT NULL,
	[Description] [varchar](500) NULL,
	[ident] [varchar](500) NULL,
	[ItemID] [varchar](500) NOT NULL,
	[dim_entp_toolhound_category_nk] [bigint] NULL,
	[dim_entp_toolhound_subcategory_nk] [bigint] NULL,
	[InventoryType] [varchar](500) NULL,
	[LocationName] [varchar](500) NOT NULL,
	[dim_entp_toolhound_location_nk] [bigint] NULL,
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


