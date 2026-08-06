/****** Object:  View [dbo].[fact_ncsa_hdms_booking_v]    Script Date: 3/20/2023 10:30:34 AM ******/
/****** Object:  View [gpd].[NCSA_MCPM_UOM_v]    Script Date: 10/12/2021 12:18:43 AM ******/
IF	OBJECT_ID('[dbo].[fact_ncsa_hdms_booking_v]','V') IS NOT NULL
DROP VIEW [dbo].[fact_ncsa_hdms_booking_v]
GO

/****** Object:  View [dbo].[fact_ncsa_hdms_booking_v]    Script Date: 3/20/2023 10:30:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ncsa_hdms_booking_v]
AS select * from 
(
select *
,dense_rank() over(partition by f.temp_hash_key, f.[dim_ent_project_sk] ,f.[dim_ent_project_nk] ,f.[dim_ent_function_sk] ,f.[dim_ent_function_nk] ,f.[dim_ent_source_sk] ,f.[dim_ent_source_nk] ,f.[dim_ent_sub_source_sk] ,f.[dim_ent_sub_source_nk] ,f.[dim_ent_system_sk] ,f.[dim_ent_system_nk] ,f.[dim_ent_subsystem_sk] ,f.[dim_ent_subsystem_nk] ,f.[dim_ent_task_sk] ,f.[dim_ent_task_nk] ,f.[dim_ent_campaign_sk] ,f.[dim_ent_campaign_nk],f.[dim_ent_workpack_sk],f.[dim_ent_workpack_nk] ,f.[dim_ent_miscellaneous_booking_sk] ,f.[dim_ent_miscellaneous_booking_nk] ,f.[dim_ent_data_class_sk] ,f.[dim_ent_data_class_nk] ,f.[dim_ent_data_sub_class_sk] ,f.[dim_ent_data_sub_class_nk],f.[dim_ent_discipline_sk] ,f.[dim_ent_discipline_nk],f.progress_date order by f.created_date_time desc) dr
,row_number() over(partition by f.temp_hash_key, f.[dim_ent_project_sk] ,f.[dim_ent_project_nk] ,f.[dim_ent_function_sk] ,f.[dim_ent_function_nk] ,f.[dim_ent_source_sk] ,f.[dim_ent_source_nk] ,f.[dim_ent_sub_source_sk] ,f.[dim_ent_sub_source_nk] ,f.[dim_ent_system_sk] ,f.[dim_ent_system_nk] ,f.[dim_ent_subsystem_sk] ,f.[dim_ent_subsystem_nk] ,f.[dim_ent_task_sk] ,f.[dim_ent_task_nk] ,f.[dim_ent_campaign_sk] ,f.[dim_ent_campaign_nk],f.[dim_ent_workpack_sk],f.[dim_ent_workpack_nk] ,f.[dim_ent_miscellaneous_booking_sk] ,f.[dim_ent_miscellaneous_booking_nk] ,f.[dim_ent_data_class_sk] ,f.[dim_ent_data_class_nk] ,f.[dim_ent_data_sub_class_sk] ,f.[dim_ent_data_sub_class_nk],f.progress_date order by f.created_date_time desc) rn
from 
(select 
				a.[dim_ent_project_sk] 
				,a.[dim_ent_project_nk] 
				,a.[dim_ent_function_sk] 
				,a.[dim_ent_function_nk] 
				,a.[dim_ent_source_sk] 
				,a.[dim_ent_source_nk] 
				,a.[dim_ent_sub_source_sk] 
				,a.[dim_ent_sub_source_nk] 
				,a.[dim_ent_system_sk] 
				,a.[dim_ent_system_nk] 
				,a.[dim_ent_subsystem_sk] 
				,a.[dim_ent_subsystem_nk] 
				,a.[dim_ent_task_sk] 
				,a.[dim_ent_task_nk] 
				,a.[dim_ent_campaign_sk] 
				,a.[dim_ent_campaign_nk] 
				,a.[dim_ent_workpack_sk] 
				,a.[dim_ent_workpack_nk] 
				,a.[dim_ent_miscellaneous_booking_sk] 
				,a.[dim_ent_miscellaneous_booking_nk] 
				,a.[dim_ent_data_class_sk] 
				,a.[dim_ent_data_class_nk] 
				,a.[dim_ent_data_sub_class_sk] 
				,a.[dim_ent_data_sub_class_nk]
				,a.[dim_ent_discipline_sk] 
				,a.[dim_ent_discipline_nk]
				,a.[progress_date]
				,a.[transaction_quantity]
				,a.[created_date_time]
				,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_ent_function_nk)), '~'),
									isnull(trim(str(a.dim_ent_project_nk)), '~'),
									isnull(trim(str(a.dim_ent_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_system_nk)), '~'),
									isnull(trim(str(a.dim_ent_subsystem_nk)), '~'),
									isnull(trim(str(a.dim_ent_task_nk)), '~'),
									isnull(trim(str(a.dim_ent_campaign_nk)), '~'),
									isnull(trim(str(a.dim_ent_workpack_nk)), '~'),
									isnull(trim(str(a.dim_ent_miscellaneous_booking_nk )), '~'),
									isnull(trim(str(a.dim_ent_data_class_nk)), '~'),
									isnull(trim(str(a.dim_ent_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_ent_discipline_nk)), '~')
									)) temp_hash_key
				from [dbo].[fact_ops_hdms_booking] a 
				WHERE dim_ent_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('HDMS')) 
				) f) h
				where dr = 1 and rn=1;
GO


