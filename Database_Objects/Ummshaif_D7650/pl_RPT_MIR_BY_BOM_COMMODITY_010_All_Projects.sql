create table epr.RPT_MIR_BY_BOM_COMMODITY_010_All_Projects
(
[MIR ID]   varchar(200) NULL,
[Project]   varchar(200) NULL,
[MIR Number]   varchar(200) NULL,
[MIR Rev]   varchar(200) NULL,
[Posted Date]   varchar(200) NULL,
[MIR Issue Date]   varchar(200) NULL,
[MIR Create Date]   varchar(200) NULL,
[Issue Type]   varchar(200) NULL,
[Issue by]   varchar(200) NULL,
[Company Code]   varchar(200) NULL,
[Company Name]   varchar(200) NULL,
[Overissue Warehouse]   varchar(200) NULL,
[Location]   varchar(200) NULL,
[Scrap Warehouse]   varchar(200) NULL,
[Short Desc]   varchar(200) NULL,
[Description]   varchar(4000) NULL,
[MIR Approved by name]   varchar(200) NULL,
[BOM Path]   varchar(6000) NULL,
[List Pos]   varchar(200) NULL,
[Issued qty]   varchar(200) NULL,
[Ident Code]   varchar(200) NULL,
[Ident Short Desc]   varchar(400) NULL,
[List pos qty]   varchar(200) NULL,
[List pos issue qty]   varchar(200) NULL,
[Expected Overissue qty]   varchar(200) NULL,
[Overissue scrap qty]   varchar(200) NULL,
[On hand qty]   varchar(200) NULL,
[List Node]   varchar(200) NULL,
[Issue Date]   varchar(200) NULL,
[wh code]   varchar(200) NULL,
[loc code]   varchar(200) NULL,
[Total Overissue qty]   varchar(200) NULL,
[oi on hand qty]   varchar(200) NULL,
[Sum issue oi qty]   varchar(200) NULL,
[Used Overissue qty]   varchar(200) NULL,
[Revise overissue qty]   varchar(200) NULL,
[Unit code]   varchar(200) NULL,
[Tag Number]   varchar(200) NULL,
[Total Received qty]   varchar(200) NULL,
[List pos received qty]   varchar(200) NULL,
[Commodity Code]   varchar(200) NULL,
[Size1]   varchar(200) NULL,
[Size2]   varchar(200) NULL,
[Size3]   varchar(200) NULL,
[Heat number]   varchar(200) NULL,
[Original ident]   varchar(200) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_MIR_BY_BOM_COMMODITY_010_All_Projects','NetworkFolder')
GO
