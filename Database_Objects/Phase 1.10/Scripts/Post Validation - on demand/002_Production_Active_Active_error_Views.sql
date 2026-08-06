
/****** Object:  View [gpd].[ChangeManagement_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:23:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ChangeManagement_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[ChangeManagement_PMR_JSON_v] 
where [Order]  like '%,%' or [Order]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[ChangeManagement_PMR_JSON_v] 
where [Order]  like '%,%' or [Order]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[ChangeManagement_PMR_JSON_active_v]    Script Date: 12/8/2022 10:23:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ChangeManagement_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,
v.Comments,
v.[Contract Number],
convert(numeric, v.[Cost Expected]) [Cost Expected],
convert(numeric, v.[Cost in EAC]) [Cost in EAC],
convert(datetime, v.[Date Submitted], 101) [Date Submitted],
convert(datetime, v.[Month End Date], 101) [Month End Date],
convert(numeric, v.[Order]) [Order],
v.[Project Number],
convert(numeric, v.[Revenue Expected - High]) [Revenue Expected - High],
convert(numeric, v.[Revenue Expected - Low]) [Revenue Expected - Low],
convert(numeric, v.[Revenue Expected - Medium]) [Revenue Expected - Medium],
convert(numeric, v.[Revenue Submitted / Expected To Be Submitted]) [Revenue Submitted / Expected To Be Submitted],
convert(numeric, v.[Revenue in EAC]) [Revenue in EAC],
v.[Variance Name],
v.[Variance Type 1],
v.[zCreatedDateTime],
v.[zSourceFileName],
convert(numeric, v.[ZVersionNo]) [ZVersionNo]
from (
select *
from gpd.ChangeManagement_PMR_JSON_v
where (isnumeric([Order]) !=0 or [Order] is null)
and (isnumeric([Cost Expected])!=0 or [Cost Expected] is null)
and (isnumeric([Cost in EAC])!=0 or [Cost in EAC] is null)
and (isnumeric([Revenue Expected - High])!=0 or [Revenue Expected - High] is null)
and (isnumeric([Revenue Expected - Low])!=0 or [Revenue Expected - Low] is null)
and (isnumeric([Revenue Expected - Medium])!=0 or [Revenue Expected - Medium] is null)
and (isnumeric([Revenue Submitted / Expected To Be Submitted])!=0 or [Revenue Submitted / Expected To Be Submitted] is null)
and (isnumeric([Revenue in EAC])!=0 or [Revenue in EAC] is null)
and (isdate(CONVERT(varchar,[Date Submitted],101))!=0 or [Date Submitted] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is null)

) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Month End Date] + zversionNo in (
select [project number] + [contract number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT))))
from ( select *
from gpd.ChangeManagement_PMR_JSON_v
where (isnumeric([Order]) !=0 or [Order] is null)
and (isnumeric([Cost Expected])!=0 or [Cost Expected] is null)
and (isnumeric([Cost in EAC])!=0 or [Cost in EAC] is null)
and (isnumeric([Revenue Expected - High])!=0 or [Revenue Expected - High] is null)
and (isnumeric([Revenue Expected - Low])!=0 or [Revenue Expected - Low] is null)
and (isnumeric([Revenue Expected - Medium])!=0 or [Revenue Expected - Medium] is null)
and (isnumeric([Revenue Submitted / Expected To Be Submitted])!=0 or [Revenue Submitted / Expected To Be Submitted] is null)
and (isnumeric([Revenue in EAC])!=0 or [Revenue in EAC] is null)
and (isdate(CONVERT(varchar,[Date Submitted],101))!=0 or [Date Submitted] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is null)) xx
group by [project number],[contract number],[Month End Date]);
GO





/****** Object:  View [gpd].[CSS_Rating_QHSES_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:31:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[CSS_Rating_QHSES_PMR_JSON_v] 
where isnumeric([Value]) =0 or [Value]  like '%,%' or [Value]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[CSS_Rating_QHSES_PMR_JSON_v] 
where isnumeric([Value]) =0 or [Value]  like '%,%' or [Value]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]    Script Date: 12/8/2022 10:32:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Type],
v.[Order],
v.[Completion],
convert(float, v.[Value] ) [Value],
v.[zVersionNo],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select * 
from [gpd].[CSS_Rating_QHSES_PMR_JSON_v] 
where 
(isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[CSS_Rating_QHSES_PMR_JSON_v] 
where (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_error_v]    Script Date: 12/8/2022 10:32:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.*
FROM (
select *
from [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_V]
where
 (isdate(CONVERT(varchar,[Actual / Fcst Finish Date],101))=0 )
and (isdate(CONVERT(varchar,[Baseline Finish Date],101))=0 )
and (isdate(CONVERT(varchar,[Client Baseline Finish],101))=0 )  
and (isdate(CONVERT(varchar,[Client Baseline Start],101))=0 )
and (isdate(CONVERT(varchar,[Client Fcst Finish],101))=0 )
and (isdate(CONVERT(varchar,[Client Fcst Start],101))=0 )
AND (isnumeric([Forecast %]) =0 or [Forecast %]   like '%,%' or [Forecast %]  like '% %'   )
AND (isnumeric([Actual %]) =0 or [Actual %]   like '%,%' or [Actual %]  like '% %'   )
AND (isnumeric([Committed %]) =0 or [Committed %]   like '%,%' or [Committed %]  like '% %'  )
AND (isnumeric([Expended %]) =0 or [Expended %]   like '%,%' or [Expended %]  like '% %')
and (isdate(CONVERT(varchar,[Month End Date],101))=0 )
and (isdate(CONVERT(varchar,[MDR Baseline Finish],101))=0)
and (isdate(CONVERT(varchar,[MDR Baseline Start],101))=0 )
and (isdate(CONVERT(varchar,[MDR Fcst Finish],101))=0 )
and (isdate(CONVERT(varchar,[MDR Fcst Start],101))=0 )
AND (isnumeric([Plan %]) =0 or [Plan %]   like '%,%' or [Plan %]   like '% %' )
AND (isnumeric([Period Forecast PF]) =0 or [Period Forecast PF]   like '%,%' or [Period Forecast PF]   like '% %'     )
AND (isnumeric([Period Actual PF]) =0 or [Period Actual PF]   like '%,%' or [Period Actual PF]   like '% %'   )
AND (isnumeric([ITD PF]) =0 or [ITD PF]   like '%,%' or [ITD PF]   like '% %'    )
AND (isnumeric([ETC PF]) =0 or [ETC PF]   like '%,%' or [ETC PF]   like '% %'  )
AND (isnumeric([EAC PF]) =0 or [EAC PF]   like '%,%' or [EAC PF]   like '% %'   )
AND (isnumeric([Variance to Forecast %]) =0 or [Variance to Forecast %]   like '%,%' or [Variance to Forecast %]   like '% %' )
AND (isnumeric([Variance to Plan %]) =0 or [Variance to Plan %]  like '%,%' or [Variance to Plan %]   like '% %' )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +zVersionNo in (
SELECT [Project Number] + [Contract Number]  + MAX(zVersionNo) FROM (select *
from [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_V]
where
(isdate(CONVERT(varchar,[Actual / Fcst Finish Date],101))=0 )
and (isdate(CONVERT(varchar,[Baseline Finish Date],101))=0 )
and (isdate(CONVERT(varchar,[Client Baseline Finish],101))=0 )  
and (isdate(CONVERT(varchar,[Client Baseline Start],101))=0 )
and (isdate(CONVERT(varchar,[Client Fcst Finish],101))=0 )
and (isdate(CONVERT(varchar,[Client Fcst Start],101))=0 )
AND (isnumeric([Forecast %]) =0 or [Forecast %]   like '%,%' or [Forecast %]  like '% %'   )
AND (isnumeric([Actual %]) =0 or [Actual %]   like '%,%' or [Actual %]  like '% %'   )
AND (isnumeric([Committed %]) =0 or [Committed %]   like '%,%' or [Committed %]  like '% %'  )
AND (isnumeric([Expended %]) =0 or [Expended %]   like '%,%' or [Expended %]  like '% %')
and (isdate(CONVERT(varchar,[Month End Date],101))=0 )
and (isdate(CONVERT(varchar,[MDR Baseline Finish],101))=0)
and (isdate(CONVERT(varchar,[MDR Baseline Start],101))=0 )
and (isdate(CONVERT(varchar,[MDR Fcst Finish],101))=0 )
and (isdate(CONVERT(varchar,[MDR Fcst Start],101))=0 )
AND (isnumeric([Plan %]) =0 or [Plan %]   like '%,%' or [Plan %]   like '% %' )
AND (isnumeric([Period Forecast PF]) =0 or [Period Forecast PF]   like '%,%' or [Period Forecast PF]   like '% %'     )
AND (isnumeric([Period Actual PF]) =0 or [Period Actual PF]   like '%,%' or [Period Actual PF]   like '% %'   )
AND (isnumeric([ITD PF]) =0 or [ITD PF]   like '%,%' or [ITD PF]   like '% %'    )
AND (isnumeric([ETC PF]) =0 or [ETC PF]   like '%,%' or [ETC PF]   like '% %'  )
AND (isnumeric([EAC PF]) =0 or [EAC PF]   like '%,%' or [EAC PF]   like '% %'   )
AND (isnumeric([Variance to Forecast %]) =0 or [Variance to Forecast %]   like '%,%' or [Variance to Forecast %]   like '% %' )
AND (isnumeric([Variance to Plan %]) =0 or [Variance to Plan %]  like '%,%' or [Variance to Plan %]   like '% %' )) xx
GROUP BY [Project Number], [Contract Number] );
GO


/****** Object:  View [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]    Script Date: 12/8/2022 10:33:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,  
convert(float,v.[Forecast %]) [Forecast %],
convert(datetime, v.[Actual / Fcst Finish Date],101 ) [Actual / Fcst Finish Date],
convert(datetime, v.[Baseline Finish Date],101 ) [Baseline Finish Date],
convert(datetime, v.[Client Baseline Finish],101 ) [Client Baseline Finish],
convert(datetime, v.[Client Baseline Start],101 ) [Client Baseline Start],
convert(datetime, v.[Client Fcst Finish],101 ) [Client Fcst Finish],
convert(datetime, v.[Client Fcst Start],101 ) [Client Fcst Start],
v.[Contract Number],
v.[Description],
v.[Facilities],
v.[Facility Type],
convert(float,v.[Actual %]) [Actual %],
convert(float,v.[Committed %]) [Committed %],
convert(float,v.[Expended %]) [Expended %],
convert(datetime, v.[MDR Baseline Finish],101 ) [MDR Baseline Finish],
convert(datetime, v.[MDR Baseline Start],101 ) [MDR Baseline Start],
convert(datetime, v.[MDR Fcst Finish],101 ) [MDR Fcst Finish],
convert(datetime, v.[MDR Fcst Start],101 ) [MDR Fcst Start],
convert(datetime, v.[Month End Date],101 ) [Month End Date],
convert(float,v.[Plan %]) [Plan %],
convert(float,v.[Period Forecast PF]) [Period Forecast PF],
convert(float,v.[Period Actual PF]) [Period Actual PF],
convert(float,v.[ITD PF]) [ITD PF],
convert(float,v.[ETC PF]) [ETC PF],
convert(float,v.[EAC PF]) [EAC PF],
v.[Project Number],
v.[Type],
convert(float,v.[Variance to Forecast %]) [Variance to Forecast %],
convert(float,v.[Variance to Plan %]) [Variance to Plan %],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select *
from [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_V]
where
 (isdate(CONVERT(varchar,[Actual / Fcst Finish Date],101))!=0 or [Actual / Fcst Finish Date] is NULL)
and (isdate(CONVERT(varchar,[Baseline Finish Date],101))!=0 or [Baseline Finish Date] is NULL)
and (isdate(CONVERT(varchar,[Client Baseline Finish],101))!=0 or [Client Baseline Finish] is NULL)  
and (isdate(CONVERT(varchar,[Client Baseline Start],101))!=0 or [Client Baseline Start] is NULL)
and (isdate(CONVERT(varchar,[Client Fcst Finish],101))!=0 or [Client Fcst Finish] is NULL)
and (isdate(CONVERT(varchar,[Client Fcst Start],101))!=0 or [Client Fcst Start] is NULL)
AND (isnumeric([Forecast %]) !=0 or [Forecast %]  not like '%,%' or [Forecast %] not like '% %' or [Forecast %] is null   )
AND (isnumeric([Actual %]) !=0 or [Actual %]  not like '%,%' or [Actual %] not like '% %' or [Actual %] is null    )
AND (isnumeric([Committed %]) !=0 or [Committed %]  not like '%,%' or [Committed %] not like '% %' or [Committed %] is null    )
AND (isnumeric([Expended %]) !=0 or [Expended %]  not like '%,%' or [Expended %] not like '% %' or [Expended %] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[MDR Baseline Finish],101))!=0 or [MDR Baseline Finish] is NULL)
and (isdate(CONVERT(varchar,[MDR Baseline Start],101))!=0 or [MDR Baseline Start] is NULL)
and (isdate(CONVERT(varchar,[MDR Fcst Finish],101))!=0 or [MDR Fcst Finish] is NULL)
and (isdate(CONVERT(varchar,[MDR Fcst Start],101))!=0 or [MDR Fcst Start] is NULL)
AND (isnumeric([Plan %]) !=0 or [Plan %]  not like '%,%' or [Plan %]  not like '% %' or [Plan %]  is null    )
AND (isnumeric([Period Forecast PF]) !=0 or [Period Forecast PF]  not like '%,%' or [Period Forecast PF]  not like '% %' or [Period Forecast PF]  is null    )
AND (isnumeric([Period Actual PF]) !=0 or [Period Actual PF]  not like '%,%' or [Period Actual PF]  not like '% %' or [Period Actual PF]  is null    )
AND (isnumeric([ITD PF]) !=0 or [ITD PF]  not like '%,%' or [ITD PF]  not like '% %' or [ITD PF]  is null    )
AND (isnumeric([ETC PF]) !=0 or [ETC PF]  not like '%,%' or [ETC PF]  not like '% %' or [ETC PF]  is null    )
AND (isnumeric([EAC PF]) !=0 or [EAC PF]  not like '%,%' or [EAC PF]  not like '% %' or [EAC PF]  is null    )
AND (isnumeric([Variance to Forecast %]) !=0 or [Variance to Forecast %]  not like '%,%' or [Variance to Forecast %]  not like '% %' or [Variance to Forecast %] is null)
AND (isnumeric([Variance to Plan %]) !=0 or [Variance to Plan %] not like '%,%' or [Variance to Plan %]  not like '% %' or[Variance to Plan %] is null)) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +zVersionNo in (
SELECT [Project Number] + [Contract Number]  + MAX(zVersionNo) FROM (select *
from [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_V]
where
(isdate(CONVERT(varchar,[Actual / Fcst Finish Date],101))!=0 or [Actual / Fcst Finish Date] is NULL)
and (isdate(CONVERT(varchar,[Baseline Finish Date],101))!=0 or [Baseline Finish Date] is NULL)
and (isdate(CONVERT(varchar,[Client Baseline Finish],101))!=0 or [Client Baseline Finish] is NULL)  
and (isdate(CONVERT(varchar,[Client Baseline Start],101))!=0 or [Client Baseline Start] is NULL)
and (isdate(CONVERT(varchar,[Client Fcst Finish],101))!=0 or [Client Fcst Finish] is NULL)
and (isdate(CONVERT(varchar,[Client Fcst Start],101))!=0 or [Client Fcst Start] is NULL)
AND (isnumeric([Forecast %]) !=0 or [Forecast %]  not like '%,%' or [Forecast %] not like '% %' or [Forecast %] is null   )
AND (isnumeric([Actual %]) !=0 or [Actual %]  not like '%,%' or [Actual %] not like '% %' or [Actual %] is null    )
AND (isnumeric([Committed %]) !=0 or [Committed %]  not like '%,%' or [Committed %] not like '% %' or [Committed %] is null    )
AND (isnumeric([Expended %]) !=0 or [Expended %]  not like '%,%' or [Expended %] not like '% %' or [Expended %] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[MDR Baseline Finish],101))!=0 or [MDR Baseline Finish] is NULL)
and (isdate(CONVERT(varchar,[MDR Baseline Start],101))!=0 or [MDR Baseline Start] is NULL)
and (isdate(CONVERT(varchar,[MDR Fcst Finish],101))!=0 or [MDR Fcst Finish] is NULL)
and (isdate(CONVERT(varchar,[MDR Fcst Start],101))!=0 or [MDR Fcst Start] is NULL)
AND (isnumeric([Plan %]) !=0 or [Plan %]  not like '%,%' or [Plan %]  not like '% %' or [Plan %]  is null    )
AND (isnumeric([Period Forecast PF]) !=0 or [Period Forecast PF]  not like '%,%' or [Period Forecast PF]  not like '% %' or [Period Forecast PF]  is null    )
AND (isnumeric([Period Actual PF]) !=0 or [Period Actual PF]  not like '%,%' or [Period Actual PF]  not like '% %' or [Period Actual PF]  is null    )
AND (isnumeric([ITD PF]) !=0 or [ITD PF]  not like '%,%' or [ITD PF]  not like '% %' or [ITD PF]  is null    )
AND (isnumeric([ETC PF]) !=0 or [ETC PF]  not like '%,%' or [ETC PF]  not like '% %' or [ETC PF]  is null    )
AND (isnumeric([EAC PF]) !=0 or [EAC PF]  not like '%,%' or [EAC PF]  not like '% %' or [EAC PF]  is null    )
AND (isnumeric([Variance to Forecast %]) !=0 or [Variance to Forecast %]  not like '%,%' or [Variance to Forecast %]  not like '% %' or [Variance to Forecast %] is null)
AND (isnumeric([Variance to Plan %]) !=0 or [Variance to Plan %] not like '%,%' or [Variance to Plan %]  not like '% %' or[Variance to Plan %] is null)) xx
GROUP BY [Project Number], [Contract Number] );
GO


/****** Object:  View [gpd].[Financials_1_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:34:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_1_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Financials_1_PMR_JSON_v] 
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Financials_1_PMR_JSON_v] 
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Financials_1_PMR_JSON_active_v]    Script Date: 12/8/2022 10:34:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_1_PMR_JSON_active_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
convert(datetime, v.[Date], 101) [Date],
v.[Project Number],
v.[Contract Number],
v.[Type 1],
convert(float, v.[Amount] ) [Amount],
v.[zVersionNo],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select * 
from [gpd].[Financials_1_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Financials_1_PMR_JSON_v] 
where (isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Financials_2_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:35:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_2_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.*
FROM (
select *
from [gpd].[Financials_2_PMR_JSON_v]
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select *
from [gpd].[Financials_2_PMR_JSON_v]
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0
or (isdate(CONVERT(varchar,[Month End Date],101))=0)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Financials_2_PMR_JSON_active_v]    Script Date: 12/8/2022 10:35:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_2_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,  
convert(datetime, v.[Date], 101) [Date],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Project Number],
v.[Contract Number],
v.[Type 1],
convert(float, v.[Amount] ) [Amount],
v.[zVersionNo],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select *
from [gpd].[Financials_2_PMR_JSON_v]
where
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select *
from [gpd].[Financials_2_PMR_JSON_v]
where (isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:36:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_v] 
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_v] 
where isnumeric([Amount]) =0 or [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]    Script Date: 12/8/2022 10:36:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
convert(datetime, v.[Date], 101) [Date],
v.[Project Number],
v.[Contract Number],
v.[Type 1],
v.[Type 2],
convert(float, v.[Amount] ) [Amount],
v.[zVersionNo],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select * 
from [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_v] 
where (isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_error_v]    Script Date: 12/8/2022 10:37:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Global_Template_Engineering_Key_Quantities_JSON_v] 
where 
(isnumeric([Current Budget Qty]) =0 and [Current Budget Qty]  like '%,%' and [Current Budget Qty]  like '% %')
and (isnumeric([Forecast Qty]) =0 and [Forecast Qty] like '%,%' and [Forecast Qty]  like '% %')
 and (isdate(CONVERT(varchar,[Month End Date],101))=0 )
 and  (isnumeric([Original Budget Qty]) =0 and [Original Budget Qty]  like '%,%' and [Original Budget Qty]  like '% %')
 and  (isnumeric([Progress Budget Qty]) =0 and [Progress Budget Qty]  like '%,%' and [Progress Budget Qty] like '% %') ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [month end date] + zversionNo in (
select [project number] + [contract number] + [month end date] + MAX(zVersionNo) from 
(select * from [gpd].[Global_Template_Engineering_Key_Quantities_JSON_v]
where 
(isnumeric([Current Budget Qty]) =0 and [Current Budget Qty]  like '%,%' and [Current Budget Qty]  like '% %')
and (isnumeric([Forecast Qty]) =0 and [Forecast Qty] like '%,%' and [Forecast Qty]  like '% %')
 and (isdate(CONVERT(varchar,[Month End Date],101))=0 )
 and  (isnumeric([Original Budget Qty]) =0 and [Original Budget Qty]  like '%,%' and [Original Budget Qty]  like '% %')
 and  (isnumeric([Progress Budget Qty]) =0 and [Progress Budget Qty]  like '%,%' and [Progress Budget Qty] like '% %')) xx
group by [project number],[contract number],[month end date]);
GO


/****** Object:  View [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_v]    Script Date: 12/8/2022 10:38:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Contract Number],
convert(float,v.[Current Budget Qty]) [Current Budget Qty],
convert(float,v.[Forecast Qty]) [Forecast Qty],
v.[Key Quantities],
convert(datetime, v.[Month End Date],101 ) [Month End Date],
convert(float,v.[Original Budget Qty]) [Original Budget Qty],
convert(float,v.[Progress Budget Qty]) [Progress Budget Qty],
v.[Project Number],
v.[UOM],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select *
from [gpd].[Global_Template_Engineering_Key_Quantities_JSON_v]
where
(isnumeric([Current Budget Qty]) !=0 and [Current Budget Qty] not like '%,%' and [Current Budget Qty] not like '% %'  or [Current Budget Qty] is null )
and (isnumeric([Forecast Qty]) !=0 and [Forecast Qty] not like '%,%' and [Forecast Qty] not like '% %'  or [Forecast Qty] is null )
 and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
 and  (isnumeric([Original Budget Qty]) !=0 and [Original Budget Qty] not like '%,%' and [Original Budget Qty] not like '% %'  or [Original Budget Qty] is null )
 and  (isnumeric([Progress Budget Qty]) !=0 and [Progress Budget Qty] not like '%,%' and [Progress Budget Qty] not like '% %'  or [Progress Budget Qty] is null ) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [month end date] + zversionNo in (
select [project number] + [contract number] + [month end date] + MAX(zVersionNo) from
(select * from [gpd].[Global_Template_Engineering_Key_Quantities_JSON_v]
where
(isnumeric([Current Budget Qty]) !=0 and [Current Budget Qty] not like '%,%' and [Current Budget Qty] not like '% %'  or [Current Budget Qty] is null )
and (isnumeric([Forecast Qty]) !=0 and [Forecast Qty] not like '%,%' and [Forecast Qty] not like '% %'  or [Forecast Qty] is null )
 and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
 and  (isnumeric([Original Budget Qty]) !=0 and [Original Budget Qty] not like '%,%' and [Original Budget Qty] not like '% %'  or [Original Budget Qty] is null )
 and  (isnumeric([Progress Budget Qty]) !=0 and [Progress Budget Qty] not like '%,%' and [Progress Budget Qty] not like '% %'  or [Progress Budget Qty] is null )) xx
group by [project number],[contract number],[month end date]);
GO


/****** Object:  View [gpd].[Indicators_QHSES_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:38:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Indicators_QHSES_PMR_JSON_v] 
where isnumeric([Value]) =0 or [Value]  like '%,%' or [Value]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Indicators_QHSES_PMR_JSON_v] 
where isnumeric([Value]) =0 or [Value]  like '%,%' or [Value]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Indicators_QHSES_PMR_JSON_active_v]    Script Date: 12/8/2022 10:39:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
v.[Type],
v.[Indicators],
convert(datetime, v.[Date], 101) [Date],
convert(float, v.[Value] ) [Value],
v.[zVersionNo],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select * 
from [gpd].[Indicators_QHSES_PMR_JSON_v] 
where 
(isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Indicators_QHSES_PMR_JSON_v] 
where (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO



/****** Object:  View [gpd].[Major_Subcontract_Cost_Status_JSON_active_error_v]    Script Date: 12/8/2022 10:41:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Major_Subcontract_Cost_Status_JSON_v] 
where [Plan %]  like '%,%' or [Plan %]  like '% %' or [Actual %]  like '%,%' or [Actual %]  like '% %' or [Original Budget]  like '%,%' or [Original Budget]  like '% %' or [Committed Amount]  like '%,%' or [Committed Amount]  like '% %' or [EAC Amount]  like '%,%' or [EAC Amount]  like '% %' or [Approved Change Amount/ Budget Shift]  like '%,%' or [Approved Change Amount/ Budget Shift]  like '% %' or [Current Budget]  like '%,%' or [Current Budget]  like '% %' or [Forecast]  like '%,%' or [Forecast]  like '% %' or [Variance to Current Budget]  like '%,%' or [Variance to Current Budget]  like '% %' or [Variance to Previous Month]  like '%,%' or [Variance to Previous Month]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Major_Subcontract_Cost_Status_JSON_v] 
where [Plan %]  like '%,%' or [Plan %]  like '% %' or [Actual %]  like '%,%' or [Actual %]  like '% %' or [Original Budget]  like '%,%' or [Original Budget]  like '% %' or [Committed Amount]  like '%,%' or [Committed Amount]  like '% %' or [EAC Amount]  like '%,%' or [EAC Amount]  like '% %' or [Approved Change Amount/ Budget Shift]  like '%,%' or [Approved Change Amount/ Budget Shift]  like '% %' or [Current Budget]  like '%,%' or [Current Budget]  like '% %' or [Forecast]  like '%,%' or [Forecast]  like '% %' or [Variance to Current Budget]  like '%,%' or [Variance to Current Budget]  like '% %' or [Variance to Previous Month]  like '%,%' or [Variance to Previous Month]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Major_Subcontract_Cost_Status_JSON_active_v]    Script Date: 12/8/2022 10:42:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Entity],
v.[Job Number],
v.[Cost Code],
v.[Discipline],
v.[Location],
v.[Subcontractor (Bid)],
v.[Subcontract Number],
v.[Scope],
v.[Contract Type],
convert(datetime, v.[Planned Award Date], 101) [Planned Award Date],
convert(datetime, v.[Actual Award Date], 101) [Actual Award Date],
convert(float, v.[Plan %] ) [Plan %],
convert(float, v.[Actual %] ) [Actual %],
convert(float, v.[Original Budget] ) [Original Budget],
convert(float, v.[Committed Amount] ) [Committed Amount],
convert(float, v.[EAC Amount] ) [EAC Amount],
convert(float, v.[Approved Change Amount/ Budget Shift] ) [Approved Change Amount/ Budget Shift],
convert(float, v.[Current Budget] ) [Current Budget],
convert(float, v.[Forecast] ) [Forecast],
convert(float, v.[Variance to Current Budget] ) [Variance to Current Budget],
convert(float, v.[Variance to Previous Month] ) [Variance to Previous Month],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Major_Subcontract_Cost_Status_JSON_v] 
where 
(isnumeric([Plan %]) !=0 and [Plan %] not like '%,%' and [Plan %] not like '% %'  or [Plan %] is null )
and (isnumeric([Actual %]) !=0 and [Actual %] not like '%,%' and [Actual %] not like '% %'  or [Actual %] is null )
and (isnumeric([Original Budget]) !=0 and [Original Budget] not like '%,%' and [Original Budget] not like '% %'  or [Original Budget] is null )
and (isnumeric([Committed Amount]) !=0 and [Committed Amount] not like '%,%' and [Committed Amount] not like '% %'  or [Committed Amount] is null )
and (isnumeric([EAC Amount]) !=0 and [EAC Amount] not like '%,%' and [EAC Amount] not like '% %'  or [EAC Amount] is null )
and (isnumeric([Approved Change Amount/ Budget Shift]) !=0 and [Approved Change Amount/ Budget Shift] not like '%,%' and [Approved Change Amount/ Budget Shift] not like '% %'  or [Approved Change Amount/ Budget Shift] is null )
and (isnumeric([Current Budget]) !=0 and [Current Budget] not like '%,%' and [Current Budget] not like '% %'  or [Current Budget] is null )
and (isnumeric([Forecast]) !=0 and [Forecast] not like '%,%' and [Forecast] not like '% %'  or [Forecast] is null )
and (isnumeric([Variance to Current Budget]) !=0 and [Variance to Current Budget] not like '%,%' and [Variance to Current Budget] not like '% %'  or [Variance to Current Budget] is null )
and (isnumeric([Variance to Previous Month]) !=0 and [Variance to Previous Month] not like '%,%' and [Variance to Previous Month] not like '% %'  or [Variance to Previous Month] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Planned Award Date],101))!=0 or [Planned Award Date] is NULL)
and (isdate(CONVERT(varchar,[Actual Award Date],101))!=0 or [Actual Award Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Major_Subcontract_Cost_Status_JSON_v] 
where 
(isnumeric([Plan %]) !=0 and [Plan %] not like '%,%' and [Plan %] not like '% %'  or [Plan %] is null )
and (isnumeric([Actual %]) !=0 and [Actual %] not like '%,%' and [Actual %] not like '% %'  or [Actual %] is null )
and (isnumeric([Original Budget]) !=0 and [Original Budget] not like '%,%' and [Original Budget] not like '% %'  or [Original Budget] is null )
and (isnumeric([Committed Amount]) !=0 and [Committed Amount] not like '%,%' and [Committed Amount] not like '% %'  or [Committed Amount] is null )
and (isnumeric([EAC Amount]) !=0 and [EAC Amount] not like '%,%' and [EAC Amount] not like '% %'  or [EAC Amount] is null )
and (isnumeric([Approved Change Amount/ Budget Shift]) !=0 and [Approved Change Amount/ Budget Shift] not like '%,%' and [Approved Change Amount/ Budget Shift] not like '% %'  or [Approved Change Amount/ Budget Shift] is null )
and (isnumeric([Current Budget]) !=0 and [Current Budget] not like '%,%' and [Current Budget] not like '% %'  or [Current Budget] is null )
and (isnumeric([Forecast]) !=0 and [Forecast] not like '%,%' and [Forecast] not like '% %'  or [Forecast] is null )
and (isnumeric([Variance to Current Budget]) !=0 and [Variance to Current Budget] not like '%,%' and [Variance to Current Budget] not like '% %'  or [Variance to Current Budget] is null )
and (isnumeric([Variance to Previous Month]) !=0 and [Variance to Previous Month] not like '%,%' and [Variance to Previous Month] not like '% %'  or [Variance to Previous Month] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Planned Award Date],101))!=0 or [Planned Award Date] is NULL)
and (isdate(CONVERT(varchar,[Actual Award Date],101))!=0 or [Actual Award Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Marine_campaign_readiness_PMR_JSON_active_error_V]    Script Date: 12/8/2022 10:42:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_campaign_readiness_PMR_JSON_active_error_V]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select *
from [gpd].[Marine_campaign_readiness_PMR_JSON_V] 
WHERE (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isdate(CONVERT(varchar,[Forecast Finish],101))=0) 
AND (isdate(CONVERT(varchar,[Forecast Start],101))=0) 
AND (isdate(CONVERT(varchar,[Original Finish],101))=0) 
AND (isdate(CONVERT(varchar,[Original Start],101))=0)
AND (isnumeric([Readiness Review - Actual %])=0 and [Readiness Review - Actual %]  like '%,%' and [Readiness Review - Actual %]  like '% %')
AND (isnumeric([Readiness Review - Plan %]) =0 and [Readiness Review - Plan %]  like '%,%' and [Readiness Review - Plan %]  like '% %')) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_campaign_readiness_PMR_JSON_V]
where (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isdate(CONVERT(varchar,[Forecast Finish],101))=0) 
AND (isdate(CONVERT(varchar,[Forecast Start],101))=0) 
AND (isdate(CONVERT(varchar,[Original Finish],101))=0) 
AND (isdate(CONVERT(varchar,[Original Start],101))=0)
AND (isnumeric([Readiness Review - Actual %]) =0 and [Readiness Review - Actual %] like '%,%' and [Readiness Review - Actual %]  like '% %')
AND (isnumeric([Readiness Review - Plan %]) =0 and [Readiness Review - Plan %] like '%,%' and [Readiness Review - Plan %]  like '% %')) XX
GROUP BY [Project Number] , [Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Marine_campaign_readiness_PMR_JSON_active_V]    Script Date: 12/8/2022 10:44:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_campaign_readiness_PMR_JSON_active_V]
AS SELECT  p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Campaign Description],
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
convert(datetime, v.[Forecast Finish],101 ) [Forecast Finish],
convert(datetime, v.[Forecast Start],101 ) [Forecast Start],
V.[Main Vessel],
convert(datetime, v.[Original Finish],101 ) [Original Finish],
convert(datetime, v.[Original Start],101 ) [Original Start],
v.[Project Number],
convert(float,v.[Readiness Review - Actual %]) [Readiness Review - Actual %],
convert(float,v.[Readiness Review - Plan %]) [Readiness Review - Plan %],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
SELECT * 
FROM 
[gpd].[Marine_campaign_readiness_PMR_JSON_V] 
WHERE (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isdate(CONVERT(varchar,[Forecast Finish],101))!=0 or [Forecast Finish] is NULL) 
AND (isdate(CONVERT(varchar,[Forecast Start],101))!=0 or [Forecast Start] is NULL) 
AND (isdate(CONVERT(varchar,[Original Finish],101))!=0 or [Original Finish] is NULL) 
AND (isdate(CONVERT(varchar,[Original Start],101))!=0 or [Original Start] is NULL)
AND (isnumeric([Readiness Review - Actual %]) !=0 and [Readiness Review - Actual %] not like '%,%' and [Readiness Review - Actual %] not like '% %'  or [Readiness Review - Actual %] is null )
AND (isnumeric([Readiness Review - Plan %]) !=0 and [Readiness Review - Plan %] not like '%,%' and [Readiness Review - Plan %] not like '% %'  or [Readiness Review - Plan %] is null )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_campaign_readiness_PMR_JSON_V]
where (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isdate(CONVERT(varchar,[Forecast Finish],101))!=0 or [Forecast Finish] is NULL) 
AND (isdate(CONVERT(varchar,[Forecast Start],101))!=0 or [Forecast Start] is NULL) 
AND (isdate(CONVERT(varchar,[Original Finish],101))!=0 or [Original Finish] is NULL) 
AND (isdate(CONVERT(varchar,[Original Start],101))!=0 or [Original Start] is NULL)
AND (isnumeric([Readiness Review - Actual %]) !=0 and [Readiness Review - Actual %] not like '%,%' and [Readiness Review - Actual %] not like '% %'  or [Readiness Review - Actual %] is null )
AND (isnumeric([Readiness Review - Plan %]) !=0 and [Readiness Review - Plan %] not like '%,%' and [Readiness Review - Plan %] not like '% %'  or [Readiness Review - Plan %] is null )) XX
GROUP BY [Project Number] ,[Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Marine_Progress_PMR_JSON_active_error_V]    Script Date: 12/8/2022 10:45:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_Progress_PMR_JSON_active_error_V]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
SELECT * 
FROM 
[gpd].[Marine_Progress_PMR_JSON_V]
WHERE (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isnumeric([Actual Duration - Days]) =0 and [Actual Duration - Days]  like '%,%' and [Actual Duration - Days]  like '% %')
AND (isnumeric([Current Budget Duration - Days]) =0 and [Current Budget Duration - Days]  like '%,%' and [Current Budget Duration - Days]  like '% %')
AND (isnumeric([EAC - Days]) !=0 and [EAC - Days]  like '%,%' and [EAC - Days] like '% %'  )
AND (isnumeric([EAC Previous Month Days]) =0 and [EAC Previous Month Days]  like '%,%' and [EAC Previous Month Days]  like '% %')
AND (isnumeric([EAC Variance Days]) =0 and [EAC Variance Days]  like '%,%' and [EAC Variance Days]  like '% %')
AND (isnumeric([ETC PF]) =0 and [ETC PF]  like '%,%' and [ETC PF]  like '% %'   )
AND (isnumeric([PF To Date]) =0 and [PF To Date]  like '%,%' and [PF To Date]  like '% %' )
AND (isnumeric([To-Go Days]) =0 and [To-Go Days]  like '%,%' and [To-Go Days]  like '% %' )
AND (isnumeric([Working Spread Rate]) =0 and [Working Spread Rate]  like '%,%' and [Working Spread Rate]  like '% %' )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_Progress_PMR_JSON_V]
where (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isnumeric([Actual Duration - Days]) =0 and [Actual Duration - Days]  like '%,%' and [Actual Duration - Days]  like '% %')
AND (isnumeric([Current Budget Duration - Days]) =0 and [Current Budget Duration - Days]  like '%,%' and [Current Budget Duration - Days]  like '% %' )
AND (isnumeric([EAC - Days]) =0 and [EAC - Days]  like '%,%' and [EAC - Days]  like '% %')
AND (isnumeric([EAC Previous Month Days]) =0 and [EAC Previous Month Days]  like '%,%' and [EAC Previous Month Days]  like '% %'  )
AND (isnumeric([EAC Variance Days]) =0 and [EAC Variance Days]  like '%,%' and [EAC Variance Days]  like '% %'  )
AND (isnumeric([ETC PF]) =0 and [ETC PF]  like '%,%' and [ETC PF]  like '% %'  )
AND (isnumeric([PF To Date]) =0 and [PF To Date]  like '%,%' and [PF To Date]  like '% %'   )
AND (isnumeric([To-Go Days]) =0 and [To-Go Days]  like '%,%' and [To-Go Days]  like '% %'   )
AND (isnumeric([Working Spread Rate]) =0 and [Working Spread Rate]  like '%,%' and [Working Spread Rate]  like '% %'  )) xx
GROUP BY [Project Number] , [Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Marine_Progress_PMR_JSON_active_V]    Script Date: 12/8/2022 10:45:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_Progress_PMR_JSON_active_V]
AS SELECT  p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Activity],
convert(float,v.[Actual Duration - Days]) [Actual Duration - Days],
v.[Contract Number],
convert(float,v.[Current Budget Duration - Days]) [Current Budget Duration - Days],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[EAC - Days]) [EAC - Days],
convert(float,v.[EAC Previous Month Days]) [EAC Previous Month Days],
convert(float,v.[EAC Variance Days]) [EAC Variance Days],
convert(float,v.[ETC PF]) [ETC PF],
convert(float,v.[PF To Date]) [PF To Date],
v.[Project Number],
convert(float,v.[To-Go Days]) [To-Go Days],
v.[Vessel Name],
convert(float,v.[Working Spread Rate]) [Working Spread Rate],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
SELECT * 
FROM 
[gpd].[Marine_Progress_PMR_JSON_V]
WHERE (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([Actual Duration - Days]) !=0 and [Actual Duration - Days] not like '%,%' and [Actual Duration - Days] not like '% %'  or [Actual Duration - Days] is null )
AND (isnumeric([Current Budget Duration - Days]) !=0 and [Current Budget Duration - Days] not like '%,%' and [Current Budget Duration - Days] not like '% %'  or [Current Budget Duration - Days] is null )
AND (isnumeric([EAC - Days]) !=0 and [EAC - Days] not like '%,%' and [EAC - Days] not like '% %'  or [EAC - Days] is null )
AND (isnumeric([EAC Previous Month Days]) !=0 and [EAC Previous Month Days] not like '%,%' and [EAC Previous Month Days] not like '% %'  or [EAC Previous Month Days] is null )
AND (isnumeric([EAC Variance Days]) !=0 and [EAC Variance Days] not like '%,%' and [EAC Variance Days] not like '% %'  or [EAC Variance Days] is null )
AND (isnumeric([ETC PF]) !=0 and [ETC PF] not like '%,%' and [ETC PF] not like '% %'  or [ETC PF] is null )
AND (isnumeric([PF To Date]) !=0 and [PF To Date] not like '%,%' and [PF To Date] not like '% %'  or [PF To Date] is null )
AND (isnumeric([To-Go Days]) !=0 and [To-Go Days] not like '%,%' and [To-Go Days] not like '% %'  or [To-Go Days] is null )
AND (isnumeric([Working Spread Rate]) !=0 and [Working Spread Rate] not like '%,%' and [Working Spread Rate] not like '% %'  or [Working Spread Rate] is null )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_Progress_PMR_JSON_V]
where (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([Actual Duration - Days]) !=0 and [Actual Duration - Days] not like '%,%' and [Actual Duration - Days] not like '% %'  or [Actual Duration - Days] is null )
AND (isnumeric([Current Budget Duration - Days]) !=0 and [Current Budget Duration - Days] not like '%,%' and [Current Budget Duration - Days] not like '% %'  or [Current Budget Duration - Days] is null )
AND (isnumeric([EAC - Days]) !=0 and [EAC - Days] not like '%,%' and [EAC - Days] not like '% %'  or [EAC - Days] is null )
AND (isnumeric([EAC Previous Month Days]) !=0 and [EAC Previous Month Days] not like '%,%' and [EAC Previous Month Days] not like '% %'  or [EAC Previous Month Days] is null )
AND (isnumeric([EAC Variance Days]) !=0 and [EAC Variance Days] not like '%,%' and [EAC Variance Days] not like '% %'  or [EAC Variance Days] is null )
AND (isnumeric([ETC PF]) !=0 and [ETC PF] not like '%,%' and [ETC PF] not like '% %'  or [ETC PF] is null )
AND (isnumeric([PF To Date]) !=0 and [PF To Date] not like '%,%' and [PF To Date] not like '% %'  or [PF To Date] is null )
AND (isnumeric([To-Go Days]) !=0 and [To-Go Days] not like '%,%' and [To-Go Days] not like '% %'  or [To-Go Days] is null )
AND (isnumeric([Working Spread Rate]) !=0 and [Working Spread Rate] not like '%,%' and [Working Spread Rate] not like '% %'  or [Working Spread Rate] is null )) xx
GROUP BY [Project Number] , [Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Marine_SpreadRate_PMR_JSON_active_error_V]    Script Date: 12/8/2022 10:46:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_SpreadRate_PMR_JSON_active_error_V]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
SELECT * 
FROM 
[gpd].[Marine_Spreadrate_PMR_JSON_v]
WHERE (isdate(CONVERT(varchar,[Date],101))=0 ) 
AND (isnumeric([Current Budget]) =0 and [Current Budget]  like '%,%' and [Current Budget]  like '% %'  )
AND (isnumeric([EAC CurrentMonth]) =0 and [EAC CurrentMonth] like '%,%' and [EAC CurrentMonth]  like '% %' )
AND (isnumeric([EAC Previous Month]) =0 and [EAC Previous Month]  like '%,%' and [EAC Previous Month]  like '% %' )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_Spreadrate_PMR_JSON_v]
where (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isnumeric([Current Budget]) =0 and [Current Budget]  like '%,%' and [Current Budget]  like '% %' )
AND (isnumeric([EAC CurrentMonth]) =0 and [EAC CurrentMonth]  like '%,%' and [EAC CurrentMonth]  like '% %'  )
AND (isnumeric([EAC Previous Month]) =0 and [EAC Previous Month]  like '%,%' and [EAC Previous Month] like '% %' )) xx
GROUP BY [Project Number] , [Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Marine_SpreadRate_PMR_JSON_active_V]    Script Date: 12/8/2022 10:47:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Marine_SpreadRate_PMR_JSON_active_V]
AS SELECT  p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Contract Number],
convert(float,v.[Current Budget]) [Current Budget],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[EAC CurrentMonth]) [EAC CurrentMonth],
convert(float,v.[EAC Previous Month]) [EAC Previous Month],
v.[Project Number],
v.[Spread],
V.[Vessel Name],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
SELECT * 
FROM 
[gpd].[Marine_Spreadrate_PMR_JSON_v]
WHERE (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([Current Budget]) !=0 and [Current Budget] not like '%,%' and [Current Budget] not like '% %'  or [Current Budget] is null )
AND (isnumeric([EAC CurrentMonth]) !=0 and [EAC CurrentMonth] not like '%,%' and [EAC CurrentMonth] not like '% %'  or [EAC CurrentMonth] is null )
AND (isnumeric([EAC Previous Month]) !=0 and [EAC Previous Month] not like '%,%' and [EAC Previous Month] not like '% %'  or [EAC Previous Month] is null )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo)
FROM 
(select * from [gpd].[Marine_Spreadrate_PMR_JSON_v]
where (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([Current Budget]) !=0 and [Current Budget] not like '%,%' and [Current Budget] not like '% %'  or [Current Budget] is null )
AND (isnumeric([EAC CurrentMonth]) !=0 and [EAC CurrentMonth] not like '%,%' and [EAC CurrentMonth] not like '% %'  or [EAC CurrentMonth] is null )
AND (isnumeric([EAC Previous Month]) !=0 and [EAC Previous Month] not like '%,%' and [EAC Previous Month] not like '% %'  or [EAC Previous Month] is null )) xx
GROUP BY [Project Number] , [Contract Number] , [Date]);
GO


/****** Object:  View [gpd].[Milestone_PSRP_SCM_JSON_active_error_v]    Script Date: 12/8/2022 10:47:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[Milestone_PSRP_SCM_JSON_v]
WHERE (isnumeric([Order]) =0 and [Order]  like '%,%' and [Order]  like '% %'   )
AND (isnumeric([Weighting]) =0 and [Weighting]  like '%,%' and [Weighting]  like '% %'  )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number]  + zversionNo in (
select [project number] + [contract number]  + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[Milestone_PSRP_SCM_JSON_v]
WHERE (isnumeric([Order]) =0 and [Order]  like '%,%' and [Order]  like '% %' )
AND (isnumeric([Weighting]) =0 and [Weighting]  like '%,%' and [Weighting]  like '% %'  )
) xx
group by [project number],[contract number]);
GO


/****** Object:  View [gpd].[Milestone_PSRP_SCM_JSON_active_v]    Script Date: 12/8/2022 10:47:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.Category,
v.[Contract Number],
V.[Milestone Set],
convert(float,v.[Order]) [Order],
v.[Project Milestones],
v.[Project Number],
V.[Standard Milestones],
convert(float,v.[Weighting]) [Weighting],
V.[Weighting Type],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM 
[gpd].[Milestone_PSRP_SCM_JSON_v]
WHERE (isnumeric([Order]) !=0 and [Order] not like '%,%' and [Order] not like '% %'  or [Order] is null )
AND (isnumeric([Weighting]) !=0 and [Weighting] not like '%,%' and [Weighting] not like '% %'  or [Weighting] is null )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number]  + zversionNo in (
select [project number] + [contract number]  + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[Milestone_PSRP_SCM_JSON_v]
WHERE (isnumeric([Order]) !=0 and [Order] not like '%,%' and [Order] not like '% %'  or [Order] is null )
AND (isnumeric([Weighting]) !=0 and [Weighting] not like '%,%' and [Weighting] not like '% %'  or [Weighting] is null )
) xx
group by [project number],[contract number]);
GO


/****** Object:  View [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_error_V]    Script Date: 12/8/2022 10:48:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_error_V]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V] 
WHERE (isnumeric([Value]) =0 and [Value]  like '%,%' and [Value] like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101))=0 ) 
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V]
WHERE (isnumeric([Value]) =0 and [Value]  like '%,%' and [Value]  like '% %' )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_V]    Script Date: 12/8/2022 10:49:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_V]
AS SELECT  p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
v.[Model Type],
v.[Project Number],
convert(float,v.[Value]) [Value],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM 
[gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V] 
WHERE (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V]
WHERE (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) xx
group by [project number],[contract number],[Date]);
GO



/****** Object:  View [gpd].[Narratives_SCM_JSON_active_error_v]    Script Date: 12/8/2022 10:51:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Narratives_SCM_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[Narratives_SCM_JSON_v] 
where (isdate(CONVERT(varchar,[Date],101))=0) 
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] +[Phase]+ zversionNo in (
select [project number] + [contract number] + [Date] +[Phase]+ MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[Narratives_SCM_JSON_v]
WHERE 
 (isdate(CONVERT(varchar,[Date],101))=0 ) 

) xx
group by [project number],[contract number],[Date],[Phase]);
GO


/****** Object:  View [gpd].[Narratives_SCM_JSON_active_v]    Script Date: 12/8/2022 10:52:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Narratives_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
v.[Narrative],
v.[Narrative Type],
v.[PMR Slide Type],
v.[Phase],
V.[Project Number],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM
[gpd].[Narratives_SCM_JSON_v]
WHERE
 (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] +[Phase]+ zversionNo in (
select [project number] + [contract number] + [Date] +[Phase]+ MAX(zVersionNo)
FROM

(SELECT * FROM [gpd].[Narratives_SCM_JSON_v]
WHERE
 (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)

) xx
group by [project number],[contract number],[Date],[Phase]);
GO


/****** Object:  View [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:53:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Net_Cash_Cash_Position_PMR_JSON_v] 
where [Planned]  like '%,%' or [Planned]  like '% %' or [Actuals]  like '%,%' or [Actuals]  like '% %' or [Delta]  like '%,%' or [Delta]  like '% %' or [Accruals]  like '%,%' or [Accruals]  like '% %' or [Net]  like '%,%' or [Net]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Cash_Position_PMR_JSON_v] 
where [Planned]  like '%,%' or [Planned]  like '% %' or [Actuals]  like '%,%' or [Actuals]  like '% %' or [Delta]  like '%,%' or [Delta]  like '% %' or [Accruals]  like '%,%' or [Accruals]  like '% %' or [Net]  like '%,%' or [Net]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]    Script Date: 12/8/2022 10:54:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Type],
convert(float, v.[Planned] ) [Planned],
convert(float, v.[Actuals] ) [Actuals],
convert(float, v.[Delta] ) [Delta],
convert(float, v.[Accruals] ) [Accruals],
convert(float, v.[Net] ) [Net],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Net_Cash_Cash_Position_PMR_JSON_v] 
where 
(isnumeric([Planned]) !=0 and [Planned] not like '%,%' and [Planned] not like '% %'  or [Planned] is null )
and (isnumeric([Actuals]) !=0 and [Actuals] not like '%,%' and [Actuals] not like '% %'  or [Actuals] is null )
and (isnumeric([Delta]) !=0 and [Delta] not like '%,%' and [Delta] not like '% %'  or [Delta] is null )
and (isnumeric([Accruals]) !=0 and [Accruals] not like '%,%' and [Accruals] not like '% %'  or [Accruals] is null )
and (isnumeric([Net]) !=0 and [Net] not like '%,%' and [Net] not like '% %'  or [Net] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Cash_Position_PMR_JSON_v] 
where 
(isnumeric([Planned]) !=0 and [Planned] not like '%,%' and [Planned] not like '% %'  or [Planned] is null )
and (isnumeric([Actuals]) !=0 and [Actuals] not like '%,%' and [Actuals] not like '% %'  or [Actuals] is null )
and (isnumeric([Delta]) !=0 and [Delta] not like '%,%' and [Delta] not like '% %'  or [Delta] is null )
and (isnumeric([Accruals]) !=0 and [Accruals] not like '%,%' and [Accruals] not like '% %'  or [Accruals] is null )
and (isnumeric([Net]) !=0 and [Net] not like '%,%' and [Net] not like '% %'  or [Net] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Net_Cash_CashFlow_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:54:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Net_Cash_CashFlow_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or [Amount - Monthly]  like '%,%' or [Amount - Monthly]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_CashFlow_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or [Amount - Monthly]  like '%,%' or [Amount - Monthly]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]    Script Date: 12/8/2022 10:55:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Type 1],
v.[Date],
v.[Type],
convert(float, v.[Amount] ) [Amount],
convert(float, v.[Amount - Monthly] ) [Amount - Monthly],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Net_Cash_CashFlow_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isnumeric([Amount - Monthly]) !=0 and [Amount - Monthly] not like '%,%' and [Amount - Monthly] not like '% %'  or [Amount - Monthly] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_CashFlow_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isnumeric([Amount - Monthly]) !=0 and [Amount - Monthly] not like '%,%' and [Amount - Monthly] not like '% %'  or [Amount - Monthly] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_Collections_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:55:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Net_Cash_Collections_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Collections_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_Collections_PMR_JSON_active_v]    Script Date: 12/8/2022 10:56:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Type 1],
v.[Type 2],
convert(datetime, v.[Date], 101) [Date],
convert(float, v.[Amount] ) [Amount],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Net_Cash_Collections_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Collections_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:56:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Net_Cash_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_PMR_JSON_v] 
where [Amount]  like '%,%' or [Amount]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_PMR_JSON_active_v]    Script Date: 12/8/2022 10:57:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Type],
convert(datetime, v.[Date], 101) [Date],
convert(float, v.[Amount] ) [Amount],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Net_Cash_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_PMR_JSON_v] 
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL)
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Net_Cash_Status_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:57:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Status_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Net_Cash_Status_PMR_JSON_v] 
where [Balance]  like '%,%' or [Balance]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Status_PMR_JSON_v] 
where [Balance]  like '%,%' or [Balance]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Net_Cash_Status_PMR_JSON_active_v]    Script Date: 12/8/2022 10:58:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Net_Cash_Status_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Type],
convert(float, v.[Balance] ) [Balance],
convert(float, v.[Current / Not Due] ) [Current / Not Due],
convert(float, v.[1-30 Past Due] ) [1-30 Past Due],
convert(float, v.[31060 Past Due] ) [31060 Past Due],
convert(float, v.[> 60 Past Due] ) [> 60 Past Due],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Net_Cash_Status_PMR_JSON_v] 
where 
(isnumeric([Balance]) !=0 and [Balance] not like '%,%' and [Balance] not like '% %'  or [Balance] is null )
and (isnumeric([Current / Not Due]) !=0 and [Current / Not Due] not like '%,%' and [Current / Not Due] not like '% %'  or [Current / Not Due] is null )
and (isnumeric([1-30 Past Due]) !=0 and [1-30 Past Due] not like '%,%' and [1-30 Past Due] not like '% %'  or [1-30 Past Due] is null )
and (isnumeric([31060 Past Due]) !=0 and [31060 Past Due] not like '%,%' and [31060 Past Due] not like '% %'  or [31060 Past Due] is null )
and (isnumeric([> 60 Past Due]) !=0 and [> 60 Past Due] not like '%,%' and [> 60 Past Due] not like '% %'  or [> 60 Past Due] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Net_Cash_Status_PMR_JSON_v] 
where 
(isnumeric([Balance]) !=0 and [Balance] not like '%,%' and [Balance] not like '% %'  or [Balance] is null )
and (isnumeric([Current / Not Due]) !=0 and [Current / Not Due] not like '%,%' and [Current / Not Due] not like '% %'  or [Current / Not Due] is null )
and (isnumeric([1-30 Past Due]) !=0 and [1-30 Past Due] not like '%,%' and [1-30 Past Due] not like '% %'  or [1-30 Past Due] is null )
and (isnumeric([31060 Past Due]) !=0 and [31060 Past Due] not like '%,%' and [31060 Past Due] not like '% %'  or [31060 Past Due] is null )
and (isnumeric([> 60 Past Due]) !=0 and [> 60 Past Due] not like '%,%' and [> 60 Past Due] not like '% %'  or [> 60 Past Due] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Offshore_Client_Schedule_PMR_JSON_active_error_v]    Script Date: 12/8/2022 10:59:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Offshore_Client_Schedule_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Offshore_Client_Schedule_PMR_JSON_v] 
where isnumeric([Serial No]) =0 or [Serial No]  like '%,%' or [Serial No]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0 or isdate(CONVERT(varchar,[Client Requirement Date],101))=0 or isdate(CONVERT(varchar,[Forecast Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Offshore_Client_Schedule_PMR_JSON_v] 
where isnumeric([Serial No]) =0 or [Serial No]  like '%,%' or [Serial No]  like '% %' or isdate(CONVERT(varchar,[Date],101))=0 or isdate(CONVERT(varchar,[Client Requirement Date],101))=0 or isdate(CONVERT(varchar,[Forecast Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Offshore_Client_Schedule_PMR_JSON_active_v]    Script Date: 12/8/2022 10:59:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Offshore_Client_Schedule_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Client],
convert(numeric, v.[Serial No] ) [Serial No],
v.[Facility Name],
v.[Facility Type],
convert(datetime, v.[Client Requirement Date], 101) [Client Requirement Date],
convert(datetime, v.[Forecast Date], 101) [Forecast Date],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Offshore_Client_Schedule_PMR_JSON_v] 
where 
(isnumeric([Serial No]) !=0 and [Serial No] not like '%,%' and [Serial No] not like '% %'  or [Serial No] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Client Requirement Date],101))!=0 or [Client Requirement Date] is NULL)
and (isdate(CONVERT(varchar,[Forecast Date],101))!=0 or [Forecast Date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Offshore_Client_Schedule_PMR_JSON_v] 
where 
(isnumeric([Serial No]) !=0 and [Serial No] not like '%,%' and [Serial No] not like '% %'  or [Serial No] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Client Requirement Date],101))!=0 or [Client Requirement Date] is NULL)
and (isdate(CONVERT(varchar,[Forecast Date],101))!=0 or [Forecast Date] is NULL)) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Offshore_Yard_Layout_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:00:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Offshore_Yard_Layout_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Offshore_Yard_Layout_PMR_JSON_v] 
where isdate(CONVERT(varchar,[Date],101))=0 or isdate(CONVERT(varchar,[Required Clearance date as per schedule],101))=0 or isdate(CONVERT(varchar,[Forecast clearance date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Offshore_Yard_Layout_PMR_JSON_v] 
where isdate(CONVERT(varchar,[Date],101))=0 or isdate(CONVERT(varchar,[Required Clearance date as per schedule],101))=0 or isdate(CONVERT(varchar,[Forecast clearance date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Offshore_Yard_Layout_PMR_JSON_active_v]    Script Date: 12/8/2022 11:00:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Offshore_Yard_Layout_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
v.[Project Number],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Yard],
convert(numeric, v.[Serial No] ) [Serial No],
v.[Facility Name],
v.[Component],
v.[Designated Location as per Yard Layout],
v.[Currently Occupied Project],
v.[Currently Occupied Structure],
convert(datetime, v.[Required Clearance date as per schedule], 101) [Required Clearance date as per schedule],
convert(datetime, v.[Forecast clearance date], 101) [Forecast clearance date],
v.[Remarks],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select * 
from [gpd].[Offshore_Yard_Layout_PMR_JSON_v] 
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Required Clearance date as per schedule],101))!=0 or [Required Clearance date as per schedule] is NULL)
and (isdate(CONVERT(varchar,[Forecast clearance date],101))!=0 or [Forecast clearance date] is NULL) ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Offshore_Yard_Layout_PMR_JSON_v] 
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
and (isdate(CONVERT(varchar,[Required Clearance date as per schedule],101))!=0 or [Required Clearance date as per schedule] is NULL)
and (isdate(CONVERT(varchar,[Forecast clearance date],101))!=0 or [Forecast clearance date] is NULL) ) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO


/****** Object:  View [gpd].[Period_EAC_Variances_JSON_active_error_v]    Script Date: 12/8/2022 11:02:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Period_EAC_Variances_JSON_v] 
where [Revenue Impact]  like '%,%' or [Revenue Impact]  like '% %' or [Cost Impact]  like '%,%' or [Cost Impact]  like '% %' or [GP Impact]  like '%,%' or [GP Impact]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Period_EAC_Variances_JSON_v] 
where [Revenue Impact]  like '%,%' or [Revenue Impact]  like '% %' or [Cost Impact]  like '%,%' or [Cost Impact]  like '% %' or [GP Impact]  like '%,%' or [GP Impact]  like '% %' or isdate(CONVERT(varchar,[Month End Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Period_EAC_Variances_JSON_active_v]    Script Date: 12/8/2022 11:03:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
AS select p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,
v.[Project Number],
v.[Contract Number],
v.[PSRL1 Code],
v.[PSRL2 Code],
convert(datetime, v.[Month End Date], 101) [Month End Date],
v.[Order],
v.[Type],
v.[Variance Name],
convert(float, v.[Revenue impact]) [Revenue impact],
convert(float, v.[Cost impact]) [Cost impact],
convert(float, v.[GP impact]) [GP impact],
v.[Comments],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
select *
from gpd.Period_EAC_Variances_JSON_v
where (isnumeric([Cost impact]) !=0  or [Cost Impact] is null)
and (isnumeric([GP impact])!=0 or [GP impact] is null)
and (isnumeric([Revenue impact])!=0  or [Revenue impact] is null)
and (isdate(CONVERT(varchar,[month end date],101))!=0 or [month end date] is null)
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [Project Number] + [Contract Number] + [Month End Date] + zversionNo in (
select [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) from ( select *
from gpd.Period_EAC_Variances_JSON_v
where (isnumeric([Cost impact]) !=0  or [Cost Impact] is null)
and (isnumeric([GP impact])!=0 or [GP impact] is null)
and (isnumeric([Revenue impact])!=0  or [Revenue impact] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is null))xx
group by [Project Number],[Contract Number],[Month End Date]);
GO


/****** Object:  View [gpd].[procurement_status_report_planning_JSON_active_error_v]    Script Date: 12/8/2022 11:03:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[procurement_status_report_planning_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[procurement_status_report_planning_JSON_v] 
where [Weighted Progress]  like '%,%' or [Weighted Progress]  like '% %' or isdate(CONVERT(varchar,[Cut off Date],101))=0 or isdate(CONVERT(varchar,[Milestone Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Cut off Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Cut off Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[procurement_status_report_planning_JSON_v] 
where [Weighted Progress]  like '%,%' or [Weighted Progress]  like '% %' or isdate(CONVERT(varchar,[Cut off Date],101))=0 or isdate(CONVERT(varchar,[Milestone Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Cut off Date] );
GO


/****** Object:  View [gpd].[procurement_status_report_planning_JSON_active_v]    Script Date: 12/8/2022 11:04:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[procurement_status_report_planning_JSON_active_v]
AS select p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,
v.[Project Number],
v.[Contract Number],
v.[Scope],
v.[Package Manager / Expeditor],
v.[Location],
v.[Buyer],
v.[Supplier Name],
v.[Is Progressible (Yes/No)],
v.[Category],
v.[For Count (Yes/No)],
v.[Critical (Yes/No)],
v.[Cost Code],
v.[Cost Type],
v.[PSRL1Code],
v.[PSRL2Code],
v.[Discipline],
v.[Engineering MR Number],
v.[MR Description],
v.[PO Number],
v.[Package Description],
v.[UOM],
v.[Contract Weighting],
convert(numeric, v.[Weighted Progress] ) [Weighted Progress],
v.[Plan Type],
v.[Sub Plan Type],
v.[Milestone],
convert(datetime, v.[Milestone Date], 101) [Milestone Date],
convert(datetime, v.[Cut off Date], 101) [Cut off Date],
v.[Primavera  Activity  Id],
v.[Weighting Type],
v.[Milestone Set],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
select *
from gpd.procurement_status_report_planning_JSON_v
where (isnumeric([Weighted Progress]) !=0  or [Weighted Progress] is null)
and (isdate(CONVERT(varchar,[Milestone Date],101))!=0 or [Milestone Date] is null)
and (isdate(CONVERT(varchar,[Cut off Date],101))!=0 or [Cut off Date] is null)) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [Project Number] + [Contract Number] + [Cut off Date] + zversionNo in (
select [Project Number] + [Contract Number] + [Cut off Date] + MAX(zVersionNo) from ( select *
from gpd.procurement_status_report_planning_JSON_v
where (isnumeric([Weighted Progress]) !=0  or [Weighted Progress] is null)
and (isdate(CONVERT(varchar,[Milestone Date],101))!=0 or [Milestone Date] is null)
and (isdate(CONVERT(varchar,[Cut off Date],101))!=0 or [Cut off Date] is null))xx
group by [Project Number],[Contract Number],[Cut off Date]);
GO



/****** Object:  View [gpd].[PSR_Cost_Summary_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:07:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[PSR_Cost_Summary_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* 
FROM (select * from gpd.PSR_Cost_Summary_PMR_JSON_v
where 
(isnumeric([Amount]) =0 and [Amount] is not null) or [Amount]  like '%,%' or [Amount]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null ) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (
select * from gpd.Status_QHSES_PMR_JSON_v
where 
(isnumeric([Amount]) =0 and [Amount] is not null) or [Amount]  like '%,%' or [Amount]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null )) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO


/****** Object:  View [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]    Script Date: 12/8/2022 11:07:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,convert(numeric,v.[Amount]) [Amount]
,v.[Contract Number]
,convert(datetime,v.[Date]) [Date]
,v.[Event]
,v.[Order]
,v.[Project Number]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
FROM (select * from gpd.PSR_Cost_Summary_PMR_JSON_v
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (select * from gpd.PSR_Cost_Summary_PMR_JSON_v
where 
(isnumeric([Amount]) !=0 and [Amount] not like '%,%' and [Amount] not like '% %'  or [Amount] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)  
) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO




/****** Object:  View [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:11:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[RiskOpp_Deferral_Risks_PMR_JSON_v] 
WHERE (isnumeric([Better Same Worse]) =0 and [Better Same Worse]  like '%,%' and [Better Same Worse]  like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'  )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %'   )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101)) =0  )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %'  )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_v
WHERE (isnumeric([Better Same Worse])  =0 and [Better Same Worse]   like '%,%' and [Better Same Worse]   like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'   )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %' )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101)) =0 )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %' )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]    Script Date: 12/8/2022 11:12:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
convert(float,v.[Better Same Worse]) [Better Same Worse],
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[High]) [High],
convert(float,v.[Low]) [Low],
convert(datetime, v.[Mitigation by Date],101 ) [Mitigation by Date],
convert(float,v.[Most Likely]) [Most Likely],
convert(float,v.[Probability]) [Probability],
v.[Project Number],
v.[Risk Event],
v.[Risk ID],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM 
[gpd].[RiskOpp_Deferral_Risks_PMR_JSON_v] 
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101))!=0 or [Mitigation by Date] is NULL)
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_v
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101))!=0 or [Mitigation by Date] is NULL)
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null)
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Opportunity_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:12:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[RiskOpp_Opportunity_PMR_JSON_v]
WHERE (isnumeric([Better Same Worse]) =0 and [Better Same Worse]  like '%,%' and [Better Same Worse]  like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'  )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %'   )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %'  )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[RiskOpp_Opportunity_PMR_JSON_v]
WHERE (isnumeric([Better Same Worse])  =0 and [Better Same Worse]   like '%,%' and [Better Same Worse]   like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'   )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %' )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %' )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]    Script Date: 12/8/2022 11:13:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
convert(float,v.[Better Same Worse]) [Better Same Worse],
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[High]) [High],
convert(float,v.[Low]) [Low],
convert(float,v.[Most Likely]) [Most Likely],
v.[Opportunity Description],
v.[opportunity ID],
convert(float,v.[Probability]) [Probability],
v.[Project Number],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM
[gpd].[RiskOpp_Opportunity_PMR_JSON_v]
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo)
FROM

(SELECT * FROM [gpd].[RiskOpp_Opportunity_PMR_JSON_v]
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null)
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Risks_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:13:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
gpd.RiskOpp_Risks_PMR_JSON_v 
WHERE (isnumeric([Better Same Worse]) =0 and [Better Same Worse]  like '%,%' and [Better Same Worse]  like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'  )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %'   )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101)) =0  )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %'  )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM gpd.RiskOpp_Risks_PMR_JSON_v
WHERE (isnumeric([Better Same Worse])  =0 and [Better Same Worse]   like '%,%' and [Better Same Worse]   like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101)) =0 ) 
AND (isnumeric([High])  =0 and [High]   like '%,%' and [High]   like '% %'   )
AND (isnumeric([Low])  =0 and [Low]   like '%,%' and [Low]   like '% %' )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101)) =0 )
AND (isnumeric([Most Likely])  =0 and [Most Likely]   like '%,%' and [Most Likely]   like '% %' )
AND (isnumeric([Probability])  =0 and [Probability]   like '%,%' and [Probability]   like '% %' )
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Risks_PMR_JSON_active_v]    Script Date: 12/8/2022 11:14:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
convert(float,v.[Better Same Worse]) [Better Same Worse],
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[High]) [High],
convert(float,v.[Low]) [Low],
convert(datetime, v.[Mitigation by Date],101 ) [Mitigation by Date],
convert(float,v.[Most Likely]) [Most Likely],
convert(float,v.[Probability]) [Probability],
v.[Project Number],
v.[Risk Event],
v.[Risk ID],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM 
gpd.RiskOpp_Risks_PMR_JSON_v 
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101))!=0 or [Mitigation by Date] is NULL)
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null )) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM gpd.RiskOpp_Risks_PMR_JSON_v
WHERE (isnumeric([Better Same Worse]) !=0 and [Better Same Worse] not like '%,%' and [Better Same Worse] not like '% %'  or [Better Same Worse] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([High]) !=0 and [High] not like '%,%' and [High] not like '% %'  or [High] is null )
AND (isnumeric([Low]) !=0 and [Low] not like '%,%' and [Low] not like '% %'  or [Low] is null )
AND (isdate(CONVERT(varchar,[Mitigation by Date],101))!=0 or [Mitigation by Date] is NULL)
AND (isnumeric([Most Likely]) !=0 and [Most Likely] not like '%,%' and [Most Likely] not like '% %'  or [Most Likely] is null )
AND (isnumeric([Probability]) !=0 and [Probability] not like '%,%' and [Probability] not like '% %'  or [Probability] is null)
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:15:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[RiskOpp_Romap_Status_PMR_JSON_v] 
WHERE (isnumeric([Closed]) =0 and [Closed]  like '%,%' and [Closed]  like '% %')
AND (isdate(CONVERT(varchar,[Date],101))=0) 
AND (isnumeric([In Progress]) =0 and [In Progress]  like '%,%' and [In Progress]  like '% %' )
AND (isnumeric([Required]) =0 and [Required]  like '%,%' and [Required]  like '% %'  )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[RiskOpp_Romap_Status_PMR_JSON_v]
WHERE (isnumeric([Closed]) =0 and [Closed]  like '%,%' and [Closed]  like '% %'  )
AND (isdate(CONVERT(varchar,[Date],101))=0 ) 
AND (isnumeric([In Progress]) =0 and [In Progress]  like '%,%' and [In Progress]  like '% %'  )
AND (isnumeric([Required]) =0 and [Required]  like '%,%' and [Required] like '% %' )
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]    Script Date: 12/8/2022 11:15:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
convert(float,v.[Closed]) [Closed],
v.[Contract Number],
convert(datetime, v.[Date],101 ) [Date],
convert(float,v.[In Progress]) [In Progress],
v.[Project Number],
v.[R_O],
convert(float,v.[Required]) [Required],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
SELECT * FROM 
[gpd].[RiskOpp_Romap_Status_PMR_JSON_v] 
WHERE (isnumeric([Closed]) !=0 and [Closed] not like '%,%' and [Closed] not like '% %'  or [Closed] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([In Progress]) !=0 and [In Progress] not like '%,%' and [In Progress] not like '% %'  or [In Progress] is null )
AND (isnumeric([Required]) !=0 and [Required] not like '%,%' and [Required] not like '% %'  or [Required] is null )
) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[RiskOpp_Romap_Status_PMR_JSON_v]
WHERE (isnumeric([Closed]) !=0 and [Closed] not like '%,%' and [Closed] not like '% %'  or [Closed] is null )
AND (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
AND (isnumeric([In Progress]) !=0 and [In Progress] not like '%,%' and [In Progress] not like '% %'  or [In Progress] is null )
AND (isnumeric([Required]) !=0 and [Required] not like '%,%' and [Required] not like '% %'  or [Required] is null )
) xx
group by [project number],[contract number],[Date]);
GO


/****** Object:  View [gpd].[ScheduleAnalytics_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:20:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ScheduleAnalytics_PMR_JSON_active_error_v]
AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
from (
SELECT * FROM 
[gpd].[ScheduleAnalytics_PMR_JSON_v]
WHERE 
 (isdate(CONVERT(varchar,[Actual Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Actual Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Project Time Now],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Expected Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Late Finish],101))=0 )
AND   (isdate(CONVERT(varchar,[Late Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Resume Date],101))=0  )
AND   (isdate(CONVERT(varchar,[Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Suspend Date],101))=0 )
AND   (isdate(CONVERT(varchar,[Project Time Now],101))=0)
AND (isnumeric([Actual Duration]) =0 or [Actual Duration]  like '%,%' or [Actual Duration]  like '% %'    )
AND (isnumeric([Actual Work]) =0 or [Actual Work]  like '%,%' or [Actual Work]  like '% %'   )
AND (isnumeric([Baseline Duration]) =0 or [Baseline Duration]  like '%,%' or [Baseline Duration]  like '% %'    )
AND (isnumeric([Baseline Work]) =0 or [Baseline Work]  like '%,%' or [Baseline Work]  like '% %'    )
AND (isnumeric([Earned Value Work]) =0 or [Earned Value Work]  like '%,%' or [Earned Value Work]  like '% %'    )
AND (isnumeric([Free Float]) =0 or [Free Float]  like '%,%' or [Free Float]  like '% %'   )
AND (isnumeric([Maximum Lag]) =0 or [Maximum Lag]  like '%,%' or [Maximum Lag]  like '% %'   )
AND (isnumeric([Minimum Lag]) =0 or [Minimum Lag]  like '%,%' or [Minimum Lag]  like '% %'    )
AND (isnumeric([Number Of Discrete Successors]) =0 or [Number Of Discrete Successors]  like '%,%' or [Number Of Discrete Successors]  like '% %'    )
AND (isnumeric([Number of FF Predecessors]) =0 or [Number of FF Predecessors]  like '%,%' or [Number of FF Predecessors]  like '% %'   )
AND (isnumeric([Number of FF Successors]) =0 or [Number of FF Successors]  like '%,%' or [Number of FF Successors]  like '% %'    )
AND (isnumeric([Number of FS Predecessors]) =0 or [Number of FS Predecessors]  like '%,%' or [Number of FS Predecessors]  like '% %'  )
AND (isnumeric([Number of FS Successors]) =0 or [Number of FS Successors]  like '%,%' or [Number of FS Successors]  like '% %'    )
AND (isnumeric([Number of Lags]) =0 or [Number of Lags]  like '%,%' or [Number of Lags]  like '% %'    )
AND (isnumeric([Number of Leads]) =0 or [Number of Leads]  like '%,%' or [Number of Leads]  like '% %'   )
AND (isnumeric([Number of Predecessors]) =0 or [Number of Predecessors]  like '%,%' or [Number of Predecessors]  like '% %'    )
AND (isnumeric([Number of SF Predecessors]) =0 or [Number of SF Predecessors]  like '%,%' or [Number of SF Predecessors]  like '% %'   )
AND (isnumeric([Number of SF Successors]) =0 or [Number of SF Successors]  like '%,%' or [Number of SF Successors]  like '% %'   )
AND (isnumeric([Number of SS Predecessors]) =0 or [Number of SS Predecessors]  like '%,%' or [Number of SS Predecessors]  like '% %'   )
AND (isnumeric([Number of SS Successors]) =0 or [Number of SS Successors]  like '%,%' or [Number of SS Successors]  like '% %'   )
AND (isnumeric([Number of Successor Lags]) =0 or [Number of Successor Lags]  like '%,%' or [Number of Successor Lags]  like '% %'    )
AND (isnumeric([Number of Successor Leads]) =0 or [Number of Successor Leads]  like '%,%' or [Number of Successor Leads]  like '% %'    )
AND (isnumeric([Number of Successors]) =0 or [Number of Successors]  like '%,%' or [Number of Successors]  like '% %'   )
AND (isnumeric([Original Duration]) =0 or [Original Duration]  like '%,%' or [Original Duration]  like '% %'    )
AND (isnumeric([Physical % Complete]) =0 or [Physical % Complete]  like '%,%' or [Physical % Complete]  like '% %'   )
AND (isnumeric([Planned Value Work]) =0 or [Planned Value Work]  like '%,%' or [Planned Value Work]  like '% %'   )
--AND (isnumeric([Project Time Now]) =0 or [Project Time Now]  like '%,%' or [Project Time Now]  like '% %'   )
AND (isnumeric([Remaining Duration]) =0 or [Remaining Duration]  like '%,%' or [Remaining Duration]  like '% %'    )
AND (isnumeric([Remaining Work]) =0 or [Remaining Work]  like '%,%' or [Remaining Work]  like '% %'    )
AND (isnumeric([Total Float]) =0 or [Total Float]  like '%,%' or [Total Float]  like '% %' )
AND (isnumeric([Total Work]) =0 or [Total Work]  like '%,%' or [Total Work]  like '% %'    )


) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Start] + zversionNo in (
select [project number] + [contract number] + [Start] + MAX(zVersionNo) 
FROM

(SELECT * FROM [gpd].[ScheduleAnalytics_PMR_JSON_v]
WHERE 
 (isdate(CONVERT(varchar,[Actual Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Actual Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Project Time Now],101))=0  )
AND   (isdate(CONVERT(varchar,[Baseline Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Expected Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Finish],101))=0  )
AND   (isdate(CONVERT(varchar,[Late Finish],101))=0 )
AND   (isdate(CONVERT(varchar,[Late Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Resume Date],101))=0  )
AND   (isdate(CONVERT(varchar,[Start],101))=0  )
AND   (isdate(CONVERT(varchar,[Suspend Date],101))=0 )
AND   (isdate(CONVERT(varchar,[Project Time Now],101))=0)
AND (isnumeric([Actual Duration]) =0 or [Actual Duration]  like '%,%' or [Actual Duration]  like '% %'    )
AND (isnumeric([Actual Work]) =0 or [Actual Work]  like '%,%' or [Actual Work]  like '% %'   )
AND (isnumeric([Baseline Duration]) =0 or [Baseline Duration]  like '%,%' or [Baseline Duration]  like '% %'    )
AND (isnumeric([Baseline Work]) =0 or [Baseline Work]  like '%,%' or [Baseline Work]  like '% %'    )
AND (isnumeric([Earned Value Work]) =0 or [Earned Value Work]  like '%,%' or [Earned Value Work]  like '% %'    )
AND (isnumeric([Free Float]) =0 or [Free Float]  like '%,%' or [Free Float]  like '% %'   )
AND (isnumeric([Maximum Lag]) =0 or [Maximum Lag]  like '%,%' or [Maximum Lag]  like '% %'   )
AND (isnumeric([Minimum Lag]) =0 or [Minimum Lag]  like '%,%' or [Minimum Lag]  like '% %'    )
AND (isnumeric([Number Of Discrete Successors]) =0 or [Number Of Discrete Successors]  like '%,%' or [Number Of Discrete Successors]  like '% %'    )
AND (isnumeric([Number of FF Predecessors]) =0 or [Number of FF Predecessors]  like '%,%' or [Number of FF Predecessors]  like '% %'   )
AND (isnumeric([Number of FF Successors]) =0 or [Number of FF Successors]  like '%,%' or [Number of FF Successors]  like '% %'    )
AND (isnumeric([Number of FS Predecessors]) =0 or [Number of FS Predecessors]  like '%,%' or [Number of FS Predecessors]  like '% %'   )
AND (isnumeric([Number of FS Successors]) =0 or [Number of FS Successors]  like '%,%' or [Number of FS Successors]  like '% %'    )
AND (isnumeric([Number of Lags]) =0 or [Number of Lags]  like '%,%' or [Number of Lags]  like '% %'    )
AND (isnumeric([Number of Leads]) =0 or [Number of Leads]  like '%,%' or [Number of Leads]  like '% %'   )
AND (isnumeric([Number of Predecessors]) =0 or [Number of Predecessors]  like '%,%' or [Number of Predecessors]  like '% %'    )
AND (isnumeric([Number of SF Predecessors]) =0 or [Number of SF Predecessors]  like '%,%' or [Number of SF Predecessors]  like '% %'   )
AND (isnumeric([Number of SF Successors]) =0 or [Number of SF Successors]  like '%,%' or [Number of SF Successors]  like '% %'   )
AND (isnumeric([Number of SS Predecessors]) =0 or [Number of SS Predecessors]  like '%,%' or [Number of SS Predecessors]  like '% %'   )
AND (isnumeric([Number of SS Successors]) =0 or [Number of SS Successors]  like '%,%' or [Number of SS Successors]  like '% %'   )
AND (isnumeric([Number of Successor Lags]) =0 or [Number of Successor Lags]  like '%,%' or [Number of Successor Lags]  like '% %'    )
AND (isnumeric([Number of Successor Leads]) =0 or [Number of Successor Leads]  like '%,%' or [Number of Successor Leads]  like '% %'    )
AND (isnumeric([Number of Successors]) =0 or [Number of Successors]  like '%,%' or [Number of Successors]  like '% %'   )
AND (isnumeric([Original Duration]) =0 or [Original Duration]  like '%,%' or [Original Duration]  like '% %'    )
AND (isnumeric([Physical % Complete]) =0 or [Physical % Complete]  like '%,%' or [Physical % Complete]  like '% %'   )
AND (isnumeric([Planned Value Work]) =0 or [Planned Value Work]  like '%,%' or [Planned Value Work]  like '% %'   )
--AND (isnumeric([Project Time Now]) =0 or [Project Time Now]  like '%,%' or [Project Time Now]  like '% %'   )
AND (isnumeric([Remaining Duration]) =0 or [Remaining Duration]  like '%,%' or [Remaining Duration]  like '% %'    )
AND (isnumeric([Remaining Work]) =0 or [Remaining Work]  like '%,%' or [Remaining Work]  like '% %'    )
AND (isnumeric([Total Float]) =0 or [Total Float]  like '%,%' or [Total Float]  like '% %' )
AND (isnumeric([Total Work]) =0 or [Total Work]  like '%,%' or [Total Work]  like '% %'    )

) xx
group by [project number],[contract number],[Start]);
GO


/****** Object:  View [gpd].[ScheduleAnalytics_PMR_JSON_active_v]    Script Date: 12/8/2022 11:21:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[ScheduleAnalytics_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.rssk,
v.[Activity Status],
v.[Activity Type Ex],
convert(float,v.[Actual Duration]) [Actual Duration],
convert(datetime, v.[Actual Finish],101 ) [Actual Finish],
convert(datetime, v.[Actual Start],101 ) [Actual Start],
convert(float,v.[Actual Work]) [Actual Work],
convert(float,v.[Baseline Duration]) [Baseline Duration],
convert(datetime, v.[Baseline Finish],101 ) [Baseline Finish],
convert(datetime, v.[Baseline Project Time Now],101 ) [Baseline Project Time Now],
convert(datetime, v.[Baseline Start],101 ) [Baseline Start],
convert(float,v.[Baseline Work]) [Baseline Work],
v.[Calendar],
v.[Contract Number],
V.[Critical],
v.[Description],
V.[Earned Value Technique],
convert(float,v.[Earned Value Work]) [Earned Value Work],
convert(datetime, v.[Expected Finish],101 ) [Expected Finish],
convert(datetime, v.[Finish],101 ) [Finish],
convert(float,v.[Free Float]) [Free Float],
v.[GLOBAL - EXECUTED BY TYPE],
v.[GLOBAL - CHANGE MANAGEMENT],
v.[GLOBAL - FUNCTION],
v.[GLOBAL - OFFICE],
v.[GLOBAL - PHASE],
v.[GLOBAL - PRIME],
v.[GLOBAL - PRIME (GCOA V11)],
v.[GLOBAL - SUBPRIME],
v.[GLOBAL - SUBPRIME (GCOA V11)],
v.[Id],
v.[Is Out Of Sequence],
convert(datetime, v.[Late Finish],101 ) [Late Finish],
convert(datetime, v.[Late Start],101 ) [Late Start],
v.[Longest Path],
convert(float,v.[Maximum Lag]) [Maximum Lag],
convert(float,v.[Minimum Lag]) [Minimum Lag],
convert(float,v.[Number Of Discrete Successors]) [Number Of Discrete Successors],
convert(float,v.[Number of FF Predecessors]) [Number of FF Predecessors],
convert(float,v.[Number of FF Successors]) [Number of FF Successors],
convert(float,v.[Number of FS Predecessors]) [Number of FS Predecessors],
convert(float,v.[Number of FS Successors]) [Number of FS Successors],
convert(float,v.[Number of Lags]) [Number of Lags],
convert(float,v.[Number of Leads]) [Number of Leads],
convert(float,v.[Number of Predecessors]) [Number of Predecessors],
convert(float,v.[Number of SF Predecessors]) [Number of SF Predecessors],
convert(float,v.[Number of SF Successors]) [Number of SF Successors],
convert(float,v.[Number of SS Predecessors]) [Number of SS Predecessors],
convert(float,v.[Number of SS Successors]) [Number of SS Successors],
convert(float,v.[Number of Successor Lags]) [Number of Successor Lags],
convert(float,v.[Number of Successor Leads]) [Number of Successor Leads],
convert(float,v.[Number of Successors]) [Number of Successors],
convert(float,v.[Original Duration]) [Original Duration],
convert(float,v.[Physical % Complete]) [Physical % Complete],
convert(float,v.[Planned Value Work]) [Planned Value Work],

V.[Primary Constraint],
v.[Primary Constraint Date],
v.[Project Number],
--convert(float,v.[Project Time Now]) [Project Time Now],
convert(datetime, v.[Project Time Now],101 ) [Project Time Now],
convert(float,v.[Remaining Duration]) [Remaining Duration],
convert(float,v.[Remaining Work]) [Remaining Work],
convert(datetime, v.[Resume Date],101 ) [Resume Date],
V.[Secondary Constraint],
convert(datetime, v.[Start],101 ) [Start],
convert(datetime, v.[Suspend Date],101 ) [Suspend Date],
convert(float,v.[Total Float]) [Total Float],
convert(float,v.[Total Work]) [Total Work],
v.[WBS Code],
v.[WBS Level],
v.[WBS Name],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]

from (
SELECT * FROM
[gpd].[ScheduleAnalytics_PMR_JSON_v]
WHERE
 (isdate(CONVERT(varchar,[Actual Finish],101))!=0 or [Actual Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Actual Start],101))!=0 or [Actual Start] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Finish],101))!=0 or [Baseline Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Project Time Now],101))!=0 or [Baseline Project Time Now] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Start],101))!=0 or [Baseline Start] is NULL)
AND   (isdate(CONVERT(varchar,[Expected Finish],101))!=0 or [Expected Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Finish],101))!=0 or [Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Late Finish],101))!=0 or [Late Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Late Start],101))!=0 or [Late Start] is NULL)
AND   (isdate(CONVERT(varchar,[Resume Date],101))!=0 or [Resume Date] is NULL)
AND   (isdate(CONVERT(varchar,[Start],101))!=0 or [Start] is NULL)
AND   (isdate(CONVERT(varchar,[Suspend Date],101))!=0 or [Suspend Date] is NULL)
AND   (isdate(CONVERT(varchar,[Project Time Now],101))!=0 or [Project Time Now] is NULL)

AND (isnumeric([Actual Duration]) !=0 and [Actual Duration] not like '%,%' and [Actual Duration] not like '% %'  or [Actual Duration] is null )
AND (isnumeric([Actual Work]) !=0 and [Actual Work] not like '%,%' and [Actual Work] not like '% %'  or [Actual Work] is null )
AND (isnumeric([Baseline Duration]) !=0 and [Baseline Duration] not like '%,%' and [Baseline Duration] not like '% %'  or [Baseline Duration] is null )
AND (isnumeric([Baseline Work]) !=0 and [Baseline Work] not like '%,%' and [Baseline Work] not like '% %'  or [Baseline Work] is null )
AND (isnumeric([Earned Value Work]) !=0 and [Earned Value Work] not like '%,%' and [Earned Value Work] not like '% %'  or [Earned Value Work] is null )
AND (isnumeric([Free Float]) !=0 and [Free Float] not like '%,%' and [Free Float] not like '% %'  or [Free Float] is null )
AND (isnumeric([Maximum Lag]) !=0 and [Maximum Lag] not like '%,%' and [Maximum Lag] not like '% %'  or [Maximum Lag] is null )
AND (isnumeric([Minimum Lag]) !=0 and [Minimum Lag] not like '%,%' and [Minimum Lag] not like '% %'  or [Minimum Lag] is null )
AND (isnumeric([Number Of Discrete Successors]) !=0 and [Number Of Discrete Successors] not like '%,%' and [Number Of Discrete Successors] not like '% %'  or [Number Of Discrete Successors] is null )
AND (isnumeric([Number of FF Predecessors]) !=0 and [Number of FF Predecessors] not like '%,%' and [Number of FF Predecessors] not like '% %'  or [Number of FF Predecessors] is null )
AND (isnumeric([Number of FF Successors]) !=0 and [Number of FF Successors] not like '%,%' and [Number of FF Successors] not like '% %'  or [Number of FF Successors] is null )
AND (isnumeric([Number of FS Predecessors]) !=0 and [Number of FS Predecessors] not like '%,%' and [Number of FS Predecessors] not like '% %'  or [Number of FS Predecessors] is null )
AND (isnumeric([Number of FS Successors]) !=0 and [Number of FS Successors] not like '%,%' and [Number of FS Successors] not like '% %'  or [Number of FS Successors] is null )
AND (isnumeric([Number of Lags]) !=0 and [Number of Lags] not like '%,%' and [Number of Lags] not like '% %'  or [Number of Lags] is null )
AND (isnumeric([Number of Leads]) !=0 and [Number of Leads] not like '%,%' and [Number of Leads] not like '% %'  or [Number of Leads] is null )
AND (isnumeric([Number of Predecessors]) !=0 and [Number of Predecessors] not like '%,%' and [Number of Predecessors] not like '% %'  or [Number of Predecessors] is null )
AND (isnumeric([Number of SF Predecessors]) !=0 and [Number of SF Predecessors] not like '%,%' and [Number of SF Predecessors] not like '% %'  or [Number of SF Predecessors] is null )
AND (isnumeric([Number of SF Successors]) !=0 and [Number of SF Successors] not like '%,%' and [Number of SF Successors] not like '% %'  or [Number of SF Successors] is null )
AND (isnumeric([Number of SS Predecessors]) !=0 and [Number of SS Predecessors] not like '%,%' and [Number of SS Predecessors] not like '% %'  or [Number of SS Predecessors] is null )
AND (isnumeric([Number of SS Successors]) !=0 and [Number of SS Successors] not like '%,%' and [Number of SS Successors] not like '% %'  or [Number of SS Successors] is null )
AND (isnumeric([Number of Successor Lags]) !=0 and [Number of Successor Lags] not like '%,%' and [Number of Successor Lags] not like '% %'  or [Number of Successor Lags] is null )
AND (isnumeric([Number of Successor Leads]) !=0 and [Number of Successor Leads] not like '%,%' and [Number of Successor Leads] not like '% %'  or [Number of Successor Leads] is null )
AND (isnumeric([Number of Successors]) !=0 and [Number of Successors] not like '%,%' and [Number of Successors] not like '% %'  or [Number of Successors] is null )
AND (isnumeric([Original Duration]) !=0 and [Original Duration] not like '%,%' and [Original Duration] not like '% %'  or [Original Duration] is null )
AND (isnumeric([Physical % Complete]) !=0 and [Physical % Complete] not like '%,%' and [Physical % Complete] not like '% %'  or [Physical % Complete] is null )
AND (isnumeric([Planned Value Work]) !=0 and [Planned Value Work] not like '%,%' and [Planned Value Work] not like '% %'  or [Planned Value Work] is null )
--AND (isnumeric([Project Time Now]) !=0 and [Project Time Now] not like '%,%' and [Project Time Now] not like '% %'  or [Project Time Now] is null )
AND (isnumeric([Remaining Duration]) !=0 and [Remaining Duration] not like '%,%' and [Remaining Duration] not like '% %'  or [Remaining Duration] is null )
AND (isnumeric([Remaining Work]) !=0 and [Remaining Work] not like '%,%' and [Remaining Work] not like '% %'  or [Remaining Work] is null )
AND (isnumeric([Total Float]) !=0 and [Total Float] not like '%,%' and [Total Float] not like '% %'  or [Total Float] is null )
AND (isnumeric([Total Work]) !=0 and [Total Work] not like '%,%' and [Total Work] not like '% %'  or [Total Work] is null )


) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Start] + zversionNo in (
select [project number] + [contract number] + [Start] + MAX(zVersionNo)
FROM

(SELECT * FROM [gpd].[ScheduleAnalytics_PMR_JSON_v]
WHERE
 (isdate(CONVERT(varchar,[Actual Finish],101))!=0 or [Actual Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Actual Start],101))!=0 or [Actual Start] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Finish],101))!=0 or [Baseline Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Project Time Now],101))!=0 or [Baseline Project Time Now] is NULL)
AND   (isdate(CONVERT(varchar,[Baseline Start],101))!=0 or [Baseline Start] is NULL)
AND   (isdate(CONVERT(varchar,[Expected Finish],101))!=0 or [Expected Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Finish],101))!=0 or [Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Late Finish],101))!=0 or [Late Finish] is NULL)
AND   (isdate(CONVERT(varchar,[Late Start],101))!=0 or [Late Start] is NULL)
AND   (isdate(CONVERT(varchar,[Resume Date],101))!=0 or [Resume Date] is NULL)
AND   (isdate(CONVERT(varchar,[Start],101))!=0 or [Start] is NULL)
AND   (isdate(CONVERT(varchar,[Suspend Date],101))!=0 or [Suspend Date] is NULL)
AND   (isdate(CONVERT(varchar,[Project Time Now],101))!=0 or [Project Time Now] is NULL)
AND (isnumeric([Actual Duration]) !=0 and [Actual Duration] not like '%,%' and [Actual Duration] not like '% %'  or [Actual Duration] is null )
AND (isnumeric([Actual Work]) !=0 and [Actual Work] not like '%,%' and [Actual Work] not like '% %'  or [Actual Work] is null )
AND (isnumeric([Baseline Duration]) !=0 and [Baseline Duration] not like '%,%' and [Baseline Duration] not like '% %'  or [Baseline Duration] is null )
AND (isnumeric([Baseline Work]) !=0 and [Baseline Work] not like '%,%' and [Baseline Work] not like '% %'  or [Baseline Work] is null )
AND (isnumeric([Earned Value Work]) !=0 and [Earned Value Work] not like '%,%' and [Earned Value Work] not like '% %'  or [Earned Value Work] is null )
AND (isnumeric([Free Float]) !=0 and [Free Float] not like '%,%' and [Free Float] not like '% %'  or [Free Float] is null )
AND (isnumeric([Maximum Lag]) !=0 and [Maximum Lag] not like '%,%' and [Maximum Lag] not like '% %'  or [Maximum Lag] is null )
AND (isnumeric([Minimum Lag]) !=0 and [Minimum Lag] not like '%,%' and [Minimum Lag] not like '% %'  or [Minimum Lag] is null )
AND (isnumeric([Number Of Discrete Successors]) !=0 and [Number Of Discrete Successors] not like '%,%' and [Number Of Discrete Successors] not like '% %'  or [Number Of Discrete Successors] is null )
AND (isnumeric([Number of FF Predecessors]) !=0 and [Number of FF Predecessors] not like '%,%' and [Number of FF Predecessors] not like '% %'  or [Number of FF Predecessors] is null )
AND (isnumeric([Number of FF Successors]) !=0 and [Number of FF Successors] not like '%,%' and [Number of FF Successors] not like '% %'  or [Number of FF Successors] is null )
AND (isnumeric([Number of FS Predecessors]) !=0 and [Number of FS Predecessors] not like '%,%' and [Number of FS Predecessors] not like '% %'  or [Number of FS Predecessors] is null )
AND (isnumeric([Number of FS Successors]) !=0 and [Number of FS Successors] not like '%,%' and [Number of FS Successors] not like '% %'  or [Number of FS Successors] is null )
AND (isnumeric([Number of Lags]) !=0 and [Number of Lags] not like '%,%' and [Number of Lags] not like '% %'  or [Number of Lags] is null )
AND (isnumeric([Number of Leads]) !=0 and [Number of Leads] not like '%,%' and [Number of Leads] not like '% %'  or [Number of Leads] is null )
AND (isnumeric([Number of Predecessors]) !=0 and [Number of Predecessors] not like '%,%' and [Number of Predecessors] not like '% %'  or [Number of Predecessors] is null )
AND (isnumeric([Number of SF Predecessors]) !=0 and [Number of SF Predecessors] not like '%,%' and [Number of SF Predecessors] not like '% %'  or [Number of SF Predecessors] is null )
AND (isnumeric([Number of SF Successors]) !=0 and [Number of SF Successors] not like '%,%' and [Number of SF Successors] not like '% %'  or [Number of SF Successors] is null )
AND (isnumeric([Number of SS Predecessors]) !=0 and [Number of SS Predecessors] not like '%,%' and [Number of SS Predecessors] not like '% %'  or [Number of SS Predecessors] is null )
AND (isnumeric([Number of SS Successors]) !=0 and [Number of SS Successors] not like '%,%' and [Number of SS Successors] not like '% %'  or [Number of SS Successors] is null )
AND (isnumeric([Number of Successor Lags]) !=0 and [Number of Successor Lags] not like '%,%' and [Number of Successor Lags] not like '% %'  or [Number of Successor Lags] is null )
AND (isnumeric([Number of Successor Leads]) !=0 and [Number of Successor Leads] not like '%,%' and [Number of Successor Leads] not like '% %'  or [Number of Successor Leads] is null )
AND (isnumeric([Number of Successors]) !=0 and [Number of Successors] not like '%,%' and [Number of Successors] not like '% %'  or [Number of Successors] is null )
AND (isnumeric([Original Duration]) !=0 and [Original Duration] not like '%,%' and [Original Duration] not like '% %'  or [Original Duration] is null )
AND (isnumeric([Physical % Complete]) !=0 and [Physical % Complete] not like '%,%' and [Physical % Complete] not like '% %'  or [Physical % Complete] is null )
AND (isnumeric([Planned Value Work]) !=0 and [Planned Value Work] not like '%,%' and [Planned Value Work] not like '% %'  or [Planned Value Work] is null )
--AND (isnumeric([Project Time Now]) !=0 and [Project Time Now] not like '%,%' and [Project Time Now] not like '% %'  or [Project Time Now] is null )
AND (isnumeric([Remaining Duration]) !=0 and [Remaining Duration] not like '%,%' and [Remaining Duration] not like '% %'  or [Remaining Duration] is null )
AND (isnumeric([Remaining Work]) !=0 and [Remaining Work] not like '%,%' and [Remaining Work] not like '% %'  or [Remaining Work] is null )
AND (isnumeric([Total Float]) !=0 and [Total Float] not like '%,%' and [Total Float] not like '% %'  or [Total Float] is null )
AND (isnumeric([Total Work]) !=0 and [Total Work] not like '%,%' and [Total Work] not like '% %'  or [Total Work] is null )
) xx
group by [project number],[contract number],[Start]);
GO


/****** Object:  View [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]    Script Date: 12/8/2022 11:21:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]
AS SELECT * FROM gpd.Standard_Milestone_PSRP_SCM_JSON_v
WHERE zVersionNo in (
SELECT CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Standard_Milestone_PSRP_SCM_JSON_v
);
GO


/****** Object:  View [gpd].[Status_QHSES_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:22:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Status_QHSES_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM (select * from gpd.Status_QHSES_PMR_JSON_v
where 
(isnumeric([Value]) =0 and [Value] is not null) or [Value]  like '%,%' or [Value]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null ) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (
select * from gpd.Status_QHSES_PMR_JSON_v
where 
(isnumeric([Value]) =0 and [Value] is not null) or [Value]  like '%,%' or [Value]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null )) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO


/****** Object:  View [gpd].[Status_QHSES_PMR_JSON_active_v]    Script Date: 12/8/2022 11:23:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Status_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,v.[Contract Number]
,convert(datetime,v.[Date]) [Date]
,v.[Function]
,v.[Project Number]
,v.[RAG]
,v.[Type]
,convert(float,v.[Value]) [Value]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
FROM (select * from gpd.Status_QHSES_PMR_JSON_v
where 
(isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (select * from gpd.Status_QHSES_PMR_JSON_v
where 
(isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)  
) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO




/****** Object:  View [gpd].[Vendor_Payment_Forecast_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:25:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Vendor_Payment_Forecast_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Vendor_Payment_Forecast_PMR_JSON_v] 
where [Amount $]  like '%,%' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Vendor_Payment_Forecast_PMR_JSON_v] 
where [Amount $]  like '%,%' or isdate(CONVERT(varchar,[Month End Date],101))=0 or isdate(CONVERT(varchar,[Date],101))=0) xx
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


/****** Object:  View [gpd].[Vendor_Payment_Forecast_PMR_JSON_active_v]    Script Date: 12/8/2022 11:25:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Vendor_Payment_Forecast_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,
v.[Project Number],
v.[Contract Number],
v.[Serial No],
v.[Description],
v.[Vendor Name],
convert(datetime, v.[Month End Date], 101) [Month End Date],
convert(datetime, v.[Date], 101) [Date],
convert(float, v.[Amount $]) [Amount $],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
from (
select *
from gpd.Vendor_Payment_Forecast_PMR_JSON_v
where (isnumeric([Amount $]) !=0  or [Amount $] is null)
and (isdate(CONVERT(varchar,[month end date],101))!=0 or [month end date] is null)
and (isdate(CONVERT(varchar,[date],101))!=0 or [date] is null)
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [Project Number] + [Contract Number] + [Month End Date] + zversionNo in (
select [Project Number] + [Contract Number] + [Month End Date] + MAX(zVersionNo) from ( select *
from gpd.Vendor_Payment_Forecast_PMR_JSON_v
where (isnumeric([Amount $]) !=0  or [Amount $] is null)
and (isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is null)
and (isdate(CONVERT(varchar,[date],101))!=0 or [date] is null))xx
group by [Project Number],[Contract Number],[Month End Date]);
GO




/****** Object:  View [gpd].[Work_Pack_Progress_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:27:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Work_Pack_Progress_PMR_JSON_V] 
where isdate(CONVERT(varchar,[Cutoff],101))=0 ) V
LEFT JOIN dim_ent_CONTRACT c on v.[CONTRACT] =c.[contract_number] and c.active=1
LEFT JOIN DIM_ENTP_PROJECT p ON p.[DIM_ENTP_PROJECT_NK]=c.[DIM_ENT_PROJECT_NK] and p.active=1
WHERE [PROJECT] + [CONTRACT] + [Cutoff] + zVersionNo in (
SELECT [PROJECT] + [CONTRACT] + [Cutoff] + MAX(zVersionNo) FROM (select * 
from [gpd].[Work_Pack_Progress_PMR_JSON_V] 
where isdate(CONVERT(varchar,[Cutoff],101))=0 ) xx
GROUP BY [PROJECT], [CONTRACT], [Cutoff] );
GO


/****** Object:  View [gpd].[Work_Pack_Progress_PMR_JSON_active_V]    Script Date: 12/8/2022 11:28:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_V]
AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk,  
v.[PROJECT],
v.[CONTRACT],
v.[DISCIPLINE],
v.[WPNO],
v.[WP DESCRIPTION],
convert(float, v.[AFC HRS] ) [AFC HRS],
convert(float, v.[WP HRS] ) [WP HRS],
convert(float, v.[CUMEARNED] ) [CUMEARNED],
v.[AREA],
v.[STATUS],
v.[JOB NUMBER],
v.[ACTIVITY CODE],
convert(datetime, v.[Cutoff], 101) [Cutoff],
v.[Cost Code],
v.[Cost Type],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]
FROM (
select *
from [gpd].[Work_Pack_Progress_PMR_JSON_V]
where
(isnumeric([AFC HRS]) !=0 and [AFC HRS] not like '%,%' and [AFC HRS] not like '% %'  or [AFC HRS] is null )
and (isnumeric([WP HRS]) !=0 and [WP HRS] not like '%,%' and [WP HRS] not like '% %'  or [WP HRS] is null )
and (isnumeric([CUMEARNED]) !=0 and [CUMEARNED] not like '%,%' and [CUMEARNED] not like '% %'  or [CUMEARNED] is null )
and (isdate(CONVERT(varchar,[Cutoff],101))!=0 or [Cutoff] is NULL) ) V
LEFT JOIN dim_ent_CONTRACT c on v.[CONTRACT] =c.[contract_number] and c.active=1
LEFT JOIN DIM_ENTP_PROJECT p ON p.[DIM_ENTP_PROJECT_NK]=c.[DIM_ENT_PROJECT_NK] and p.active=1
WHERE [PROJECT] + [CONTRACT] + [Cutoff] + zVersionNo in (
SELECT [PROJECT] + [CONTRACT] + [Cutoff] + MAX(zVersionNo) FROM (select *
from [gpd].[Work_Pack_Progress_PMR_JSON_V]
where
(isnumeric([AFC HRS]) !=0 and [AFC HRS] not like '%,%' and [AFC HRS] not like '% %'  or [AFC HRS] is null )
and (isnumeric([WP HRS]) !=0 and [WP HRS] not like '%,%' and [WP HRS] not like '% %'  or [WP HRS] is null )
and (isnumeric([CUMEARNED]) !=0 and [CUMEARNED] not like '%,%' and [CUMEARNED] not like '% %'  or [CUMEARNED] is null )
and (isdate(CONVERT(varchar,[Cutoff],101))!=0 or [Cutoff] is NULL)) xx
GROUP BY [PROJECT], [CONTRACT], [Cutoff] );
GO


/****** Object:  View [gpd].[WorkHours_QHSES_PMR_JSON_active_error_v]    Script Date: 12/8/2022 11:28:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[WorkHours_QHSES_PMR_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* 
FROM (select * from gpd.WorkHours_QHSES_PMR_JSON_v
where 
(isnumeric([Month to Date]) !=0 and [Month to Date] not like '%,%' and [Month to Date] not like '% %'  or [Month to Date] is not null )
or (isnumeric([Project to Date]) !=0 and [Project to Date] not like '%,%' and [Project to Date] not like '% %'  or [Project to Date] is not null )
or (isnumeric([Year to Date]) !=0 and [Year to Date] not like '%,%' and [Year to Date] not like '% %'  or [Year to Date] is not null )
or (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is not null) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (
select * from gpd.WorkHours_QHSES_PMR_JSON_v
where 
(isnumeric([Month to Date]) !=0 and [Month to Date] not like '%,%' and [Month to Date] not like '% %'  or [Month to Date] is not null )
or (isnumeric([Project to Date]) !=0 and [Project to Date] not like '%,%' and [Project to Date] not like '% %'  or [Project to Date] is not null )
or (isnumeric([Year to Date]) !=0 and [Year to Date] not like '%,%' and [Year to Date] not like '% %'  or [Year to Date] is not null )
or (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is not null)) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO


/****** Object:  View [gpd].[WorkHours_QHSES_PMR_JSON_active_v]    Script Date: 12/8/2022 11:29:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[WorkHours_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,v.[Contract Number]
,convert(datetime,v.[Date]) [Date]
,convert(numeric,v.[Month to Date]) [Month to Date]
,v.[Project Number]
,convert(numeric,v.[Project to Date]) [Project to Date]
,v.[Type]
,convert(numeric,v.[Year to Date]) [Year to Date]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
FROM (select * from gpd.WorkHours_QHSES_PMR_JSON_v
where 
(isnumeric([Month to Date]) !=0 and [Month to Date] not like '%,%' and [Month to Date] not like '% %'  or [Month to Date] is null )
and (isnumeric([Project to Date]) !=0 and [Project to Date] not like '%,%' and [Project to Date] not like '% %'  or [Project to Date] is null )
and (isnumeric([Year to Date]) !=0 and [Year to Date] not like '%,%' and [Year to Date] not like '% %'  or [Year to Date] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (select * from gpd.WorkHours_QHSES_PMR_JSON_v
where 
(isnumeric([Month to Date]) !=0 and [Month to Date] not like '%,%' and [Month to Date] not like '% %'  or [Month to Date] is null )
and (isnumeric([Project to Date]) !=0 and [Project to Date] not like '%,%' and [Project to Date] not like '% %'  or [Project to Date] is null )
and (isnumeric([Year to Date]) !=0 and [Year to Date] not like '%,%' and [Year to Date] not like '% %'  or [Year to Date] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL)  
) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO



