/****** Object:  View [dbo].[fact_ops_MCPM_Legacy_Offshore_v]    Script Date: 5/22/2022 8:51:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ops_MCPM_Legacy_Offshore_v]
AS select 
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
				rn = 1;
GO


