CREATE TABLE [dbo].[dim_ent_global_phase]
(
	[dim_ent_global_phase_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_global_phase_nk] [int] NOT NULL,
	[phase_code] [varchar](10) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[psrlevel1_code] varchar(10) NULL,
	[psrlevel2_code] varchar(10) NULL,
	[phase_name] [varchar](100) NOT NULL,
	[phase_alternative] [varchar](500) NULL,
 CONSTRAINT [Cnstr_2d9563afbd6849ceb944447886a9350h] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_global_phase_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [indGNKA]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indGNKA] ON [dbo].[dim_ent_global_phase]
(
	[dim_ent_global_phase_nk] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indGNKSE]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indGNKSE] ON [dbo].[dim_ent_global_phase]
(
	[dim_ent_global_phase_nk] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNK]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indNK] ON [dbo].[dim_ent_global_phase]
(
	[phase_code] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKA]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indNKA] ON [dbo].[dim_ent_global_phase]
(
	[phase_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKSE]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indNKSE] ON [dbo].[dim_ent_global_phase]
(
	[phase_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO

/****** Object:  Index [indSK]    Script Date: 3/9/2022 6:57:18 PM ******/
CREATE NONCLUSTERED INDEX [indSK] ON [dbo].[dim_ent_global_phase]
(
	[dim_ent_global_phase_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO