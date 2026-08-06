/****** Object:  View [dbo].[dim_ent_data_sub_class_active_v]    Script Date: 4/27/2021 1:05:09 PM ******/
DROP VIEW [dbo].[dim_ent_data_sub_class_active_v]
GO

/****** Object:  View [dbo].[dim_ent_data_sub_class_active_v]    Script Date: 4/27/2021 1:05:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_data_sub_class_active_v]
AS select [dim_ent_data_sub_class_nk],
[data_class_name],
[data_sub_class_name],
[gpd_level],
[dim_ent_data_class_nk]
from dim_ent_data_sub_class
where active = 1;
GO


