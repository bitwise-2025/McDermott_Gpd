/* Add new columns to the FACT OPS table */


ALTER TABLE [dbo].[fact_ops] ADD dim_ent_geac_coa_sk [int] NULL;

ALTER TABLE [dbo].[fact_ops] ADD dim_ent_geac_coa_nk [int] NULL;

