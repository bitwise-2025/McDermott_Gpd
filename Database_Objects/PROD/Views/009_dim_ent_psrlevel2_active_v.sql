Alter VIEW [dbo].[dim_ent_psrlevel2_active_v]
AS select dim_ent_psrlevel2_sk,dim_ent_psrlevel2_nk,psrlevel2_code,start_date,end_date,hash_code,
late_arrival_flag,active,created_date_time,modified_date_time,psrlevel2_title
from [dbo].[dim_ent_psrlevel2]
where active = 1
union all
select ROW_NUMBER() OVER (ORDER BY dd.psrlevel2_code) + 9987654321  AS  dim_ent_psrlevel2_sk,
ROW_NUMBER()  OVER (ORDER BY dd.psrlevel2_code) + 9987654321   AS  dim_ent_psrlevel2_nk, dd.* from
(select distinct PSRLevel2 psrlevel2_code,NULL start_date,NULL end_date,NULL hash_code,
NULL late_arrival_flag,1 active,NULL created_date_time,NULL modified_date_time,PSRL2Description psrlevel2_title from [dbo].[dim_ent_geac_project_coa_pmr_active_v] d
where isnull(PSRLevel2,'') <> '' and 
(select count(*) from [dbo].[dim_ent_psrlevel2] x where x.PSRLevel2_code = d.PSRLevel2) = 0) dd
