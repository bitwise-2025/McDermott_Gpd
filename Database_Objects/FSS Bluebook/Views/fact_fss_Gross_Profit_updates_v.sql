/****** Object:  View [dbo].[fact_fss_Gross_Profit_updates_v]    Script Date: 10/27/2023 1:25:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_fss_Gross_Profit_updates_v] AS SELECT [dim_entp_fss_business_line_nk]
	  ,dim_entp_fss_project_nk
      ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
	  ,CASE WHEN [Month] ='Total Prev Qtr' THEN 13
	   WHEN [Month]= 'Total Curr Qtr' THEN 14
	   WHEN [Month] IN ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec')
	  THEN DATEPART(MM, [month] + ' 01, 2000')	  
	  ELSE [month] END as [MonthNo] 
      ,[Month]
      ,SUM([Curr Qtr Update HYP]) AS [Curr Qtr Update HYP]
	  ,SUM([Curr Qtr Update ADJ]) AS [Curr Qtr Update ADJ]
	  ,SUM([Curr Qtr Update]) AS [Curr Qtr Update]
	  ,SUM([MB Amount]) AS [MB Amount]
	  ,SUM([F2 Amount]) AS [F2 Amount]
	  ,SUM([Total Prev Qtr]) AS [Total Prev Qtr]
	  ,SUM([Total Current Qtr]) AS [Total Current Qtr]
      ,[created_date_time]
	--	,datasubclass
		,fact_fss_businessline_update_v1_dr
		,fact_fss_businessline_update_v2_rn 
		FROM
		(
SELECT [dim_entp_fss_business_line_nk]
	   ,dim_entp_fss_project_nk
      ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	  ,0 AS [Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM fact_fss_Gross_Profit_curr_qtr_update_hyp_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	  ,0 AS [Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM fact_fss_Gross_Profit_curr_qtr_update_adj_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	  ,0 AS [Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Gross_Profit_curr_qtr_update_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	  ,0 AS [Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Gross_Profit_MB_Amount_update_v
	
	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	  ,0 AS [Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Gross_Profit_F2_Amount_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,'Total Prev Qtr' AS [Month]
	  ,0 as [Curr Qtr Update HYP]
	  ,0 as [Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,0 as [MB Amount]
	  ,0 AS [F2 Amount]
	  ,[Total Prev Qtr]
	  ,0 AS [Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Gross_Profit_Total_Prev_Qtr_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      ,dim_entp_fss_project_nk
	  ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
      ,[TransactionDate]
      ,[Quarter]
      ,'Total Curr Qtr' AS [Month]
	  ,0 as [Curr Qtr Update HYP]
	  ,0 as [Curr Qtr Update ADJ]
	  ,0 AS [Curr Qtr Update]
	  ,0 as [MB Amount]
	  ,0 AS [F2 Amount]
	  ,0 AS [Total Prev Qtr]
	  ,[Total Current Qtr]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_Gross_Profit_Total_Current_Qtr_update_v


	) as A

	GROUP BY
	  [dim_entp_fss_business_line_nk]
	  ,dim_entp_fss_project_nk
      ,[DataSource]
	  ,[NewCO]
	  ,[NonJV]
	  ,[BLPW]
	  ,[ProductLine]
	  ,[Customer]
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
	,fact_fss_businessline_update_v2_rn;
GO


