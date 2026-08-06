
CREATE TABLE [yardkpi].[reprocess_ent_load_training_contract]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NULL,
	[contract_id] [varchar](10) NULL,
	[contract_name] [varchar](255) NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[project_id] [varchar](10) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO