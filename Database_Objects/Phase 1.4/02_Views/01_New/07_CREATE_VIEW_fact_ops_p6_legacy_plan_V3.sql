/****** Object:  View [dbo].[fact_ops_p6_legacy_plan_v]    Script Date: 8/10/2022 1:57:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ops_p6_legacy_plan_v]
AS SELECT Z1.*, DATEADD(day, ISNULL(CP.days_diff,0), Z1.transaction_date_original ) as transaction_date  --08/08/2022	Satish
FROM (						
select z.*  from (
select * from 
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
          ,a.[dim_entp_schedule_resource_nk]
          ,a.[dim_entp_activity_nk]
          ,a.[dim_entp_iwp_nk]
          ,a.[dim_entp_pim_nk]
          ,a.[dim_entp_roc_nk]
          ,a.[dim_entp_data_sub_class_nk]
          ,a.[dim_entp_data_class_nk]
          ,a.[dim_entp_sub_source_nk]
          ,a.[dim_entp_source_nk]
          ,a.[dim_entp_unit_of_measure_nk]
          ,a.[dim_ent_employee_nk]
          ,a.[dim_ent_geac_coa_nk]
          ,a.[dim_entp_discipline_nk]
          ,a.[dim_ent_office_nk]
          ,a.[transaction_date] as transaction_date_original --08/08/2022	Satish
          ,a.[transaction_quantity]
          ,a.[created_date_time]
          ,(select CASE 
                         WHEN CHARINDEX('_',dsc1.data_sub_class_name)= 0 THEN NULL
                         ELSE REVERSE(PARSENAME(REPLACE(REVERSE(dsc1.data_sub_class_name), '_', '.'), 1)) 
                         END AS [plan_type] FROM dim_ent_data_sub_class dsc1 WITH (NOLOCK) 
                         where dsc1.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_type
         ,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc2.data_sub_class_name), '_', '.'), 2)) AS [revision] FROM dim_ent_data_sub_class dsc2 WITH (NOLOCK) 
                         where dsc2.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) revision
         ,(select COALESCE(gtc.View_Display_PlanSubType,dsc3.data_sub_class_name) AS [plan_sub_type] FROM dim_ent_data_sub_class dsc3 WITH (NOLOCK) LEFT JOIN [gpd].[NCSA_P6_Transaction_type_conversion] gtc ON gtc.description= COALESCE(REVERSE(PARSENAME(REPLACE(REVERSE(dsc3.data_sub_class_name), '_', '.'), 3)),dsc3.data_sub_class_name)
                          where dsc3.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_sub_type 
         ,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
           isnull(trim(str(a.dim_entp_project_nk)), '~'),
           isnull(trim(str(a.dim_entp_phase_nk)), '~'),
           isnull(trim(str(a.dim_entp_work_unit_nk)), '~'),
           isnull(trim(str(a.dim_entp_work_area_nk)), '~'),
           isnull(trim(str(a.dim_entp_cwp_nk)), '~'),
           isnull(trim(str(a.dim_entp_schedule_resource_nk )), '~'),
           isnull(trim(str(a.dim_entp_activity_nk)), '~'),
           isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
           isnull(trim(str(a.dim_entp_pim_nk)), '~'),
           isnull(trim(str(a.dim_entp_roc_nk)), '~'),
           isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
           isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
           isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
           isnull(trim(str(a.dim_entp_source_nk)), '~'),
           isnull(trim(str(a.dim_ent_employee_nk)), '~'),
           isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~'),
           isnull(trim(str(a.dim_ent_geac_coa_nk)), '~'),
           isnull(trim(str(a.dim_entp_discipline_nk)), '~'),
           isnull(trim(str(a.dim_ent_office_nk)), '~')
           )) temp_hash_key from [dbo].[fact_ops] a 
                          WHERE a.dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where active=1 and sub_source_name in ('P6-Excel-Legacy')) 
                          ) f) h
                          where dr = 1
                          and rn = 1) z
--[05/18/2022 : Vijaykumar BN and Aditya: Changes requested by Andnan, Moses  and Johnson to include manual calc for 'Remaining Late' and 'Remaining Early']
--[08/08/2022 : Satishkumar:  An outerloop over both queries within union, to Translate the Transaction date based on 'week_closing_period' rules.]
UNION ALL

select 
          [dim_entp_function_nk]
         ,midcalc.[dim_entp_project_nk]
         ,midcalc.[dim_entp_phase_nk]
         ,midcalc.[dim_entp_work_unit_nk]
         ,midcalc.[dim_entp_work_area_nk]
         ,midcalc.[dim_entp_cwp_nk]
         ,midcalc.[dim_entp_schedule_resource_nk]
         ,midcalc.[dim_entp_activity_nk]
         ,midcalc.[dim_entp_iwp_nk]
         ,midcalc.[dim_entp_pim_nk]
         ,midcalc.[dim_entp_roc_nk]
         ,coalesce(dsc9.[dim_ent_data_sub_class_nk],dim_entp_data_sub_class_nk)  as [dim_entp_data_sub_class_nk] 
         ,dim_entp_data_class_nk
         ,[dim_entp_sub_source_nk]
         ,dim_entp_source_nk
         ,[dim_entp_unit_of_measure_nk]
         ,[dim_ent_employee_nk]
         ,[dim_ent_geac_coa_nk]
         ,[dim_entp_discipline_nk]
         ,midcalc.[dim_ent_office_nk]
         ,[transaction_date] as transaction_date_original
         ,isnull(midcalc.current_tq,0) - isnull(midcalc.previous_tq,0) as   [transaction_quantity] 
         ,midcalc.[created_date_time]
         ,plan_type
        ,revision
         ,REVERSE(PARSENAME(REPLACE(REVERSE(dsc9.data_sub_class_name), '_', '.'), 3)) AS [plan_sub_type] 
         ,temp_hash_key 
         ,rn as dr
         ,rn as rn
                        from
(select 
row_number() over (partition by                                                                                         

                       [dim_entp_function_nk]
                       ,[dim_entp_project_nk]
                       ,[dim_entp_phase_nk]
                       ,[dim_entp_work_unit_nk]
                       ,[dim_entp_work_area_nk]
                       ,[dim_entp_cwp_nk]
                       ,[dim_entp_schedule_resource_nk]
                       ,[dim_entp_activity_nk]
                       ,[dim_entp_iwp_nk]
                       ,[dim_entp_pim_nk]
                       ,[dim_entp_roc_nk]
                       ,[dim_entp_data_sub_class_nk]
                       ,[dim_entp_data_class_nk]
                       ,[dim_entp_sub_source_nk]
                       ,[dim_entp_source_nk]
                       ,[dim_entp_unit_of_measure_nk]
                       ,[dim_ent_employee_nk]
                       ,[dim_ent_geac_coa_nk]
                       ,[dim_entp_discipline_nk]
                       ,[dim_ent_office_nk]
                       ,[transaction_date]
                        order by [created_date_time] desc) rn, ---row number  is to take the latest records
                                                                                                                                                                                    
                                                                                                                                                                                    
lag(isnull(transaction_quantity,0), 1) over (partition by  

                                                 [dim_entp_function_nk]
                                                ,[dim_entp_project_nk]
                                                ,[dim_entp_phase_nk]
                                                ,[dim_entp_work_unit_nk]
                                                ,[dim_entp_work_area_nk]
                                                ,[dim_entp_cwp_nk]
                                                ,[dim_entp_schedule_resource_nk]
                                                ,[dim_entp_activity_nk]
                                                ,[dim_entp_iwp_nk]
                                                ,[dim_entp_pim_nk]
                                                ,[dim_entp_roc_nk]
                                                ,[dim_entp_data_sub_class_nk]
                                                ,[dim_entp_data_class_nk]
                                                ,[dim_entp_sub_source_nk]
                                                ,[dim_entp_source_nk]
                                                ,[dim_entp_unit_of_measure_nk]
                                                ,[dim_ent_employee_nk]
                                                ,[dim_ent_geac_coa_nk]
                                                ,[dim_entp_discipline_nk]
                                                ,[dim_ent_office_nk]
                                              order by [transaction_date]) previous_tq
                                                  ,[dim_entp_function_nk]
                                                  ,[dim_entp_project_nk]
                                                  ,[dim_entp_phase_nk]
                                                  ,[dim_entp_work_unit_nk]
                                                  ,[dim_entp_work_area_nk]
                                                  ,[dim_entp_cwp_nk]
                                                  ,[dim_entp_schedule_resource_nk]
                                                  ,[dim_entp_activity_nk]
                                                  ,[dim_entp_iwp_nk]
                                                  ,[dim_entp_pim_nk]
                                                  ,[dim_entp_roc_nk]
                                                  ,[dim_entp_data_sub_class_nk]
                                                  ,[dim_entp_data_class_nk]
                                                  ,[dim_entp_sub_source_nk]
                                                  ,[dim_entp_source_nk]
                                                  ,[dim_entp_unit_of_measure_nk]
                                                  ,[dim_ent_employee_nk]
                                                  ,[dim_ent_geac_coa_nk]
                                                  ,[dim_entp_discipline_nk]
                                                  ,[dim_ent_office_nk]
                                                  ,[transaction_date]
                                                  ,[transaction_quantity] as current_tq
                                                  ,[created_date_time]
                                                  ,plan_type
                                                  ,revision
                                                  ,REPLACE(plan_sub_type, 'CUM ','')  as plan_sub_type --Replace fuction on plan sub type it will search for the cumulative remaining early and cumulative remaining late.
                                                  ,temp_hash_key 
												  FROM
(

select 
                           
          a.[dim_entp_function_nk]
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
         ,a.[dim_entp_unit_of_measure_nk]
         ,a.[dim_ent_employee_nk]
         ,a.[dim_ent_geac_coa_nk]
         ,a.[dim_entp_discipline_nk]
         ,a.[dim_ent_office_nk]
         ,a.[transaction_date]
         ,a.[transaction_quantity]
         ,a.[created_date_time]
         ,(select CASE 
                      WHEN CHARINDEX('_',dsc1.data_sub_class_name)= 0 THEN NULL
                      ELSE REVERSE(PARSENAME(REPLACE(REVERSE(dsc1.data_sub_class_name), '_', '.'), 1)) 
                      END AS [plan_type] FROM dim_ent_data_sub_class dsc1 WITH (NOLOCK) 
                      where dsc1.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_type
        ,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc2.data_sub_class_name), '_', '.'), 2)) AS [revision] FROM dim_ent_data_sub_class dsc2 WITH (NOLOCK) 
                       where dsc2.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) revision
	    ,(select COALESCE(gtc.View_Display_PlanSubType,dsc3.data_sub_class_name) AS [plan_sub_type] FROM dim_ent_data_sub_class dsc3 WITH (NOLOCK) LEFT JOIN [gpd].[NCSA_P6_Transaction_type_conversion] gtc ON gtc.description= COALESCE(REVERSE(PARSENAME(REPLACE(REVERSE(dsc3.data_sub_class_name), '_', '.'), 3)),dsc3.data_sub_class_name)
                          where dsc3.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_sub_type                                                                                                       
,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_function_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_project_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_phase_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_work_unit_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_work_area_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_cwp_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_schedule_resource_nk )), '~'),
                                                              isnull(trim(str(a.dim_entp_activity_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_iwp_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_pim_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_roc_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_source_nk)), '~'),
                                                              isnull(trim(str(a.dim_ent_employee_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_unit_of_measure_nk)), '~'),
                                                              isnull(trim(str(a.dim_ent_geac_coa_nk)), '~'),
                                                              isnull(trim(str(a.dim_entp_discipline_nk)), '~'),
                                                              isnull(trim(str(a.dim_ent_office_nk)), '~') )) 
															  temp_hash_key from [dbo].[fact_ops] a                                                        
                           where dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('P6-Excel-Legacy')) 
						   ) main
                           WHERE main.plan_sub_type in ('Cum Remaining Early','Cum Remaining Late') --filtering only the records we need for calculation
                          ) midcalc
						     LEFT OUTER JOIN dim_ent_data_sub_class dsc9
                           on  dsc9.data_sub_class_name = CONCAT([plan_type],'_',[revision],'_',[plan_sub_type]) and dsc9.active=1
                           left outer join dim_entp_activity_active_v act on act.dim_entp_activity_nk = midcalc.dim_entp_activity_nk
                           left outer join [dbo].[dim_ent_office_alternative_v] oa on oa.alternative_office_code = act.office
                                 where rn=1
				) Z1 							 
				LEFT OUTER JOIN [dbo].[dim_entp_project_week_closing_period] PWC ON Z1.[dim_entp_project_nk]=PWC.[dim_entp_project_nk] and PWC.active=1  --08/08/2022	Satish
				LEFT OUTER JOIN [DBO].[dim_ent_week_closing_period_active_v] CP ON PWC.dim_ent_week_closing_period_nk=CP.dim_ent_week_closing_period_nk;
GO


