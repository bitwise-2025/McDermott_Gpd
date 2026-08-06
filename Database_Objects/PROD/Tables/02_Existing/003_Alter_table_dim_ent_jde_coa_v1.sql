/* Add columns to dim_ent_jde_coa to allow for MCPM Onshore data to flow through*/


ALTER TABLE [dbo].[dim_ent_jde_coa]
ADD PSRLevel1 [varchar](3) NULL;

ALTER TABLE [dbo].[dim_ent_jde_coa]
ADD PSRLevel2 [varchar](5) NULL;

ALTER TABLE [dbo].[dim_ent_jde_coa]
ADD PSRL1Description [varchar](50) NULL;

ALTER TABLE [dbo].[dim_ent_jde_coa]
ADD PSRL2Description [varchar](100) NULL;

