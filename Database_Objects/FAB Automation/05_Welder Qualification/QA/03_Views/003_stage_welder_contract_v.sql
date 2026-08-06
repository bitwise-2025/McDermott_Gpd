DROP VIEW [gpd].[stage_welder_contract_v]
GO
CREATE VIEW [gpd].[stage_welder_contract_v] AS select distinct 
stage_welding_process_key,
case when LTRIM(RTRIM(ISNULL(contract_id,'')))='' then 'N/A' else contract_id end as contract_id,
LTRIM(RTRIM(contract_id)) contract_description
from [gpd].[stage_welding_process_v];
GO
