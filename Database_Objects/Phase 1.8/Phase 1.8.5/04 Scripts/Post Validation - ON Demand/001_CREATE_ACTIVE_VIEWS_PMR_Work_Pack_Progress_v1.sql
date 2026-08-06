CREATE VIEW [gpd].[Work_Pack_Progress_PMR_JSON_active_V]
AS
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM [gpd].[Work_Pack_Progress_PMR_JSON_V] v
LEFT JOIN dim_ent_CONTRACT c on v.[CONTRACT] =c.[contract_number] and c.active=1
LEFT JOIN DIM_ENTP_PROJECT p ON p.[DIM_ENTP_PROJECT_NK]=c.[DIM_ENT_PROJECT_NK] and p.active=1
WHERE [Project] + [Contract] + [Cutoff] + zVersionNo in (
SELECT [Project] + [Contract] + [Cutoff] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM [gpd].[Work_Pack_Progress_PMR_JSON_V]
GROUP BY [Project],[Contract],[Cutoff]);
GO