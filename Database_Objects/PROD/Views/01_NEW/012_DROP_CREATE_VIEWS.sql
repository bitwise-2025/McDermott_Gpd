DROP VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_v]
GO

CREATE VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_v]
AS select rssk, convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(varchar(max), case when [OME PSR LEVEL 2] in ('NULL', '')  then NULL else [OME PSR Level 2] end ) as [OME PSR Level 2],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo],convert(varchar(max), case when [OME PSR LEVEL 1 CODE] in ('NULL', '')  then NULL else [OME PSR Level 1 Code] end ) as [OME PSR Level 1 Code],convert(varchar(max), case when [OME PSR LEVEL 2 CODE] in ('NULL', '')  then NULL else [OME PSR Level 2 Code] end ) as [OME PSR Level 2 Code],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar(max), case when [OME PSR LEVEL 4 CODE] in ('NULL', '')  then NULL else [OME PSR Level 4 Code] end ) as [OME PSR Level 4 Code],convert(varchar(max), case when [MCPM PSR LEVEL 1 DESCRIPTION] in ('NULL', '')  then NULL else [MCPM PSR Level 1 Description] end ) as [MCPM PSR Level 1 Description],convert(varchar(max), case when [MCPM PSR LEVEL 2 DESCRIPTION] in ('NULL', '')  then NULL else [MCPM PSR Level 2 Description] end ) as [MCPM PSR Level 2 Description],convert(varchar(max), case when [OME PSR LEVEL 3 CODE] in ('NULL', '')  then NULL else [OME PSR Level 3 Code] end ) as [OME PSR Level 3 Code],convert(varchar(max), case when [OME PSR LEVEL 4] in ('NULL', '')  then NULL else [OME PSR Level 4] end ) as [OME PSR Level 4],convert(varchar, case when [MCPM PSR L2] in ('NULL', '')  then NULL else [MCPM PSR L2] end ) as [MCPM PSR L2],convert(varchar(max), case when [OME PSR LEVEL 1] in ('NULL', '')  then NULL else [OME PSR Level 1] end ) as [OME PSR Level 1],convert(varchar, case when [COST CODE] in ('NULL', '')  then NULL else [Cost Code] end ) as [Cost Code],convert(varchar, case when [MCPM PSR L1] in ('NULL', '')  then NULL else [MCPM PSR L1] end ) as [MCPM PSR L1],convert(varchar, case when [CONTRACT] in ('NULL', '')  then NULL else [Contract] end ) as [Contract],convert(varchar, case when [WORK AREA] in ('NULL', '')  then NULL else [Work Area] end ) as [Work Area],convert(varchar(max), case when [COST TYPE] in ('NULL', '')  then NULL else [Cost Type] end ) as [Cost Type],convert(varchar, case when [ENTITY] in ('NULL', '')  then NULL else [Entity] end ) as [Entity],convert(varchar(max), case when [OME PSR LEVEL 3] in ('NULL', '')  then NULL else [OME PSR Level 3] end ) as [OME PSR Level 3],convert(varchar, case when [PROJECT] in ('NULL', '')  then NULL else [Project] end ) as [Project]  
	from (
	SELECT rssk, [zSourceFileName],[OME PSR Level 2],[zVersionNo],[OME PSR Level 1 Code],[OME PSR Level 2 Code],[zCreatedDateTime],[OME PSR Level 4 Code],[MCPM PSR Level 1 Description],[MCPM PSR Level 2 Description],[OME PSR Level 3 Code],[OME PSR Level 4],[MCPM PSR L2],[OME PSR Level 1],[Cost Code],[MCPM PSR L1],[Contract],[Work Area],[Cost Type],[Entity],[OME PSR Level 3],[Project] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Cost_Code_Exception_Offshore_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [zSourceFileName],[OME PSR Level 2],[zVersionNo],[OME PSR Level 1 Code],[OME PSR Level 2 Code],[zCreatedDateTime],[OME PSR Level 4 Code],[MCPM PSR Level 1 Description],[MCPM PSR Level 2 Description],[OME PSR Level 3 Code],[OME PSR Level 4],[MCPM PSR L2],[OME PSR Level 1],[Cost Code],[MCPM PSR L1],[Contract],[Work Area],[Cost Type],[Entity],[OME PSR Level 3],[Project] )) as p) q 
	where dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO






DROP VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_active_v]
GO

CREATE VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.[Project],
v.[Contract],
v.[Entity],
v.[Work Area],
v.[Cost Code],
v.[Cost Type],
v.[MCPM PSR L1],
v.[MCPM PSR Level 1 Description],
v.[MCPM PSR L2],
v.[MCPM PSR Level 2 Description],
v.[OME PSR Level 1 Code],
v.[OME PSR Level 1],
v.[OME PSR Level 2 Code],
v.[OME PSR Level 2],
v.[OME PSR Level 3 Code],
v.[OME PSR Level 3],
v.[OME PSR Level 4 Code],
v.[OME PSR Level 4],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]  
FROM gpd.Cost_Code_Exception_Offshore_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[Project])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[Contract])=c.contract_number  --GET Contract_NK
WHERE 
zVersionNo = (select max(zVersionNo) from gpd.Cost_Code_Exception_Offshore_PMR_JSON_v z 
where z.[Project] = v.[Project] and 
 z.[Contract] = v.[Contract] and
 z.[Entity] = v.[Entity] and
 z.[Work Area] = v.[Work Area] and
 z.[Cost Code] = v.[Cost Code] and
 z.[Cost Type] = v.[Cost Type] );
GO






DROP VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_active_Error_V]
GO

CREATE VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_active_Error_V]
AS select rssk, [zSourceFileName] as [zSourceFileName],[OME PSR Level 2] as [OME PSR Level 2],[zVersionNo] as [zVersionNo],[OME PSR Level 1 Code] as [OME PSR Level 1 Code],[OME PSR Level 2 Code] as [OME PSR Level 2 Code],[zCreatedDateTime] as [zCreatedDateTime],[OME PSR Level 4 Code] as [OME PSR Level 4 Code],[MCPM PSR Level 1 Description] as [MCPM PSR Level 1 Description],[MCPM PSR Level 2 Description] as [MCPM PSR Level 2 Description],[OME PSR Level 3 Code] as [OME PSR Level 3 Code],[OME PSR Level 4] as [OME PSR Level 4],[MCPM PSR L2] as [MCPM PSR L2],[OME PSR Level 1] as [OME PSR Level 1],[Cost Code] as [Cost Code],[MCPM PSR L1] as [MCPM PSR L1],[Contract] as [Contract],[Work Area] as [Work Area],[Cost Type] as [Cost Type],[Entity] as [Entity],[OME PSR Level 3] as [OME PSR Level 3],[Project] as [Project] 
	from (
	SELECT rssk, [zSourceFileName],[OME PSR Level 2],[zVersionNo],[OME PSR Level 1 Code],[OME PSR Level 2 Code],[zCreatedDateTime],[OME PSR Level 4 Code],[MCPM PSR Level 1 Description],[MCPM PSR Level 2 Description],[OME PSR Level 3 Code],[OME PSR Level 4],[MCPM PSR L2],[OME PSR Level 1],[Cost Code],[MCPM PSR L1],[Contract],[Work Area],[Cost Type],[Entity],[OME PSR Level 3],[Project] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Cost_Code_Exception_Offshore_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [zSourceFileName],[OME PSR Level 2],[zVersionNo],[OME PSR Level 1 Code],[OME PSR Level 2 Code],[zCreatedDateTime],[OME PSR Level 4 Code],[MCPM PSR Level 1 Description],[MCPM PSR Level 2 Description],[OME PSR Level 3 Code],[OME PSR Level 4],[MCPM PSR L2],[OME PSR Level 1],[Cost Code],[MCPM PSR L1],[Contract],[Work Area],[Cost Type],[Entity],[OME PSR Level 3],[Project] )) as p) q 
	where dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO





