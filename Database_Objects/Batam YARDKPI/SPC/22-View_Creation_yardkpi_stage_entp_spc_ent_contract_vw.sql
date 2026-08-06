
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_spc_ent_contract_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY contract_number ASC) as  [stage_entp_spc_ent_contract_id],
	source_code,
	sub_source_code,
	contract_number,
	contract_number as [project_number],
	contract_description
from
	(SELECT DISTINCT 
		source_code,
		sub_source_code,
		contract_number,
		contract_description
	FROM 
		yardkpi.stage_entp_spc_progress) M
	where contract_number <> '' and 
	contract_number is not NULL and 
	NOT EXISTS(select 1 from dim_ent_contract C where M.contract_number = C.contract_number and C.active = 1);
GO

