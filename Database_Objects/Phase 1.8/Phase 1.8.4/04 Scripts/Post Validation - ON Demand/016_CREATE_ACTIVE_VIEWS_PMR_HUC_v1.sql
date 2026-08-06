IF	OBJECT_ID('[gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v] 
GO
IF	OBJECT_ID('[gpd].[Comm_Progress_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_v] 
GO
IF	OBJECT_ID('[gpd].[Key_Completion_Metrics_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Key_Completion_Metrics_HUC_PMR_JSON_active_v] 
GO
IF	OBJECT_ID('[gpd].[Progress_Curve_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_v] 
GO
IF	OBJECT_ID('[gpd].[Progress_HUC_PMR_JSON_active_v]','V') IS NOT NULL 
DROP VIEW [gpd].[Progress_HUC_PMR_JSON_active_v] 
GO


/****** Object:  View [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]    Script Date: 10/4/2022 2:22:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Campaign_Readiness_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Campaign_Readiness_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Campaign_Readiness_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO

CREATE VIEW [gpd].[Comm_Progress_Curve_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Comm_Progress_Curve_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Comm_Progress_Curve_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
CREATE VIEW [gpd].[Comm_Progress_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Comm_Progress_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Comm_Progress_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
CREATE VIEW [gpd].[Key_Completion_Metrics_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Key_Completion_Metrics_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Key_Completion_Metrics_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
CREATE VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Progress_Curve_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Progress_Curve_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
CREATE VIEW [gpd].[Progress_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Progress_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Progress_HUC_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO



