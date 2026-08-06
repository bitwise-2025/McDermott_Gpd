/****** Script for SelectTopNRows command from SSMS  ******/
drop view dim_ent_week_closing_period_active_v
go

create view dim_ent_week_closing_period_active_v as
SELECT [dim_ent_week_closing_period_sk]
      ,[dim_ent_week_closing_period_nk]
      ,[week_closing_period]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
  FROM [dbo].[dim_ent_week_closing_period]
  where active = 1
go
