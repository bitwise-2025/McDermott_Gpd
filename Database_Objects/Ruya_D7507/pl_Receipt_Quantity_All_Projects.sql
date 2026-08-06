alter table epr.Receipt_Quantity_All_Projects
alter column "Ident Description" varchar(5000)

create table epr.Receipt_Quantity_All_Projects
(
[LOCATION]   varchar(500) NULL,
[STATUS]   varchar(500) NULL,
[LOC_ID]   varchar(500) NULL,
[IVI_ID]   varchar(500) NULL,
[IDENT_CODE]   varchar(500) NULL,
[RECV_QTY]   varchar(500) NULL,
[RESV_QTY]   varchar(500) NULL,
[RECV_BY_RECV]   varchar(500) NULL,
[ISSUE_QTY]   varchar(500) NULL,
[TAG_NUMBER]   varchar(500) NULL,
[SMST_ID]   varchar(500) NULL,
[IDENT]   varchar(500) NULL,
[WH_ID]   varchar(500) NULL,
[INPUT_1]   varchar(500) NULL,
[INPUT_2]   varchar(500) NULL,
[INPUT_3]   varchar(500) NULL,
[INPUT_4]   varchar(500) NULL,
[INPUT_5]   varchar(500) NULL,
[UNIT_ID]   varchar(500) NULL,
[HEAT_ID]   varchar(500) NULL,
[ONHAND_QTY]   varchar(500) NULL,
[COMMODITY_CODE]   varchar(500) NULL,
[Ident Description]   varchar(500) NULL,
[IDENT_DEVIATION]   varchar(500) NULL,
[PLATE_ID]   varchar(500) NULL,
[CreatedDateTime]   varchar(500) NULL,
[project_number]   varchar(500) NULL,
[month_end_date] varchar(500)
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Receipt_Quantity_All_Projects','NCSA','SMAT Vendor Progress Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Receipt_Quantity_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Receipt_Quantity_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Receipt_Quantity_All_Projects','NetworkFolder','project_number','3','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050','pl_Receipt_Quantity_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7507','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050','pl_Receipt_Quantity_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Receipt_Quantity_All_Projects','1','sundararaju.batta@mcdermott.com','2025-04-22 08:31:26.050','pl_Receipt_Quantity_All_Projects','NetworkFolder')
GO