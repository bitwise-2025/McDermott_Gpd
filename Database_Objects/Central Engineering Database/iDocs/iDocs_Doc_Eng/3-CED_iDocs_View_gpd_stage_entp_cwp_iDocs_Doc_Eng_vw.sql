
CREATE VIEW [gpd].[stage_dim_entp_cwp_iDocs_Doc_Eng_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY WORK_PACKAGE ASC) as  [stage_dim_entp_cwp_iDocs_Doc_Eng_id]
	
    ,WORK_PACKAGE as cwp_code
	,WORK_PACKAGE as cwp_description
	,WORK_PACKAGE as cwp_status
    ,PROJECT_NUMBER as project_number
from
(SELECT DISTINCT
      WORK_PACKAGE,
	  PROJECT_NUMBER
  from gpd.iDocs_Doc_Eng S
  WHERE WORK_PACKAGE IS NOT NULL
  AND NOT EXISTS(select 1 from dbo.dim_entp_cwp C where S.WORK_PACKAGE = C.cwp_code and active = 1)) M;
GO
