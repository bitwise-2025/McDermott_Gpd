/****** Object:  View [dbo].[fact_fss_Functional_Support_Cost_curr_qtr_update_adj_update_v]    Script Date: 10/20/2023 1:46:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_fss_New_Orders_MB_Amount_update_v] AS SELECT 
       [dim_entp_fss_business_line_nk]
       ,dim_entp_fss_project_nk
      ,[DataSource]
      ,[NewCO]
      ,[NonJV]
      ,[BLPW]
      ,[Productline]
      ,[Customer]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
	  	  ,[As booked $GP]

      ,[TransactionDate]
      ,[Quarter]
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) AS [Month]
      ,[Amount] AS [MB Amount]
      ,V.[created_date_time]
	,c.data_sub_class_name as datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn
  FROM [dbo].fact_fss_businessline_updates_v V JOIN
  dim_ent_data_sub_class C ON V.dim_ent_data_sub_class_nk = C.dim_ent_data_sub_class_nk
  WHERE V.dataSource= 'New Orders' and C.data_Sub_Class_name ='MB Amount';

GO


