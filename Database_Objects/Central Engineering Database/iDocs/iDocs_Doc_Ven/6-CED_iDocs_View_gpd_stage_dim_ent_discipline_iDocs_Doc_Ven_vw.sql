SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.stage_dim_ent_discipline_iDocs_Doc_Ven_vw
AS select distinct
	ROW_NUMBER() over(ORDER BY DISCIPLINE ASC) as  [stage_dim_ent_discipline_iDocs_Doc_Ven_id]
    ,DISCIPLINE as discipline_code
	,DISCIPLINE as discipline_name 
from
(SELECT DISTINCT
	DISCIPLINE
  from gpd.iDocs_Doc_Ven S
  WHERE DISCIPLINE IS NOT NULL
  AND NOT EXISTS(select 1 from dbo.dim_ent_discipline C where S.DISCIPLINE = C.discipline_code and active ='1')) M;
GO
