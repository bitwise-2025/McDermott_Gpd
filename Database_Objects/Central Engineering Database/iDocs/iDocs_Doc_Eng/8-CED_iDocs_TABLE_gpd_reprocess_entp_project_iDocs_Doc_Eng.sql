SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE gpd.reprocess_dim_entp_project_iDocs_Doc_Eng
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
