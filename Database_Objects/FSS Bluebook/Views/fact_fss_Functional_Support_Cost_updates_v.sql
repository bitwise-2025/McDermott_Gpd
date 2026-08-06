/****** Object:  View [dbo].[fact_fss_PnL_update_v]    Script Date: 10/20/2023 12:40:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create VIEW [dbo].[fact_fss_Functional_Support_Cost_updates_v]
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
	  THEN DATEPART(MM, [month] + ' 01, 2000')ELSE [month] END as [MonthNo] 
      ,[Month]
      ,SUM([Curr Qtr Update HYP]) AS [Curr Qtr Update HYP]
	  ,SUM([Curr Qtr Update ADJ]) AS [Curr Qtr Update ADJ]
	  ,SUM([Curr Qtr Update]) AS [Curr Qtr Update]
	  ,SUM([MB Amount]) AS [MB Amount]
	  ,SUM([F2 Amount]) AS [F2 Amount]
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
      ,[Curr Qtr Update HYP]
	  ,0 AS [Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,0 AS [MB Amount]
	  ,0 AS [F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM fact_fss_Functional_Support_Cost_curr_qtr_update_hyp_update_v

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
	   ,0 as [Curr Qtr Update HYP]
	  ,[Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,0 AS [MB Amount]
	  ,0 AS [F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM fact_fss_Functional_Support_Cost_curr_qtr_update_adj_update_v

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
	   ,0 as [Curr Qtr Update HYP]
	  ,0 as [Curr Qtr Update ADJ]
	  ,[Curr Qtr Update]
	  ,0 AS [MB Amount]
	  ,0 AS [F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Functional_Support_Cost_curr_qtr_update_update_v

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
	   ,0 as [Curr Qtr Update HYP]
	  ,0 as [Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,[MB Amount]
	  ,0 AS [F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Functional_Support_Cost_MB_Amount_update_v
	
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
	   ,0 as [Curr Qtr Update HYP]
	  ,0 as [Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,0 as [MB Amount]
	  ,[F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Functional_Support_Cost_F2_Amount_update_v

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


