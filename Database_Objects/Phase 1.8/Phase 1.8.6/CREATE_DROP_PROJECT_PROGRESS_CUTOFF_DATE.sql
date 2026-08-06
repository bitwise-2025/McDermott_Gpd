/****** Object:  View [dbo].[dim_entp_project_progress_cutt_off_date_v]    Script Date: 11/23/2022 12:25:13 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_project_progress_cutt_off_date_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_project_progress_cutt_off_date_v]
GO

/****** Object:  View [dbo].[dim_entp_project_progress_cutt_off_date_v]    Script Date: 11/23/2022 12:25:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_project_progress_cutt_off_date_v]
AS select b.dim_entp_project_nk,c.date_attribute,(case when a.week_closing_period = '1-Sun-Sat' then 
	  c.week_1_start_sunday else case when a.week_closing_period = '2-Mon-Sun' then 
      c.week_2_start_monday else case when a.week_closing_period = '3-Tue-Mon' then 
      c.week_3_start_tuesday else case when a.week_closing_period = '4-Wed-Tue' then 
      c.week_4_start_wednesday else case when a.week_closing_period = '5-Thu-Wed' then 
      c.week_5_start_thursday else case when a.week_closing_period = '6-Fri-Thu' then 
      c.week_6_start_friday  else case when a.week_closing_period = '7-Sat-Fri' then 
      c.week_7_start_saturday  end end end end end end end) project_cutt_off_start_date,
	  (case when a.week_closing_period = '1-Sun-Sat' then 
	  c.week_1_ending_saturday else case when a.week_closing_period = '2-Mon-Sun' then 
      c.week_2_ending_sunday else case when a.week_closing_period = '3-Tue-Mon' then 
      c.week_3_ending_monday else case when a.week_closing_period = '4-Wed-Tue' then 
      c.week_4_ending_tuesday else case when a.week_closing_period = '5-Thu-Wed' then 
      c.week_5_ending_wednesday else case when a.week_closing_period = '6-Fri-Thu' then 
      c.week_6_ending_thursday else case when a.week_closing_period = '7-Sat-Fri' then 
      c.week_7_ending_friday end end end end end end end) project_cutt_off_end_date
from [dbo].[dim_ent_week_closing_period_active_v] a ,
     [dbo].[dim_entp_project_week_closing_period_active_v] b ,
	 [dbo].[dim_ent_date] c,
	 (select distinct dim_entp_project_nk,transaction_date from 
		(
		select distinct dim_entp_project_nk,transaction_date from [dbo].[fact_pmr_MCPM_Onshore_v]
		union all
		select distinct dim_entp_project_nk,transaction_date from [dbo].[fact_pmr_MCPM_Onshore_v]
		union all
		select distinct dim_entp_project_nk,transaction_date from [dbo].[fact_pmr_p6_v]
		union all
		select distinct dim_entp_project_nk,[Cut off Date] from [gpd].[procurement_status_report_planning_JSON_active_v]
		union all
		select distinct dim_entp_project_nk,transaction_date from fact_pmr_MCPM_offshore_progress_v
		union all
		select distinct dim_entp_project_nk,transaction_date from fact_pmr_MCPM_onshore_progress_v
		union all
		select distinct dim_entp_project_nk,transaction_date from fact_ops_MCPM_legacy_offshore_progress_v
		) x) z
	 where a.dim_ent_week_closing_period_nk = b.dim_ent_week_closing_period_nk --[10/14/2022: Satish Chaging the join to correct one]b.dim_entp_project_week_closing_period_nk
	 and b.dim_entp_project_nk = z.dim_entp_project_nk and c.standard_date = z.transaction_date;
GO


