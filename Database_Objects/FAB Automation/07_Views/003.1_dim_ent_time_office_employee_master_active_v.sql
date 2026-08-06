/****** Object:  View [dbo].[dim_ent_time_office_employee_master_active_v]    Script Date: 11/27/2023 3:13:49 PM ******/
DROP VIEW [dbo].[dim_ent_time_office_employee_master_active_v]
GO

/****** Object:  View [dbo].[dim_ent_time_office_employee_master_active_v]    Script Date: 11/27/2023 3:13:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_time_office_employee_master_active_v]
AS select

	[dim_ent_time_office_employee_master_sk]
	,[dim_ent_time_office_employee_master_nk]
	,[empno] as [Empno]
	,[start_date] as [Start Date]
	,[end_date] as [End Date]
	,[hash_code] as [Hash Code]
	,[late_arrival_flag] as [Late Arrival Flag]
	,[active] as [Active]
	,[created_date_time] as [Created Date Time]
	,[modified_date_time] as [Modified Date Time]
	,[leg_id] as [Leg Id]
	,[employee_name] as [Employee Name]
	,[cost_center] as [Cost Center]
	,[cost_center_des] as [Cost Center Des]
	,[foreman_sap_id] as [Foreman Sap Id]
	,[foreman_name] as [Foreman Name]
	,[supervisor_sap_id] as [Supervisor Sap Id]
	,[supervisor_name] as [Supervisor Name]
	,[superintendent_sap_id] as [Superintendent Sap Id]
	,[superintendent_name] as [Superintendent Name]
	,[cost_center_manager] as [Cost Center Manager]
	,[job_discipline] as [Job Discipline]
	,[department] as [Department]
	,[title] as [Title]
	,[job_family] as [Job Family]
	,[remark] as [Remark]
	,[job_discipline_name] as [Job Discipline Name]
	,[standard_craft] as [Standard Craft]
	,[remarks2] as [Remarks2]
	,[card_number] as [Card Number]
	,[supervisor_mail_id] as [Supervisor Mail Id]

from
dim_ent_time_office_employee_master
where active = 1;
GO


