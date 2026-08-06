DROP TABLE [gpd].[stage_fab_rota]
GO
CREATE TABLE [gpd].[stage_fab_rota]
(
	[stage_fab_rota_key] [int] IDENTITY(1,1) NOT NULL,
	[batch_number] [nvarchar](250) NOT NULL,
	[sap_number] [nvarchar](250) NOT NULL,
	[name] [varchar](250) NULL,
	[title] [varchar](250) NULL,
	[department] [varchar](250) NULL,
	[cost_center] [nvarchar](250) NULL,
	[hook_up_project_others] [nvarchar](2000) NULL,
	[local_actual] [varchar](250) NULL,
	[location] [varchar](250) NULL,
	[hire_date] [varchar](250) NULL,
	[status] [varchar](250) NULL,
	[action_date] [varchar](250) NULL,
	[fab_rota_type] [varchar](250) NOT NULL,
	[load_date] [varchar](250) NOT NULL,
	[type] [varchar](250) NULL,
	[hcm_number] [varchar](250) NULL,
	[source_file_name] [varchar](500) NULL,
 CONSTRAINT [stage_fab_rota_key] PRIMARY KEY NONCLUSTERED 
	(
		[stage_fab_rota_key] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO







DROP TABLE [gpd].[reprocess_dim_ent_fab_rota]
GO
CREATE TABLE [gpd].[reprocess_dim_ent_fab_rota]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[batch_number] [varchar](250) NOT NULL,
	[sap_number] [varchar](250) NOT NULL,
	[name] [varchar](250) NULL,
	[title] [varchar](250) NULL,
	[department] [varchar](250) NULL,
	[cost_center] [varchar](250) NULL,
	[hook_up_project_others] [varchar](2000) NULL,
	[local_actual] [varchar](250) NULL,
	[location] [varchar](250) NULL,
	[hire_date] [varchar](250) NULL,
	[status] [varchar](250) NULL,
	[action_date] [varchar](250) NULL,
	[fab_rota_type] [varchar](250) NOT NULL,
	[load_date] [varchar](250) NULL,
	[type] [varchar](250) NULL,
	[hcm_number] [varchar](250) NULL,
	[source_file_name] [varchar](500) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




ALTER TABLE [dbo].[dim_ent_fab_rota] ADD [hcm_number] [varchar](250) NULL
ALTER TABLE [dbo].[dim_ent_fab_rota] ADD [source_file_name] [varchar](500) NULL

GO



ALTER VIEW [gpd].[stage_fab_rota_v] AS SELECT [stage_fab_rota_key]
,[batch_number]
,[sap_number]
,[name]
,[title]
,[department]
,CASE WHEN [cost_center] = 'NULL' THEN NULL ELSE [cost_center] END AS [cost_center]
,CASE WHEN [hook_up_project_others] = 'NULL' THEN NULL ELSE [hook_up_project_others] END AS [hook_up_project_others]
,CASE WHEN [local_actual] = 'NULL' THEN NULL ELSE [local_actual] END AS [local_actual]
,CASE WHEN [location] = 'NULL' THEN NULL ELSE [location] END AS [location]
,CASE WHEN ISDATE(LTRIM(RTRIM(hire_date)))=1 THEN hire_date ELSE NULL END AS hire_date
,[status]
,CASE WHEN ISDATE(LTRIM(RTRIM(action_date)))=1 THEN action_date ELSE NULL END AS action_date
,[fab_rota_type]
,[load_date]
,[type]
,[hcm_number]
,[source_file_name]
FROM [gpd].[stage_fab_rota];
GO


