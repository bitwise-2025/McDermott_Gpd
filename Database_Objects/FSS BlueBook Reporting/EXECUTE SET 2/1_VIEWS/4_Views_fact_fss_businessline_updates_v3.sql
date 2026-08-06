/****** Object:  View [dbo].[fact_fss_businessline_updates_v3]    Script Date: 9/5/2023 5:11:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_fss_businessline_updates_v3] AS select	
	  dim_ent_source_nk, 
  dim_ent_sub_source_nk, 
  dim_entp_fss_project_nk,
  dim_ent_data_class_nk,
  dim_ent_data_sub_Class_nk,
  dim_entp_fss_business_line_nk,
  Datasource,
  NewCO,
  NonJV,
  BLPW,
  Productline,
  Customer,
  SeqNo,
  Subtitle,
  Calculation,
  Category,
  [Sub Order],
  Commentary,
  Commentary2,
  Commentary3,
  Commentary4,
  [Completion Date],
  TransactionDate,
  Facility,
  [Quarter],
  [Month],
   [As booked $GP],
  Amount,
  Created_date_time,
	temp_hash_key,
	fact_fss_businessline_update_v1_dr,
	row_number() over(partition by temp_hash_key, dim_ent_source_nk, dim_ent_sub_source_nk,dim_ent_data_class_nk,dim_ent_data_sub_Class_nk,
	Datasource,NewCO,NonJV,BLPW,Productline,Customer,SeqNo,Subtitle,Calculation,Category,Facility,Commentary,[month],TransactionDate order by Created_date_time desc) as fact_fss_businessline_update_v2_rn

from fact_fss_businessline_updates_v2;

GO

