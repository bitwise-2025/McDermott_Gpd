
ALTER TABLE [gpd].[NCSA_MCPM_weekly_offshore]
	ADD coadesc [varchar](1200) NULL;

ALTER TABLE [gpd].[reprocess_NCSA_MCPM_weekly_offshore]
	ADD coadesc [varchar](1200) NULL;

--------------------------------------

ALTER TABLE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
	ADD coadesc [varchar](1200) NULL;

ALTER TABLE [gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]
	ADD coadesc [varchar](1200) NULL;

ALTER TABLE [gpd].[NCSA_MCPM_dim_ent_jde_coa]
	ADD MCPM_CoaDesc [varchar](1200) NULL;
	
ALTER TABLE [gpd].[NCSA_MCPM_dim_ent_jde_coa]
    ADD contractno [varchar](50) NULL;