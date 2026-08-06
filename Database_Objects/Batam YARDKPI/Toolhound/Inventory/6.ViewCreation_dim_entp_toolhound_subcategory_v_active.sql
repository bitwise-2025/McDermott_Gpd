/****** Object:  View [dbo].[dim_entp_toolhound_subcategory_v]    Script Date: 10/12/2023 1:58:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_toolhound_subcategory_v]
AS SELECT [dim_entp_toolhound_subcategory_sk]
      ,[dim_entp_toolhound_subcategory_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[subcategory]
  FROM [dbo].[dim_entp_toolhound_subcategory]
  WHERE active =1;
GO


