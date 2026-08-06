/****** Object:  View [promt].[Projects History]    Script Date: 5/3/2024 8:18:50 PM ******/
DROP VIEW [promt].[Projects History]
GO

CREATE VIEW [promt].[Projects History]
AS select * from [promt].[dim_ent_promt_project_active_v];
GO


