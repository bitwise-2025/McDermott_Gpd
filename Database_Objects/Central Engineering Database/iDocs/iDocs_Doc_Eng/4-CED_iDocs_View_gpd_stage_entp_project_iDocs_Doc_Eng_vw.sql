SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.stage_dim_entp_project_iDocs_Doc_Eng_vw
AS select distinct
	ROW_NUMBER() over(ORDER BY PROJECT_NUMBER ASC) as  [stage_dim_ent_project_iDocs_Doc_Eng_id]
    ,PROJECT_NUMBER as PROJECT_NUMBER
    ,PROJECT_NAME as PROJECT_NAME
	,CLIENT_NAME as CLIENT_NAME     
from
(SELECT DISTINCT
	PROJECT_NUMBER,
	PROJECT_NAME,
	CLIENT_NAME
  from gpd.iDocs_Doc_Eng S
  WHERE PROJECT_NUMBER IS NOT NULL
  AND NOT EXISTS(select 1 from [dbo].[dim_entp_project] C where S.PROJECT_NUMBER = C.project_number and active ='1')) M;
GO

