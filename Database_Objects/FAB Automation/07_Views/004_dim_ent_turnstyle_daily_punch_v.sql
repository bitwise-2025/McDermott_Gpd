/****** Object:  View [dbo].[dim_ent_turnstyle_daily_punch_v]    Script Date: 11/27/2023 3:15:22 PM ******/
DROP VIEW [dbo].[dim_ent_turnstyle_daily_punch_v]
GO

/****** Object:  View [dbo].[dim_ent_turnstyle_daily_punch_v]    Script Date: 11/27/2023 3:15:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_turnstyle_daily_punch_v] AS select dp.[dim_ent_turnstyle_daily_punch_sk]
	,dp.[dim_ent_turnstyle_daily_punch_nk]
	,dp.[person_no_external] as [Person No External]
	,dp.[ts_date] as [Ts Date]
	,dp.[punch] as [Punch]
	,dp.[device_name] as [Device Name]
	,dp.[punch_type] as [Punch Type]
	,dp.[run_timestamp] as [Run Timestamp]
	,dee.[dim_ent_employee_sk] 
	,dee.[dim_ent_employee_nk]
from dim_ent_turnstyle_daily_punch dp
left outer join dim_ent_employee_v dee ON dee.sap_person_number = SUBSTRING(dp.person_no_external,3,len(dp.person_no_external));
GO


