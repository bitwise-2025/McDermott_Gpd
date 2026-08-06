/****** Object:  Table [yardkpi].[stage_intelex_audit]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_entp_pcm_job_item]

CREATE TABLE [yardkpi].[stage_entp_pcm_job_item]
(
	[stage_entp_pcm_job_item_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fab_code] [varchar](3) NULL,
	[contract] [varchar](10) NULL,
	[contract_title] [varchar](255) NULL,
	[contract_type] [varchar](3) NULL,
	[job] [varchar](5) NULL,
	[job_title] [varchar](50) NULL,
	[item] [varchar](2) NULL,
	[item_title] [varchar](50) NULL,
	[include_in_rr_calc] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


