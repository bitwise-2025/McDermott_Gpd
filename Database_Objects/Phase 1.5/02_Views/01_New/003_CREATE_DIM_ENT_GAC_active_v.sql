/****** Object:  View [dbo].[dim_ent_gac_active_v]    Script Date: 5/25/2022 2:03:39 AM ******/
IF	OBJECT_ID('[dbo].[dim_ent_gac_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_gac_active_v]
GO



/****** Object:  View [dbo].[dim_ent_gac_active_v]    Script Date: 5/31/2022 6:21:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_gac_active_v]
AS select * from dim_ent_gac
where active = 1;
GO
