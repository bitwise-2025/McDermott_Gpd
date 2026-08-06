IF    OBJECT_ID('[gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]
GO
CREATE VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]  +convert(varchar(20),[Month End Date])+ convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number]  +
convert(varchar(20),[Month End Date])+convert(varchar(20),MAX(zVersionNo)) FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v
GROUP BY [Project Number], [Contract Number],[Month End Date] );
GO


 

IF    OBJECT_ID('[gpd].[Narratives_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Narratives_SCM_JSON_active_v]
GO
CREATE VIEW [gpd].[Narratives_SCM_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Narratives_SCM_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number]+ [Phase]+[PMR Slide Type]  + convert(varchar(20),[Date]) + convert(varchar(20),zVersionNo) in (
SELECT [Project Number] +[Contract Number] + [Phase]+[PMR Slide Type]  +convert(varchar(20),[Date]) +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Narratives_SCM_JSON_v
GROUP BY [Project Number], [Contract Number], [Date],[Phase],[PMR Slide Type] );
GO