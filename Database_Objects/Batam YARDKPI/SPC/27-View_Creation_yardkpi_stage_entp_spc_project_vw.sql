/****** Object:  View [yardkpi].[stage_entp_spc_project_vw]    Script Date: 6/20/2024 7:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_spc_project_vw]
AS select distinct
		ROW_NUMBER() over(ORDER BY PROJECT ASC) as  stage_entp_spc_project_id,
		source_code,
		sub_source_code,
		PROJECT
	from (
	select distinct 
		source_code,
		sub_source_code,
		PROJECT 
	FROM 
		yardkpi.stage_entp_spc_progress
		where PROJECT is not null
			and PROJECT <> ''
	) project;
GO



