CREATE VIEW [gpd].[Key_Completion_Metrics_HUC_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Key_Completion_Metrics_HUC_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Key_Completion_Metrics_HUC_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] )

CREATE VIEW [gpd].[Marine_Progress_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Marine_Progress_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Marine_Progress_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +convert(varchar(20),[Month End Date])+ convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  + 
convert(varchar(20),[Month End Date])+convert(varchar(20),MAX(zVersionNo)) FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v
GROUP BY [Project Number], [Contract Number],[Month End Date] )

CREATE VIEW [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Global_Template_Engineering_Key_Quantities_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Global_Template_Engineering_Key_Quantities_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] )

CREATE VIEW [gpd].[Key_Completion_Metrics_HUC_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Key_Completion_Metrics_HUC_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +convert(varchar(20),[Date])+ convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  + 
convert(varchar(20),[Date])+convert(varchar(20),MAX(zVersionNo)) FROM gpd.Key_Completion_Metrics_HUC_PMR_JSON_v
GROUP BY [Project Number], [Contract Number],[Date] )

CREATE VIEW [gpd].[Marine_campaign_readiness_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Marine_campaign_readiness_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Marine_campaign_readiness_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

GO

CREATE VIEW [gpd].[Marine_SpreadRate_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Marine_SpreadRate_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Marine_SpreadRate_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Milestone_PSRP_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Milestone_PSRP_SCM_JSON_v
GROUP BY [Project Number], [Contract Number] )

CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v] V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v]
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[Narratives_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Narratives_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Narratives_SCM_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.[PSR_Cost_Summary_PMR_JSON_v] V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.[PSR_Cost_Summary_PMR_JSON_v]
GROUP BY [Project Number], [Contract Number], [Date] )

CREATE VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Deferral_Risks_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Opportunity_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Opportunity_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Risks_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Risks_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Romap_Status_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Romap_Status_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Date] );

CREATE VIEW [gpd].[ScheduleAnalytics_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.ScheduleAnalytics_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Start]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Start]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.ScheduleAnalytics_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Start] );


CREATE VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V
GROUP BY [Project Number], [Contract Number] )

CREATE VIEW [gpd].[WorkHours_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.WorkHours_QHSES_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +convert(varchar(20),[Date])+ convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  + 
convert(varchar(20),[Date])+convert(varchar(20),MAX(zVersionNo)) FROM gpd.WorkHours_QHSES_PMR_JSON_V
GROUP BY [Project Number], [Contract Number],[Date] )

CREATE VIEW [gpd].[Status_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Status_QHSES_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +convert(varchar(20),[Date])+ convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  + 
convert(varchar(20),[Date])+convert(varchar(20),MAX(zVersionNo)) FROM gpd.Status_QHSES_PMR_JSON_V
GROUP BY [Project Number], [Contract Number],[Date] )

CREATE VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_Collections_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_Collections_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO

CREATE VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO

CREATE VIEW [gpd].[Net_Cash_Status_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_Status_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_Status_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[Offshore_Client_Schedule_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Offshore_Client_Schedule_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Offshore_Client_Schedule_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[Offshore_Yard_Layout_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Offshore_Yard_Layout_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Offshore_Yard_Layout_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Period_EAC_Variances_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Period_EAC_Variances_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO

CREATE VIEW [gpd].[Vendor_Payment_Forecast_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Vendor_Payment_Forecast_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Vendor_Payment_Forecast_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO

CREATE VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Work_Pack_Progress_PMR_JSON_v V
LEFT JOIN dim_ent_CONTRACT c on v.[CONTRACT] =c.[contract_number] and c.active=1	
LEFT JOIN DIM_ENTP_PROJECT p ON p.[DIM_ENTP_PROJECT_NK]=c.[DIM_ENT_PROJECT_NK] and p.active=1	
WHERE [PROJECT] + [CONTRACT] + convert(varchar(20),[Cutoff]) + convert(varchar(20),zVersionNo) in (
SELECT [PROJECT] +[CONTRACT] +convert(varchar(20),[Cutoff]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Work_Pack_Progress_PMR_JSON_v
GROUP BY [PROJECT], [CONTRACT], [Cutoff] );
GO

DROP VIEW [gpd].[ChangeManagement_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[ChangeManagement_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.ChangeManagement_PMR_JSON_V V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.ChangeManagement_PMR_JSON_V
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO




DROP VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.CSS_Rating_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.CSS_Rating_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO




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




DROP VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_Cash_Position_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_Cash_Position_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO




DROP VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_CashFlow_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Month End Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Month End Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Net_Cash_CashFlow_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Month End Date] );
GO



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


DROP VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_v]
GO
CREATE VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Indicators_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Indicators_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO


