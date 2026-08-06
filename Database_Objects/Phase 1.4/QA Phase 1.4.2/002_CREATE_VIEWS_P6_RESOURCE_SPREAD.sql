/****** Object:  View [dbo].[dim_entp_activity_resource_active_v]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_activity_resource_active_v]
AS select *
from dim_entp_activity_resource
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_planning_resource_active_v]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_planning_resource_active_v]
AS select *
from dim_entp_planning_resource a
where active = 1;
GO
