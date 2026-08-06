/****** Object:  Table [gpd].[reprocess_cc_dim_entp_comm_sheets]    Script Date: 7/28/2022 4:43:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_entp_cost_code_mcpm]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[costcode] [varchar](100) NULL,
	[costcode_title] [varchar](1000) NULL,
	[Domain] [varchar](100) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------PSRL1 and PSRL2 ----------
/****** Object:  Table [gpd].[reprocess_dim_ent_prsl1_mcpm]    Script Date: 7/28/2022 4:57:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_prsl1_mcpm]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PSRLevel1] [varchar](20) NULL,
	[PSRLevel1_Title] [varchar](1000) NULL,
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
/****** Object:  Table [gpd].[reprocess_dim_ent_prsl2_mcpm]    Script Date: 7/28/2022 4:57:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_prsl2_mcpm]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PSRLevel2] [varchar](20) NULL,
	[PSRLevel2_Title] [varchar](1000) NULL,
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