IF	OBJECT_ID('[dbo].[dim_ent_global_phase_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_global_phase_active_v]
GO
IF	OBJECT_ID('[dbo].[dim_ent_phase_to_psrl1_link_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_phase_to_psrl1_link_v]
GO
IF	OBJECT_ID('[dbo].[dim_ent_phase_to_psrl2_link_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_phase_to_psrl2_link_v]
GO
/****** Object:  View [dbo].[dim_ent_global_phase_active_v]    Script Date: 11/11/2022 10:02:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_global_phase_active_v]
AS select DISTINCT phase_code,phase_name phase_name,'' psrlevel1_code,'' psrlevel2_code from [dbo].[dim_ent_global_phase] 
where active = 1;
GO


/****** Object:  View [dbo].[dim_ent_phase_to_psrl1_link_v]    Script Date: 11/10/2022 5:32:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_phase_to_psrl1_link_v]
AS select  distinct alternative_phase_code,phase_code from dim_ent_global_phase_alternative_v pa,
dim_ent_psrlevel1_active_v pl1
where pa.alternative_phase_code = pl1.psrlevel1_code;
GO
/****** Object:  View [dbo].[dim_ent_phase_to_psrl2_link_v]    Script Date: 11/10/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_phase_to_psrl2_link_v]
AS select distinct alternative_phase_code,phase_code from dim_ent_global_phase_alternative_v pa,
dim_ent_psrlevel2_active_v pl2
where pa.alternative_phase_code = pl2.psrlevel2_code;
GO





