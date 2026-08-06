/****** Object:  View [yardkpi].[stage_ent_contract_dc_srv_reg_vw]    Script Date: 11/1/2022 2:37:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [yardkpi].[stage_ent_contract_dc_srv_reg_vw]

CREATE VIEW [yardkpi].[stage_ent_contract_dc_srv_reg_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY [contract_number] ASC) as  [stage_ent_contract_dc_srv_reg_id]
	,'MANUAL' as source_code
	,'EXCEL' as sub_source_code
    ,contract_number as [contract_number]
    ,contract_number as contract_title
    ,contract_number as [project_number]
          
from
(SELECT DISTINCT
      [contract_number]
  from [yardkpi].[stage_dc_survey_register] S
  where NOT EXISTS(select 1 from dbo.dim_ent_contract C where S.contract_number = C.contract_number and active = 1)) M;
GO


