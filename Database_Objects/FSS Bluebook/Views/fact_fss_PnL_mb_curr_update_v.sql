/****** Object:  View [dbo].[fact_fss_PnL_curr_update_v]    Script Date: 10/20/2023 1:44:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_fss_PnL_mb_curr_update_v] AS SELECT 
       [dim_entp_fss_business_line_nk]
      ,[DataSource]
      --,[NewCO]
      --,[NonJV]
      --,[BLPW]
      --,[Productline]
      --,[Customer]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[Commentary2]
      ,[TransactionDate]
      ,[Quarter]
      ,[month] as [monthno]
      ,substring(DateName( month , DateAdd( month , [month] , -1 ) ),1,3) AS [Month]
      ,[Amount] AS [Curr Qtr Update]
      ,V.[created_date_time]
	,c.data_sub_class_name as datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn
  FROM [dbo].fact_fss_businessline_updates_v V JOIN
  dim_ent_data_sub_class C ON V.dim_ent_data_sub_class_nk = C.dim_ent_data_sub_class_nk
  WHERE V.dataSource= 'P&L MB' and C.data_Sub_Class_name ='Curr Qtr Update';
GO


