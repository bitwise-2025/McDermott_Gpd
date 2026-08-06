/****** Object:  Table [gpd].[coa_MCPM]    Script Date: 5/5/2021 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[coa_MCPM]
(
	[stage_coa_jde_key] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL,
	[PSRLevel1] [varchar](3) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](50) NULL,
	[PSRL2Description] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[coa_MCPM_combined]    Script Date: 5/5/2021 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[coa_MCPM_combined]
(
	[stage_coa_jde_key] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_coa_MCPM]    Script Date: 5/5/2021 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_coa_MCPM]
(
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL,
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[PSRLevel1] [varchar](3) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](50) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_coa_MCPM_combined]    Script Date: 5/5/2021 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_coa_MCPM_combined]
(
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL,
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [gpd].[coa_MCPM_PI]    Script Date: 5/5/2021 6:27:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[coa_MCPM_PI]
(
	[stage_coa_jde_key] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[reprocess_coa_MCPM]    Script Date: 5/5/2021 6:31:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_coa_MCPM_PI]
(
	[coa_value] [nvarchar](100) NULL,
	[coa_type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[projectname] [nvarchar](250) NULL,
	[account] [nvarchar](50) NOT NULL,
	[contract] [nvarchar](50) NULL,
	[contractdesc] [nvarchar](250) NULL,
	[contract_entity] [nvarchar](50) NULL,
	[contract_entity_desc] [nvarchar](250) NULL,
	[contract_status] [nvarchar](50) NULL,
	[project_entity] [nvarchar](50) NULL,
	[project_entity_description] [nvarchar](250) NULL,
	[areaunit] [nvarchar](50) NULL,
	[areadesc] [nvarchar](250) NULL,
	[costcode] [nvarchar](50) NULL,
	[costdescription] [nvarchar](250) NULL,
	[costtype] [nvarchar](50) NULL,
	[coa_status] [nvarchar](50) NULL,
	[source_name] [varchar](250) NULL,
	[sub_source_name] [varchar](250) NULL,
	[load_date] [datetime] NULL,
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


