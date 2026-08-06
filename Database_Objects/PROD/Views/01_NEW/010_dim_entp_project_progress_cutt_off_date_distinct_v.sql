DROP VIEW [dbo].[dim_entp_project_progress_cutt_off_date_distinct_v]
GO
CREATE VIEW [dbo].[dim_entp_project_progress_cutt_off_date_distinct_v]
AS select distinct dim_entp_project_nk,project_cutt_off_start_date,project_cutt_off_end_date,c.month_end_date as MCPM_Forecast_month_end_date,
CASE 
WHEN O.project_cutt_off_end_date = (select MAX(project_cutt_off_end_date) from dim_entp_project_progress_cutt_off_date_v I WHERE I.dim_entp_project_nk=O.dim_entp_project_nk 
and YEAR(I.project_cutt_off_end_date)= YEAR(O.project_cutt_off_end_date)
and MONTH(I.project_cutt_off_end_date)= MONTH(O.project_cutt_off_end_date)) THEN 1
ElSE 0 
END as planing_month_end_flag
from dim_entp_project_progress_cutt_off_date_v O
JOIN [dbo].[dim_ent_date] c on O.project_cutt_off_end_date=c.standard_date;
GO