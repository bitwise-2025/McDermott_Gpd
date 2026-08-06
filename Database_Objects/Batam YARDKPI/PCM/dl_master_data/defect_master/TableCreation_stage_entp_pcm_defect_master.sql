/****** Object:  Table [yardkpi].[stage_entp_pcm_defect_master]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_entp_pcm_defect_master]

CREATE TABLE [yardkpi].[stage_entp_pcm_defect_master]
(
	[stage_entp_pcm_defect_master_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fab_code] [varchar](5) NULL,
	[defect_type] [varchar](5) NULL,
	[defect_type_title] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


