/****** Object:  View [dbo].[fact_pmr_MCPM_Onshore_v]    Script Date: 8/8/2023 4:04:14 PM ******/
DROP VIEW [dbo].[fact_pmr_MCPM_Onshore_v]
GO

/****** Object:  View [dbo].[fact_pmr_MCPM_Onshore_v]    Script Date: 8/8/2023 4:04:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_pmr_MCPM_Onshore_v] AS select 
fact_entp_sk
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
,[transaction_date]
,transaction_quantity
,[created_date_time]
,isnull(x.[transaction_quantity],0) - isnull(lag(isnull(x.transaction_quantity,0), 1) over (partition by  
x.[dim_entp_function_nk]
,x.[dim_entp_project_nk]
,x.[dim_entp_phase_nk]
,x.[dim_entp_work_unit_nk]
,x.[dim_entp_work_area_nk]
,x.[dim_entp_cwp_nk]
,x.dim_entp_schedule_resource_nk
,x.[dim_entp_activity_nk]
,x.[dim_entp_iwp_nk]
,x.[dim_entp_pim_nk]
,x.[dim_entp_roc_nk]
,x.[dim_entp_data_sub_class_nk]
,x.dim_entp_data_class_nk
,x.[dim_entp_sub_source_nk]
,x.dim_entp_source_nk
,x.[dim_entp_unit_of_measure_nk]
,x.[dim_ent_employee_nk]
,x.dim_ent_jde_coa_nk 
order	by x.[transaction_date]),0) current_month_transaction_quantity
,group_code
,dim_ent_prime_nk
,dim_ent_sub_prime_nk
,coa_key
from 
(select k.* from (
select max(z.fact_entp_sk)	  fact_entp_sk
,z.[dim_entp_function_nk]
,z.[dim_entp_project_nk]
,z.[dim_entp_phase_nk]
,z.[dim_entp_work_unit_nk]
,z.[dim_entp_work_area_nk]
,z.[dim_entp_cwp_nk]
,z.dim_entp_schedule_resource_nk
,z.[dim_entp_activity_nk]
,z.[dim_entp_iwp_nk]
,z.[dim_entp_pim_nk]
,z.[dim_entp_roc_nk]
,z.[dim_entp_data_sub_class_nk]
,z.dim_entp_data_class_nk
,z.[dim_entp_sub_source_nk]
,z.dim_entp_source_nk
,z.[dim_entp_unit_of_measure_nk]
,z.[dim_ent_employee_nk]
,z.dim_ent_jde_coa_nk 
,z.dim_ent_geac_coa_nk
,z.[transaction_date]
,sum(isnull(z.[transaction_quantity],0)) transaction_quantity
,z.[created_date_time]
,f.dim_ent_prime_nk
,g.dim_ent_sub_prime_nk
,'JDE-' + convert(varchar(50),z.dim_ent_jde_coa_nk) coa_key
,'' as group_code
from [dbo].[fact_ops] z
left outer join [dbo].[dim_ent_jde_coa_active_v] c on c.dim_ent_jde_coa_nk = z.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on c.prime = f.prime_code and c.project = f.project_number
left outer join [dbo].[dim_ent_sub_prime_active_v] g on c.sub_prime = g.sub_prime_code and c.project = g.project_number
group by z.[dim_entp_function_nk]
,z.[dim_entp_project_nk]
,z.[dim_entp_phase_nk]
,z.[dim_entp_work_unit_nk]
,z.[dim_entp_work_area_nk]
,z.[dim_entp_cwp_nk]
,z.dim_entp_schedule_resource_nk
,z.[dim_entp_activity_nk]
,z.[dim_entp_iwp_nk]
,z.[dim_entp_pim_nk]
,z.[dim_entp_roc_nk]
,z.[dim_entp_data_sub_class_nk]
,z.dim_entp_data_class_nk
,z.[dim_entp_sub_source_nk]
,z.dim_entp_source_nk
,z.[dim_entp_unit_of_measure_nk]
,z.[dim_ent_employee_nk]
,z.dim_ent_jde_coa_nk 
,z.dim_ent_geac_coa_nk
,z.[transaction_date]
,z.[created_date_time]
,f.dim_ent_prime_nk
,g.dim_ent_sub_prime_nk
) k,

(select [dim_entp_project_nk],dim_entp_data_class_nk,[dim_entp_data_sub_class_nk],dim_entp_source_nk,[dim_entp_sub_source_nk],[transaction_date],
max([created_date_time]) [created_date_time]   from [dbo].[fact_ops]
where dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Onshore','Excel_MCPM_Onshore_Cost'))
and dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from [dbo].[dim_ent_data_sub_class] where data_sub_class_name not like 'Progress Module%')
group by[dim_entp_project_nk],dim_entp_data_class_nk,[dim_entp_data_sub_class_nk],dim_entp_source_nk,[dim_entp_sub_source_nk],[transaction_date]) g
where k.dim_entp_project_nk  = g.dim_entp_project_nk
and k.dim_entp_data_class_nk = g.dim_entp_data_class_nk
and k.dim_entp_data_sub_class_nk = g.dim_entp_data_sub_class_nk
and k.dim_entp_source_nk = g.dim_entp_source_nk
and k.dim_entp_sub_source_nk = g.dim_entp_sub_source_nk
and k.transaction_date = g.transaction_date
and k.created_date_time = g.created_date_time
and k.dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Onshore','Excel_MCPM_Onshore_Cost'))
and k.dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from [dbo].[dim_ent_data_sub_class] where data_sub_class_name not like 'Progress Module%')
and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = k.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = k.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk = k.dim_entp_data_sub_class_nk and 
				   k.[transaction_date] between r.[start_date] and r.[end_date]) = 0
) x;
GO


