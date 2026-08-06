IF    OBJECT_ID('[gpd].[RiskOpp_Contingency_PMR_JSON_active_v]','V') IS NOT NULL

DROP VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]

GO

CREATE VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]

AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.RiskOpp_Contingency_PMR_JSON_v v

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK

where [project number] + [contract number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (

select [project number] + [contract number] + convert(varchar(20),[Date]) + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.RiskOpp_Contingency_PMR_JSON_v

group by [project number],[contract number],[Date]);

GO

 

 



IF    OBJECT_ID('[gpd].[RiskOpp_Risks_PMR_JSON_active_v]','V') IS NOT NULL

DROP VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]

GO
CREATE VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Risks_PMR_JSON_V V

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (

SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Risks_PMR_JSON_V

GROUP BY [Project Number], [Contract Number], [Date] );

GO





 IF    OBJECT_ID('[gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]','V') IS NOT NULL

DROP VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]

GO

CREATE VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Romap_Status_PMR_JSON_V V

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (

SELECT [Project Number] +[Contract Number] +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.RiskOpp_Romap_Status_PMR_JSON_V

GROUP BY [Project Number], [Contract Number], [Date] );

GO


 IF    OBJECT_ID('[gpd].[Contingency_Draw_Down_JSON_active_v]','V') IS NOT NULL

DROP VIEW [gpd].[Contingency_Draw_Down_JSON_active_v]

GO
CREATE VIEW [gpd].[Contingency_Draw_Down_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM [gpd].[Contingency_Draw_Down_JSON_v] v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] + [Contract Number] + convert(varchar(20),[Date]) + convert(varchar(20),MAX(zVersionNo)) FROM [gpd].[Contingency_Draw_Down_JSON_v]
GROUP BY [Project Number],[Contract Number],[Date]  );
GO

 

 