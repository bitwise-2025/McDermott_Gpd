/* Create new stage table [gpd].[dim_ent_geac_coa_MCPM_Off] */

/****** Object:  Table [gpd].[dim_ent_geac_coa_MCPM_Off]    Script Date: 3/4/2022 3:17:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[dim_ent_geac_coa_MCPM_Off]
(
	[stage_geac_coa_key] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [varchar](5000) NULL,
	[entity_id] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[ident1_code] [varchar](50) NULL,
	[ident2_code] [varchar](50) NULL,
	[ident3_code] [varchar](50) NULL,
	[coa_type] [varchar](50) NULL,
	[ident1_description] [varchar](250) NULL,
	[ident2_description] [varchar](250) NULL,
	[ident3_description] [varchar](250) NULL,
	[classification_id] [varchar](50) NULL,
	[coa_status] [varchar](20) NULL,
	[contract_id] [varchar](50) NULL,
	[entity_description] [varchar](240) NULL,
	[account_description] [varchar](240) NULL,
	[contract_description] [varchar](240) NULL,
	[ident1_status] [varchar](50) NULL,
	[ident1_start_date] [datetime] NULL,
	[ident1_end_date] [datetime] NULL,
	[ident2_status] [varchar](50) NULL,
	[ident2_start_date] [datetime] NULL,
	[ident2_end_date] [datetime] NULL,
	[sub_source_name] [varchar](250) NULL,
	[source_name] [varchar](250) NULL,
	[PSRLevel1] [varchar](5) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](100) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[measurable] [varchar](5) NULL,
	[Domain] [varchar](30) NULL,
	[SummaryCostType] [varchar](10) NULL,
	[Prime] [varchar](10) NULL,
	[SubPrime] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

