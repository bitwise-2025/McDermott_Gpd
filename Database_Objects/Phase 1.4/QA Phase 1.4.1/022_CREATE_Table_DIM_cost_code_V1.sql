/****** Object:  Table [dbo].[dim_entp_phase]    Script Date: 7/28/2022 2:08:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_costcode]
(
	[dim_entp_costcode_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_entp_costcode_nk] [int] NOT NULL,
	[costcode] [varchar](200) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[costcode_title] [varchar](1000) NULL,
	[dim_entp_project_nk] [int] NULL,
	[project_number] [varchar](120) NULL,
 CONSTRAINT [Cnstr_121dim_entp_costcode_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_costcode_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [indGNKA]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indGNKA] ON [dbo].[dim_entp_costcode]
(
	[dim_entp_costcode_nk] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indGNKSE]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indGNKSE] ON [dbo].[dim_entp_costcode]
(
	[dim_entp_costcode_nk] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNK]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indNK] ON [dbo].[dim_entp_costcode]
(
	[costcode] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKA]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indNKA] ON [dbo].[dim_entp_costcode]
(
	[costcode] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKSE]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indNKSE] ON [dbo].[dim_entp_costcode]
(
	[costcode] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indRK1]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indRK1] ON [dbo].[dim_entp_costcode]
(
	[dim_entp_project_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indSK]    Script Date: 7/28/2022 2:08:06 AM ******/
CREATE NONCLUSTERED INDEX [indSK] ON [dbo].[dim_entp_costcode]
(
	[dim_entp_costcode_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
