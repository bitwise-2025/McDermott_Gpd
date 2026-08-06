/****** Object:  Table [dbo].[dim_entp_pcm_weld_process_master]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_pcm_weld_process_master]

CREATE TABLE [dbo].[dim_entp_pcm_weld_process_master]
(
	[dim_entp_pcm_weld_process_master_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_pcm_weld_process_master_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
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


