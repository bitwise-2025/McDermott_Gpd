create view [epr].[RPT_INVENTORY_WHR_CYJEA_V] as select
[PROJ_ID],
[WAREHOUSE_CODE],
[LOCATION_CODE],
[COMMODITY_CODE],
[IDENT_CODE],
[IDENT_SHORT_DESCRIPTION],
[RESV_QTY],
[ISSUE_QTY],
[RECV_QTY],
[ON_HAND_QTY],
[UNIT_CODE],
[TAG_NUMBER],
[CURRENT_RECEIPT_STATUS],
[UNIT_WEIGHT],
[TOTAL_WEIGHT],
[CreatedDateTime],
[UNIT_PRICE_USD],
[month_end_date]
from [epr].[RPT_INVENTORY_WHR_All_Projects]
where PROJ_ID IN (select value from STRING_SPLIT((select parameter_value from plp_parameter_value where pipeline_code ='pl_Master_pipeline_Whc_Daily_Runs'),','))


create table epr.RPT_INVENTORY_WHR_All_Projects
(
PROJ_ID varchar(200),
WAREHOUSE_CODE varchar(200),
LOCATION_CODE varchar(200),
COMMODITY_CODE varchar(200),
IDENT_CODE varchar(200),
IDENT_SHORT_DESCRIPTION varchar(4000),
RESV_QTY varchar(200),
ISSUE_QTY varchar(200),
RECV_QTY varchar(200),
ON_HAND_QTY varchar(200),
UNIT_CODE varchar(200),
TAG_NUMBER varchar(200),
CURRENT_RECEIPT_STATUS varchar(200),
UNIT_WEIGHT varchar(200),
TOTAL_WEIGHT varchar(200),
UNIT_PRICE_USD varchar(200),
month_end_date varchar(200),
CreatedDateTime varchar(200)
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_INVENTORY_WHR_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_INVENTORY_WHR_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_INVENTORY_WHR_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_INVENTORY_WHR_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_INVENTORY_WHR_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_INVENTORY_WHR_All_Projects','NetworkFolder')
GO

