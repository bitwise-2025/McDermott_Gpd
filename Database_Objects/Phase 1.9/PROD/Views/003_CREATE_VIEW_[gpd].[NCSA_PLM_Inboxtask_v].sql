CREATE VIEW [gpd].[NCSA_PLM_Inboxtask_v] 
AS select stage_plm_inboxtask_id, id, project_number, project,document_id, discipline,dbo.RemoveNonASCII(replace(replace(json_attribute,'|',''),'","','"|"')) as json_attribute ,dbo.RemoveNonASCII(replace(json_attribute,'|','')) as json_attribute_for_view from [gpd].[NCSA_PLM_Inboxtask];
GO