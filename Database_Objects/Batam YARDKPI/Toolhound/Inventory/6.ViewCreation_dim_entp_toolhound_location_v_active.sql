/****** Object:  View [dbo].[dim_entp_toolhound_location_v]    Script Date: 10/12/2023 1:57:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_toolhound_location_v]
AS SELECT [dim_entp_toolhound_location_sk]
      ,[dim_entp_toolhound_location_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[LocationName]
  FROM [dbo].[dim_entp_toolhound_location]
  WHERE active =1;
GO


