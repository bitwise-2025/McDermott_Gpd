/****** Object:  View [dbo].[fact_fss_Revenue_updates_v]    Script Date: 10/27/2023 1:48:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create VIEW [dbo].[fact_fss_DOE_Breakdown_updates_v] AS SELECT [dim_entp_fss_business_line_nk]
      --,dim_entp_fss_project_nk
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
	  ,[MonthNo] 
      ,[Month]
      ,SUM([Gross DOE Latest Update]) AS [Gross DOE Latest Update]
	  ,SUM([Recovery Latest Update]) AS [Recovery Latest Update]
	  ,SUM([Gross DOE MB]) AS [Gross DOE MB]
	  ,SUM([Recovery MB]) AS [Recovery MB]
	  ,SUM([Gross DOE F2]) AS [Gross DOE F2]
	  ,SUM([Recovery F2]) AS [Recovery F2]
	  ,SUM([Latest Update Total Activity]) AS [Latest Update Total Activity]
	  ,SUM([Std Latest Update Total Activity]) AS [Std Latest Update Total Activity]
	  ,SUM([Actual Productivity (PF) QTD]) AS [Actual Productivity (PF) QTD]
	  ,SUM([MB Total Activity]) AS [MB Total Activity]
	  ,SUM([Std MB Total Activity]) AS [Std MB Total Activity]
	  ,SUM([F2 Total Activity]) AS [F2 Total Activity]
	  ,SUM([Std F2 Total Activity]) AS [Std F2 Total Activity]
      ,[created_date_time]
	--	,datasubclass
		,fact_fss_businessline_update_v1_dr
		,fact_fss_businessline_update_v2_rn 
		FROM
		(
SELECT [dim_entp_fss_business_line_nk]
    --  ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,[Month]
      ,[Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM fact_fss_DOE_Breakdown_Gross_DOE_Latest_Update_update_v

UNION 

SELECT [dim_entp_fss_business_line_nk]
      --,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,[Month]
      ,0 AS [Gross DOE Latest Update]
	  ,[Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn 
	FROM fact_fss_DOE_Breakdown_Recovery_Latest_Update_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
      --,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,[Month]
	   ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,[Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Gross_DOE_MB_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      --,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,[Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Recovery_MB_update_v
	
	UNION 

SELECT  [dim_entp_fss_business_line_nk]
      --,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,[Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Gross_DOE_F2_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
    --  ,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,[Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Recovery_F2_update_v


	UNION 

SELECT  [dim_entp_fss_business_line_nk]
     -- ,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,[Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Latest_Update_Total_Activity_update_v

	UNION 

SELECT  [dim_entp_fss_business_line_nk]
     -- ,dim_entp_fss_project_nk
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
	  	  ,[MonthNo]
      ,'Std Latest Update Total Activity' AS [Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,[Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Std_Latest_Update_Total_Activity_update_v


	UNION 

SELECT  [dim_entp_fss_business_line_nk]
     -- ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,'Actual Productivity (PF) QTD' AS [Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,[Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Actual_Productivity_PF_QTD_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
    --  ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,[MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_MB_Total_Activity_update_v


UNION 

SELECT  [dim_entp_fss_business_line_nk]
     -- ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,'Std MB Total Activity' AS [Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,[Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Std_MB_Total_Activity_update_v

UNION 

SELECT  [dim_entp_fss_business_line_nk]
   --   ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,[Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,[F2 Total Activity]
	  ,0 AS [Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_F2_Total_Activity_update_v

	
UNION 

SELECT  [dim_entp_fss_business_line_nk]
   --   ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,'Std F2 Total Activity' AS [Month]
	  ,0 AS [Gross DOE Latest Update]
	  ,0 AS [Recovery Latest Update]
	  ,0 AS [Gross DOE MB]
	  ,0 AS [Recovery MB]
	  ,0 AS [Gross DOE F2]
	  ,0 AS [Recovery F2]
	  ,0 AS [Latest Update Total Activity]
	  ,0 AS [Std Latest Update Total Activity]
	  ,0 AS [Actual Productivity (PF) QTD]
	  ,0 AS [MB Total Activity]
	  ,0 AS [Std MB Total Activity]
	  ,0 AS [F2 Total Activity]
	  ,[Std F2 Total Activity]
      ,[created_date_time]
	,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn FROM  fact_fss_DOE_Breakdown_Std_F2_Total_Activity_update_v

	) as A

	GROUP BY
	  [dim_entp_fss_business_line_nk]
   --   ,dim_entp_fss_project_nk
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
	  ,[MonthNo]
      ,[Month]
      ,[created_date_time]
	--,datasubclass
	,fact_fss_businessline_update_v1_dr
	,fact_fss_businessline_update_v2_rn;
GO


