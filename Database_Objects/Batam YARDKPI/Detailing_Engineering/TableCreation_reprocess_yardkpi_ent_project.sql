/****** Object:  Table [yardkpi].[reprocess_yardkpi_ent_project]    Script Date: 10/28/2022 2:35:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- DROP TABLE [yardkpi].[reprocess_yardkpi_ent_project]
CREATE TABLE [yardkpi].[reprocess_yardkpi_ent_project]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[contract_number] [varchar](50) NULL,
	[contract_title] [varchar](50) NULL,
	[project_number] [varchar](50) NULL,
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


