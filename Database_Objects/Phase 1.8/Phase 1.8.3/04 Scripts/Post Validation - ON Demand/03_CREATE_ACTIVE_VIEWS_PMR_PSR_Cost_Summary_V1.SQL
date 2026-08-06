--***** Object:  View [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]    Script Date: 9/21/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[PSR_Cost_Summary_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]
GO

/****** Object:  View [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]    Script Date: 9/21/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[PSR_Cost_Summary_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.PSR_Cost_Summary_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + MAX(zVersionNo) FROM gpd.PSR_Cost_Summary_PMR_JSON_v
GROUP BY [Project Number] + [Contract Number] + [Date] );
GO
