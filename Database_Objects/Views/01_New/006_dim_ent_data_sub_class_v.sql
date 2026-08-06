/****** Object:  View [dbo].[dim_ent_data_sub_class_v]    Script Date: 4/27/2021 1:10:17 PM ******/
DROP VIEW [dbo].[dim_ent_data_sub_class_v]
GO

/****** Object:  View [dbo].[dim_ent_data_sub_class_v]    Script Date: 4/27/2021 1:10:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_data_sub_class_v]
AS select 
[dim_ent_data_sub_class_sk],
[dim_ent_data_sub_class_nk],
[dim_ent_data_class_nk],
[data_class_name],
[data_sub_class_name],
[start_date],
[end_date],
[created_date_time],
[gpd_level],
[active]
from dim_ent_data_sub_class;
GO


