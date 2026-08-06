/****** Script for SelectTopNRows command from SSMS  ******/
drop view dim_entp_project_week_closing_period_active_v
go

create view  dim_entp_project_week_closing_period_active_v as

SELECT [dim_entp_project_week_closing_period_sk]
      ,[dim_entp_project_week_closing_period_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[dim_ent_week_closing_period_nk]
      ,[dim_entp_project_nk]
  FROM [dbo].[dim_entp_project_week_closing_period]
  where active = 1
go
