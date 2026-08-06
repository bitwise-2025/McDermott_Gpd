/****** Object:  Table [dbo].[dim_ent_gac]    Script Date: 5/31/2022 5:53:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_gac]
(
	[dim_ent_gac_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_gac_nk] [bigint] NOT NULL,
	[gac_code] [varchar](50) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[gac_description] [varchar](100) NULL,
 CONSTRAINT [Cnstr_04f3fb96faf748998f82c8d5055dfe87] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_gac_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 5/31/2022 5:53:32 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_ent_gac]
(
	[dim_ent_gac_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/31/2022 5:53:32 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_ent_gac]
(
	[dim_ent_gac_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/31/2022 5:53:32 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_ent_gac]
(
	[gac_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/31/2022 5:53:32 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_ent_gac]
(
	[gac_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
