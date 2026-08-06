/****** Object:  View [dbo].[reprocess_history_v]    Script Date: 10/27/2021 8:58:18 AM ******/
DROP VIEW [dbo].[reprocess_history_v]
GO

/****** Object:  View [dbo].[reprocess_history_v]    Script Date: 10/27/2021 8:58:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[reprocess_history_v] AS select row_number () over (order by pipeline_code) reprocess_history_id, *
from (
select [pipeline_code]
      ,[plp_pipeline_detail_id]
      ,[rssk]
      ,[rk_failure_info]
      ,[created_dtm]
      ,[resolved_dtm]
      ,[resolved_flag]
      ,[iteration_count] 
	  from [dbo].[reprocess_history]
) a;

/*
Change Log: Satish 10/27/2021 : Removing the union logic for MCPM Monthly and weekly since the reprocess records are being inducted in to reprocess_history
*/

GO


