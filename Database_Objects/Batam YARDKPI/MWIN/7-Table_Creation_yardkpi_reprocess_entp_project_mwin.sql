SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE yardkpi.reprocess_entp_project_mwin

CREATE TABLE yardkpi.reprocess_entp_project_mwin
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[project_id] [varchar](50) NULL,
	[project_description] [varchar](50) NULL,
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
