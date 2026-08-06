create table epr.RPT_MTR_DETAILS_All_Projects
(
[Project]   varchar(200) NULL,
[MTR Number]   varchar(200) NULL,
[MTR Create Date]   varchar(200) NULL,
[Posted Date]   varchar(200) NULL,
[Transfer Date]   varchar(200) NULL,
[MTR Type]   varchar(200) NULL,
[MTR Status]   varchar(200) NULL,
[From Warehouse]   varchar(200) NULL,
[From Warehouse Short Desc]   varchar(200) NULL,
[From Warehouse Desc]   varchar(200) NULL,
[Transfered by]   varchar(200) NULL,
[ETA Date]   varchar(200) NULL,
[Shipper Ref]   varchar(200) NULL,
[Ident Code]   varchar(200) NULL,
[Ident Desc]   varchar(4000) NULL,
[Additional Desc]   varchar(200) NULL,
[Commodity Code]   varchar(200) NULL,
[Tag Number]   varchar(200) NULL,
[Inv Warehouse]   varchar(200) NULL,
[Inv Location]   varchar(200) NULL,
[Inv Recv Status]   varchar(200) NULL,
[Size_1]   varchar(200) NULL,
[Size_2]   varchar(200) NULL,
[Size_3]   varchar(200) NULL,
[Size_4]   varchar(200) NULL,
[Size_5]   varchar(200) NULL,
[Heat No]   varchar(200) NULL,
[Plate Number]   varchar(200) NULL,
[X Dimensions]   varchar(200) NULL,
[Y Dimensions]   varchar(200) NULL,
[Site Code]   varchar(200) NULL,
[New Warehouse]   varchar(200) NULL,
[New Location]   varchar(200) NULL,
[New Recv Status]   varchar(200) NULL,
[On Hand qty]   varchar(200) NULL,
[Reserved qty]   varchar(200) NULL,
[Move qty]   varchar(200) NULL,
[Comments]   varchar(200) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_MTR_DETAILS_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MTR_DETAILS_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MTR_DETAILS_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MTR_DETAILS_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_MTR_DETAILS_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MTR_DETAILS_All_Projects','NetworkFolder')
GO