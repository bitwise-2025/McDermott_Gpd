/****** Object:  View [dbo].[fact_ops_as_rows_v]    Script Date: 6/14/2021 10:54:03 AM ******/
DROP VIEW [dbo].[fact_ops_as_rows_v]
GO

/****** Object:  View [dbo].[fact_ops_as_rows_v]    Script Date: 6/14/2021 10:54:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ops_as_rows_v]
AS select 	x.[dim_entp_function_nk]
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
		,x.dim_ent_jde_coa_nk
		,x.[dim_ent_employee_nk]
		,x.dim_ent_prime_nk
		,x.dim_ent_sub_prime_nk
		,x.[transaction_date]
		,x.[transaction_quantity]
		,x.[created_date_time],
		case when x.created_date_time  > v.created_date_time then x.created_date_time else v.created_date_time end touched_dtm,
		case when v.sec_sa_rule_id is null then 0 else v.sec_sa_rule_id end rule_id
from 
(select b.[dim_entp_function_nk]
		,b.[dim_entp_project_nk]
		,b.[dim_entp_phase_nk]
		,b.[dim_entp_work_unit_nk]
		,b.[dim_entp_work_area_nk]
		,b.[dim_entp_cwp_nk]
		,b.[dim_entp_schedule_resource_nk]
		,b.[dim_entp_activity_nk]
		,b.[dim_entp_iwp_nk]
		,b.[dim_entp_pim_nk]
		,b.[dim_entp_roc_nk]
		,b.[dim_entp_data_sub_class_nk]
		,b.[dim_entp_data_class_nk]
		,b.[dim_entp_sub_source_nk]
		,b.[dim_entp_source_nk]
		,b.[dim_entp_unit_of_measure_nk]
		,b.dim_ent_jde_coa_nk
		,b.[dim_ent_employee_nk]
		,b.dim_ent_prime_nk
		,b.dim_ent_sub_prime_nk
		,b.[transaction_date]
		,b.[transaction_quantity]
		,b.[created_date_time]
from (
select 		a.[dim_entp_function_nk]
		,a.[dim_entp_project_nk]
		,a.[dim_entp_phase_nk]
		,a.[dim_entp_work_unit_nk]
		,a.[dim_entp_work_area_nk]
		,a.[dim_entp_cwp_nk]
		,a.[dim_entp_schedule_resource_nk]
		,a.[dim_entp_activity_nk]
		,a.[dim_entp_iwp_nk]
		,a.[dim_entp_pim_nk]
		,a.[dim_entp_roc_nk]
		,a.[dim_entp_data_sub_class_nk]
		,a.[dim_entp_data_class_nk]
		,a.[dim_entp_sub_source_nk]
		,a.[dim_entp_source_nk]
		,a.[dim_ent_employee_nk]
		,a.dim_ent_jde_coa_nk
		,a.[dim_entp_unit_of_measure_nk]
		,a.[transaction_date]
		,a.[transaction_quantity]
		,a.[created_date_time]
		,case when isnull(c.dim_ent_prime_nk,0) = 0 then e.dim_ent_prime_nk else c.dim_ent_prime_nk end as dim_ent_prime_nk
		,case when isnull(f.dim_ent_sub_prime_nk,0) = 0 then g.dim_ent_sub_prime_nk else f.dim_ent_sub_prime_nk end as dim_ent_sub_prime_nk
		,a.temp_hash_key
		,dense_rank() over(partition by a.temp_hash_key, a.dim_entp_data_class_nk,  a.dim_entp_data_sub_class_nk, a.transaction_date order by a.created_date_time desc) dr
		,row_number() over(partition by a.temp_hash_key, a.dim_entp_data_class_nk, a.dim_entp_data_sub_class_nk, a.transaction_date order by a.created_date_time desc) rn
from [dbo].[fact_ops_v1]  a
left outer join [dbo].[dim_ent_jde_coa_active_v] b on a.dim_ent_jde_coa_nk = b.dim_ent_jde_coa_nk
left outer join [dbo].[dim_entp_activity_active_v] d on a.dim_entp_activity_nk = d.dim_entp_activity_nk
left outer join [dbo].[dim_ent_prime_active_v] c on b.prime = c.prime_code
left outer join [dbo].[dim_ent_prime_active_v] e on d.prime = e.prime_code
left outer join [dbo].[dim_ent_sub_prime_active_v] f on b.sub_prime = f.sub_prime_code
left outer join [dbo].[dim_ent_sub_prime_active_v] g on d.sub_prime = g.sub_prime_code
) b
where dr = 1
and rn = 1
union all
select null as dim_entp_function_nk ,
b.dim_ent_project_nk,
(select [dim_entp_phase_nk] from [dbo].[dim_entp_work_area_active_v] where [work_area_code] = c.area_unit) dim_entp_phase_nk,
(select [dim_entp_work_unit_nk] from [dbo].[dim_entp_work_unit_active_v] where [work_unit_code] = left(c.area_unit,1) + '00') dim_entp_work_unit_nk,
(select [dim_entp_work_area_nk] from [dbo].[dim_entp_work_area_active_v] where [work_area_code] = c.area_unit) dim_entp_work_area_nk,
NULL dim_entp_cwp_nk,
NULL dim_entp_schedule_resource_nk,
NULL dim_entp_activity_nk,
NULL dim_entp_iwp_nk,
NULL dim_entp_pim_nk,
NULL dim_entp_roc_nk,
dim_ent_data_sub_class_nk,
dim_ent_data_class_nk,
dim_ent_sub_source_nk,
dim_ent_source_nk,
dim_ent_unit_of_measure_nk,
a.dim_ent_jde_coa_nk,
dim_ent_employee_nk,
f.dim_ent_prime_nk,
g.dim_ent_sub_prime_nk,
date_attribute,
units,
a.created_date_time
from [dbo].[fact_ent_time_ets_v] a
left outer join dim_ent_contract_active_v b on a.dim_ent_contract_nk = b.dim_ent_contract_nk
left outer join [dbo].[dim_ent_jde_coa_active_v] c on a.dim_ent_jde_coa_nk = c.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on c.prime = f.prime_code
left outer join [dbo].[dim_ent_sub_prime_active_v] g on c.sub_prime = g.sub_prime_code
left outer join [dbo].[dim_date_v] h on h.dim_ent_date_sk = a.dim_ent_timesheet_date_sk ) x
left outer join
	(	select	a.sec_sa_rule_id,
				a.created_date_time,
				(select x1.column_value 
				 from sec_sa_rule_detail_value x1 
				 where x1.sec_sa_rule_detail_id = b.sec_sa_rule_detail_id 
				 and  x1.sec_sa_table_column_id = (select y1.sec_sa_table_column_id from sec_sa_table_column y1 where y1.column_name = 'dim_entp_project_nk')) dim_entp_project_nk
from	sec_sa_rule a,
		sec_sa_rule_detail b,
		sec_sa c
where   a.sec_sa_rule_id = b.sec_sa_rule_id
and     a.sec_sa_id = c.sec_sa_id
and     c.description = 'NCSA') v
on v.dim_entp_project_nk = x.dim_entp_project_nk;
GO



