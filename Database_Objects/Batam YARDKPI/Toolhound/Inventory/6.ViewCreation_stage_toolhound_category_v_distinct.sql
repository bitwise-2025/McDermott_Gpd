/****** Object:  View [yardkpi].[stage_toolhound_category_v]    Script Date: 10/12/2023 2:00:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_toolhound_category_v]
AS SELECT ROW_NUMBER() over(ORDER BY category asc) as [stage_toolhound_category_id]
      ,[source_code]
      ,[sub_source_code]
      ,[category]
  FROM (
	  Select distinct 
		  [source_code]
		  ,[sub_source_code]
		  ,[category]
		from [yardkpi].[stage_toolhound_inventory] dcsr
		Where category != '') disa;
GO


