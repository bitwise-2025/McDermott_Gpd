/****** Object:  View [dbo].[fact_ops_v1]    Script Date: 5/24/2021 1:06:34 AM ******/
DROP VIEW [dbo].[fact_ops_v1]
GO

/****** Object:  View [dbo].[fact_ops_v1]    Script Date: 5/24/2021 1:06:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ops_v1]
AS select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,ph.[dim_entp_phase_nk]
				,wu.[dim_entp_work_unit_nk]
				,wa.[dim_entp_work_area_nk]
				,cwp.[dim_entp_cwp_nk]
				,(case when sr2.schedule_resource_code = 'ZZZ' or sr2.dim_entp_schedule_resource_nk is null then sr1.dim_entp_schedule_resource_nk else sr2.dim_entp_schedule_resource_nk end) as dim_entp_schedule_resource_nk
				,act.[dim_entp_activity_nk]
				,a.[dim_entp_iwp_nk]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(ph.dim_entp_phase_nk)), '~'),
									isnull(trim(str(wu.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(wa.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(cwp.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(case when sr2.schedule_resource_code = 'ZZZ' or sr2.dim_entp_schedule_resource_nk is null then sr1.dim_entp_schedule_resource_nk else sr2.dim_entp_schedule_resource_nk end )), '~'),
									isnull(trim(str(act.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				left outer join [dbo].[dim_entp_iwp_active_v] iwp on a.dim_entp_iwp_nk = iwp.dim_entp_iwp_nk
				left outer join [dbo].[dim_entp_activity_active_v] act on iwp.dim_entp_activity_nk = act.dim_entp_activity_nk
				left outer join [dbo].[dim_entp_cwp_active_v] cwp on act.dim_entp_cwp_nk = cwp.dim_entp_cwp_nk
				left outer join [dbo].[dim_entp_work_area_active_v] wa on act.dim_entp_work_area_nk = wa.dim_entp_work_area_nk
				left outer join [dbo].[dim_entp_work_unit_active_v] wu on wa.dim_entp_work_unit_nk = wu.dim_entp_work_unit_nk
				left outer join [dbo].[dim_entp_phase_active_v] ph on wa.dim_entp_phase_nk = ph.dim_entp_phase_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr1 on act.dim_entp_schedule_resource_nk = sr1.dim_entp_schedule_resource_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr2 on iwp.dim_entp_schedule_resource_nk = sr2.dim_entp_schedule_resource_nk
				where ds.gpd_level = 'By IWP'
				union all
				select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,ph.[dim_entp_phase_nk]
				,wu.[dim_entp_work_unit_nk]
				,wa.[dim_entp_work_area_nk]
				,cwp.[dim_entp_cwp_nk]
				,sr1.dim_entp_schedule_resource_nk
				,act.[dim_entp_activity_nk]
				,a.[dim_entp_iwp_nk]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(ph.dim_entp_phase_nk)), '~'),
									isnull(trim(str(wu.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(wa.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(cwp.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(sr1.dim_entp_schedule_resource_nk)), '~'),
									isnull(trim(str(act.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				left outer join [dbo].[dim_entp_activity_active_v] act on a.dim_entp_activity_nk = act.dim_entp_activity_nk
				left outer join [dbo].[dim_entp_cwp_active_v] cwp on act.dim_entp_cwp_nk = cwp.dim_entp_cwp_nk
				left outer join [dbo].[dim_entp_work_area_active_v] wa on act.dim_entp_work_area_nk = wa.dim_entp_work_area_nk
				left outer join [dbo].[dim_entp_work_unit_active_v] wu on wa.dim_entp_work_unit_nk = wu.dim_entp_work_unit_nk
				left outer join [dbo].[dim_entp_phase_active_v] ph on wa.dim_entp_phase_nk = ph.dim_entp_phase_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr1 on act.dim_entp_schedule_resource_nk = sr1.dim_entp_schedule_resource_nk
				where ds.gpd_level = 'By Activity'
				union all
				select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,ph.[dim_entp_phase_nk]
				,wu.[dim_entp_work_unit_nk]
				,wa.[dim_entp_work_area_nk]
				,cwp.[dim_entp_cwp_nk]
				,sr1.dim_entp_schedule_resource_nk
				,act.[dim_entp_activity_nk]
				,a.[dim_entp_iwp_nk]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(ph.dim_entp_phase_nk)), '~'),
									isnull(trim(str(wu.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(wa.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(cwp.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(sr1.dim_entp_schedule_resource_nk)), '~'),
									isnull(trim(str(act.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				left outer join [dbo].[dim_entp_iwp_active_v] iwp on a.dim_entp_iwp_nk = iwp.dim_entp_iwp_nk
				left outer join [dbo].[dim_entp_activity_active_v] act on a.dim_entp_activity_nk = act.dim_entp_activity_nk
				left outer join [dbo].[dim_entp_cwp_active_v] cwp on act.dim_entp_cwp_nk = cwp.dim_entp_cwp_nk
				left outer join [dbo].[dim_entp_work_area_active_v] wa on act.dim_entp_work_area_nk = wa.dim_entp_work_area_nk
				left outer join [dbo].[dim_entp_work_unit_active_v] wu on wa.dim_entp_work_unit_nk = wu.dim_entp_work_unit_nk
				left outer join [dbo].[dim_entp_phase_active_v] ph on wa.dim_entp_phase_nk = ph.dim_entp_phase_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr1 on act.dim_entp_schedule_resource_nk = sr1.dim_entp_schedule_resource_nk
				where ds.gpd_level = 'By Activity/IWP'
				and (iwp.iwp_code = 'ZZZ' or a.dim_entp_iwp_nk is null)
				union all
				select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,ph.[dim_entp_phase_nk]
				,wu.[dim_entp_work_unit_nk]
				,wa.[dim_entp_work_area_nk]
				,cwp.[dim_entp_cwp_nk]
				,(case when sr2.schedule_resource_code = 'ZZZ' or sr2.dim_entp_schedule_resource_nk is null then sr1.dim_entp_schedule_resource_nk else sr2.dim_entp_schedule_resource_nk end) as dim_entp_schedule_resource_nk
				,act.[dim_entp_activity_nk]
				,a.[dim_entp_iwp_nk]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(ph.dim_entp_phase_nk)), '~'),
									isnull(trim(str(wu.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(wa.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(cwp.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(case when sr2.schedule_resource_code = 'ZZZ' or sr2.dim_entp_schedule_resource_nk is null then sr1.dim_entp_schedule_resource_nk else sr2.dim_entp_schedule_resource_nk end )), '~'),
									isnull(trim(str(act.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				left outer join [dbo].[dim_entp_iwp_active_v] iwp on a.dim_entp_iwp_nk = iwp.dim_entp_iwp_nk
				left outer join [dbo].[dim_entp_activity_active_v] act on iwp.dim_entp_activity_nk = act.dim_entp_activity_nk
				left outer join [dbo].[dim_entp_cwp_active_v] cwp on act.dim_entp_cwp_nk = cwp.dim_entp_cwp_nk
				left outer join [dbo].[dim_entp_work_area_active_v] wa on act.dim_entp_work_area_nk = wa.dim_entp_work_area_nk
				left outer join [dbo].[dim_entp_work_unit_active_v] wu on wa.dim_entp_work_unit_nk = wu.dim_entp_work_unit_nk
				left outer join [dbo].[dim_entp_phase_active_v] ph on wa.dim_entp_phase_nk = ph.dim_entp_phase_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr1 on act.dim_entp_schedule_resource_nk = sr1.dim_entp_schedule_resource_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr2 on iwp.dim_entp_schedule_resource_nk = sr2.dim_entp_schedule_resource_nk
				where ds.gpd_level = 'By Activity/IWP'
				 and (iwp.iwp_code <> 'ZZZ' or a.dim_entp_iwp_nk is not null)
				union all
				select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,a.[dim_entp_phase_nk]
				,a.[dim_entp_work_unit_nk]
				,a.[dim_entp_work_area_nk]
				,a.[dim_entp_cwp_nk]
				,a.dim_entp_schedule_resource_nk
				,a.[dim_entp_activity_nk]
				,a.[dim_entp_iwp_nk]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(a.dim_entp_phase_nk)), '~'),
									isnull(trim(str(a.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(a.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(a.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_schedule_resource_nk)), '~'),
									isnull(trim(str(a.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				where ds.gpd_level = 'BY JDE COA'
				UNION ALL
				select 
				a.[dim_entp_function_nk]
				,a.[dim_entp_project_nk]
				,ph.[dim_entp_phase_nk]
				,wu.[dim_entp_work_unit_nk]
				,wa.[dim_entp_work_area_nk]
				,cwp.[dim_entp_cwp_nk]
				,sr1.dim_entp_schedule_resource_nk
				,act.[dim_entp_activity_nk]
					,case when (select count(1) as IWPCNT from [dbo].[dim_entp_iwp_active_v] where dim_entp_activity_nk = act.dim_entp_activity_nk)=0
					then	
						a.[dim_entp_iwp_nk] --Default value of 'ZZZ'						
					else
						diwp.dim_entp_iwp_nk
					end dim_entp_iwp_nk  --[if dim_entp_idw_nk is NULL, pass the default value for that domain]
				,a.[dim_entp_pim_nk]
				,a.[dim_entp_roc_nk]
				,a.[dim_entp_data_sub_class_nk]
				,a.dim_entp_data_class_nk
				,a.[dim_entp_sub_source_nk]
				,a.dim_entp_source_nk
				,a.[dim_entp_unit_of_measure_nk]
				,a.[dim_ent_employee_nk]
				,a.dim_ent_jde_coa_nk 
				,a.[transaction_date],				
					case when (select count(1) as IWPCNT from [dbo].[dim_entp_iwp_active_v] where dim_entp_activity_nk = act.dim_entp_activity_nk) <=1
					then	
						transaction_quantity
					else
						transaction_quantity/(select count(1) as IWPCNT from [dbo].[dim_entp_iwp_active_v] where dim_entp_activity_nk = act.dim_entp_activity_nk)
					end transaction_quantity  --[Split evenly based on count of IWP against each activity; if count0/1 then send it as is]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(ph.dim_entp_phase_nk)), '~'),
									isnull(trim(str(wu.dim_entp_work_unit_nk)), '~'),
									isnull(trim(str(wa.dim_entp_work_area_nk)), '~'),
									isnull(trim(str(cwp.dim_entp_cwp_nk)), '~'),
									isnull(trim(str(sr1.dim_entp_schedule_resource_nk)), '~'),
									isnull(trim(str(act.dim_entp_activity_nk)), '~'),
									isnull(trim(str(case when (select count(1) as IWPCNT from [dbo].[dim_entp_iwp_active_v] where dim_entp_activity_nk = act.dim_entp_activity_nk)=0
									then  a.[dim_entp_iwp_nk]  else diwp.dim_entp_iwp_nk end)), '~'),
									isnull(trim(str(a.dim_entp_pim_nk)), '~'),
									isnull(trim(str(a.dim_entp_roc_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_employee_nk)), '~'),
									isnull(trim(str(a.dim_ent_jde_coa_nk)), '~'),
									isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops] a
				left outer join [dbo].[dim_ent_data_sub_class_active_v] ds on a.dim_entp_data_sub_class_nk = ds.dim_ent_data_sub_class_nk
				left outer join [dbo].[dim_entp_activity_active_v] act on a.dim_entp_activity_nk = act.dim_entp_activity_nk
				left outer join [dbo].[dim_entp_cwp_active_v] cwp on act.dim_entp_cwp_nk = cwp.dim_entp_cwp_nk
				left outer join [dbo].[dim_entp_work_area_active_v] wa on act.dim_entp_work_area_nk = wa.dim_entp_work_area_nk
				left outer join [dbo].[dim_entp_work_unit_active_v] wu on wa.dim_entp_work_unit_nk = wu.dim_entp_work_unit_nk
				left outer join [dbo].[dim_entp_phase_active_v] ph on wa.dim_entp_phase_nk = ph.dim_entp_phase_nk
				left outer join [dbo].[dim_entp_schedule_resource_active_v] sr1 on act.dim_entp_schedule_resource_nk = sr1.dim_entp_schedule_resource_nk

				left outer join [dbo].[dim_entp_iwp_active_v] diwp on diwp.dim_entp_activity_nk=act.dim_entp_activity_nk
				where ds.gpd_level = 'By IWP Split/Activity';
GO


