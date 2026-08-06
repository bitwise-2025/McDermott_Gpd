/****** Object:  Table [dbo].[dim_ent_psrlevel2]    Script Date: 7/27/2022 6:52:16 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_ent_psrlevel2]') AND type in (N'U'))
DROP TABLE [dbo].[dim_ent_psrlevel2]
GO
/****** Object:  Table [dbo].[dim_ent_psrlevel1]    Script Date: 7/27/2022 6:52:16 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_ent_psrlevel1]') AND type in (N'U'))
DROP TABLE [dbo].[dim_ent_psrlevel1]
GO
/****** Object:  Table [dbo].[dim_ent_psrlevel1]    Script Date: 7/27/2022 6:52:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_psrlevel1]
(
	[dim_ent_psrlevel1_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_psrlevel1_nk] [bigint] NOT NULL,
	[psrlevel1_code] [varchar](20) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[psrlevel1_title] [varchar](1000) NULL,
 CONSTRAINT [Cnstr_dim_ent_psrlevel1_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_psrlevel1_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_psrlevel2]    Script Date: 7/27/2022 6:52:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_psrlevel2]
(
	[dim_ent_psrlevel2_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_psrlevel2_nk] [bigint] NOT NULL,
	[psrlevel2_code] [varchar](20) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[psrlevel2_title] [varchar](1000) NULL,
 CONSTRAINT [Cnstr_dim_ent_psrlevel2_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_psrlevel2_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_ent_psrlevel1]
(
	[dim_ent_psrlevel1_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_ent_psrlevel1]
(
	[dim_ent_psrlevel1_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_ent_psrlevel1]
(
	[psrlevel1_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_ent_psrlevel1]
(
	[psrlevel1_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_ent_psrlevel2]
(
	[dim_ent_psrlevel2_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_ent_psrlevel2]
(
	[dim_ent_psrlevel2_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_ent_psrlevel2]
(
	[psrlevel2_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 7/27/2022 6:52:16 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_ent_psrlevel2]
(
	[psrlevel2_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
