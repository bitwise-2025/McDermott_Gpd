ALTER VIEW [dbo].[dim_entp_activity_resource_active_v]
AS select *
from dim_entp_activity_resource
where active = 1;
GO