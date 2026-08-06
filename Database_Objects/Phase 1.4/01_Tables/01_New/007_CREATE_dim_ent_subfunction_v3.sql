/****** Object:  Table [dbo].[dim_ent_subfunction]    Script Date: 4/5/2022 6:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_subfunction]
(
	[dim_ent_subfunction_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_subfunction_nk] [bigint] NOT NULL,
	[sub_function_code] [varchar](50) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[sub_function_description] [varchar](1000) NULL,
	[function_name] [varchar](500) NULL,
	[function_group] [varchar](500) NULL,
	[discipline] [varchar](500) NULL,
 CONSTRAINT [Cnstr_6a53d4245f084c63b7d07a8b29e8843e] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_subfunction_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 4/5/2022 6:09:29 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_ent_subfunction]
(
	[dim_ent_subfunction_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 4/5/2022 6:09:29 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_ent_subfunction]
(
	[dim_ent_subfunction_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 4/5/2022 6:09:29 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_ent_subfunction]
(
	[sub_function_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 4/5/2022 6:09:29 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_ent_subfunction]
(
	[sub_function_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
