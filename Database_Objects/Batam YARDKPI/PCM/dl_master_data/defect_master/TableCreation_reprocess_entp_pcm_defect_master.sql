/****** Object:  Table [yardkpi].[reprocess_entp_pcm_defect_master]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_entp_pcm_defect_master]

CREATE TABLE [yardkpi].[reprocess_entp_pcm_defect_master]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[fab_code] [varchar](5) NULL,
	[defect_type] [varchar](5) NULL,
	[defect_type_title] [varchar](100) NULL,
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

