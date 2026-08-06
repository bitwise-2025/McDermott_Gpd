/****** Object:  View [dbo].[fact_fss_PnL_updates_v]    Script Date: 10/20/2023 12:40:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[fact_fss_PnL_MB_updates_v]
AS 
SELECT [dim_entp_fss_business_line_nk]
      ,[DataSource]
      ,[SeqNo]
      ,[SubTitle]
      ,[Calculation]
      ,[Category]
      ,[Facility]
      ,[Commentary]
       ,[Commentary2]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
      ,SUM([Curr Qtr Update]) AS [Curr Qtr Update]
	  ,SUM([MB Amount]) AS [MB Amount]
	  ,SUM([F2 Amount]) AS [F2 Amount]
      ,[created_date_time]
	--	,datasubclass
		,fact_fss_businessline_update_v1_dr
		,fact_fss_businessline_update_v2_rn 
		 ,CASE WHEN [Month] ='Total Prev Qtr' THEN 13
	   WHEN [Month]= 'Total Curr Qtr' THEN 14
	   WHEN [Month] IN ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec')
	  THEN DATEPART(MM, [month] + ' 01, 2000')	  
	  ELSE [month] END as [MonthNo] 
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
	  ,[Commentary2]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
      ,[Curr Qtr Update]
	  , 0 AS [MB Amount]
	  ,0 AS [F2 Amount]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM [fact_fss_PnL_mb_curr_update_v]
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
	  ,[Commentary2]
      ,[TransactionDate]
      ,[Quarter]
      ,[Month]
      ,[created_date_time]
	--,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
GO


