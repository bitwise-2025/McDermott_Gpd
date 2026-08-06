SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_spc_entp_project_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY contract_number ASC) as  [stage_entp_spc_entp_project_id],
	contract_number as [project_number],
	contract_description as [project_description]
from
	(SELECT DISTINCT 
		contract_number,
		contract_description
	FROM 
		yardkpi.stage_entp_spc_progress) M
	where contract_number <> '' and 
	contract_number is not NULL and 
	NOT EXISTS(select 1 from dim_entp_project C where M.contract_number = C.project_number and C.active = 1);
GO
 
