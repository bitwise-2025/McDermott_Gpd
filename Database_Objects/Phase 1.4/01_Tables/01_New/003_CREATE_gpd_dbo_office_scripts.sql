--@AK for P6 office
/****** Object:  Table [dbo].[dim_ent_office]    Script Date: 2/7/2022 5:06:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_ent_office]
(
	[dim_ent_office_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_office_nk] [bigint] NOT NULL,
	[office_code] [varchar](10) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[office_description] [varchar](100) NULL,
	[alternative_office_code] [varchar](8000) NULL,
 CONSTRAINT [Cnstr_b2a47458adee499b9a7529ebf2bc2b34] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_office_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Index [ind1]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_ent_office]
(
	[dim_ent_office_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_ent_office]
(
	[dim_ent_office_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_ent_office]
(
	[office_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_ent_office]
(
	[office_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO


/****** Object:  Table [gpd].[P6_codes_office]    Script Date: 2/1/2022 12:40:38 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[P6_codes_office]') AND type in (N'U'))
DROP TABLE [gpd].[P6_codes_office]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[P6_codes_office]
(
	[stage_p6_codes_office_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code_Value] [nvarchar](10) NULL,
	[Description] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[reprocess_dim_ent_office]    Script Date: 2/1/2022 12:42:09 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[reprocess_dim_ent_office]') AND type in (N'U'))
DROP TABLE [gpd].[reprocess_dim_ent_office]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_ent_office]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[Code_Value] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[alternative_office_code] [varchar](8000) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO












