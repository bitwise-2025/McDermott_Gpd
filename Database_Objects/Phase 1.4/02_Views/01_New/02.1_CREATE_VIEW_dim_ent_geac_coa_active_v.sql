/****** Object:  View [dbo].[dim_ent_geac_coa_active_v]    Script Date: 5/25/2022 12:13:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_geac_coa_active_v]
AS select *,isnull(contract_id,'') + isnull(entity_id,'') contract_entity from [dbo].[dim_ent_geac_coa] 
where active = 1;
GO


