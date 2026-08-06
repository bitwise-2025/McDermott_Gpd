SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_PLM_RPN_v] AS select stage_plm_rpn_id,Project_Number,Project,ID,dbo.RemoveNonASCII(replace(replace(json_attribute,'|',''),'","','"|"')) as json_attribute ,dbo.RemoveNonASCII(replace(json_attribute,'|','')) as json_attribute_for_view 
from [gpd].[NCSA_PLM_RPN];
GO