/****** Object:  Table [gpd].[NCSA_Phases_MCPM]    Script Date: 9/27/2021 11:27:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[NCSA_Phases_MCPM]') AND type in (N'U'))
DROP TABLE [gpd].[NCSA_Phases_MCPM]
GO

/****** Object:  Table [gpd].[NCSA_Phases_MCPM]    Script Date: 9/27/2021 11:27:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[NCSA_Phases_MCPM]
(
	[stage_ncsa_phase_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[project_id] [varchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[reprocess_dim_ops_ncsa_mcpm_uom]    Script Date: 9/27/2021 11:43:32 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[reprocess_dim_ops_ncsa_mcpm_uom]') AND type in (N'U'))
DROP TABLE [gpd].[reprocess_dim_ops_ncsa_mcpm_uom]
GO

/****** Object:  Table [gpd].[reprocess_dim_ops_ncsa_mcpm_uom]    Script Date: 9/27/2021 11:43:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_ops_ncsa_mcpm_uom]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[UOMCode] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
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

/****** Object:  Table [gpd].[NCSA_Unit_MCPM]    Script Date: 10/11/2021 7:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_Unit_MCPM]
(
	[stage_ncsa_unit_mcpm_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[project_id] [varchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_WorkArea_MCPM]    Script Date: 10/11/2021 7:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_WorkArea_MCPM]
(
	[stage_ncsa_workarea_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[PhaseID] [varchar](3) NULL,
	[UnitID] [varchar](3) NULL,
	[project_id] [varchar](120) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[NCSA_UOM_MCPM]    Script Date: 10/12/2021 12:14:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[NCSA_UOM_MCPM]
(
	[stage_ncsa_uom_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO








