alter view [dbo].[dim_ent_week_closing_period_active_v]
as
select *,
case when week_closing_period = '1-Sun-Sat' then 6 else case when week_closing_period = '2-Mon-Sun' then 0  else case when week_closing_period = '3-Tue-Mon' then 1
 else case when week_closing_period = '4-Wed-Tue' then 2 else case when week_closing_period = '5-Thu-Wed' then 3  else case when week_closing_period = '6-Fri-Thu' then 4
  else case when week_closing_period = '7-Sat-Fri' then 5 end end end end end end end days_diff
 from [dbo].[dim_ent_week_closing_period]