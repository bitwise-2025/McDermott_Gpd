SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[fact_fss_Gross_DOE_Changes_updates_v] AS SELECT 
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
	  ,[month] as [monthno]
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) AS [Month]
      ,sum([Amount]) as [Amount]
      ,V.[created_date_time]
	--,c.data_sub_class_name as datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn
  FROM [dbo].fact_fss_businessline_updates_v V JOIN
  dim_ent_data_sub_class C ON V.dim_ent_data_sub_class_nk = C.dim_ent_data_sub_class_nk
  WHERE V.dataSource= 'Gross DOE Changes' 

  group by  [dim_entp_fss_business_line_nk]
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
	  ,[month] 
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) 
      ,V.[created_date_time]
	  ,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn

GO



