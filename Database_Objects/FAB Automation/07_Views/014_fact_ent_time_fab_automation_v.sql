DROP VIEW [dbo].[fact_ent_time_fab_automation_v]
GO

CREATE VIEW [dbo].[fact_ent_time_fab_automation_v]
AS select d.date_attribute,e.sap_global_number,
k.coa_type,k.contract_id,k.entity_id,k.account_code,k.ident1_code,k.ident1_description,k.ident2_code,k.ident2_description,k.ident3_code,
k.ident3_description,k.workpack1_code,k.workpack1_description,k.workpack2_code,k.workpack2_description,k.coa_value_kronos,
t.units [time],
sap_global_number + '-' +  convert(varchar(10),day(d.date_attribute)) + '-' + convert(varchar(10),month(d.date_attribute)) + '-' + convert(varchar(10),year(d.date_attribute)) timesheet_key,
t.created_date_time,
fr.[dim_ent_fab_rota_nk]
from dbo.fact_ent_time t
join dim_ent_date d on d.dim_ent_date_sk = t.dim_ent_timesheet_date_sk
join dim_ent_employee e on e.dim_ent_employee_nk = t.dim_ent_employee_nk and e.active = 1
join ta.dim_ent_time_coa_kronos k on k.active = 1  and k.dim_ent_time_coa_kronos_nk = t.dim_ent_time_coa_kronos_nk
join dim_ent_sub_source s on s.active = 1 and s.dim_ent_sub_source_nk = t.dim_ent_sub_source_nk and s.sub_source_name = 'KRONOS'
left outer join [dbo].[dim_ent_fab_rota_v] fr on fr.[SAP Number] = e.sap_global_number
union all
select d.date_attribute,t.person_no,
k.coa_type,k.contract_id,k.entity_id,k.account_code,k.ident1_code,k.ident1_description,k.ident2_code,k.ident2_description,k.ident3_code,
k.ident3_description,k.workpack1_code,k.workpack1_description,k.workpack2_code,k.workpack2_description,k.coa_value_kronos,
t.hours [time],
t.person_no + '-' +  convert(varchar(10),day(d.date_attribute)) + '-' + convert(varchar(10),month(d.date_attribute)) + '-' + convert(varchar(10),year(d.date_attribute)) timesheet_key,
t.load_date,
fr.[dim_ent_fab_rota_nk]
from [ta].[reprocess_ts_kronos] t
join dim_ent_date d on d.dim_ent_date_sk = t.dim_ent_timesheet_date_sk
join ta.dim_ent_time_coa_kronos k on k.active = 1 and k.dim_ent_time_coa_kronos_sk = t.dim_ent_time_coa_kronos_sk
left outer join [dbo].[dim_ent_fab_rota_v] fr on fr.[SAP Number] = t.person_no
where 
t.ts_source = 'KRONOS';
GO


