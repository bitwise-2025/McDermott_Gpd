
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE yardkpi.reprocess_ent_contract_mwin

CREATE TABLE yardkpi.reprocess_ent_contract_mwin
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[contract_id] [varchar](50) NULL,
	[contract_description] [varchar](50) NULL,
	[project_id] [varchar](50) NULL,
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


