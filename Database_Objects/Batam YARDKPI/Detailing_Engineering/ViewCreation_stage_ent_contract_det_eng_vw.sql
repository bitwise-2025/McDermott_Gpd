SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- drop view [yardkpi].[stage_ent_contract_det_eng_vw]

CREATE VIEW [yardkpi].[stage_ent_contract_det_eng_vw] AS select distinct
	ROW_NUMBER() over(ORDER BY project ASC) as  [stage_entp_det_eng_id]
	,source_code
	,sub_source_code
    ,project as [contract_number]
    ,project as [contract_title]
    ,project as [project_number]
          
from
(SELECT DISTINCT
      [project]
	  ,source_code
	  ,sub_source_code
  from [yardkpi].[stage_detailing_engineering] s
  where NOT EXISTS(select 1 from dim_ent_contract C where s.project = C.CONTRACT_NUMBER and c.active = 1)) M;
GO
