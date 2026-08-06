create view [epr].[RPT_MIR_BY_DIRECT_ISSUE_009_CYJEA_V] as select 
[PROJ_NAME],
[MIR_NUMBER],
[MIR_REV#],
[POSTED_DATE],
[MIR_ISSUE_DATE],
[MIR_CREATE_DATE],
[GENERATED_BY],
[TO_PROJECT],
[COMPANY],
[COMPANY_NAME],
[SHORT_DESC],
[DESCRIPTION],
[MIR_APPROVED_BY_NAME],
[IDENT_CODE],
[COMMODITY_CODE],
[TAG_NUMBER],
[IDENT_SHORT_DESC],
[UNIT_PRICE_USD],
[ISSUED_QTY],
[QTY_ON_HAND],
[SIZE1],
[SIZE2],
[SIZE3],
[WAREHOUSE],
[LOCATION],
[MTN_HEAT_NUMBER],
[UNIT],
[AGREEMENT_NUMBER],
[POS],
[SUB],
[REQUESTER],
[RECEIVED_BY],
[PICKED_BY],
[JOB_NUMBER],
[ITEM_VALUE],
[CURRENCY],
[NOTES],
[CreatedDateTime],
[DELIVER_TO],
[month_end_date]
 
from [epr].[RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects]
where PROJ_NAME IN (select value from STRING_SPLIT((select parameter_value from plp_parameter_value where pipeline_code ='pl_Master_pipeline_Whc_Daily_Runs'),','))



create table epr.RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects
(
[PROJ_NAME]   varchar(200) NULL,
[MIR_NUMBER]   varchar(200) NULL,
[MIR_REV#]   varchar(200) NULL,
[POSTED_DATE]   varchar(200) NULL,
[MIR_ISSUE_DATE]   varchar(200) NULL,
[MIR_CREATE_DATE]   varchar(200) NULL,
[GENERATED_BY]   varchar(200) NULL,
[TO_PROJECT]   varchar(200) NULL,
[COMPANY]   varchar(200) NULL,
[COMPANY_NAME]   varchar(200) NULL,
[SHORT_DESC]   varchar(200) NULL,
[DESCRIPTION]   varchar(4000) NULL,
[MIR_APPROVED_BY_NAME]   varchar(200) NULL,
[IDENT_CODE]   varchar(200) NULL,
[COMMODITY_CODE]   varchar(200) NULL,
[TAG_NUMBER]   varchar(200) NULL,
[IDENT_SHORT_DESC]   varchar(4000) NULL,
[UNIT_PRICE_USD]   varchar(200) NULL,
[ISSUED_QTY]   varchar(200) NULL,
[QTY_ON_HAND]   varchar(200) NULL,
[SIZE1]   varchar(200) NULL,
[SIZE2]   varchar(200) NULL,
[SIZE3]   varchar(200) NULL,
[WAREHOUSE]   varchar(200) NULL,
[LOCATION]   varchar(200) NULL,
[MTN_HEAT_NUMBER]   varchar(200) NULL,
[UNIT]   varchar(200) NULL,
[AGREEMENT_NUMBER]   varchar(200) NULL,
[POS]   varchar(200) NULL,
[SUB]   varchar(200) NULL,
[REQUESTER]   varchar(200) NULL,
[RECEIVED_BY]   varchar(200) NULL,
[PICKED_BY]   varchar(200) NULL,
[JOB_NUMBER]   varchar(200) NULL,
[ITEM_VALUE]   varchar(200) NULL,
[CURRENCY]   varchar(200) NULL,
[NOTES]   varchar(200) NULL,
"DELIVER_TO" varchar(200) NULL,
month_end_date varchar(200) NULL,
[CreatedDateTime]   varchar(200) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_DIRECT_ISSUE_009_All_Projects','NetworkFolder')
GO