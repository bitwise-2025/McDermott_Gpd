/****** Object:  View [dbo].[fact_fss_PnL_update_v]    Script Date: 10/20/2023 12:40:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fact_fss_Capex&DD_updates_v]
AS 
SELECT [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
	  ,CASE WHEN [Month] IN ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec')
	  THEN DATEPART(MM, [month] + ' 01, 2000')	 ELSE [month] END as [MonthNo] 
      ,[Month]
      ,SUM([Curr Qtr Update]) AS [Curr Qtr Update]
	  ,SUM([Total MB]) AS [Total MB]
	  ,SUM([Total F2]) AS [Total F2]
      ,[created_date_time]
	--	,datasubclass
		,fact_fss_businessline_update_v1_dr
		,fact_fss_businessline_update_v2_rn 
		FROM
		(
SELECT [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
      ,[Curr Qtr Update]
	  ,0 AS [Total MB]
	  ,0 AS [Total F2]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM fact_fss_Capex_n_DD_Curr_Qtr_Update_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
	  ,0 AS [Curr Qtr Update]
	  ,[Total MB]
	  ,0 AS [Total F2]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM fact_fss_Capex_n_DD_Total_MB_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
	  ,0 AS [Curr Qtr Update]
	  ,0 AS [Total MB]
	  ,[Total F2]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Capex_n_DD_Total_F2_update_v

	) as A

	GROUP BY
	  [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
      ,[created_date_time]
	--,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
GO


