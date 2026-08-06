/****** Object:  Table [dbo].[dim_entp_spc_discipline]    Script Date: 6/21/2024 2:43:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_spc_discipline]
(
	[dim_entp_spc_discipline_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_spc_discipline_nk] [bigint] NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[discipline] [varchar](4000) NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


