--Step1] Add column to DIM_ENTP_JDE_CA
--select top 100 * from dbo.dim_ent_jde_coa

--ALTER TABLE dbo.dim_ent_jde_coa ADD measurable bit NULL --REmoved since the column was already present in PROD.

--step2] Add column to MCPM JDE_COA process that updates existing COA
--select * from gpd.NCSA_MCPM_dim_ent_jde_coa
--select * from gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa

ALTER TABLE gpd.NCSA_MCPM_dim_ent_jde_coa ADD measurable varchar(5) NULL
ALTER TABLE gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa ADD measurable varchar(5) NULL
ALTER TABLE gpd.reprocess_MCPM_coa ADD measurable varchar(5) NULL

--step 3] add measureable to the stage/reprocess table for load process 'dim_ent_mcpm_coa', which inserts missing CoA



ALTER TABLE gpd.coa_MCPM ADD measurable varchar(5) NULL
ALTER TABLE gpd.reprocess_coa_MCPM ADD measurable varchar(5) NULL


--step 4] add measureable to the stage/reprocess table for load process 'dim_ent_jde_coa', which inserts missing CoA from JDE

ALTER TABLE Stage.reprocess_dim_ent_jde_coa ADD measurable varchar(5) NULL


