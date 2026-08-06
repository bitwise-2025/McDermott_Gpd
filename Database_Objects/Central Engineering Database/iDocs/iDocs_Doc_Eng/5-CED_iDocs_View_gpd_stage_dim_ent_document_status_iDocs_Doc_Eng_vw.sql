SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.stage_dim_ent_document_status_iDocs_Doc_Eng_vw
AS select distinct
	ROW_NUMBER() over(ORDER BY Issue_State ASC) as  [stage_dim_ent_document_status_iDocs_Doc_Eng_id]
    ,Issue_State as document_status_code
	,Issue_State as document_status_desc 
from
(SELECT DISTINCT
	Issue_State
  from gpd.iDocs_Doc_Eng S
  WHERE Issue_State IS NOT NULL
  AND NOT EXISTS(select 1 from dbo.dim_ent_document_status C where S.Issue_State = C.document_status_code and active ='1')) M;
GO
