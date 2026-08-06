
ALTER TABLE [gpd].[NCSA_HDMS_miscellaneous_progress]
add 

[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;


ALTER TABLE [dbo].[dim_ent_miscellaneous_progress]
add 

[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;

ALTER TABLE  [gpd].[reprocess_dim_ent_miscellaneous_progress]
add 

[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;

ALTER TABLE [gpd].[NCSA_HDMS_Progress]
add 

[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;


ALTER TABLE [gpd].[reprocess_NCSA_HDMS_Progress]
add 
[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;

ALTER TABLE [dbo].[fact_ops_hdms_progress]
add 
[dim_ent_discipline_sk] int NULL,
[dim_ent_discipline_nk] int NULL;