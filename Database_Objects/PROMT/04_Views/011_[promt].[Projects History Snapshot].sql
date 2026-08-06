/****** Object:  View [promt].[Projects History Snapshot]    Script Date: 5/3/2024 8:20:02 PM ******/
DROP VIEW [promt].[Projects History Snapshot]
GO

CREATE VIEW [promt].[Projects History Snapshot]
AS select * from [promt].[dim_ent_promt_project_snapshot_active_v];
GO


