create table epr.sub_order_status_all_projects
(
[Project]   varchar(200) NULL,
[POH ID]   varchar(200) NULL,
[PO Number]   varchar(200) NULL,
[PO Supplement]   varchar(200) NULL,
[Supplier]   varchar(200) NULL,
[Company Name]   varchar(4000) NULL,
[Sub Order Number]   varchar(200) NULL,
[Short Description]   varchar(200) NULL,
[Description]   varchar(4000) NULL,
[Sub Vendor]   varchar(200) NULL,
[Pertinent Area]   varchar(200) NULL,
[Planned Delivery]   varchar(200) NULL,
[Forecasted Delivery]   varchar(200) NULL,
[Actual Delivery]   varchar(200) NULL,
[Last Info Date]   varchar(200) NULL,
[Info Type]   varchar(200) NULL,
[Sub_Order_Last_Modified]   varchar(200) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_sub_order_status_all_projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-13 05:58:28.160','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_sub_order_status_all_projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-13 05:58:28.160')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_sub_order_status_all_projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-13 05:58:28.160')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-13 05:58:28.160','pl_sub_order_status_all_projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','sub_order_status_all_projects','1','sundararaju.batta@mcdermott.com','2025-08-13 05:58:28.160','pl_sub_order_status_all_projects','NetworkFolder')
GO

