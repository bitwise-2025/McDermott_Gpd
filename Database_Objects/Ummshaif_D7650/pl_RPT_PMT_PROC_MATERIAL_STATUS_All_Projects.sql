create table epr.RPT_PMT_PROC_MATERIAL_STATUS_All_Projects
(
[PROJECT_ID]   varchar(200) NULL,
[REQUISITION_NO]   varchar(200) NULL,
[REQ_REV]   varchar(200) NULL,
[REQ_DATE]   varchar(200) NULL,
[REQ_ORIGINATOR]   varchar(200) NULL,
[RELEASED_TO_PROC]   varchar(200) NULL,
[PROC_ACKNWG_DATE]   varchar(200) NULL,
[MATL_WRK_GRP]   varchar(200) NULL,
[RLI_POS]   varchar(200) NULL,
[COMMODITY_CODE]   varchar(500) NULL,
[IDENT_CODE]   varchar(200) NULL,
[IDENT_SHORT_DESCRIPTION]   varchar(4000) NULL,
[RELEASED_QTY]   varchar(200) NULL,
[UOM]   varchar(200) NULL,
[ROS_DATE]   varchar(200) NULL,
[BUYER]   varchar(200) NULL,
[PO_NUMBER]   varchar(200) NULL,
[PO_REV]   varchar(200) NULL,
[PO_DESCRIPTION]   varchar(200) NULL,
[ITEM_POS]   varchar(200) NULL,
[PO_STATUS]   varchar(200) NULL,
[STATUS_DATE]   varchar(200) NULL,
[PO_APPROVED_DATE]   varchar(200) NULL,
[PO_ISSUE_DATE]   varchar(200) NULL,
[POLI_UOM]   varchar(200) NULL,
[PO_LI_QTY]   varchar(200) NULL,
[PAYMENT_MODE]   varchar(200) NULL,
[SUPPLIER_NAME]   varchar(200) NULL,
[SUPPL_CODE]   varchar(200) NULL,
[SUPPLIER_LOCATION]   varchar(200) NULL,
[INCOTERM]   varchar(200) NULL,
[ACCOUNT_CODE_ITEM]   varchar(200) NULL,
[DELIVERY_PLACE]   varchar(200) NULL,
[PROM_DELIVERY_DATE]   varchar(200) NULL,
[COUNTRY_OF_ORIGIN]   varchar(200) NULL,
[MRR_NUMBER]   varchar(200) NULL,
[MRR_CREATION_DATE]   varchar(200) NULL,
[MRR_POSTED_DATE]   varchar(200) NULL,
[MRR_QUANTITY]   varchar(200) NULL,
[REMARKS]   varchar(4000) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_PMT_PROC_MATERIAL_STATUS_All_Projects','NetworkFolder')
GO