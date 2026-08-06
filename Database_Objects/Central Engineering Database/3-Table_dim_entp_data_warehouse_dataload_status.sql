/****** Object:  Table [edw].[dim_entp_data_warehouse_dataload_status]    Script Date: 11/26/2025 12:31:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_data_warehouse_dataload_status]
(
	[project_number] [varchar](20) NOT NULL,
	[Table_name] [varchar](250) NOT NULL,
	[description] [varchar](250) NULL,
	[Datasource] [varchar](250) NULL,
	[load_date_time] [datetime] NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
