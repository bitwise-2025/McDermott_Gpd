alter table [gpd].[P6_engr_manhrs_histogram]
add [PSRL1Code] varchar(20) NULL, 
[dim_ent_psrlevel1_sk] [int] NULL,
[dim_ent_psrlevel1_nk] [int] NULL,
[PSRL2Code] varchar(20) NULL,
[dim_ent_psrlevel2_sk] [int] NULL,
[dim_ent_psrlevel2_nk] [int] NULL

GO

alter table [gpd].[reprocess_P6_engr_manhrs_histogram]
add [PSRL1Code] varchar(20) NULL, 
[dim_ent_psrlevel1_sk] [int] NULL,
[dim_ent_psrlevel1_nk] [int] NULL,
[PSRL2Code] varchar(20) NULL,
[dim_ent_psrlevel2_sk] [int] NULL,
[dim_ent_psrlevel2_nk] [int] NULL

GO

alter table [dbo].[fact_ops_man_hour_histogram]
add [dim_ent_psrlevel1_sk] [int] NULL,
[dim_ent_psrlevel1_nk] [int] NULL,
[dim_ent_psrlevel2_sk] [int] NULL,
[dim_ent_psrlevel2_nk] [int] NULL

