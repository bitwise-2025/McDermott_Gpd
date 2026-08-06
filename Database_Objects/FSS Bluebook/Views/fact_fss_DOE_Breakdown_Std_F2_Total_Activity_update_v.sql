SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
create VIEW  [dbo].[fact_fss_DOE_Breakdown_Std_F2_Total_Activity_update_v] AS SELECT 
       [dim_entp_fss_business_line_nk]
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
	  ,16 as [MonthNo]
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) AS [Month]
      ,[Amount] AS [Std F2 Total Activity]
      ,V.[created_date_time]
	,c.data_sub_class_name as datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn
  FROM [dbo].fact_fss_businessline_updates_v V JOIN
  dim_ent_data_sub_class C ON V.dim_ent_data_sub_class_nk = C.dim_ent_data_sub_class_nk
  WHERE V.dataSource= 'DOE Breakdown' and C.data_Sub_Class_name ='Std F2 Total Activity';
GO