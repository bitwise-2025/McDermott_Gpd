/****** Object:  View [yardkpi].[stage_toolhound_subcategory_v]    Script Date: 10/12/2023 2:02:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_toolhound_subcategory_v]
AS SELECT ROW_NUMBER() over(ORDER BY subcategory asc) as [stage_toolhound_subcategory_id]
      ,[source_code]
      ,[sub_source_code]
      ,[subcategory]
  FROM (
	  Select distinct 
		   [source_code]
		  ,[sub_source_code]
		  ,[subcategory]
		from [yardkpi].[stage_toolhound_inventory] dcsr
		Where subcategory != '') disa;
GO


