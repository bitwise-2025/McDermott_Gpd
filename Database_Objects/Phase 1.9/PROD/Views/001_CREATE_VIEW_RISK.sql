SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_PLM_Risk_v] AS select stage_plm_risk_id,Project_Number,Project,ID,RPN_ID,dbo.RemoveNonASCII(replace(replace(json_attribute,'|',''),'","','"|"')) as json_attribute ,dbo.RemoveNonASCII(replace(json_attribute,'|','')) as json_attribute_for_view
 from [gpd].[NCSA_PLM_Risk];
GO
