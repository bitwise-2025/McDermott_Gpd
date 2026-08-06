/****** Object:  View [yardkpi].[stage_entp_spc_discipline_vw]    Script Date: 6/21/2024 2:31:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_entp_spc_discipline_vw]
	AS select distinct 
			ROW_NUMBER() over(ORDER BY discipline ASC) as  stage_entp_spc_discipline_id,
			source_code,
			sub_source_code,
			discipline
		from (
		select distinct 
				source_code,
				sub_source_code,
				discipline
		from yardkpi.stage_entp_spc_progress
		where discipline is not null
			and discipline <> ''
			) discipline;
GO


