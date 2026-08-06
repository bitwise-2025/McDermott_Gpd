
IF    OBJECT_ID('[gpd].[Net_Cash_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO




IF    OBJECT_ID('[gpd].[Milestone_PSRP_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_v]
GO
CREATE VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Milestone_PSRP_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Milestone_PSRP_SCM_JSON_v
GROUP BY [Project Number], [Contract Number] );
GO


IF    OBJECT_ID('[gpd].[procurement_status_report_planning_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[procurement_status_report_planning_JSON_active_v]
GO
CREATE VIEW [gpd].[procurement_status_report_planning_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.procurement_status_report_planning_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.procurement_status_report_planning_JSON_V
GROUP BY [Project Number], [Contract Number]);
GO



IF    OBJECT_ID('[gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]
GO
CREATE VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V
GROUP BY [Project Number], [Contract Number] );
GO



IF    OBJECT_ID('[gpd].[ScheduleAnalytics_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[ScheduleAnalytics_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[ScheduleAnalytics_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.ScheduleAnalytics_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Start]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Start]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.ScheduleAnalytics_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Start] );
GO


IF    OBJECT_ID('[gpd].[Period_EAC_Variances_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
GO
CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Period_EAC_Variances_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Period_EAC_Variances_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO


IF    OBJECT_ID('[gpd].[Net_Cash_Collections_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_Collections_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_Collections_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO

IF    OBJECT_ID('[gpd].[Work_Pack_Progress_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Work_Pack_Progress_PMR_JSON_v V
LEFT JOIN dim_ent_CONTRACT c on v.[CONTRACT] =c.[contract_number] and c.active=1    
LEFT JOIN DIM_ENTP_PROJECT p ON p.[DIM_ENTP_PROJECT_NK]=c.[DIM_ENT_PROJECT_NK] and p.active=1    
WHERE [PROJECT] + [CONTRACT] + convert(varchar(20),[Cutoff]) + convert(varchar(20),zVersionNo) in (
SELECT [PROJECT] +[CONTRACT] +convert(varchar(20),[Cutoff]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Work_Pack_Progress_PMR_JSON_v
GROUP BY [PROJECT], [CONTRACT], [Cutoff] );
GO


IF    OBJECT_ID('[gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v] V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v]
GROUP BY [Project Number], [Contract Number], [Date] );
GO

 

 

IF    OBJECT_ID('[gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.ModelMat_Model_Maturity_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),MAX(zVersionNo)) FROM gpd.ModelMat_Model_Maturity_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date]);
GO


IF    OBJECT_ID('[gpd].[Financials_1_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Financials_1_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Financials_1_PMR_JSON_active_v]

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Financials_1_PMR_JSON_v V

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (

SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Financials_1_PMR_JSON_v

GROUP BY [Project Number], [Contract Number], [Date] );

GO



IF    OBJECT_ID('[gpd].[Financials_2_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Financials_2_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Financials_2_PMR_JSON_active_v]

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Financials_2_PMR_JSON_v V

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (

SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Financials_2_PMR_JSON_v

GROUP BY [Project Number], [Contract Number], [Month End Date] );

GO



IF    OBJECT_ID('[gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Financials_3_LDs_Guarantees_PMR_JSON_v V

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (

SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Financials_3_LDs_Guarantees_PMR_JSON_v

GROUP BY [Project Number], [Contract Number], [Date] );

GO