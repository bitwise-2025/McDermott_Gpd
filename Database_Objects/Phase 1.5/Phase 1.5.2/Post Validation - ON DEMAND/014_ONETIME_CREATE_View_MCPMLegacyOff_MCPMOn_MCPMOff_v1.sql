/****** Object:  View [dbo].[fact_pmr_MCPM_Onshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
DROP VIEW [dbo].[fact_pmr_MCPM_Onshore_v]
GO
/****** Object:  View [dbo].[fact_pmr_MCPM_Offshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
DROP VIEW [dbo].[fact_pmr_MCPM_Offshore_v]
GO
/****** Object:  View [dbo].[fact_ops_MCPM_Legacy_Offshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
DROP VIEW [dbo].[fact_ops_MCPM_Legacy_Offshore_v]
GO
/****** Object:  View [dbo].[fact_ops_MCPM_Legacy_Offshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_ops_MCPM_Legacy_Offshore_v] AS select 
'GEAC-' + convert(varchar(50),dim_ent_geac_coa_nk) coa_key
,fact_entp_sk	  
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
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
,isnull([transaction_quantity],0) transaction_quantity
,[created_date_time]
,isnull(transaction_quantity, 0) - isnull(previous_transaction_quantity, 0) current_month_transaction_quantity,
		binary_checksum(trim(isnull(trim(str([dim_entp_function_nk])), '~')),
						trim(isnull(trim(str([dim_entp_project_nk])), '~')),
						trim(isnull(trim(str([dim_entp_discipline_nk])), '~')),
						trim(isnull(trim(str([dim_ent_office_nk])), '~')),
						trim(isnull(trim(str([dim_entp_phase_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_unit_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_area_nk])), '~')),
						trim(isnull(trim(str([dim_entp_cwp_nk])), '~')),
						trim(isnull(trim(str(dim_entp_schedule_resource_nk)), '~')),
						trim(isnull(trim(str([dim_entp_activity_nk])), '~')),
						trim(isnull(trim(str([dim_entp_iwp_nk])), '~')),
						trim(isnull(trim(str([dim_entp_pim_nk])), '~')),
						trim(isnull(trim(str([dim_entp_roc_nk])), '~')),
						trim(isnull(trim(str([dim_entp_data_sub_class_nk])), '~')),
						trim(isnull(trim(str(dim_entp_data_class_nk)), '~')),
						trim(isnull(trim(str([dim_entp_sub_source_nk])), '~')),
						trim(isnull(trim(str(dim_entp_source_nk)), '~')),
						trim(isnull(trim(str([dim_entp_unit_of_measure_nk])), '~')),
						trim(isnull(trim(str([dim_ent_employee_nk])), '~')),
						trim(isnull(trim(str(dim_ent_jde_coa_nk )), '~')),
						trim(isnull(trim(str(dim_ent_geac_coa_nk)), '~'))) group_code
from (
select first_value(fact_entp_sk) over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
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
							order by [created_date_time]) initial_fact_entp_sk, 
		row_number() over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
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
						order by [created_date_time] desc) rn, 
		lag(isnull(transaction_quantity,0), 1) over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
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
							order	by [transaction_date]) previous_transaction_quantity,	 					
	   fact_entp_sk
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
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
,[created_date_time]
,isnull([transaction_quantity],0) [transaction_quantity]
				from [dbo].[fact_ops]) a 
				where 
				dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('Excel_MCPM_Cost'))
				AND 
				rn = 1
				and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = a.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = a.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk =a.dim_entp_data_sub_class_nk and 
				   a.[transaction_date] between r.[start_date] and r.[end_date]) = 0;
GO
/****** Object:  View [dbo].[fact_pmr_MCPM_Offshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_pmr_MCPM_Offshore_v] AS select z.*,f.dim_ent_prime_nk,'GEAC-' + convert(varchar(50),z.dim_ent_geac_coa_nk) coa_key from (
select 
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
,isnull([transaction_quantity],0) transaction_quantity
,[created_date_time]
,isnull(transaction_quantity, 0) - isnull(previous_transaction_quantity, 0) current_month_transaction_quantity,
		binary_checksum(trim(isnull(trim(str([dim_entp_function_nk])), '~')),
						trim(isnull(trim(str([dim_entp_project_nk])), '~')),
						trim(isnull(trim(str([dim_entp_phase_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_unit_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_area_nk])), '~')),
						trim(isnull(trim(str([dim_entp_cwp_nk])), '~')),
						trim(isnull(trim(str(dim_entp_schedule_resource_nk)), '~')),
						trim(isnull(trim(str([dim_entp_activity_nk])), '~')),
						trim(isnull(trim(str([dim_entp_iwp_nk])), '~')),
						trim(isnull(trim(str([dim_entp_pim_nk])), '~')),
						trim(isnull(trim(str([dim_entp_roc_nk])), '~')),
						trim(isnull(trim(str([dim_entp_data_sub_class_nk])), '~')),
						trim(isnull(trim(str(dim_entp_data_class_nk)), '~')),
						trim(isnull(trim(str([dim_entp_sub_source_nk])), '~')),
						trim(isnull(trim(str(dim_entp_source_nk)), '~')),
						trim(isnull(trim(str([dim_entp_unit_of_measure_nk])), '~')),
						trim(isnull(trim(str([dim_ent_employee_nk])), '~')),
						trim(isnull(trim(str(dim_ent_jde_coa_nk )), '~')),
						trim(isnull(trim(str(dim_ent_geac_coa_nk)), '~'))) group_code
from (
select first_value(fact_entp_sk) over (partition by  
[dim_entp_function_nk]
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
							order by [created_date_time]) initial_fact_entp_sk, 
		row_number() over (partition by  
[dim_entp_function_nk]
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
						order by [created_date_time] desc) rn, 
		lag(isnull(transaction_quantity,0), 1) over (partition by  
[dim_entp_function_nk]
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
							order	by [transaction_date]) previous_transaction_quantity,	 					
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
,[created_date_time]
,isnull([transaction_quantity],0) [transaction_quantity]
				from [dbo].[fact_ops]) a 
				where 
				dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Offshore'))
				AND 
				rn = 1
				   and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = a.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = a.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk =a.dim_entp_data_sub_class_nk and 
				   a.[transaction_date] between r.[start_date] and r.[end_date]) = 0
) z
left outer join [dbo].[dim_ent_geac_coa_active_v] c on c.dim_ent_geac_coa_nk = z.dim_ent_geac_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on f.dim_ent_prime_nk = c.dim_ent_prime_nk;
GO
/****** Object:  View [dbo].[fact_pmr_MCPM_Onshore_v]    Script Date: 10/3/2022 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_pmr_MCPM_Onshore_v] AS select z.*,f.dim_ent_prime_nk,'GEAC-' + convert(varchar(50),z.dim_ent_jde_coa_nk) coa_key  from 
(select 
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
,isnull([transaction_quantity],0) transaction_quantity
,[created_date_time]
,isnull(transaction_quantity, 0) - isnull(previous_transaction_quantity, 0) current_month_transaction_quantity,
		binary_checksum(trim(isnull(trim(str([dim_entp_function_nk])), '~')),
						trim(isnull(trim(str([dim_entp_project_nk])), '~')),
						trim(isnull(trim(str([dim_entp_phase_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_unit_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_area_nk])), '~')),
						trim(isnull(trim(str([dim_entp_cwp_nk])), '~')),
						trim(isnull(trim(str(dim_entp_schedule_resource_nk)), '~')),
						trim(isnull(trim(str([dim_entp_activity_nk])), '~')),
						trim(isnull(trim(str([dim_entp_iwp_nk])), '~')),
						trim(isnull(trim(str([dim_entp_pim_nk])), '~')),
						trim(isnull(trim(str([dim_entp_roc_nk])), '~')),
						trim(isnull(trim(str([dim_entp_data_sub_class_nk])), '~')),
						trim(isnull(trim(str(dim_entp_data_class_nk)), '~')),
						trim(isnull(trim(str([dim_entp_sub_source_nk])), '~')),
						trim(isnull(trim(str(dim_entp_source_nk)), '~')),
						trim(isnull(trim(str([dim_entp_unit_of_measure_nk])), '~')),
						trim(isnull(trim(str([dim_ent_employee_nk])), '~')),
						trim(isnull(trim(str(dim_ent_jde_coa_nk )), '~')),
						trim(isnull(trim(str(dim_ent_geac_coa_nk)), '~'))) group_code
from (
select first_value(fact_entp_sk) over (partition by  
[dim_entp_function_nk]
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
							order by [created_date_time]) initial_fact_entp_sk, 
		row_number() over (partition by  
[dim_entp_function_nk]
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
						order by [created_date_time] desc) rn, 
		lag(isnull(transaction_quantity,0), 1) over (partition by  
[dim_entp_function_nk]
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
							order	by [transaction_date]) previous_transaction_quantity,	 					
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
,[created_date_time]
,isnull([transaction_quantity],0) [transaction_quantity]
				from [dbo].[fact_ops]) a 
				where 
				dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Onshore'))
				AND 
				rn = 1
				  and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = a.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = a.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk =a.dim_entp_data_sub_class_nk and 
				   a.[transaction_date] between r.[start_date] and r.[end_date]) = 0
) z
left outer join [dbo].[dim_ent_jde_coa_active_v] c on c.dim_ent_jde_coa_nk = z.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on c.prime = f.prime_code and c.project = f.project_number;
GO
