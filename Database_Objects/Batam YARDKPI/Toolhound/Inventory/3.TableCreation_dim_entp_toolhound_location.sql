/****** Object:  Table [dbo].[dim_entp_toolhound_location]    Script Date: 10/12/2023 1:21:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_toolhound_location]
(
	[dim_entp_toolhound_location_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_toolhound_location_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](10) NOT NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[LocationName] [varchar](500) NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

