ALTER VIEW [dbo].[dim_ent_fab_rota_history_v] AS select
	 z.dim_ent_fab_rota_nk
	,z.dim_ent_fab_rota_sk
	,ltrim(rtrim(z.[batch_number])) as [Batch Number]
	,ltrim(rtrim(z.[sap_number])) as [Sap Number]
	,ltrim(rtrim(z.[name])) as [Name]
	,ltrim(rtrim(z.[title])) as [Title]
	,ltrim(rtrim(z.[department])) as [Department]
	,ltrim(rtrim(z.[cost_center])) as [Cost Center]
	,ltrim(rtrim(z.[hook_up_project_others])) as [Hook Up Project Others]
	,ltrim(rtrim(z.[local_actual])) as [Local Actual]
	,ltrim(rtrim(z.[location])) as [Location]
	,z.[hire_date] as [Hire Date]
	,ltrim(rtrim(z.[status])) as [Status]
	,cast(case when z.action_date like '%[0-9]%' then z.action_date else null end as datetime) as [Action Date]
	,ltrim(rtrim(z.[fab_rota_type])) as [Rota Type]
	,ltrim(rtrim(z.[type])) as [Type]
	,a.dim_ent_time_office_employee_master_nk  dim_ent_time_office_employee_master_nk
	,(select max(b.dim_ent_employee_nk) dim_ent_employee_nk from [dbo].[dim_ent_employee] b where b.sap_global_number = z.[sap_number] and b.active=1) dim_ent_employee_nk
	,(select max(dim_ent_clinic_daily_visit_nk) dim_ent_clinic_daily_visit_nk from [dbo].[dim_ent_clinic_daily_visit] c where c.[Employee_Id] = z.batch_number and c.active=1 and z.action_date between [Leave_Start_Date]  and [Leave_End_Date]) dim_ent_clinic_daily_visit_nk
from dim_ent_fab_rota z
left outer join [dbo].[dim_ent_time_office_employee_master] a on cast(a.Empno as nvarchar(50)) = z.[sap_number] and a.active=1
where z.active = '1' 
group by 
	z.dim_ent_fab_rota_nk
	,z.dim_ent_fab_rota_sk
	,z.[batch_number]
	,z.[sap_number]
	,z.[name]
	,z.[title]
	,z.[department]
	,z.[cost_center]
	,z.[hook_up_project_others]
	,z.[local_actual]
	,z.[location]
	,z.[hire_date]
	,z.[status]
	,z.action_date
	,z.[fab_rota_type]
	,z.[type]
	,a.dim_ent_time_office_employee_master_nk;
GO


