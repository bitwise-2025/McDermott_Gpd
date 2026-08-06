DROP VIEW [dbo].[dim_ent_daily_punch_history_v]
GO

CREATE VIEW [dbo].[dim_ent_daily_punch_history_v]
AS select dim_ent_fab_rota_sk,ts_date,person_no_external,punch,punch_type,run_timestamp,device_name,f.created_date_time 
from [dbo].[dim_ent_turnstyle_daily_punch] f
lEFT oUTER jOIN dbo.dim_ent_fab_rota fro ON replicate('0',8 - len(ltrim(rtrim(fro.sap_number)))) + ltrim(rtrim(fro.sap_number)) = f.person_no_external
   and f.ts_date = fro.action_date;
GO


