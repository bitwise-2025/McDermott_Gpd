--***** Object:  View [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]    Script Date: 10/10/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Indicators_QHSES_PMR_JSON_active_v]    Script Date: 10/10/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Indicators_QHSES_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Status_QHSES_PMR_JSON_active_v]    Script Date: 10/10/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Status_QHSES_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Status_QHSES_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[WorkHours_QHSES_PMR_JSON_active_v]    Script Date: 10/10/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[WorkHours_QHSES_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[WorkHours_QHSES_PMR_JSON_active_v]
GO

CREATE VIEW [gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.CSS_Rating_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.CSS_Rating_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[Indicators_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Indicators_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Indicators_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[Status_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Status_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Status_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO

CREATE VIEW [gpd].[WorkHours_QHSES_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.WorkHours_QHSES_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.WorkHours_QHSES_PMR_JSON_v
GROUP BY [Project Number], [Contract Number], [Date] );
GO