/* Add new columns to the dim_ent_geac_coa_MCPM_Off */

ALTER TABLE [gpd].[dim_ent_geac_coa_MCPM_Off] ADD Domain [varchar](30) NULL;

ALTER TABLE [gpd].[dim_ent_geac_coa_MCPM_Off] ADD SummaryCostType [varchar](10) NULL;

ALTER TABLE [gpd].[dim_ent_geac_coa_MCPM_Off] ADD Prime [varchar](10) NULL;

ALTER TABLE [gpd].[dim_ent_geac_coa_MCPM_Off] ADD SubPrime [varchar](10) NULL;


/* Add new columns to the reprocess_dim_ent_geac_coa_MCPM_Off*/

ALTER TABLE [gpd].[reprocess_dim_ent_geac_coa_MCPM_Off] ADD Domain [varchar](30) NULL;

ALTER TABLE [gpd].[reprocess_dim_ent_geac_coa_MCPM_Off] ADD SummaryCostType [varchar](10) NULL;

ALTER TABLE [gpd].[reprocess_dim_ent_geac_coa_MCPM_Off] ADD Prime [varchar](10) NULL;

ALTER TABLE [gpd].[reprocess_dim_ent_geac_coa_MCPM_Off] ADD SubPrime [varchar](10) NULL;
