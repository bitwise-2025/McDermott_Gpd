/****** Object:  View [dbo].[dim_entp_activity_resource_active_v]    Script Date: 8/8/2022 6:19:26 AM ******/
IF	OBJECT_ID('[dbo].[dim_entp_activity_resource_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_activity_resource_active_v]
GO

/****** Object:  View [dbo].[dim_entp_activity_resource_active_v]    Script Date: 8/8/2022 6:19:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_activity_resource_active_v]
AS select *
from dim_entp_activity_resource
where active = 1;
GO


