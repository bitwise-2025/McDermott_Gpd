DROP VIEW [promt].[Projects]
GO

CREATE VIEW [promt].[Projects]
AS select *,[project Number]+' - '+[Project Project Title] as Project from [promt].[dim_ent_promt_project_active_v];
GO


