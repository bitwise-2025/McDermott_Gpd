
--DROP VIEW [dbo].[fact_yardkpi_detailing_engineering_data_v]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_yardkpi_detailing_engineering_data_v]
AS select [fact_yardkpi_detailing_engineering_data_sk]
      ,[dim_entp_yardkpi_detailing_engineering_nk]
      ,[cutoff_date]
      ,[ROS_IFC_Drawing_receive_by_Detailing_team]
      ,[Complete_issuance_Shop_Drawing_by_Detailing_team]
      ,[qty]
      ,[detailing_start]
      ,[detailing_finish]
      ,[manhour]
      ,[progress]
      ,[plan_progress]
      ,[earned]
      ,[plan]
      ,[variance]
      ,[total]
      ,[cek]
      ,[created_date_time]
from [dbo].[fact_yardkpi_detailing_engineering_data] ;
GO

