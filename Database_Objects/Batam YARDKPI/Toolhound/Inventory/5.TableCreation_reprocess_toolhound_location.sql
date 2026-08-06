/****** Object:  Table [yardkpi].[reprocess_toolhound_location]    Script Date: 10/12/2023 1:26:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[reprocess_toolhound_location]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[LocationName] [varchar](500) NOT NULL,
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


