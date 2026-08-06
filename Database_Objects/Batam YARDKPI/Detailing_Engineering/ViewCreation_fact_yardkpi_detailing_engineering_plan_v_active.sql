
--DROP VIEW [dbo].[fact_yardkpi_detailing_engineering_plan_v]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_yardkpi_detailing_engineering_plan_v]
AS select [fact_yardkpi_detailing_engineering_plan_sk]
      ,[dim_entp_yardkpi_detailing_engineering_nk]
      ,[cutoff_date]
      ,[date]
      ,[plans]
      ,[created_date_time]
from [dbo].[fact_yardkpi_detailing_engineering_plan];
GO
