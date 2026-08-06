/****** Object:  View [dbo].[dim_entp_activity_active_v]    Script Date: 10/20/2021 5:11:47 AM ******/
IF	OBJECT_ID('[dbo].[dim_entp_activity_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_activity_active_v]
GO

/****** Object:  View [dbo].[dim_entp_activity_active_v]    Script Date: 10/20/2021 5:11:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_activity_active_v]
AS select
dim_entp_activity_nk,
activity_code,
activity_description,
schedule_unit,
schedule_resource,
original_duration,
remaining_duration,
actual_start,
actual_finish,
percent_complete_type,
executed_by_type,
prime,
sub_prime,
schedule_work_area,
executed_by,
early_start_date,
early_finish_date,
is_on_critical_path,
total_float,
planned_start,
planned_finish,
activity_status,
(select [prime_description] from [dbo].[dim_ent_prime] a where a.active = 1 and a.[prime_code] = dim_entp_activity.prime and a.[dim_entp_project_nk] = dim_entp_activity.dim_entp_project_nk)
as [Prime Description] ,
(select [sub_prime_description] from [dbo].[dim_ent_sub_prime] a where a.active = 1 and a.[sub_prime_code] = dim_entp_activity.sub_prime and a.[dim_entp_project_nk] = dim_entp_activity.dim_entp_project_nk)
as [Sub Prime Description],
dim_entp_work_area_nk,
dim_entp_cwp_nk,
dim_entp_schedule_resource_nk
,dim_entp_project_nk
,project_number
from  dim_entp_activity
where active = 1;
GO


