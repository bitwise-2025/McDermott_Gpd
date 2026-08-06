/****** Object:  View [yardkpi].[stage_entp_spc_jobno_vw]    Script Date: 6/21/2024 4:22:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [yardkpi].[stage_entp_spc_jobno_vw]
	AS select distinct 
		ROW_NUMBER() over(ORDER BY jobno ASC) as  stage_entp_spc_jobno_id,
		source_code,
		sub_source_code,
		isnull(jobno,'') as jobno
		from (
			select distinct 
			source_code,
			sub_source_code,
			jobno
			FROM yardkpi.stage_entp_spc_progress
		)jobno;
GO


