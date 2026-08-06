/****** Object:  View [dbo].[dim_entp_project_progress_cutt_off_date_distinct_v]    Script Date: 3/28/2023 1:47:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_system_active_v]
AS select * from dim_ent_system where active=1
GO
CREATE VIEW [dbo].[dim_ent_subsystem_active_v]
AS select * from dim_ent_subsystem where active=1
GO
CREATE VIEW [dbo].[dim_ent_task_active_v]
AS select * from dim_ent_task where active=1
GO
CREATE VIEW [dbo].[dim_ent_campaign_active_v]
AS select * from dim_ent_campaign where active=1
GO
CREATE VIEW [dbo].[dim_ent_workpack_active_v]
AS select * from dim_ent_workpack where active=1
GO
CREATE VIEW [dbo].[dim_ent_miscellaneous_progress_active_v]
AS select * from dim_ent_miscellaneous_progress where active=1
GO
CREATE VIEW [dbo].[dim_ent_miscellaneous_booking_active_v]
AS select * from dim_ent_miscellaneous_booking where active=1
GO



