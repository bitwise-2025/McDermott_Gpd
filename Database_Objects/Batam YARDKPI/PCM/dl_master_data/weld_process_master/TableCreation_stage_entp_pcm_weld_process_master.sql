/****** Object:  Table [yardkpi].[stage_entp_pcm_weld_process_master]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_entp_pcm_weld_process_master]

CREATE TABLE [yardkpi].[stage_entp_pcm_weld_process_master]
(
	[stage_entp_pcm_weld_process_master_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fab_code] [varchar](5) NULL,
	[process] [varchar](5) NULL,
	[process_title] [varchar](100) NULL,
	[discipline] [varchar](5) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


