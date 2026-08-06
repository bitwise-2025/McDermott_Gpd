/****** Object:  View [yardkpi].[stage_entp_spc_status_vw]    Script Date: 6/21/2024 3:15:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_spc_status_vw]
	AS select distinct 
		ROW_NUMBER() over(ORDER BY status ASC) as  stage_entp_spc_status_id,
		source_code,
		sub_source_code,
		[status]
	from ( 
		select distinct 
			source_code,
			sub_source_code,
			[status]
		from yardkpi.stage_entp_spc_progress
		where [status] is not null
			and [status] <> ''
		) statuss;
GO
