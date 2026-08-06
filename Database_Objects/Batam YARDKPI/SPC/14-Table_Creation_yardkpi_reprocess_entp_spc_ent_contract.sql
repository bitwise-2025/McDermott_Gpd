SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[reprocess_entp_spc_ent_contract]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[contract_number] [varchar](120) NULL,
	[project_number] [varchar](120) NULL,
	[contract_description] [varchar](250) NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
