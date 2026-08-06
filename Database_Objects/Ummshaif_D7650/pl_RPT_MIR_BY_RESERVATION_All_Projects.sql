create table epr.RPT_MIR_BY_RESERVATION_All_Projects
(
[IVI_ID]   varchar(200) NULL,
[MIR_ID]   varchar(200) NULL,
[LP_ID]   varchar(200) NULL,
[MIR_TYPE]   varchar(200) NULL,
[PROJECT]   varchar(200) NULL,
[MIR_NUMBER]   varchar(200) NULL,
[MIR_REV]   varchar(200) NULL,
[POSTED_DATE]   varchar(200) NULL,
[MIR_ISSUE_DATE]   varchar(200) NULL,
[MIR_CREATE_DATE]   varchar(200) NULL,
[RESERVATION_NUMBER]   varchar(200) NULL,
[RUN_NUMBER]   varchar(4000) NULL,
[ISSUE_BY]   varchar(200) NULL,
[COMPANY_CODE]   varchar(200) NULL,
[COMPANY_NAME]   varchar(200) NULL,
[OVERISSUE_WAREHOUSE]   varchar(200) NULL,
[LOCATION]   varchar(4000) NULL,
[MIR_SHORT_DESC]   varchar(200) NULL,
[DESCRIPTION]   varchar(200) NULL,
[MIR_APPROVED_BY_NAME]   varchar(200) NULL,
[LIST_NODE]   varchar(500) NULL,
[BOM_PATH]   varchar(4000) NULL,
[LP_POS]   varchar(200) NULL,
[IDENT_CODE]   varchar(200) NULL,
[TAG_NUMBER]   varchar(200) NULL,
[IDENT_SHORT_DESC]   varchar(4000) NULL,
[ISSUE_QTY]   varchar(200) NULL,
[ON_HAND_QTY]   varchar(200) NULL,
[LIST_POS_QTY]   varchar(200) NULL,
[LIST_POS_RESV_QTY]   varchar(200) NULL,
[ACTUAL_RESERVE_QTY]   varchar(200) NULL,
[MANUAL_RESERVED_QTY]   varchar(200) NULL,
[LIST_POS_ISSUED]   varchar(200) NULL,
[COMMODITY_CODE]   varchar(200) NULL,
[SIZE1]   varchar(200) NULL,
[SIZE2]   varchar(200) NULL,
[SIZE3]   varchar(200) NULL,
[WH_CODE]   varchar(200) NULL,
[LOC_CODE]   varchar(200) NULL,
[HEAT_NUMBER]   varchar(200) NULL,
[UNIT]   varchar(200) NULL,
[OVERISSUE_SCRAP_QTY]   varchar(200) NULL,
[SCRAP_WAREHOUSE]   varchar(200) NULL,
[ISSUE_DATE]   varchar(200) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_MIR_BY_RESERVATION_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_RESERVATION_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_RESERVATION_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_RESERVATION_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_MIR_BY_RESERVATION_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_RESERVATION_All_Projects','NetworkFolder')
GO