DROP VIEW [dbo].[dim_ent_geac_project_coa_pmr_active_v]
GO
CREATE VIEW [dbo].[dim_ent_geac_project_coa_pmr_active_v]
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
q.Entity = g.entity_id and q.[Work Area] = g.ident1_code and q.[Cost Code] = g.ident2_code and q.[Cost Type]=g.ident3_code)
where active = 1 and coa_type = 'Project' and contract_id in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO






DROP VIEW [dbo].[fact_pmr_sitepro_v]
GO

CREATE VIEW [dbo].[fact_pmr_sitepro_v]
AS select top 100
x.[fact_entp_sk]
,x.[dim_entp_function_nk]
,x.[dim_entp_project_nk]
,x.[dim_entp_phase_nk]
,x.[dim_entp_work_unit_nk]
,x.[dim_entp_work_area_nk]
,x.[dim_entp_cwp_nk]
,x.[dim_entp_schedule_resource_nk]
,x.[dim_entp_activity_nk]
,x.[dim_entp_iwp_nk]
,x.[dim_entp_pim_nk]
,x.[dim_entp_roc_nk]
,x.[dim_entp_data_sub_class_nk]
,x.[dim_entp_data_class_nk]
,x.[dim_entp_sub_source_nk]
,x.[dim_entp_source_nk]
,x.[dim_entp_unit_of_measure_nk]
,x.[dim_ent_employee_nk]
,x.[dim_ent_jde_coa_nk]
,x.[dim_ent_geac_coa_nk]
,x.[transaction_date]
,x.[transaction_quantity]
,x.[created_date_time]
,0 [current_month_transaction_quantity]
,0 [group_code]
,pr.[dim_ent_prime_nk]
,sp.[dim_ent_sub_prime_nk]
from fact_ops x
left outer join [dbo].[dim_ent_jde_coa_active_v] p on x.dim_ent_jde_coa_nk = p.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] pr on x.dim_entp_project_nk = pr.dim_entp_project_nk and p.prime = pr.prime_code
left outer join [dbo].[dim_ent_sub_prime_active_v] sp on x.dim_entp_project_nk = sp.dim_entp_project_nk and p.prime = sp.prime_code and p.Sub_prime = sp.prime_code
left outer join [dbo].[dim_ent_sub_source_active_v] ss on x.dim_entp_sub_source_nk = ss.dim_ent_sub_source_nk 
Inner join (select dim_entp_project_nk,dim_entp_sub_source_nk,dim_entp_data_sub_class_nk,transaction_date,max(created_date_time) created_date_time from 
(select distinct dim_entp_project_nk,dim_entp_sub_source_nk,dim_entp_data_sub_class_nk,transaction_date,created_date_time from fact_ops
)x
group by dim_entp_project_nk,dim_entp_sub_source_nk,dim_entp_data_sub_class_nk,transaction_date
) y on y.dim_entp_project_nk = x.dim_entp_project_nk 
and y.dim_entp_sub_source_nk = x.dim_entp_sub_source_nk
and y.dim_entp_data_sub_class_nk = x.dim_entp_data_sub_class_nk
and y.transaction_date = x.transaction_date
and y.created_date_time = x.created_date_time
where ss.sub_source_name = 'Sitepro'
union all
select top 100 fact_ent_time_sk as [fact_entp_sk],
null as dim_entp_function_nk ,
b.dim_ent_project_nk,
(select [dim_entp_phase_nk] from [dbo].[dim_entp_work_area_active_v] where [work_area_code] = c.area_unit and project_number = c.project) dim_entp_phase_nk, -- (12/12/21) : To ensure the correct phase picked per project.
(select [dim_entp_work_unit_nk] from [dbo].[dim_entp_work_unit_active_v] where [work_unit_code] = left(c.area_unit,1) + '00' and project_number = c.project ) dim_entp_work_unit_nk, -- (10/01/21) : To ensure the correct workunit picked per project.
(select [dim_entp_work_area_nk] from [dbo].[dim_entp_work_area_active_v] where [work_area_code] = c.area_unit and project_number = c.project) dim_entp_work_area_nk, -- (12/12/21) : To ensure the correct workarea picked per project.
coalesce(cw.dim_entp_cwp_nk,NULL) dim_entp_cwp_nk,
coalesce(sr.dim_entp_schedule_resource_nk,NULL)  dim_entp_schedule_resource_nk,
coalesce(ac.dim_entp_activity_nk,NULL) dim_entp_activity_nk,
coalesce(i.dim_entp_iwp_nk,NULL) dim_entp_iwp_nk,
NULL dim_entp_pim_nk,
NULL dim_entp_roc_nk,
dim_ent_data_sub_class_nk,
dim_ent_data_class_nk,
dim_ent_sub_source_nk,
dim_ent_source_nk,
dim_ent_unit_of_measure_nk,
dim_ent_employee_nk,
a.dim_ent_jde_coa_nk,
0 as dim_ent_geac_coa_nk,
h.standard_date,
units,
a.created_date_time,
0 [current_month_transaction_quantity],
0 as group_code,
f.dim_ent_prime_nk,
g.dim_ent_sub_prime_nk
from [dbo].[fact_ent_time_ets_v] a
left outer join dim_ent_contract_active_v b on a.dim_ent_contract_nk = b.dim_ent_contract_nk
left outer join [dbo].[dim_ent_jde_coa_active_v] c on a.dim_ent_jde_coa_nk = c.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on c.prime = f.prime_code and c.project = f.project_number -- (10/01/21) : To ensure the correct prime picked per project.
left outer join [dbo].[dim_ent_sub_prime_active_v] g on c.sub_prime = g.sub_prime_code and c.project=g.project_number --(10/01/21) : To ensure the correct sub_prime picked per project.
left outer join [dbo].[dim_date_v] h on h.dim_ent_date_sk = a.dim_ent_timesheet_date_sk 
left outer join [dbo].[dim_entp_iwp_active_v] i on CASE
													When len(a.detail_job) > 0 
													then a.detail_job
													else null
												   end = i.iwp_code 
