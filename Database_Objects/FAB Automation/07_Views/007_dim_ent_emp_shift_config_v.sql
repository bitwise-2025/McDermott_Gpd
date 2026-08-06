/****** Object:  View [dbo].[dim_ent_emp_shift_config_v]    Script Date: 11/27/2023 3:18:14 PM ******/
DROP VIEW [dbo].[dim_ent_emp_shift_config_v]
GO

/****** Object:  View [dbo].[dim_ent_emp_shift_config_v]    Script Date: 11/27/2023 3:18:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_emp_shift_config_v]
AS SELECT 
[dim_ent_emp_shift_config_sk],
[dim_ent_emp_shift_config_nk],
[start_date] AS [Start Date],
[end_date] AS [End Date],
[hash_code] AS [Hash Code],
[active] AS [Active],
[created_date_time] AS [Created Date Time],
[modified_date_time] AS [Modified Date Time],
[late_arrival_flag] AS [Late Arrival Flag],
[shift_start_time] AS [Shift Start Time],
[shift_end_time] AS [Shift End Time],
[shift_type] AS [Shft Type],
[location] AS [Loctaion],
[load_date] AS [Load Date]
from [dbo].[dim_ent_emp_shift_config] where active = 1;
GO


