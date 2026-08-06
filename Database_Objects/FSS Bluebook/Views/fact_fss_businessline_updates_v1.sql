/****** Object:  View [dbo].[fact_fss_businessline_updates_v1]    Script Date: 9/5/2023 4:50:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_fss_businessline_updates_v1] AS select 
  dim_ent_source_nk, 
  dim_ent_sub_source_nk, 
  dim_entp_fss_project_nk,
  dim_ent_data_class_nk,
  dim_ent_data_sub_Class_nk,
  dim_entp_fss_business_line_nk,
  [Data Source] AS Datasource,
  NewCO,
  NonJV,
  BLPW,
  Productline,
  Customer,
  [Seq No] As SeqNo,
  [Sub Title] As Subtitle,
  Calculation,
  Category,
  Facility,
  Commentary,
  Commentary2,
  TransactionDate,
  [Quarter],
  [Month],
  Amount,
  Created_date_time,
  HASHBYTES(
    'MD5', 
    concat(
      isnull(
        trim(
          str(dim_ent_source_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_ent_sub_source_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_entp_fss_project_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_ent_data_class_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(
            dim_ent_data_sub_class_nk
          )
        ), 
        '~'
      ),
	   isnull(
        trim(
          str(dim_entp_fss_business_line_nk)
        ), 
        '~'
      )
    )
  ) temp_hash_key 
from 
  [dbo].[fact_fss_businessline_updates];
GO



