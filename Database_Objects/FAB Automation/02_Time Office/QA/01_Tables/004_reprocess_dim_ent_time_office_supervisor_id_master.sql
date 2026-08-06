/****** Object:  Table [gpd].[reprocess_dim_ent_time_office_supervisor_id_master]    Script Date: 2/17/2023 2:47:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[reprocess_dim_ent_time_office_supervisor_id_master]') AND type in (N'U'))
DROP TABLE [gpd].[reprocess_dim_ent_time_office_supervisor_id_master]
GO

/****** Object:  Table [gpd].[reprocess_dim_ent_time_office_supervisor_id_master]    Script Date: 2/17/2023 2:47:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_ent_time_office_supervisor_id_master]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[supv_id] [varchar](100) NULL,
	[supervisor_name] [varchar](100) NULL,
	[supervisor_mail_id] [varchar](100) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


