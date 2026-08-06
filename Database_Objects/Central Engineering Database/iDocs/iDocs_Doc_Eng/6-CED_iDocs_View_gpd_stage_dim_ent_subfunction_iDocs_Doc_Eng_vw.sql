
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.stage_dim_ent_subfunction_iDocs_Doc_Eng_vw
AS select distinct
	ROW_NUMBER() over(ORDER BY cost_code ASC) as  [stage_dim_ent_subfunction_iDocs_Doc_Eng_id]
    ,cost_code as sub_function_code
	,cost_code as sub_function_description 
from
(SELECT DISTINCT
	cost_code
  from gpd.iDocs_Doc_Eng S
  WHERE cost_code IS NOT NULL
  AND NOT EXISTS(select 1 from dbo.dim_ent_subfunction C where S.cost_code = C.sub_function_code and active ='1')) M;
GO