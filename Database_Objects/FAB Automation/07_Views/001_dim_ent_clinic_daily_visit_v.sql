/****** Object:  View [dbo].[dim_ent_clinic_daily_visit_v]    Script Date: 11/27/2023 3:04:30 PM ******/
DROP VIEW [dbo].[dim_ent_clinic_daily_visit_v]
GO

/****** Object:  View [dbo].[dim_ent_clinic_daily_visit_v]    Script Date: 11/27/2023 3:04:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_clinic_daily_visit_v]
AS select
	[dim_ent_clinic_daily_visit_sk]
	,[dim_ent_clinic_daily_visit_nk]
	,[visit_id] as [Visit Id ]
	,[employee_id] as [Employee Id]
	,[start_date] as [Start Date]
	,[end_date] as [End Date]
	,[hash_code] as [Hash Code]
	,[late_arrival_flag] as [Late Arrival Flag]
	,[active] as [Active]
	,[created_date_time] as [Created Date Time]
	,[modified_date_time] as [Modified Date Time]
	,[location] as [Location]
	,[leave_start_date] as [Leave Start Date]
	,[leave_end_date] as [Leave End Date]
	,[visit_details] as [Visit Details]
	,[prepared_by] as [Prepared By]
	,[prepared_on] as [Prepared On]
	,[sickleave_appr_by] as [Sickleave Appr By]
	,[extracted] as [Extracted]
	,[extract_asof] as [Extract Asof]
	,[extracted_by] as [Extracted By]
	,[extracted_on] as [Extracted On]
	,[loc_id] as [Loc Id]
	,[sl_comm_by] as [Sl Comm By]
	,[sickleave_type] as [Sickleave Type]
	,[clinic] as [Clinic]
	,[first_name] as [First Name]
	,[middle_name] as [Middle Name]
	,[last_name] as [Last Name]
	,[visit_date] as [Visit Date]
	,[visit_time] as [Visit Time]
	,[shift] as [Shift]
	,[visit_type] as [Visit Type]
	,[physician_id] as [Physician Id]
	,[parent_visit_id] as [Parent Visit Id]
	,[visit_classification] as [Visit Classification]
	,[type_of_illness] as [Type Of Illness]
	,[department] as [Department]
	,[sex] as [Sex]
	,[visit_status] as [Visit Status]
	,[treatmentdet] as [Treatmentdet]
	,[diagonosis] as [Diagonosis]
	,[hospital_name] as [Hospital Name]

from dim_ent_clinic_daily_visit where active = 1;
GO


