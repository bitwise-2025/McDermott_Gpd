/****** Object:  Table [gpd].[stage_fab_rota]    Script Date: 2/15/2023 1:15:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[stage_fab_rota]
(
	[stage_fab_rota_key] [int] IDENTITY(1,1) NOT NULL,
	[batch_number] [nvarchar](50) NOT NULL,
	[sap_number] [nvarchar](50) NOT NULL,
	[name] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[department] [varchar](50) NULL,
	[cost_center] [nvarchar](50) NULL,
	[hook_up_project_others] [nvarchar](100) NULL,
	[local_actual] [varchar](20) NULL,
	[location] [varchar](20) NULL,
	[hire_date] [varchar](50) NULL,
	[status] [varchar](20) NULL,
	[action_date] [varchar](50) NULL,
	[fab_rota_type] [varchar](20) NOT NULL,
	[load_date] [varchar](50) NOT NULL,
	[type] [varchar](100) NULL,
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


