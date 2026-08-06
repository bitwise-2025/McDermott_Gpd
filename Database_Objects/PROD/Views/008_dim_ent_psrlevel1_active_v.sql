Alter VIEW [dbo].[dim_ent_psrlevel1_active_v]
AS select dim_ent_psrlevel1_sk,dim_ent_psrlevel1_nk,psrlevel1_code,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,psrlevel1_title
from [dbo].[dim_ent_psrlevel1]
where active = 1
union all
select ROW_NUMBER() OVER (ORDER BY dd.psrlevel1_code) + 9987654321  AS  dim_ent_psrlevel1_sk,
ROW_NUMBER()  OVER (ORDER BY dd.psrlevel1_code) + 9987654321   AS  dim_ent_psrlevel1_nk, dd.* from
(select distinct PSRLevel1 psrlevel1_code,NULL start_date,NULL end_date,NULL hash_code,
NULL late_arrival_flag,1 active,NULL created_date_time,NULL modified_date_time,PSRL1Description psrlevel1_title from [dbo].[dim_ent_geac_project_coa_pmr_active_v] d
where isnull(PSRLevel1,'') <> '' and 
(select count(*) from [dbo].[dim_ent_psrlevel1] x where x.PSRLevel1_code = d.PSRLevel1) = 0) dd
