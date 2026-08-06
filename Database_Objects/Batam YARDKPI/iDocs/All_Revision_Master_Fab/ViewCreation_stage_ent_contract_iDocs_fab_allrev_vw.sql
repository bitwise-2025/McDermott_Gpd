/****** Object:  View [yardkpi].[stage_ent_contract_iDocs_fab_allrev_vw]    Script Date: 11/1/2022 2:37:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [yardkpi].[stage_ent_contract_iDocs_fab_allrev_vw]

CREATE VIEW [yardkpi].[stage_ent_contract_iDocs_fab_allrev_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY [contract_no] ASC) as  [stage_ent_contract_iDocs_fab_allrev_id]
	,source_code as source_code
	,sub_source_code as sub_source_code
    ,contract_no as [contract_number]
    ,project_name as [contract_name]
	,project_no as [project_number]
          
from
(SELECT DISTINCT
	source_code,
	sub_source_code,
	[contract_no],
	project_name,
	[project_no]
  from [yardkpi].[stage_iDocs_fab_allrev] S
  where NOT EXISTS(select 1 from [dbo].[dim_ent_contract_active_v] C where S.contract_no = C.contract_number)) M;
GO
