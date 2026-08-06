/****** Object:  NCSA Views    Script Date: 1/5/2022 11:37:35 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_phase_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_phase_active_v]

GO

/****** Object:  View [dbo].[dim_entp_phase_active_v]    Script Date: 1/5/2022 11:37:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_phase_active_v]
AS select 	dim_entp_phase_nk,
	phase_code,
	phase_name,
	project_number, --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
	dim_entp_project_nk --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
from dim_entp_phase
where active = 1;
GO

/****** Object:  View [dbo].[dim_entp_roc_active_v]    Script Date: 1/5/2022 11:39:19 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_roc_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_roc_active_v]
GO

/****** Object:  View [dbo].[dim_entp_roc_active_v]    Script Date: 1/5/2022 11:39:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_roc_active_v]
AS select 
dim_entp_roc_nk,
roc_code,
roc_name,
sub_prime,
rocs_step,
rocs_percentage,
driving,
quantity,
quantity_description,
rocs_name,
project_number, --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
dim_entp_project_nk --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
from dim_entp_roc
where active = 1;
GO

/****** Object:  View [dbo].[dim_entp_schedule_resource_active_v]    Script Date: 1/5/2022 11:40:53 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_schedule_resource_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_schedule_resource_active_v]
GO

/****** Object:  View [dbo].[dim_entp_schedule_resource_active_v]    Script Date: 1/5/2022 11:40:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_schedule_resource_active_v]
AS select
a.dim_entp_schedule_resource_nk,
a.schedule_resource_code,
a.schedule_resource_name,
a.max_wp_threshold,
a.spm_discipline,
a.source_created_date,
a.source_is_active,
a.first_import_id,			
a.pf_rolling_periods,
a.source_modified_by_id,
a.default_crew_size,
a.source_created_by_id,
a.last_import_id,
a.pf_planned,
a.source_modified_date,
a.material_category_id,
a.pf_actual,
a.min_wp_threshold,
'' prime_code,
'' prime_description,
'' discipline_code,
'' discipline_name,
project_number,--1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
dim_entp_project_nk --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects


from dim_entp_schedule_resource a
where active = 1;
GO

/****** Object:  View [dbo].[dim_entp_iwp_active_v]    Script Date: 1/5/2022 11:42:43 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_iwp_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_iwp_active_v]
GO

/****** Object:  View [dbo].[dim_entp_iwp_active_v]    Script Date: 1/5/2022 11:42:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_iwp_active_v]
AS select 
dim_entp_iwp_nk,
iwp_code,
iwp_name,
cost_code,
foreman_id,
notes,
priority,
period_priority,
duration_in_days,
cwp_start_date,
cwp_end_date,
prelim_duration_in_hours,
duration_in_workdays,
material_percentage_allocated,
restart_date,
remaining_duration,
restriction_id,
restriction_percentage,
restriction_notes,
text1,
text2,
text3,
text4,
text5,
construction_manager_id,
supervisor_id,
general_foreman_id,
field_engineer_id,
coordinator_id,
completed_by,
completed_date,
iwp_status_id,
workpack_status,
add_ifc,
IWP_Status,
Progress_Status,
CASE WHEN Progress_Status<> 'Fully Progressed' 
     THEN CASE WHEN DATEDIFF( wk, cwp_start_date , GETDATE() ) <= 3 THEN '3 Weeks or Less'
                 WHEN ( DATEDIFF( wk, cwp_start_date , GETDATE() ) > 3 AND DATEDIFF( wk, cwp_start_date , GETDATE() ) <= 6  ) THEN '4 -6 Weeks'
                 WHEN DATEDIFF( wk, cwp_start_date , GETDATE() ) > 6 THEN 'More than 6 Weeks'
                 END
     END as [IWP Duration Range],
Supervisor_Name,
Construction_Manager_Name,
Foreman_Name,
Field_Engineer_Name,
Coordinator_Name,
dim_entp_schedule_resource_nk,
dim_entp_activity_nk,
project_number,--1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
dim_entp_project_nk --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects

from dim_entp_iwp
where active = 1;
GO

/****** Object:  View [dbo].[dim_entp_cwp_active_v]    Script Date: 1/5/2022 11:43:52 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_cwp_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_cwp_active_v]
GO

/****** Object:  View [dbo].[dim_entp_cwp_active_v]    Script Date: 1/5/2022 11:43:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_cwp_active_v]
AS select 
dim_entp_cwp_nk,
cwp_code,
cwp_description,
cwp_status,
project_number,--1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
dim_entp_project_nk --1/6/2022 - @AK - added these fields for multiproject view in NCSA Projects
from dim_entp_cwp
where active = 1;
GO