left outer join [dbo].[dim_entp_activity_active_v] ac ON ac.dim_entp_activity_nk=i.dim_entp_activity_nk
left outer join [dbo].[dim_entp_cwp_active_v] cw ON cw.dim_entp_cwp_nk=ac.dim_entp_cwp_nk
left outer join [dbo].[dim_entp_schedule_resource_active_v] sr ON sr.dim_entp_schedule_resource_nk=ac.dim_entp_schedule_resource_nk
left outer join [dbo].[dim_ent_summary_cost_type_active_v] k on c.summary_cost_type = k.summary_cost_type and c.project = k.project_number;
GO



DROP VIEW [dbo].[dim_ent_jde_unique_cost_code_v]
GO

CREATE VIEW [dbo].[dim_ent_jde_unique_cost_code_v]
AS select project,cost_code,max(cost_description) cost_description,ltrim(rtrim(cost_code)) + ltrim(rtrim(project)) cost_code_key from [dbo].[dim_Ent_jde_coa] 
where isnull(project,'') <> ''
and isnull(cost_code,'') <> ''
and active = '1'
group by cost_code,project;
GO


DROP VIEW [dbo].[dim_ent_geac_unique_cost_code_v]
GO

CREATE VIEW [dbo].[dim_ent_geac_unique_cost_code_v]
AS select contract_id project,ident2_code cost_code,
max(case when isnull([dbo].[dim_ent_subfunction].sub_function_description,'') = '' then  ident2_description else
[dbo].[dim_ent_subfunction].sub_function_description end)
  cost_description
  , ltrim(rtrim(ident2_code)) + ltrim(rtrim(contract_id)) cost_code_key
from [dbo].[dim_ent_geac_coa]
left outer join [dbo].[dim_ent_subfunction]
on [dbo].[dim_ent_geac_coa].ident2_code = [dbo].[dim_ent_subfunction].sub_function_code
where isnull(contract_id,'') <> ''
and [dbo].[dim_ent_subfunction].active  = '1'
and [dbo].[dim_ent_geac_coa].active = '1'
group by ident2_code,contract_id;
GO




DROP VIEW [dbo].[dim_ent_unique_cost_code_v]
GO


CREATE VIEW [dbo].[dim_ent_unique_cost_code_v]
AS select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_jde_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null
union all
select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_geac_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null;
GO






DROP VIEW [dbo].[dim_ent_combined_coa_active_v]
GO

CREATE VIEW [dbo].[dim_ent_combined_coa_active_v] AS select 'GEAC-' + convert(varchar(50),dim_ent_geac_coa_nk) coa_key,coa_value,entity_id as segment1_code,contract_id as segment2_code,ident1_code as segment3_code,ident2_code as segment4_code,ident3_code as segment5_code,
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
from [dbo].[dim_ent_jde_coa] j left join [dbo].[dim_entp_costcode_active_v] c on (c.costcode = j.cost_code and c.project_number = j.project) left join [dbo].[dim_entp_cost_types_active_v] ct on (ct.cost_type=j.cost_type and ct.project_number = j.project)
left join [dbo].[dim_entp_work_unit_active_v] wu on (wu.work_unit_code=j.area_unit and wu.project_number = j.project)
left join [dbo].[dim_ent_contract] cc on (cc.contract_number=j.contract and cc.project_number = j.project)
left join [dbo].[dim_ent_entity] ee on (ee.entity_id=j.contract_entity and ee.active=1)
where j.active = 1 and c.active=1 and ct.active=1 and c.active=1 and cc.active=1 and j.project in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO






DROP VIEW [dbo].[dim_entp_commissioning_ss_certification_status_active_v]
GO

CREATE VIEW [dbo].[dim_entp_commissioning_ss_certification_status_active_v]
AS select dim_entp_commissioning_sub_system_nk,dim_entp_project_nk,json_attribute_for_view,Project,sub_system,dim_entp_commissioning_ss_certification_status_sk,dim_entp_commissioning_ss_certification_status_nk,JSON_VALUE(json_attribute_for_view, '$."RFC Acceptance Date"') RFC_Acceptance_Date,JSON_VALUE(json_attribute_for_view, '$."RFC Status"') RFC_Status,JSON_VALUE(json_attribute_for_view, '$."SSMCC Status"') SSMCC_Status,JSON_VALUE(json_attribute_for_view, '$."WDN 1 Completion Date"') WDN_1_Completion_Date,JSON_VALUE(json_attribute_for_view, '$."WDN 1 Issue Date"') WDN_1_Issue_Date,JSON_VALUE(json_attribute_for_view, '$."WDN 1 Status"') WDN_1_Status,JSON_VALUE(json_attribute_for_view, '$."WDN 2 Completion Date"') WDN_2_Completion_Date,JSON_VALUE(json_attribute_for_view, '$."WDN 2 Issued Date"') WDN_2_Issued_Date,JSON_VALUE(json_attribute_for_view, '$."WDN 2 Status"') WDN_2_Status from dbo.dim_entp_commissioning_ss_certification_status where active = 1;
GO




DROP VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
      v.[Project Number]
	  ,v.[Contract Number]
	  ,v.[rssk]
      ,v.[Date]
      ,v.[High]
      ,v.[Low]
      ,v.[Mitigation by Date]
      ,v.[Most Likely]
      ,v.[Probability]
      ,v.[Better Same Worse]
      ,v.[Risk Event]
      ,v.[Risk ID]
      ,v.[zCreatedDateTime]
      ,v.[zSourceFileName]
      ,v.[zVersionNo]  
FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

