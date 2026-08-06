IF	OBJECT_ID('[gpd].[CONQ_RCA_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_RCA_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Critical_Vendor_Payments_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Critical_Vendor_Payments_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[CONQ_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_HUC_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Subcontract_Cost_Status_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Subcontract_Cost_Status_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[RiskOpp_Contingency_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]
GO

IF	OBJECT_ID('[gpd].[CONQ_RCA_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_RCA_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[Critical_Vendor_Payments_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[Critical_Vendor_Payments_PMR_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[CONQ_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[Campaign_Readiness_HUC_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_HUC_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[Subcontract_Cost_Status_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[Subcontract_Cost_Status_JSON_active_error_v]
GO
IF	OBJECT_ID('[gpd].[RiskOpp_Contingency_PMR_JSON_active_error_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_error_v]
GO

/****** Object:  View [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_error_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from (select * from gpd.Campaign_Readiness_HUC_PMR_JSON_v
where 
((isnumeric([Readiness Review - Actual %]) =0 and  [Readiness Review - Actual %] is not null) or [Readiness Review - Actual %]  like '%,%' and [Readiness Review - Actual %]  like '% %'  )
or ((isnumeric([Readiness Review - Plan %]) =0 and  [Readiness Review - Plan %] is not null) or [Readiness Review - Plan %]  like '%,%' and [Readiness Review - Plan %] like '% %'   )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Finish],101))=0 and [Forecast Finish] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Start],101))=0 and [Forecast Start] is not NULL) 
or (isdate(CONVERT(varchar,[Original Finish],101))=0 and [Original Finish] is not NULL) 
or (isdate(CONVERT(varchar,[Original Start],101))=0 and [Original Start] is not NULL) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (select * from gpd.Campaign_Readiness_HUC_PMR_JSON_v
where 
((isnumeric([Readiness Review - Actual %]) =0 and  [Readiness Review - Actual %] is not null) or [Readiness Review - Actual %]  like '%,%' and [Readiness Review - Actual %]  like '% %'  )
or ((isnumeric([Readiness Review - Plan %]) =0 and  [Readiness Review - Plan %] is not null) or [Readiness Review - Plan %]  like '%,%' and [Readiness Review - Plan %] like '% %'   )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Finish],101))=0 and [Forecast Finish] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Start],101))=0 and [Forecast Start] is not NULL) 
or (isdate(CONVERT(varchar,[Original Finish],101))=0 and [Original Finish] is not NULL) 
or (isdate(CONVERT(varchar,[Original Start],101))=0 and [Original Start] is not NULL) ) xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk],v.[Campaign Description]
,v.[Contract Number]
,v.[Main Vessel]
,convert(datetime,v.[Date]) [Date]
,convert(datetime,v.[Forecast Finish]) [Forecast Finish]
,convert(datetime,v.[Forecast Start]) [Forecast Start]
,convert(datetime,v.[Original Finish]) [Original Finish]
,convert(datetime,v.[Original Start]) [Original Start]
,v.[Project Number]
,convert(float,v.[Readiness Review - Actual %]) [Readiness Review - Actual %]
,convert(float,v.[Readiness Review - Plan %]) [Readiness Review - Plan %]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
from (select * from gpd.Campaign_Readiness_HUC_PMR_JSON_v
where 
(isnumeric([Readiness Review - Actual %]) !=0 and [Readiness Review - Actual %] not like '%,%' and [Readiness Review - Actual %] not like '% %'  or [Readiness Review - Actual %] is null )
and (isnumeric([Readiness Review - Plan %]) !=0 and [Readiness Review - Plan %] not like '%,%' and [Readiness Review - Plan %] not like '% %'  or [Readiness Review - Plan %] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Finish],101))!=0 or [Forecast Finish] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Start],101))!=0 or [Forecast Start] is NULL) 
and (isdate(CONVERT(varchar,[Original Finish],101))!=0 or [Original Finish] is NULL) 
and (isdate(CONVERT(varchar,[Original Start],101))!=0 or [Original Start] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (select * from gpd.Campaign_Readiness_HUC_PMR_JSON_v
where 
(isnumeric([Readiness Review - Actual %]) !=0 and [Readiness Review - Actual %] not like '%,%' and [Readiness Review - Actual %] not like '% %'  or [Readiness Review - Actual %] is null )
and (isnumeric([Readiness Review - Plan %]) !=0 and [Readiness Review - Plan %] not like '%,%' and [Readiness Review - Plan %] not like '% %'  or [Readiness Review - Plan %] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Finish],101))!=0 or [Forecast Finish] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Start],101))!=0 or [Forecast Start] is NULL) 
and (isdate(CONVERT(varchar,[Original Finish],101))!=0 or [Original Finish] is NULL) 
and (isdate(CONVERT(varchar,[Original Start],101))!=0 or [Original Start] is NULL) 
) xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_error_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from (
select * from [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_v]
where 
((isnumeric([Actual Cumulative]) =0 and [Actual Cumulative] is not null) or [Actual Cumulative]  like '%,%' or [Actual Cumulative]  like '% %'   )
or ((isnumeric([Actual Incremental]) =0 and [Actual Incremental] is not null) or [Actual Incremental]  like '%,%' or [Actual Incremental]  like '% %'   )
or ((isnumeric([Forecast Cumulative Early]) =0 and [Forecast Cumulative Early] is not null) or [Forecast Cumulative Early]  like '%,%' or [Forecast Cumulative Early]  like '% %'   )
or ((isnumeric([Forecast Cumulative Late]) =0 and [Forecast Cumulative Late] is not null) or [Forecast Cumulative Late]  like '%,%' or [Forecast Cumulative Late]  like '% %'   )
or ((isnumeric([Forecast Cumulative Mid]) =0 and [Forecast Cumulative Mid] is not null) or [Forecast Cumulative Mid]  like '%,%' or [Forecast Cumulative Mid]  like '% %'   )
or ((isnumeric([Forecast Incremental Early]) =0 and [Forecast Incremental Early] is not null) or [Forecast Incremental Early]  like '%,%' or [Forecast Incremental Early]  like '% %'   )
or ((isnumeric([Forecast Incremental Late]) =0 and [Forecast Incremental Late] is not null) or [Forecast Incremental Late]  like '%,%' or [Forecast Incremental Late]  like '% %'   )
or ((isnumeric([Forecast Incremental Mid]) =0 and [Forecast Incremental Mid] is not null) or [Forecast Incremental Mid]  like '%,%' or [Forecast Incremental Mid]  like '% %'   )
or ((isnumeric([Plan Cumulative Early]) =0 and [Plan Cumulative Early] is not null) or [Plan Cumulative Early]  like '%,%' or [Plan Cumulative Early]  like '% %'   )
or ((isnumeric([Plan Cumulative Late]) =0 and [Plan Cumulative Late] is not null) or [Plan Cumulative Late]  like '%,%' or [Plan Cumulative Late]  like '% %'   )
or ((isnumeric([Plan Cumulative Mid]) =0 and [Plan Cumulative Mid] is not null) or [Plan Cumulative Mid]  like '%,%' or [Plan Cumulative Mid]  like '% %'   )
or ((isnumeric([Plan Incremental Early]) =0 and [Plan Incremental Early] is not null) or [Plan Incremental Early]  like '%,%' or [Plan Incremental Early]  like '% %'   )
or ((isnumeric([Plan Incremental Late]) =0 and [Plan Incremental Late] is not null) or [Plan Incremental Late]  like '%,%' or [Plan Incremental Late]  like '% %'   )
or ((isnumeric([Plan Incremental Mid]) =0 and [Plan Incremental Mid] is not null) or [Plan Incremental Mid]  like '%,%' or [Plan Incremental Mid]  like '% %'   )
or ((isnumeric([Plan Incremental]) =0 and [Plan Incremental] is not null) or [Plan Incremental]  like '%,%' or [Plan Incremental]  like '% %'   )
or ((isnumeric([Value]) =0 and [Value] is not null) or [Value]  like '%,%' or [Value]  like '% %'   )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (
select * from [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_v]
where 
((isnumeric([Actual Cumulative]) =0 and [Actual Cumulative] is not null) or [Actual Cumulative]  like '%,%' or [Actual Cumulative]  like '% %'   )
or ((isnumeric([Actual Incremental]) =0 and [Actual Incremental] is not null) or [Actual Incremental]  like '%,%' or [Actual Incremental]  like '% %'   )
or ((isnumeric([Forecast Cumulative Early]) =0 and [Forecast Cumulative Early] is not null) or [Forecast Cumulative Early]  like '%,%' or [Forecast Cumulative Early]  like '% %'   )
or ((isnumeric([Forecast Cumulative Late]) =0 and [Forecast Cumulative Late] is not null) or [Forecast Cumulative Late]  like '%,%' or [Forecast Cumulative Late]  like '% %'   )
or ((isnumeric([Forecast Cumulative Mid]) =0 and [Forecast Cumulative Mid] is not null) or [Forecast Cumulative Mid]  like '%,%' or [Forecast Cumulative Mid]  like '% %'   )
or ((isnumeric([Forecast Incremental Early]) =0 and [Forecast Incremental Early] is not null) or [Forecast Incremental Early]  like '%,%' or [Forecast Incremental Early]  like '% %'   )
or ((isnumeric([Forecast Incremental Late]) =0 and [Forecast Incremental Late] is not null) or [Forecast Incremental Late]  like '%,%' or [Forecast Incremental Late]  like '% %'   )
or ((isnumeric([Forecast Incremental Mid]) =0 and [Forecast Incremental Mid] is not null) or [Forecast Incremental Mid]  like '%,%' or [Forecast Incremental Mid]  like '% %'   )
or ((isnumeric([Plan Cumulative Early]) =0 and [Plan Cumulative Early] is not null) or [Plan Cumulative Early]  like '%,%' or [Plan Cumulative Early]  like '% %'   )
or ((isnumeric([Plan Cumulative Late]) =0 and [Plan Cumulative Late] is not null) or [Plan Cumulative Late]  like '%,%' or [Plan Cumulative Late]  like '% %'   )
or ((isnumeric([Plan Cumulative Mid]) =0 and [Plan Cumulative Mid] is not null) or [Plan Cumulative Mid]  like '%,%' or [Plan Cumulative Mid]  like '% %'   )
or ((isnumeric([Plan Incremental Early]) =0 and [Plan Incremental Early] is not null) or [Plan Incremental Early]  like '%,%' or [Plan Incremental Early]  like '% %'   )
or ((isnumeric([Plan Incremental Late]) =0 and [Plan Incremental Late] is not null) or [Plan Incremental Late]  like '%,%' or [Plan Incremental Late]  like '% %'   )
or ((isnumeric([Plan Incremental Mid]) =0 and [Plan Incremental Mid] is not null) or [Plan Incremental Mid]  like '%,%' or [Plan Incremental Mid]  like '% %'   )
or ((isnumeric([Plan Incremental]) =0 and [Plan Incremental] is not null) or [Plan Incremental]  like '%,%' or [Plan Incremental]  like '% %'   )
or ((isnumeric([Value]) =0 and [Value] is not null) or [Value]  like '%,%' or [Value]  like '% %'   )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) )xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,v.[Contract Number]
,convert(datetime,v.[Date]) [Date]
,convert(numeric,v.[Actual Cumulative]) [Actual Cumulative]
,convert(numeric,v.[Actual Incremental]) [Actual Incremental]
,convert(numeric,v.[Forecast Cumulative Early]) [Forecast Cumulative Early]
,convert(numeric,v.[Forecast Cumulative Late]) [Forecast Cumulative Late]
,convert(numeric,v.[Forecast Cumulative Mid]) [Forecast Cumulative Mid]
,convert(numeric,v.[Forecast Incremental Early]) [Forecast Incremental Early]
,convert(numeric,v.[Forecast Incremental Late]) [Forecast Incremental Late]
,convert(numeric,v.[Forecast Incremental Mid]) [Forecast Incremental Mid]
,convert(numeric,v.[Plan Cumulative Early]) [Plan Cumulative Early]
,convert(numeric,v.[Plan Cumulative Late]) [Plan Cumulative Late]
,convert(numeric,v.[Plan Cumulative Mid]) [Plan Cumulative Mid]
,convert(numeric,v.[Plan Incremental Early]) [Plan Incremental Early]
,convert(numeric,v.[Plan Incremental Late]) [Plan Incremental Late]
,convert(numeric,v.[Plan Incremental Mid]) [Plan Incremental Mid]
,convert(numeric,v.[Plan Incremental]) [Plan Incremental]
,convert(numeric,v.[Value]) [Value]
,v.[Plan Type]
,v.[Project Number]
,v.[PSRL1Code]
,v.[PSRL2Code]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
from (select * from [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_v]
where (isnumeric([Actual Cumulative]) !=0 and [Actual Cumulative] not like '%,%' and [Actual Cumulative] not like '% %'  or [Actual Cumulative] is null )
and (isnumeric([Actual Incremental]) !=0 and [Actual Incremental] not like '%,%' and [Actual Incremental] not like '% %'  or [Actual Incremental] is null )
and (isnumeric([Forecast Cumulative Early]) !=0 and [Forecast Cumulative Early] not like '%,%' and [Forecast Cumulative Early] not like '% %'  or [Forecast Cumulative Early] is null )
and (isnumeric([Forecast Cumulative Late]) !=0 and [Forecast Cumulative Late] not like '%,%' and [Forecast Cumulative Late] not like '% %'  or [Forecast Cumulative Late] is null )
and (isnumeric([Forecast Cumulative Mid]) !=0 and [Forecast Cumulative Mid] not like '%,%' and [Forecast Cumulative Mid] not like '% %'  or [Forecast Cumulative Mid] is null )
and (isnumeric([Forecast Incremental Early]) !=0 and [Forecast Incremental Early] not like '%,%' and [Forecast Incremental Early] not like '% %'  or [Forecast Incremental Early] is null )
and (isnumeric([Forecast Incremental Late]) !=0 and [Forecast Incremental Late] not like '%,%' and [Forecast Incremental Late] not like '% %'  or [Forecast Incremental Late] is null )
and (isnumeric([Forecast Incremental Mid]) !=0 and [Forecast Incremental Mid] not like '%,%' and [Forecast Incremental Mid] not like '% %'  or [Forecast Incremental Mid] is null )
and (isnumeric([Plan Cumulative Early]) !=0 and [Plan Cumulative Early] not like '%,%' and [Plan Cumulative Early] not like '% %'  or [Plan Cumulative Early] is null )
and (isnumeric([Plan Cumulative Late]) !=0 and [Plan Cumulative Late] not like '%,%' and [Plan Cumulative Late] not like '% %'  or [Plan Cumulative Late] is null )
and (isnumeric([Plan Cumulative Mid]) !=0 and [Plan Cumulative Mid] not like '%,%' and [Plan Cumulative Mid] not like '% %'  or [Plan Cumulative Mid] is null )
and (isnumeric([Plan Incremental Early]) !=0 and [Plan Incremental Early] not like '%,%' and [Plan Incremental Early] not like '% %'  or [Plan Incremental Early] is null )
and (isnumeric([Plan Incremental Late]) !=0 and [Plan Incremental Late] not like '%,%' and [Plan Incremental Late] not like '% %'  or [Plan Incremental Late] is null )
and (isnumeric([Plan Incremental Mid]) !=0 and [Plan Incremental Mid] not like '%,%' and [Plan Incremental Mid] not like '% %'  or [Plan Incremental Mid] is null )
and (isnumeric([Plan Incremental]) !=0 and [Plan Incremental] not like '%,%' and [Plan Incremental] not like '% %'  or [Plan Incremental] is null )
and (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (select * from [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_v]
where (isnumeric([Actual Cumulative]) !=0 and [Actual Cumulative] not like '%,%' and [Actual Cumulative] not like '% %'  or [Actual Cumulative] is null )
and (isnumeric([Actual Incremental]) !=0 and [Actual Incremental] not like '%,%' and [Actual Incremental] not like '% %'  or [Actual Incremental] is null )
and (isnumeric([Forecast Cumulative Early]) !=0 and [Forecast Cumulative Early] not like '%,%' and [Forecast Cumulative Early] not like '% %'  or [Forecast Cumulative Early] is null )
and (isnumeric([Forecast Cumulative Late]) !=0 and [Forecast Cumulative Late] not like '%,%' and [Forecast Cumulative Late] not like '% %'  or [Forecast Cumulative Late] is null )
and (isnumeric([Forecast Cumulative Mid]) !=0 and [Forecast Cumulative Mid] not like '%,%' and [Forecast Cumulative Mid] not like '% %'  or [Forecast Cumulative Mid] is null )
and (isnumeric([Forecast Incremental Early]) !=0 and [Forecast Incremental Early] not like '%,%' and [Forecast Incremental Early] not like '% %'  or [Forecast Incremental Early] is null )
and (isnumeric([Forecast Incremental Late]) !=0 and [Forecast Incremental Late] not like '%,%' and [Forecast Incremental Late] not like '% %'  or [Forecast Incremental Late] is null )
and (isnumeric([Forecast Incremental Mid]) !=0 and [Forecast Incremental Mid] not like '%,%' and [Forecast Incremental Mid] not like '% %'  or [Forecast Incremental Mid] is null )
and (isnumeric([Plan Cumulative Early]) !=0 and [Plan Cumulative Early] not like '%,%' and [Plan Cumulative Early] not like '% %'  or [Plan Cumulative Early] is null )
and (isnumeric([Plan Cumulative Late]) !=0 and [Plan Cumulative Late] not like '%,%' and [Plan Cumulative Late] not like '% %'  or [Plan Cumulative Late] is null )
and (isnumeric([Plan Cumulative Mid]) !=0 and [Plan Cumulative Mid] not like '%,%' and [Plan Cumulative Mid] not like '% %'  or [Plan Cumulative Mid] is null )
and (isnumeric([Plan Incremental Early]) !=0 and [Plan Incremental Early] not like '%,%' and [Plan Incremental Early] not like '% %'  or [Plan Incremental Early] is null )
and (isnumeric([Plan Incremental Late]) !=0 and [Plan Incremental Late] not like '%,%' and [Plan Incremental Late] not like '% %'  or [Plan Incremental Late] is null )
and (isnumeric([Plan Incremental Mid]) !=0 and [Plan Incremental Mid] not like '%,%' and [Plan Incremental Mid] not like '% %'  or [Plan Incremental Mid] is null )
and (isnumeric([Plan Incremental]) !=0 and [Plan Incremental] not like '%,%' and [Plan Incremental] not like '% %'  or [Plan Incremental] is null )
and (isnumeric([Value]) !=0 and [Value] not like '%,%' and [Value] not like '% %'  or [Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Comm_Progress_HUC_PMR_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_error_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from (select * from gpd.Comm_Progress_HUC_PMR_JSON_v
where 
((isnumeric([Cumulative Actual]) =0 and [Cumulative Actual] is not null) or [Cumulative Actual]  like '%,%' or [Cumulative Actual]  like '% %'   )
or ((isnumeric([Cumulative Forecast]) =0 and [Cumulative Forecast] is not null) or [Cumulative Forecast]  like '%,%' and [Cumulative Forecast]  like '% %'   )
or ((isnumeric([Cumulative Plan]) =0 and [Cumulative Plan] is not null ) or [Cumulative Plan] like '%,%' or [Cumulative Plan]  like '% %'  )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Contractual Date],101))=0 and [Contractual Date] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Date],101))=0 and [Forecast Date] is not NULL) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (select * from gpd.Comm_Progress_HUC_PMR_JSON_v
where 
((isnumeric([Cumulative Actual]) =0 and [Cumulative Actual] is not null) or [Cumulative Actual]  like '%,%' or [Cumulative Actual]  like '% %'   )
or ((isnumeric([Cumulative Forecast]) =0 and [Cumulative Forecast] is not null) or [Cumulative Forecast]  like '%,%' and [Cumulative Forecast]  like '% %'   )
or ((isnumeric([Cumulative Plan]) =0 and [Cumulative Plan] is not null ) or [Cumulative Plan] like '%,%' or [Cumulative Plan]  like '% %'  )
or (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Contractual Date],101))=0 and [Contractual Date] is not NULL) 
or (isdate(CONVERT(varchar,[Forecast Date],101))=0 and [Forecast Date] is not NULL) )xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Comm_Progress_HUC_PMR_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk],v.[Contract Number]
,convert(datetime,v.[Contractual Date]) [Contractual Date]
,convert(datetime,v.[Forecast Date]) [Forecast Date]
,convert(datetime,v.[Date]) [Date]
,convert(float,v.[Cumulative Actual]) [Cumulative Actual]
,convert(float,v.[Cumulative Forecast]) [Cumulative Forecast]
,convert(float,v.[Cumulative Plan]) [Cumulative Plan]
,v.[Project Number]
,v.[Systems]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
from (select * from gpd.Comm_Progress_HUC_PMR_JSON_v
where 
(isnumeric([Cumulative Actual]) !=0 and [Cumulative Actual] not like '%,%' and [Cumulative Actual] not like '% %'  or [Cumulative Actual] is null )
and (isnumeric([Cumulative Forecast]) !=0 and [Cumulative Forecast] not like '%,%' and [Cumulative Forecast] not like '% %'  or [Cumulative Forecast] is null )
and (isnumeric([Cumulative Plan]) !=0 and [Cumulative Plan] not like '%,%' and [Cumulative Plan] not like '% %'  or [Cumulative Plan] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Contractual Date],101))!=0 or [Contractual Date] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Date],101))!=0 or [Forecast Date] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (select * from gpd.Comm_Progress_HUC_PMR_JSON_v
where 
(isnumeric([Cumulative Actual]) !=0 and [Cumulative Actual] not like '%,%' and [Cumulative Actual] not like '% %'  or [Cumulative Actual] is null )
and (isnumeric([Cumulative Forecast]) !=0 and [Cumulative Forecast] not like '%,%' and [Cumulative Forecast] not like '% %'  or [Cumulative Forecast] is null )
and (isnumeric([Cumulative Plan]) !=0 and [Cumulative Plan] not like '%,%' and [Cumulative Plan] not like '% %'  or [Cumulative Plan] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Contractual Date],101))!=0 or [Contractual Date] is NULL) 
and (isdate(CONVERT(varchar,[Forecast Date],101))!=0 or [Forecast Date] is NULL) 
) xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[CONQ_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM (select * from gpd.CONQ_JSON_v
where 
(isnumeric([Budget]) =0 and [Budget] is not null) or [Budget] like '%,%' or [Budget] like '% %' 
or (isnumeric([CONQ Value]) =0 and [CONQ Value] is not null) or [CONQ Value]  like '%,%' or [CONQ Value]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null ) ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (
select * from gpd.CONQ_JSON_v
where 
(isnumeric([Budget]) =0 and [Budget] is not null) or [Budget] like '%,%' or [Budget] like '% %' 
or (isnumeric([CONQ Value]) =0 and [CONQ Value] is not null) or [CONQ Value]  like '%,%' or [CONQ Value]  like '% %'  
or (isdate(CONVERT(varchar,[Date],101))=0  and [Date] is not null )) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO
/****** Object:  View [gpd].[CONQ_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,convert(float,v.[Budget]) [Budget]
,v.[Category 1]
,convert(float,v.[CONQ Value]) [CONQ Value]
,v.[Contract Number]
,convert(datetime,v.[Date]) [Date]
,v.[Item Description]
,v.[Phase]
,v.[Project Number]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo]
FROM (select * from gpd.CONQ_JSON_v
where 
(isnumeric([Budget]) !=0 and [Budget] not like '%,%' and [Budget] not like '% %'  or [Budget] is null )
and (isnumeric([CONQ Value]) !=0 and [CONQ Value] not like '%,%' and [CONQ Value] not like '% %'  or [CONQ Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (select * from gpd.CONQ_JSON_v
where 
(isnumeric([Budget]) !=0 and [Budget] not like '%,%' and [Budget] not like '% %'  or [Budget] is null )
and (isnumeric([CONQ Value]) !=0 and [CONQ Value] not like '%,%' and [CONQ Value] not like '% %'  or [CONQ Value] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
) xx
GROUP BY [Project Number],[Contract Number],[Date]);
GO
/****** Object:  View [gpd].[CONQ_RCA_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_RCA_JSON_active_error_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from 
(select * from gpd.CONQ_RCA_JSON_v 
where (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or ((isnumeric([Closed]) =0 and [Closed] is not null) or [Closed]  like '%,%' or [Closed]  like '% %'   )
or ((isnumeric([Open]) =0 and [Open] is not null) or [Open]  like '%,%' or [Open]  like '% %'   )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [date] + zversionNo in (
select [project number] + [contract number] + [date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) 
from (select * from gpd.CONQ_RCA_JSON_v 
where (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or ((isnumeric([Closed]) =0 and [Closed] is not null) or [Closed]  like '%,%' or [Closed]  like '% %'   )
or ((isnumeric([Open]) =0 and [Open] is not null) or [Open]  like '%,%' or [Open]  like '% %'   ))xx
group by [project number],[contract number],[date]);
GO
/****** Object:  View [gpd].[CONQ_RCA_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_RCA_JSON_active_v] AS select	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,
		convert(float, v.[Closed]) [Closed],
		v.[Contract Number],
		convert(datetime, v.[date], 101) [date],
		convert(float, v.[Open]) [Open],
		v.[Project Number],
		v.[Type],
		v.[zCreatedDateTime],
		v.[zSourceFileName],
		v.[ZVersionNo]
from (
		select *
from gpd.CONQ_RCA_JSON_v 
where (isnumeric([Closed]) !=0 and [Closed] not like '%,%' and [Closed] not like '% %'  or [Closed] is null )
and (isnumeric([Open]) !=0 and [Open] not like '%,%' and [Open] not like '% %'  or [Open] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
		) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [date] + zversionNo in (
	select [project number] + [contract number] + [date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) 
	from (	select *
from gpd.CONQ_RCA_JSON_v 
where (isnumeric([Closed]) !=0 and [Closed] not like '%,%' and [Closed] not like '% %'  or [Closed] is null )
and (isnumeric([Open]) !=0 and [Open] not like '%,%' and [Open] not like '% %'  or [Open] is null )
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) ) xx
group by [project number],[contract number],[date]);
GO
/****** Object:  View [gpd].[Critical_Vendor_Payments_PMR_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Critical_Vendor_Payments_PMR_JSON_active_error_v] AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.*
FROM (
select * 
from [gpd].[Critical_Vendor_Payments_PMR_JSON_v] 
where (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Due Date],101))=0 and [Due Date] is not NULL) 
or ((isnumeric([Amount $]) =0 and [Amount $] is not null) or [Amount $]  like '%,%' or [Amount $]  like '% %'   )

) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Critical_Vendor_Payments_PMR_JSON_v] 
where (isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Due Date],101))=0 and [Due Date] is not NULL) 
or ((isnumeric([Amount $]) =0 and [Amount $] is not null) or [Amount $]  like '%,%' or [Amount $]  like '% %'   )
) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO
/****** Object:  View [gpd].[Critical_Vendor_Payments_PMR_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Critical_Vendor_Payments_PMR_JSON_active_v] AS SELECT 	p.dim_entp_project_nk,
		c.dim_ent_contract_nk,		
		v.rssk,  
		convert(float, v.[Amount $] ) [Amount $],
v.[Contract Number],
convert(datetime, v.[Date], 101) [Date],
v.[Description],
convert(datetime, v.[Due Date], 101) [Due Date],
v.[Impact],
v.[zVersionNo],
v.[Project Number],
v.[Serial No],
v.[Vendor Name],
v.[zCreatedDateTime],
v.[zSourceFileName]
FROM (
select * 
from [gpd].[Critical_Vendor_Payments_PMR_JSON_v] 
where 
(isdate(CONVERT(varchar,[Due Date],101))!=0 or [Due Date] is NULL) 
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isnumeric([Amount $]) !=0 and [Amount $] not like '%,%' and [Amount $] not like '% %'  or [Amount $] is null )
 ) V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * 
from [gpd].[Critical_Vendor_Payments_PMR_JSON_v] 
where 
(isdate(CONVERT(varchar,[Due Date],101))!=0 or [Due Date] is NULL) 
and (isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isnumeric([Amount $]) !=0 and [Amount $] not like '%,%' and [Amount $] not like '% %'  or [Amount $] is null )) xx
GROUP BY [Project Number], [Contract Number], [Date] );
GO
/****** Object:  View [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v] AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.*
FROM (select * from [gpd].[ModelMat_Model_Maturity_PMR_JSON_v]
where 
(isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Actual Date],101))=0 and [Actual Date] is not NULL) 
or (isdate(CONVERT(varchar,[Planned Date],101))=0 and [Planned Date] is not NULL) 
or ((isnumeric([Total Items]) =0 and [Total Items] is not null) or [Total Items]  like '%,%' or [Total Items]  like '% %'   )
or ((isnumeric([Closed Items]) =0 and [Closed Items] is not null) or [Closed Items]  like '%,%' or [Closed Items]  like '% %'   )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * from [gpd].[ModelMat_Model_Maturity_PMR_JSON_v]
where 
(isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or (isdate(CONVERT(varchar,[Actual Date],101))=0 and [Actual Date] is not NULL) 
or (isdate(CONVERT(varchar,[Planned Date],101))=0 and [Planned Date] is not NULL) 
or ((isnumeric([Total Items]) =0 and [Total Items] is not null) or [Total Items]  like '%,%' or [Total Items]  like '% %'   )
or ((isnumeric([Closed Items]) =0 and [Closed Items] is not null) or [Closed Items]  like '%,%' or [Closed Items]  like '% %'   )
) xx
GROUP BY [Project Number] + [Contract Number] + [Date]);
GO
/****** Object:  View [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]    Script Date: 11/22/2022 3:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v] AS SELECT p.dim_entp_project_nk,
c.dim_ent_contract_nk,
v.rssk
,convert(datetime, v.[Actual Date], 101) [Actual Date]
,convert(float, v.[Closed Items] ) [Closed Items]
,v.[Contract Number]
,convert(datetime, v.[Date], 101) [Date]
,v.[Maturity]
,convert(datetime, v.[Planned Date], 101) [Planned Date]
,v.[Project Number]
,convert(float, v.[Total Items] ) [Total Items]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo] 
FROM (select * from [gpd].[ModelMat_Model_Maturity_PMR_JSON_v]
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Actual Date],101))!=0 or [Actual Date] is NULL) 
and (isdate(CONVERT(varchar,[Planned Date],101))!=0 or [Planned Date] is NULL) 
and (isnumeric([Total Items]) !=0 and [Total Items] not like '%,%' and [Total Items] not like '% %'  or [Total Items] is null )
and (isnumeric([Closed Items]) !=0 and [Closed Items] not like '%,%' and [Closed Items] not like '% %'  or [Closed Items] is null )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM (select * from [gpd].[ModelMat_Model_Maturity_PMR_JSON_v]
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isdate(CONVERT(varchar,[Actual Date],101))!=0 or [Actual Date] is NULL) 
and (isdate(CONVERT(varchar,[Planned Date],101))!=0 or [Planned Date] is NULL) 
and (isnumeric([Total Items]) !=0 and [Total Items] not like '%,%' and [Total Items] not like '% %'  or [Total Items] is null )
and (isnumeric([Closed Items]) !=0 and [Closed Items] not like '%,%' and [Closed Items] not like '% %'  or [Closed Items] is null )
) xx
GROUP BY [Project Number] + [Contract Number] + [Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Contingency_PMR_JSON_active_error_v]    Script Date: 11/23/2022 12:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_error_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from (
Select * from gpd.RiskOpp_Contingency_PMR_JSON_v
where 
(isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or ((isnumeric([As Sold ]) =0 and [As Sold ] is not null) or [As Sold ]  like '%,%' or [As Sold ]  like '% %'   )
or ((isnumeric([Delta]) =0 and [Delta] is not null) or [Delta]  like '%,%' or [Delta]  like '% %'   )
or ((isnumeric([EAC]) =0 and [EAC] is not null) or [EAC]  like '%,%' or [EAC]  like '% %'   )
or ((isnumeric([Estimated]) =0 and [Estimated] is not null) or [Estimated]  like '%,%' or [Estimated]  like '% %'   )
or ((isnumeric([P80]) =0 and [P80] is not null) or [P80]  like '%,%' or [P80]  like '% %'   )
or ((isnumeric([Variance]) =0 and [Variance] is not null) or [Variance]  like '%,%' or [Variance]  like '% %'   )
or ((isnumeric([CB]) =0 and [CB] is not null) or [CB]  like '%,%' or [CB]  like '% %'   )
 ) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) 
from (
Select * from gpd.RiskOpp_Contingency_PMR_JSON_v
where 
(isdate(CONVERT(varchar,[Date],101))=0 and [Date] is not NULL) 
or ((isnumeric([As Sold ]) =0 and [As Sold ] is not null) or [As Sold ]  like '%,%' or [As Sold ]  like '% %'   )
or ((isnumeric([Delta]) =0 and [Delta] is not null) or [Delta]  like '%,%' or [Delta]  like '% %'   )
or ((isnumeric([EAC]) =0 and [EAC] is not null) or [EAC]  like '%,%' or [EAC]  like '% %'   )
or ((isnumeric([Estimated]) =0 and [Estimated] is not null) or [Estimated]  like '%,%' or [Estimated]  like '% %'   )
or ((isnumeric([P80]) =0 and [P80] is not null) or [P80]  like '%,%' or [P80]  like '% %'   )
or ((isnumeric([Variance]) =0 and [Variance] is not null) or [Variance]  like '%,%' or [Variance]  like '% %'   )
or ((isnumeric([CB]) =0 and [CB] is not null) or [CB]  like '%,%' or [CB]  like '% %'   )

 )xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]    Script Date: 11/23/2022 12:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v] AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[rssk]
,convert(datetime,v.[Date]) [Date]
,convert(float,v.[Delta]) [Delta]
,convert(float,v.[EAC]) [EAC]
,convert(float,v.[Estimated]) [Estimated]
,convert(float,v.[P80]) [P80]
,convert(float,v.[Variance]) [Variance]
,convert(float,v.[As Sold ]) [As Sold ]
,convert(float,v.[CB]) [CB]
,v.[Project Number]
,v.[Contract Number]
,v.[Type 2]
,v.[Type]
,v.[zCreatedDateTime]
,v.[zSourceFileName]
,v.[zVersionNo] 
from (
Select * from gpd.RiskOpp_Contingency_PMR_JSON_v
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isnumeric([As Sold ]) !=0 and [As Sold ] not like '%,%' and [As Sold ] not like '% %'  or [As Sold ] is null )
and (isnumeric([Delta]) !=0 and [Delta] not like '%,%' and [Delta] not like '% %'  or [Delta] is null )
and (isnumeric([EAC]) !=0 and [EAC] not like '%,%' and [EAC] not like '% %'  or [EAC] is null )
and (isnumeric([Estimated]) !=0 and [Estimated] not like '%,%' and [Estimated] not like '% %'  or [Estimated] is null )
and (isnumeric([P80]) !=0 and [P80] not like '%,%' and [P80] not like '% %'  or [P80] is null )
and (isnumeric([Variance]) !=0 and [Variance] not like '%,%' and [Variance] not like '% %'  or [Variance] is null )
and (isnumeric([CB]) !=0 and [CB] not like '%,%' and [CB] not like '% %'  or [CB] is null )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from (
Select * from gpd.RiskOpp_Contingency_PMR_JSON_v
where 
(isdate(CONVERT(varchar,[Date],101))!=0 or [Date] is NULL) 
and (isnumeric([As Sold ]) !=0 and [As Sold ] not like '%,%' and [As Sold ] not like '% %'  or [As Sold ] is null )
and (isnumeric([Delta]) !=0 and [Delta] not like '%,%' and [Delta] not like '% %'  or [Delta] is null )
and (isnumeric([EAC]) !=0 and [EAC] not like '%,%' and [EAC] not like '% %'  or [EAC] is null )
and (isnumeric([Estimated]) !=0 and [Estimated] not like '%,%' and [Estimated] not like '% %'  or [Estimated] is null )
and (isnumeric([P80]) !=0 and [P80] not like '%,%' and [P80] not like '% %'  or [P80] is null )
and (isnumeric([Variance]) !=0 and [Variance] not like '%,%' and [Variance] not like '% %'  or [Variance] is null )
and (isnumeric([CB]) !=0 and [CB] not like '%,%' and [CB] not like '% %'  or [CB] is null )
)xx
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Subcontract_Cost_Status_JSON_active_error_v]    Script Date: 11/23/2022 12:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Subcontract_Cost_Status_JSON_active_error_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM (
select * from gpd.Subcontract_Cost_Status_JSON_v
where 
(isdate(CONVERT(varchar,[Month End Date],101))=0 and [Month End Date] is not NULL) 
or ((isnumeric([Original Budget Amount]) =0 and [Original Budget Amount] is not null) or [Original Budget Amount]  like '%,%' or [Original Budget Amount]  like '% %'   )
or ((isnumeric([Original Quantity]) =0 and [Original Quantity] is not null) or [Original Quantity]  like '%,%' or [Original Quantity]  like '% %'   )
or ((isnumeric([Progress Budget Quantity]) =0 and [Progress Budget Quantity] is not null) or [Progress Budget Quantity]  like '%,%' or [Progress Budget Quantity]  like '% %'   )
or ((isnumeric([Actual Amount]) =0 and [Actual Amount] is not null) or [Actual Amount]  like '%,%' or [Actual Amount]  like '% %'   )
or ((isnumeric([Committed Amount]) =0 and [Committed Amount] is not null) or [Committed Amount]  like '%,%' or [Committed Amount]  like '% %'   )
or ((isnumeric([Current Budget Amount]) =0 and [Current Budget Amount] is not null) or [Current Budget Amount]  like '%,%' or [Current Budget Amount]  like '% %'   )
or ((isnumeric([Forecast Amount]) =0 and [Forecast Amount] is not null) or [Forecast Amount]  like '%,%' or [Forecast Amount]  like '% %'   )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM (
select * from gpd.Subcontract_Cost_Status_JSON_v
where 
(isdate(CONVERT(varchar,[Month End Date],101))=0 and [Month End Date] is not NULL) 
or ((isnumeric([Original Budget Amount]) =0 and [Original Budget Amount] is not null) or [Original Budget Amount]  like '%,%' or [Original Budget Amount]  like '% %'   )
or ((isnumeric([Original Quantity]) =0 and [Original Quantity] is not null) or [Original Quantity]  like '%,%' or [Original Quantity]  like '% %'   )
or ((isnumeric([Progress Budget Quantity]) =0 and [Progress Budget Quantity] is not null) or [Progress Budget Quantity]  like '%,%' or [Progress Budget Quantity]  like '% %'   )
or ((isnumeric([Actual Amount]) =0 and [Actual Amount] is not null) or [Actual Amount]  like '%,%' or [Actual Amount]  like '% %'   )
or ((isnumeric([Committed Amount]) =0 and [Committed Amount] is not null) or [Committed Amount]  like '%,%' or [Committed Amount]  like '% %'   )
or ((isnumeric([Current Budget Amount]) =0 and [Current Budget Amount] is not null) or [Current Budget Amount]  like '%,%' or [Current Budget Amount]  like '% %'   )
or ((isnumeric([Forecast Amount]) =0 and [Forecast Amount] is not null) or [Forecast Amount]  like '%,%' or [Forecast Amount]  like '% %'   )
)xx
GROUP BY [Project Number] + [Contract Number] + [Month End Date]);
GO
/****** Object:  View [gpd].[Subcontract_Cost_Status_JSON_active_v]    Script Date: 11/23/2022 12:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Subcontract_Cost_Status_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM (
select * from gpd.Subcontract_Cost_Status_JSON_v
where 
(isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL) 
and (isnumeric([Original Budget Amount]) !=0 and [Original Budget Amount] not like '%,%' and [Original Budget Amount] not like '% %'  or [Original Budget Amount] is null )
and (isnumeric([Original Quantity]) !=0 and [Original Quantity] not like '%,%' and [Original Quantity] not like '% %'  or [Original Quantity] is null )
and (isnumeric([Progress Budget Quantity]) !=0 and [Progress Budget Quantity] not like '%,%' and [Progress Budget Quantity] not like '% %'  or [Progress Budget Quantity] is null )
and (isnumeric([Actual Amount]) !=0 and [Actual Amount] not like '%,%' and [Actual Amount] not like '% %'  or [Actual Amount] is null )
and (isnumeric([Committed Amount]) !=0 and [Committed Amount] not like '%,%' and [Committed Amount] not like '% %'  or [Committed Amount] is null )
and (isnumeric([Current Budget Amount]) !=0 and [Current Budget Amount] not like '%,%' and [Current Budget Amount] not like '% %'  or [Current Budget Amount] is null )
and (isnumeric([Forecast Amount]) !=0 and [Forecast Amount] not like '%,%' and [Forecast Amount] not like '% %'  or [Forecast Amount] is null )
) v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) 
FROM (
select * from gpd.Subcontract_Cost_Status_JSON_v
where 
(isdate(CONVERT(varchar,[Month End Date],101))!=0 or [Month End Date] is NULL) 
and (isnumeric([Original Budget Amount]) !=0 and [Original Budget Amount] not like '%,%' and [Original Budget Amount] not like '% %'  or [Original Budget Amount] is null )
and (isnumeric([Original Quantity]) !=0 and [Original Quantity] not like '%,%' and [Original Quantity] not like '% %'  or [Original Quantity] is null )
and (isnumeric([Progress Budget Quantity]) !=0 and [Progress Budget Quantity] not like '%,%' and [Progress Budget Quantity] not like '% %'  or [Progress Budget Quantity] is null )
and (isnumeric([Actual Amount]) !=0 and [Actual Amount] not like '%,%' and [Actual Amount] not like '% %'  or [Actual Amount] is null )
and (isnumeric([Committed Amount]) !=0 and [Committed Amount] not like '%,%' and [Committed Amount] not like '% %'  or [Committed Amount] is null )
and (isnumeric([Current Budget Amount]) !=0 and [Current Budget Amount] not like '%,%' and [Current Budget Amount] not like '% %'  or [Current Budget Amount] is null )
and (isnumeric([Forecast Amount]) !=0 and [Forecast Amount] not like '%,%' and [Forecast Amount] not like '% %'  or [Forecast Amount] is null )
)xx
GROUP BY [Project Number] + [Contract Number] + [Month End Date]);
GO
