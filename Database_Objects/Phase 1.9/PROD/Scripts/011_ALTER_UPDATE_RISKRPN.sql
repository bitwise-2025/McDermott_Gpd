ALTER TABLE dbo.dim_entp_plm_rpn
	ADD json_attribute_for_view varchar(8000) NULL;
ALTER TABLE [gpd].[reprocess_dim_entp_plm_rpn]
	ADD json_attribute_for_view varchar(8000) NULL;

ALTER TABLE dbo.dim_entp_plm_risk
	ADD json_attribute_for_view varchar(8000) NULL;
ALTER TABLE [gpd].[reprocess_dim_entp_plm_risk]
	ADD json_attribute_for_view varchar(8000) NULL;

ALTER TABLE dbo.generic_load_header
	ADD [json_column_delimiter] [varchar](1) NULL;


GO


update generic_load_header set stage_table_name='[gpd].[NCSA_PLM_Risk_v]' where load_name='dim_entp_plm_risk'
update generic_load_header set stage_table_name='[gpd].[NCSA_PLM_RPN_v]' where load_name='dim_entp_plm_rpn'

GO