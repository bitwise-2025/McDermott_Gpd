/****** Object:  View [dbo].[dim_entp_toolhound_category_v]    Script Date: 10/12/2023 1:29:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_toolhound_category_v]
AS SELECT [dim_entp_toolhound_category_sk]
      ,[dim_entp_toolhound_category_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[category]
  FROM [dbo].[dim_entp_toolhound_category]
  WHERE active =1;
GO


