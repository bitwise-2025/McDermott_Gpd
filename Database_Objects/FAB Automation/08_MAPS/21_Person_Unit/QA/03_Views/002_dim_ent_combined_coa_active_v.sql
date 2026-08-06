ALTER VIEW [dbo].[dim_ent_combined_coa_active_v] AS select 'GEAC-' + convert(varchar(50),dim_ent_geac_coa_nk) coa_key,coa_value,entity_id as segment1_code,contract_id as segment2_code,ident1_code as segment3_code,ident2_code as segment4_code,ident3_code as segment5_code,
entity_description as segment1_description,contract_description as segment2_description,ident1_description as segment3_description,ident2_description as segment4_description,
ident3_description as segment5_description,coa_status,coa_type,source_name,sub_source_name
from [dbo].[dim_ent_geac_coa] where active = '1' and contract_id in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1))
union all
select 'JDE-' + convert(varchar(50),dim_ent_jde_coa_nk) coa_key,coa_value,contract_entity as segment1_code,contract as segment2_code,area_unit as segment3_code,cost_code as segment4_code,j.cost_type as segment5_code
,case when isnull(contract_entity_desc,'') = '' then ee.entity_name else contract_entity_desc end as segment1_description
,case when isnull(contractdesc,'') = '' then cc.contract_name else cost_description end as segment2_description,wu.work_unit_name as segment3_description ,case when isnull(costcode_title,'') = '' then cost_description else (costcode_title) end as segment4_description
,ct.cost_type_description as segment5_description,coa_status,coa_type,source_name,sub_source_name
from [dbo].[dim_ent_jde_coa] j 
left outer join [dbo].[dim_entp_costcode_active_v] c on (c.costcode = j.cost_code and c.project_number = j.project) 
left outer join [dbo].[dim_entp_cost_types_active_v] ct on (ct.cost_type=j.cost_type and ct.project_number = j.project)
left outer join [dbo].[dim_entp_work_unit_active_v] wu on (wu.work_unit_code=j.area_unit and wu.project_number = j.project)
left outer join [dbo].[dim_ent_contract] cc on (cc.contract_number=j.contract and cc.project_number = j.project and cc.active=1)
left outer join [dbo].[dim_ent_entity] ee on (ee.entity_id=j.contract_entity and ee.active=1)
where j.active = 1 and j.project in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO


