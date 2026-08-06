ALTER VIEW [dbo].[fact_pmr_p6_v] AS select   z.*,oa.dim_ent_office_nk, (case when CP.week_closing_period <> '1-Sun-Sat' then DATEADD(day, ISNULL(CP.days_diff,0), z.transaction_date_original ) else z.transaction_date_original end)  as transaction_date from (
select * from
/* VERSION TRACKER
DATE Developer Change
08/04/2022  Abhijit     Initial PMR P6 Resource Spread View
08/05/2022 Satish Added the Transaction_date conversion logic based on the table dim_entp_project_week_closing_period  
*/

(select *,
dense_rank() over(partition by f.temp_hash_key, f.dim_entp_data_class_nk,  f.dim_entp_data_sub_class_nk, f.transaction_date_original order by f.created_date_time desc) dr
,row_number() over(partition by f.temp_hash_key, f.dim_entp_data_class_nk, f.dim_entp_data_sub_class_nk, f.transaction_date_original order by f.created_date_time desc) rn
from
(select
a.[dim_entp_function_nk]
,a.[dim_entp_project_nk]
,a.[dim_entp_phase_nk]
,a.[dim_entp_work_unit_nk]
,a.[dim_entp_work_area_nk]
,a.[dim_entp_cwp_nk]
,a.dim_entp_schedule_resource_nk
,a.[dim_entp_activity_resource_nk]
,a.[dim_entp_iwp_nk]
,a.[dim_entp_pim_nk]
,a.[dim_entp_roc_nk]
,a.[dim_entp_data_sub_class_nk]
,a.dim_entp_data_class_nk
,a.[dim_entp_sub_source_nk]
,a.dim_entp_source_nk
,a.[dim_entp_unit_of_measure_nk]
,a.[dim_entp_planning_resource_nk]
,a.[dim_ent_employee_nk]
,a.[transaction_date] as transaction_date_original --08/05/2022 Satish
,a.[transaction_quantity]
--,a.[actual_units]
--,a.[budgeted_units]
--,a.[remaining_units]
,a.[created_date_time]
,(select sct.dim_ent_summary_cost_type_nk from dim_ent_summary_cost_type_active_v sct , dim_ent_jde_coa_active_v jde
  where LEFT(jde.COST_TYPE,2) = sct.summary_cost_type and jde.project = sct.project_number
  and jde.dim_ent_jde_coa_nk = a.dim_ent_jde_coa_nk) dim_ent_summary_cost_type_nk
,(Select pr.dim_ent_prime_nk from dim_ent_prime_active_v pr , dim_entp_activity_resource_active_v act
  where act.Prime = pr.Prime_code and act.project_number = pr.project_number
  and act.dim_entp_activity_resource_nk = a.dim_entp_activity_resource_nk) dim_ent_prime_nk
,(Select spr.dim_ent_sub_prime_nk from dim_ent_sub_prime_active_v spr , dim_entp_activity_resource_active_v act
  where act.SubPrime = spr.Sub_Prime_code and act.project_number = spr.project_number
  and act.dim_entp_activity_resource_nk = a.dim_entp_activity_resource_nk) dim_ent_sub_prime_nk
,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc1.data_sub_class_name), '_', '.'), 1)) AS [plan_type] FROM dim_ent_data_sub_class dsc1 WITH (NOLOCK)
where dsc1.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_type
,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc2.data_sub_class_name), '_', '.'), 2)) AS [revision] FROM dim_ent_data_sub_class dsc2 WITH (NOLOCK)
where dsc2.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) revision
,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc3.data_sub_class_name), '_', '.'), 3)) AS [plan_sub_type] FROM dim_ent_data_sub_class dsc3 WITH (NOLOCK)
where dsc3.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_sub_type
,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
isnull(trim(str(a.dim_entp_project_nk)), '~'),
isnull(trim(str(a.dim_entp_phase_nk)), '~'),
isnull(trim(str(a.dim_entp_work_unit_nk)), '~'),
isnull(trim(str(a.dim_entp_work_area_nk)), '~'),
isnull(trim(str(a.dim_entp_cwp_nk)), '~'),
isnull(trim(str(a.dim_entp_schedule_resource_nk )), '~'),
isnull(trim(str(a.dim_entp_activity_resource_nk)), '~'),
isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
isnull(trim(str(a.dim_entp_pim_nk)), '~'),
isnull(trim(str(a.dim_entp_roc_nk)), '~'),
isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
isnull(trim(str(a.dim_entp_source_nk)), '~'),
isnull(trim(str(a.dim_ent_employee_nk)), '~'),
isnull(trim(str(a.dim_entp_planning_resource_nk)), '~'),
isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
)) temp_hash_key
from [dbo].[fact_ops_planning] a
--LEFT OUTER JOIN (select dim_entp_project_nk from [dbo].[dim_entp_project] where project_number in ('D7068','D7072') and active=1) z ON a.dim_entp_project_nk=z.dim_entp_project_nk
--where z.dim_entp_project_nk  IS NULL
WHERE dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('P6-Direct','P6'))

) f) h
where dr = 1
and rn = 1) z
left outer join dim_entp_activity_resource_active_v act on act.dim_entp_activity_resource_nk = z.dim_entp_activity_resource_nk
left outer join [dbo].[dim_ent_office_alternative_v] oa on oa.alternative_office_code = act.office
INNER JOIN [dbo].[dim_entp_project_week_closing_period] PWC ON z.[dim_entp_project_nk]=PWC.[dim_entp_project_nk]  --08/05/2022 Satish
INNER JOIN [DBO].[dim_ent_week_closing_period_active_v] CP ON PWC.dim_ent_week_closing_period_nk=CP.dim_ent_week_closing_period_nk;
GO


