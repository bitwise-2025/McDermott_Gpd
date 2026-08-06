/****** Object:  View [dbo].[dim_ent_geac_unique_cost_code_v]    Script Date: 9/28/2022 9:18:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_geac_unique_cost_code_v] AS select contract_id project,ident2_code cost_code,
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
/****** Object:  View [dbo].[dim_ent_jde_unique_cost_code_v]    Script Date: 9/28/2022 9:18:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_jde_unique_cost_code_v] AS select project,cost_code,max(cost_description) cost_description,ltrim(rtrim(cost_code)) + ltrim(rtrim(project)) cost_code_key from [dbo].[dim_Ent_jde_coa] 
where isnull(project,'') <> ''
and isnull(cost_code,'') <> ''
and active = '1'
group by cost_code,project;
GO
/****** Object:  View [dbo].[dim_ent_unique_cost_code_v]    Script Date: 9/28/2022 9:18:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_unique_cost_code_v] AS select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_jde_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null
union all
select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_geac_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null;
GO
/****** Object:  View [dbo].[fact_pmr_sitepro_v]    Script Date: 9/28/2022 9:18:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_pmr_sitepro_v]
AS select z.*,f.dim_ent_prime_nk from 
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
				dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('Sitepro'))
				AND 
				rn = 1) z
left outer join [dbo].[dim_ent_jde_coa_active_v] c on c.dim_ent_jde_coa_nk = z.dim_ent_jde_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on c.prime = f.prime_code and c.project = f.project_number;
GO
