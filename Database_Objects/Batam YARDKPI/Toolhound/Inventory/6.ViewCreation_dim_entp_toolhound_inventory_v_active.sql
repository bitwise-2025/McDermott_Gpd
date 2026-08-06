/****** Object:  View [dbo].[dim_entp_toolhound_inventory_v]    Script Date: 10/12/2023 1:30:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_toolhound_inventory_v]
AS SELECT [dim_entp_toolhound_inventory_sk]
      ,[dim_entp_toolhound_inventory_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[partNo]
      ,[Description]
      ,[ident]
      ,[ItemID]
      ,[dim_entp_toolhound_category_nk]
      ,[dim_entp_toolhound_subcategory_nk]
      ,[InventoryType]
      ,[LocationName]
      ,[dim_entp_toolhound_location_nk]
      ,[BinShelf]
      ,[MinOnHand]
      ,[MaxOnHand]
      ,[QtyOnHand]
      ,[Issued]
      ,[TransitInBound]
      ,[Reserved]
      ,[InKit]
      ,[Total]
      ,[InTransitOutBound]
      ,[OnPurchaseOrder]
  FROM [dbo].[dim_entp_toolhound_inventory]
  WHERE active =1;
GO


