CREATE VIEW [promt].[User project access] ([User ID], [Project ID])
AS SELECT 
	tab.[user_id],proj.dim_ent_promt_project_nk as project_id FROM(
	select 'ali.rathore@mcdermott.com' as [user_id]
	UNION ALL
	select 'Iyasu.Eibedingil@mcdermott.com' as [user_id]
	UNION ALL
	select 'vmishra@mcdermott.com' as [user_id]
	UNION ALL
	select 'soumya.mukherjee@mcdermott.com' as [user_id]
	UNION ALL
	select 'nilpeshkumar.patel@mcdermott.com' as [user_id]
	)tab
	CROSS JOIN
	[promt].[dim_ent_promt_project] proj;
GO

