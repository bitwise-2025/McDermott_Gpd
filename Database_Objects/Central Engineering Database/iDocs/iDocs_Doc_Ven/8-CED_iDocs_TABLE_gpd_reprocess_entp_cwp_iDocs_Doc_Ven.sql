SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE gpd.reprocess_dim_entp_cwp_iDocs_Doc_Ven
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	cwp_code [varchar](100) NULL,
	project_number [varchar](120) NULL,
	cwp_description [varchar](100) NULL,
	cwp_status [varchar](100) NULL,
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
