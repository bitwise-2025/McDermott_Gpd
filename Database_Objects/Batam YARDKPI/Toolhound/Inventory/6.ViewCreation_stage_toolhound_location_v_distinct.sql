/****** Object:  View [yardkpi].[stage_toolhound_location_v]    Script Date: 10/12/2023 2:01:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_toolhound_location_v]
AS SELECT ROW_NUMBER() over(ORDER BY LocationName asc) as [stage_toolhound_location_id]
      ,[source_code]
      ,[sub_source_code]
      ,[LocationName]
  FROM (
	  Select distinct 
		  [source_code]
		  ,[sub_source_code]
		  ,[LocationName]
		from [yardkpi].[stage_toolhound_inventory] dcsr
		Where LocationName != '') disa;
GO


