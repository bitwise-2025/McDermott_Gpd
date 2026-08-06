/****** Object:  Table [dbo].[dim_entp_plm_rpn]    Script Date: 9/16/2022 1:33:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_plm_rpn]
(
	[dim_entp_plm_rpn_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_plm_rpn_nk] [bigint] NOT NULL,
	[ID] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[Project_Number] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL,
	[dim_entp_project_nk] [int] NULL,
 CONSTRAINT [Constr_dim_entp_plm_rpn_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_plm_rpn_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_PLM_RPN]    Script Date: 9/16/2022 1:33:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_PLM_RPN]
(
	[stage_plm_rpn_id] [int] IDENTITY(1,1) NOT NULL,
	[Project_Number] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[ID] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_plm_rpn]    Script Date: 9/16/2022 1:33:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_plm_rpn]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](4000) NULL,
	[created_date_time] [datetime] NULL,
	[Project_Number] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[ID] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL,
	[dim_entp_project_nk] [int] NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 9/16/2022 1:33:08 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_plm_rpn]
(
	[dim_entp_plm_rpn_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 9/16/2022 1:33:08 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_plm_rpn]
(
	[dim_entp_plm_rpn_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 9/16/2022 1:33:08 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_plm_rpn]
(
	[ID] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 9/16/2022 1:33:08 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_plm_rpn]
(
	[ID] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
