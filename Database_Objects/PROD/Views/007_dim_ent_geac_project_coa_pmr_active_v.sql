Alter VIEW [dbo].[dim_ent_geac_project_coa_pmr_active_v]
AS select dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,coa_value,entity_id,account_code,ident1_code,
ident2_code,ident3_code,start_date,end_date,hash_code,active,created_date_time,
modified_date_time,late_arrival_flag,coa_type,ident1_description,ident2_description,
ident3_description,classification_id,coa_status,contract_id,entity_description,
account_description,contract_description,ident1_status,ident1_start_date,
ident1_end_date,ident2_status,ident2_start_date,ident2_end_date,sub_source_name,
source_name,
(case when isnull(q.[OME PSR Level 1 Code],'') = '' then PSRLevel1 else q.[OME PSR Level 1 Code] end) PSRLevel1,
(case when isnull(q.[OME PSR Level 2 Code],'') = '' then PSRLevel2 else q.[OME PSR Level 2 Code] end) PSRLevel2,
(case when isnull(q.[OME PSR Level 1],'') = '' then PSRL1Description else q.[OME PSR Level 1] end) PSRL1Description,
(case when isnull(q.[OME PSR Level 2],'') = '' then PSRL2Description else q.[OME PSR Level 2] end) PSRL2Description,
measurable,dim_ent_prime_nk,
dim_ent_sub_prime_nk
,isnull(contract_id,'') + isnull(entity_id,'') contract_entity,
(select b.dim_ent_contract_nk from dim_ent_contract_active_v b 
where b.contract_number = contract_id) dim_ent_contract_nk,
ltrim(rtrim(ident2_code)) + ltrim(rtrim(contract_id)) cost_code_key,'GEAC-' + convert(varchar(50),
dim_ent_geac_coa_nk) coa_key,
(case when isnull(q.[OME PSR Level 3 Code],'') = '' then 'NA' else q.[OME PSR Level 3 Code] end) PSRLevel3,
(case when isnull(q.[OME PSR Level 3],'') = '' then 'NA' else q.[OME PSR Level 3] end) PSRL3Description ,
(case when isnull(q.[OME PSR Level 4 Code],'') = '' then 'NA' else q.[OME PSR Level 4 Code] end) PSRLevel4,
(case when isnull(q.[OME PSR Level 4],'') = '' then 'NA' else q.[OME PSR Level 4] end) PSRL4Description 
from [dbo].[dim_ent_geac_coa] g
Left Outer join gpd.Cost_Code_Exception_Offshore_PMR_JSON_active_v q on (q.contract = g.contract_id and 
q.Entity = g.entity_id and q.[Work Area] = g.ident1_code and q.[Cost Code] = g.ident2_code)
where active = 1 and coa_type = 'Project' and contract_id in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1))
;
