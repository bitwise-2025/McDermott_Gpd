create table epr.purchase_request_full_view_All_Projects
(
PROJ_ID varchar(200),
DISCIPLINE varchar(200),
REQUISITION_NO varchar(200),
SUPP varchar(200),
ACTUAL_IND varchar(200),
MR_REVISION varchar(200),
SR_REVISION varchar(200),
R_ORIGIN_CODE varchar(200),
STATUS varchar(200),
APPROVED_BY varchar(200),
APPROVED_DATE varchar(200),
ORIGINATOR varchar(200),
REL_TO_PROC_BY varchar(200),
REL_TO_PROC_DATE varchar(200),
BUYER varchar(200),
PROC_ACKNOWLEDGE_DATE varchar(200),
INQ_COMPLETE_IND varchar(200),
PO_COMPLETE_IND varchar(200),
ORIGINAL_BUDGET varchar(200),
SHORT_DESCRIPTION varchar(500),
DESCRIPTION varchar(500),
MTY_CODE varchar(200),
MJ_CODE varchar(200),
RTP_CODE varchar(200),
RND_CODE varchar(200),
RSD_CODE varchar(200),
CREATED_DATE varchar(200),
CreatedDateTime varchar(200)
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_purchase_request_full_view_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-11-13 11:34:58.447','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_purchase_request_full_view_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-11-13 11:34:58.447')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_purchase_request_full_view_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-13 11:34:58.447')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-11-13 11:34:58.447','pl_purchase_request_full_view_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','purchase_request_full_view_All_Projects','1','sundararaju.batta@mcdermott.com','2025-11-13 11:34:58.447','pl_purchase_request_full_view_All_Projects','NetworkFolder')
GO