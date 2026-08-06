/****** Object:  View [yardkpi].[stage_ent_contract_mwin_vw]    Script Date: 5/23/2024 3:35:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_ent_contract_mwin_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY project_id ASC) as  [stage_ent_contract_mwin_id],
	source_code,
	sub_source_code,
	project_id as contract_id,
	project_title as contract_description,
	project_id
from
	(SELECT DISTINCT 
		source_code,
		sub_source_code,
		project_id,
		project_title
	FROM 
		yardkpi.stage_entp_mwin_rfi_milestone) M
	where NOT EXISTS(select 1 from dim_ent_contract C where M.project_id = C.CONTRACT_NUMBER and active = 1);
GO
