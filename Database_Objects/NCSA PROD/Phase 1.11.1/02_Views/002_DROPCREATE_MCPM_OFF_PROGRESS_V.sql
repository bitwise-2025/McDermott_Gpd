/****** Object:  View [dbo].[fact_pmr_MCPM_Offshore_progress_v]    Script Date: 1/5/2023 6:03:41 PM ******/

IF	OBJECT_ID('[dbo].[fact_pmr_MCPM_Offshore_progress_v]','V') IS NOT NULL
DROP VIEW [dbo].[fact_pmr_MCPM_Offshore_progress_v]
GO
GO

/****** Object:  View [dbo].[fact_pmr_MCPM_Offshore_progress_v]    Script Date: 1/5/2023 6:03:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_pmr_MCPM_Offshore_progress_v]
AS select z.*,f.dim_ent_prime_nk,'GEAC-' + convert(varchar(50),z.dim_ent_geac_coa_nk) coa_key from (
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
				dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from [dbo].[dim_ent_data_sub_class] where data_sub_class_name like 'Progress Module%')
				AND 
				rn = 1
				   and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = a.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = a.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk =a.dim_entp_data_sub_class_nk and 
				   a.[transaction_date] between r.[start_date] and r.[end_date]) = 0
) z
left outer join [dbo].[dim_ent_geac_coa_active_v] c on c.dim_ent_geac_coa_nk = z.dim_ent_geac_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on f.dim_ent_prime_nk = c.dim_ent_prime_nk
union all
select abs(checksum(newid())) fact_entp_sk,0 as dim_entp_function_nk,c.dim_ent_project_nk,0 as dim_entp_phase_nk,0 as dim_entp_work_unit_nk,0 as dim_entp_work_area_nk,
0 as dim_entp_cwp_nk,0 as dim_entp_schedule_resource_nk,0 as dim_entp_activity_nk,0 as dim_entp_iwp_nk,0 as dim_entp_pim_nk,0 as dim_entp_roc_nk,dsc.dim_ent_data_sub_class_nk,
dc.dim_ent_data_class_nk,ss.dim_ent_sub_source_nk,s.dim_ent_source_nk,uom.dim_ent_unit_of_measure_nk,
(select max(dim_ent_employee_nk) from [dbo].[dim_ent_employee_active_v] where employee_legacy_number = resource_no_legacy) as dim_ent_employee_nk,0 as dim_ent_jde_coa_nk,
dim_ent_geac_coa_nk,t.date_attribute as transaction_date,hours as transaction_quantity,getdate() as created_date_time,hours as current_month_transaction_quantity,0 as group_code,
(select dim_ent_prime_nk from dim_ent_geac_coa_active_v gc  where gc.dim_ent_geac_coa_nk = t.dim_ent_geac_coa_nk) as dim_ent_prime_nk,
'GEAC-' + convert(varchar(25),t.dim_ent_geac_coa_nk) as coa_key
from dbo.fact_ent_time_and_reprocess_offshore_v  t, dim_ent_contract c , dim_ent_data_sub_class_active_v dsc, dim_ent_data_sub_class_active_v dc,
dim_ent_sub_source_active_v ss, dim_ent_source_active_v s, dim_ent_unit_of_measure_active_v uom
where c.contract_number = t.segment2_code and 
dsc.data_sub_class_name = 'Progress Module Actual Hours'
and dsc.data_class_name = dc.data_class_name
and ss.sub_source_name = 'KRONOS'
and ss.source_name = ss.source_name
and uom.unit_of_measure_code = 'TIME'
and c.dim_ent_project_nk in   (select distinct dim_entp_project_nk from [dbo].[dim_entp_project_week_closing_period_active_v]);
GO


