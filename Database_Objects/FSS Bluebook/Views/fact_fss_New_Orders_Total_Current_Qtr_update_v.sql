/****** Object:  View [dbo].[fact_fss_Revenue_curr_qtr_update_hyp_update_v]    Script Date: 10/23/2023 1:47:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[fact_fss_New_Orders_Total_Current_Qtr_update_v] AS SELECT 
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
      ,[TransactionDate]
      ,[Quarter]
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) AS [Month]
      ,[Amount] AS [Total Current Qtr]
      ,V.[created_date_time]
	,c.data_sub_class_name as datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn
  FROM [dbo].fact_fss_businessline_updates_v V JOIN
  dim_ent_data_sub_class C ON V.dim_ent_data_sub_class_nk = C.dim_ent_data_sub_class_nk
  WHERE V.dataSource= 'New Orders' and C.data_Sub_Class_name ='Total  Current Qtr';
GO





