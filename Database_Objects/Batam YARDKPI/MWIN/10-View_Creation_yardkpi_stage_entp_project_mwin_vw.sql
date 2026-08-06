
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_project_mwin_vw]
AS select distinct
	ROW_NUMBER() over(ORDER BY project_id ASC) as  [stage_entp_project_mwin_id],
	project_id,
	project_title as [project_description]
from
	(SELECT DISTINCT 
		project_id,
		project_title
	FROM 
		yardkpi.stage_entp_mwin_rfi_milestone) M
	where NOT EXISTS(select 1 from dim_entp_project C where M.project_id = C.project_number and active = 1);
GO
