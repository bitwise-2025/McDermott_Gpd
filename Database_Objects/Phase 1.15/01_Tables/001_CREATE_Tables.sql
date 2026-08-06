/****** Object:  Table [dbo].[dim_entp_cost_types]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_cost_types]
(
	[dim_entp_cost_types_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_cost_types_nk] [bigint] NOT NULL,
	[cost_type] [nvarchar](500) NULL,
	[cost_type_description] [nvarchar](4000) NULL,
	[source] [nvarchar](200) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[dim_entp_project_nk] [int] NULL,
	[project_number] [varchar](255) NULL,
 CONSTRAINT [dim_entp_cost_types_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_cost_types_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_MCPM_CoA_UnitsWorkArea]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_MCPM_CoA_UnitsWorkArea]
(
	[stage_mcpm_coa_unitsworkarea_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Domain] [nvarchar](255) NULL,
	[Unit] [nvarchar](200) NULL,
	[WorkArea] [nvarchar](500) NULL,
	[Description] [nvarchar](4000) NULL,
	[Source] [nvarchar](200) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_MCPM_Contract]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_MCPM_Contract]
(
	[stage_mcpm_contract_id] [bigint] IDENTITY(1,1) NOT NULL,
	[contractno] [nvarchar](500) NULL,
	[description] [nvarchar](4000) NULL,
	[location] [nvarchar](1000) NULL,
	[CompanyID] [nvarchar](2000) NULL,
	[CompanyName] [nvarchar](2000) NULL,
	[domain] [varchar](255) NULL,
	[Source] [nvarchar](200) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_MCPM_CostTypes]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_MCPM_CostTypes]
(
	[stage_mcpm_cost_types_id] [bigint] IDENTITY(1,1) NOT NULL,
	[cost_type] [nvarchar](500) NULL,
	[cost_type_description] [nvarchar](4000) NULL,
	[source] [nvarchar](200) NULL,
	[project_id] [varchar](255) NULL,
	[dim_entp_project_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_mcpm_coa_workarea]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_mcpm_coa_workarea]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[work_area_code] [nvarchar](200) NOT NULL,
	[work_area_name] [nvarchar](500) NULL,
	[PhaseID] [varchar](200) NULL,
	[UnitID] [varchar](200) NULL,
	[project_number] [varchar](255) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[dim_entp_project_nk] [int] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_mcpm_coa_workunit]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_mcpm_coa_workunit]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[work_unit_code] [nvarchar](200) NULL,
	[work_unit_name] [nvarchar](4000) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[project_number] [varchar](255) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_mcpm_contract]    Script Date: 4/11/2023 12:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_mcpm_contract]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[contract_number] [nvarchar](500) NULL,
	[contract_name] [nvarchar](4000) NULL,
	[project_number] [nvarchar](255) NULL,
	[source] [nvarchar](200) NULL,
	[sub_source_name] [nvarchar](300) NULL,
	[enable_analytics] [varchar](100) NULL,
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
/****** Object:  Table [gpd].[reprocess_dim_entp_cost_types]    Script Date: 4/12/2023 12:18:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_entp_cost_types]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[cost_type] [nvarchar](500) NULL,
	[cost_type_description] [nvarchar](4000) NULL,
	[source] [nvarchar](200) NULL,
	[project_id] [varchar](255) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [gpd].[reprocess_dim_ent_mcpm_entity]    Script Date: 4/12/2023 12:54:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_ent_mcpm_entity]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[entity_id] [nvarchar](2000) NULL,
	[entity_name] [nvarchar](4000) NULL,
	[source] [nvarchar](200) NULL,
	[sub_source_name] [nvarchar](300) NULL,
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



