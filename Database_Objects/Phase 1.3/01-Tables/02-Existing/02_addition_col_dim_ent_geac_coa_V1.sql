/* Add new columns to the dim_ent_geac_coa */


ALTER TABLE [dbo].[DIM_ENT_GEAC_COA] ADD PSRLevel1 [varchar](5) NULL;

ALTER TABLE [dbo].[DIM_ENT_GEAC_COA] ADD PSRLevel2 [varchar](5) NULL;

ALTER TABLE [dbo].[DIM_ENT_GEAC_COA] ADD PSRL1Description [varchar](100) NULL;

ALTER TABLE [dbo].[DIM_ENT_GEAC_COA] ADD PSRL2Description [varchar](100) NULL;

ALTER TABLE [dbo].[DIM_ENT_GEAC_COA] ADD measurable bit NULL;

