CREATE VIEW [gpd].[Cost_Code_Exception_Offshore_PMR_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
v.[Project],
v.[Contract],
v.[Entity],
v.[Work Area],
v.[Cost Code],
v.[MCPM PSR L1],
v.[MCPM PSR Level 1 Description],
v.[MCPM PSR L2],
v.[MCPM PSR Level 2 Description],
v.[OME PSR Level 1],
v.[OME PSR Level 2],
v.[OME PSR Level 3],
v.[OME PSR Level 4],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]  
FROM gpd.Cost_Code_Exception_Offshore_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[Project])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[Contract])=c.contract_number  --GET Contract_NK
WHERE [Project] + [Contract] + [Entity] + [Work Area] + [Cost Code] + convert(varchar(20),zVersionNo) in (
SELECT [Project] + [Contract] + [Entity] + [Work Area] + [Cost Code] +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Cost_Code_Exception_Offshore_PMR_JSON_v
GROUP BY [Project] + [Contract] + [Entity] + [Work Area] + [Cost Code]);
GO