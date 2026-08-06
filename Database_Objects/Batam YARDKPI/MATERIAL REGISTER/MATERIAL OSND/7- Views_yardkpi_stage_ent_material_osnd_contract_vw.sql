DROP VIEW [yardkpi].[stage_ent_material_osnd_contract_vw]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_ent_material_osnd_contract_vw]
	AS select distinct
		ROW_NUMBER() over(ORDER BY CONTRACT_ID ASC) as  stage_material_osnd_register_id
		,source_Code
		,sub_source_Code
		,[contract_id]
		,[contract_description]
		,[project_id]
		,contract_DESCRIPTION AS PROJECT_DESCRIPTION
from
	(SELECT DISTINCT 
		source_Code
		,sub_source_Code
		,[PROJECT_ID] as contract_id
		,[PROJECT_DESCRIPTION] AS contract_DESCRIPTION
		,[PROJECT_ID] as project_id 
		FROM
		yardkpi.[stage_material_osnd_register_vw]) M
  where NOT EXISTS(select 1 from dim_ent_contract_active_v C where M.CONTRACT_ID = C.CONTRACT_NUMBER) AND M.CONTRACT_ID IS NOT NULL;
GO


