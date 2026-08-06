/****** Object:  View [dbo].[dim_ent_fab_rota_v]    Script Date: 11/27/2023 3:07:21 PM ******/
DROP VIEW [dbo].[dim_ent_fab_rota_v]
GO

/****** Object:  View [dbo].[dim_ent_fab_rota_v]    Script Date: 11/27/2023 3:07:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_fab_rota_v]
AS select dim_ent_fab_rota_nk,[SAP Number],[Badge Number],[Employee Name],Title,Department,[Cost Center],[Hookup Project/Others],[Local Actual],[Hire Date],
Status,[Action Date],[Rota Type],[Type]
from
	(select (case when isnull(dim_ent_fab_rota_nk1,0) > isnull(dim_ent_fab_rota_nk2,0) then isnull(dim_ent_fab_rota_nk1,0) else isnull(dim_ent_fab_rota_nk2,0) end) dim_ent_fab_rota_nk,
	(case when sap_number1 <> sap_number2 and isnull(sap_number2,'') <> '' then sap_number2 else sap_number1 end) 
	[SAP Number],
	batch_number  [Badge Number],
	(case when name1 <> name2 and isnull(name2,'') <> '' then name2 else name1 end) [Employee Name],
	(case when title1 <> title2 and isnull(title2,'') <> '' then title2 else title1 end) [Title],
	(case when department1 <> department2 and isnull(department2,'') <> '' then department2 else department1 end) [Department],
	(case when cost_center1 <> cost_center2 and isnull(cost_center2,'') <> '' then cost_center2 else cost_center1 end) [Cost Center],
	(case when hook_up_project_others1 <> hook_up_project_others2 and isnull(hook_up_project_others2,'') <> '' then hook_up_project_others2 else hook_up_project_others1 end) [Hookup Project/Others],
	(case when local_actual1 <> local_actual2 and isnull(local_actual2,'') <> '' then local_actual2 else local_actual1 end) [Local Actual],
	(case when hire_date1 > hire_date2 then hire_date1 else hire_date2 end) [Hire Date],
	(case when status1 <> status2 and isnull(status2,'') <> '' then status2 else status1 end) [Status],
	(case when action_date1 > action_date2 then action_date1 else action_date2 end) [Action Date],	
	(case when fab_rota_type1 <> fab_rota_type2 and isnull(fab_rota_type2,'') <> '' then fab_rota_type2 else fab_rota_type1 end) [Rota Type],
	(case when type1 <> type2 and isnull(type2,'') <> '' then type2 else type1 end) [Type]
from
	(select max(rota.dim_ent_fab_rota_nk) dim_ent_fab_rota_nk1,rota.batch_number,max(rota.sap_number) sap_number1,max(rota.name) name1,max(rota.title) title1,max(rota.department) department1,
	max(rota.type) type1,
	max(rota.cost_center) cost_center1,max(rota.hook_up_project_others) hook_up_project_others1,max(rota.local_actual) local_actual1,max(rota.location) location1,max(rota.hire_date) hire_date1,
	max(rota.status) status1,max(case when rota.action_date like '%[0-9]%' then rota.action_date else null end) action_date1,
	max(rota.fab_rota_type) fab_rota_type1,
	max(rota_curr.dim_ent_fab_rota_nk) dim_ent_fab_rota_nk2,max(rota_curr.sap_number) sap_number2,max(rota_curr.name) name2,max(rota_curr.title) title2,max(rota_curr.department) department2,
	max(rota_curr.type) type2,
	max(rota_curr.cost_center) cost_center2,max(rota_curr.hook_up_project_others) hook_up_project_others2,max(rota_curr.local_actual) local_actual2,max(rota_curr.location) location2,max(rota_curr.hire_date) hire_date2,
	max(rota_curr.status) status2,max(case when rota_curr.action_date like '%[0-9]%' then rota_curr.action_date else null end) action_date2,
	max(rota_curr.fab_rota_type) fab_rota_type2
from [dbo].[dim_ent_fab_rota] rota 
	left outer join (select * from [dbo].[dim_ent_fab_rota] a where action_date = (select max(action_date) from [dbo].[dim_ent_fab_rota] b)  and a.active = '1'  and isnull(a.action_date,'') <> '') rota_curr
	on rota_curr.batch_number = rota.batch_number
	where rota.active = '1' and isnull(rota.action_date,'') <> ''
group by rota.batch_number) r) p  where isnull([Action Date],'') <> '' and [Action Date] like '%[0-9]%';
GO


