DROP VIEW [dbo].[dim_ent_welder_active_v]
GO
CREATE VIEW [dbo].[dim_ent_welder_active_v]
AS select 
	dim_ent_welder_sk,
	dim_ent_welder_nk,
	fab_code as [Fab Code],
    welder as [Welder],
    welder_name as [Welder Name]
	from [dbo].[dim_ent_welder]
	where active = 1;
GO


