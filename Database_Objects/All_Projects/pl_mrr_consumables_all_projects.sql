ALTER TABLE epr.mrr_consumables_all_projects
ALTER COLUMN [Ident Deviation] VARCHAR(2000) NULL
ALTER TABLE epr.mrr_consumables_all_projects
ALTER COLUMN [Package Number] VARCHAR(2000) NULL

create view [epr].[mrr_consumables_all_projects_V] as select
[Project],
[MRR Number],
[MRR rev#],
[matl recv date],
[MRR Created Date],
[Shipper],
[Shipper ref no],
[MRR Posted Date],
[Order Number],
[Order Number Suppl],
[Release Note Number],
[Package Number],
[Incoterm],
[Plate Number],
[X Dimension],
[Y dimension],
[File Location],
[Received Status],
[Received By],
[Warehouse],
[Location],
[Ident Code],
[Commodity Code],
[Ident Short Description],
[Ident Deviation],
[IS Pos],
[IS_Sub],
[Unit UOM],
[pos],
[subpos],
[MTN Heat Number],
[Serial No],
[Certificate Number],
[Manufacturer],
[Tag Number],
[Qty Changed],
[Size_1],
[Size_2],
[Size_3],
[Weight],
[BOM Preservation],
[IS Qty],
[Exepected Qty IS],
[Expected Qty Package],
[Received Quantity],
[QAQC Start ck Date],
[QAQC Fin ck Date],
[QAQC Checker],
[WHS Check Date],
[WHS Check by],
[Comments],
[OSD Number],
[OSD Qty],
[OSD Type],
[OSD Created Date],
[Responsible Person],
[OSD Closed Date],
[OSD Description],
[Action Required],
[Action Taken],
[CreatedDateTime]
from [epr].[mrr_consumables_all_projects]
where Project IN (select value from STRING_SPLIT((select parameter_value from plp_parameter_value where pipeline_code ='pl_Master_pipeline_Mrr_Monthly_Runs'),','))



CREATE TABLE [epr].[mrr_consumables_all_projects]
(
[Project]   varchar(200) NULL,
[MRR Number]   varchar(200) NULL,
[MRR rev#]   varchar(200) NULL,
[matl recv date]   varchar(200) NULL,
[MRR Created Date]   varchar(200) NULL,
[Shipper]   varchar(200) NULL,
[Shipper ref no]   varchar(200) NULL,
[MRR Posted Date]   varchar(200) NULL,
[Order Number]   varchar(200) NULL,
[Order Number Suppl]   varchar(200) NULL,
[Release Note Number]   varchar(200) NULL,
[Package Number]   varchar(200) NULL,
[Incoterm]   varchar(200) NULL,
[Plate Number]   varchar(200) NULL,
[X Dimension]   varchar(200) NULL,
[Y dimension]   varchar(200) NULL,
[File Location]   varchar(200) NULL,
[Received Status]   varchar(200) NULL,
[Received By]   varchar(200) NULL,
[Warehouse]   varchar(200) NULL,
[Location]   varchar(200) NULL,
[Ident Code]   varchar(200) NULL,
[Commodity Code]   varchar(200) NULL,
[Ident Short Description]   varchar(8000) NULL,
[Ident Deviation]   varchar(200) NULL,
[IS Pos]   varchar(200) NULL,
[IS_Sub]   varchar(200) NULL,
[Unit UOM]   varchar(200) NULL,
[pos]   varchar(200) NULL,
[subpos]   varchar(200) NULL,
[MTN Heat Number]   varchar(200) NULL,
[Serial No]   varchar(200) NULL,
[Certificate Number]   varchar(200) NULL,
[Manufacturer]   varchar(200) NULL,
[Tag Number]   varchar(200) NULL,
[Qty Changed]   varchar(200) NULL,
[Size_1]   varchar(200) NULL,
[Size_2]   varchar(200) NULL,
[Size_3]   varchar(200) NULL,
[Weight]   varchar(200) NULL,
[BOM Preservation]   varchar(200) NULL,
[IS Qty]   varchar(200) NULL,
[Exepected Qty IS]   varchar(200) NULL,
[Expected Qty Package]   varchar(200) NULL,
[Received Quantity]   varchar(200) NULL,
[QAQC Start ck Date]   varchar(200) NULL,
[QAQC Fin ck Date]   varchar(200) NULL,
[QAQC Checker]   varchar(200) NULL,
[WHS Check Date]   varchar(200) NULL,
[WHS Check by]   varchar(200) NULL,
[Comments]   varchar(200) NULL,
[OSD Number]   varchar(200) NULL,
[OSD Qty]   varchar(200) NULL,
[OSD Type]   varchar(200) NULL,
[OSD Created Date]   varchar(200) NULL,
[Responsible Person]   varchar(200) NULL,
[OSD Closed Date]   varchar(200) NULL,
[OSD Description]   varchar(200) NULL,
[Action Required]   varchar(4000) NULL,
[Action Taken]   varchar(4000) NULL,
[CreatedDateTime]   varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_mrr_consumables_all_projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-09-16 06:36:21.437','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_mrr_consumables_all_projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-09-16 06:36:21.437')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_mrr_consumables_all_projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-16 06:36:21.437')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-09-16 06:36:21.437','pl_mrr_consumables_all_projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','mrr_consumables_all_projects','1','sundararaju.batta@mcdermott.com','2025-09-16 06:36:21.437','pl_mrr_consumables_all_projects','NetworkFolder')
GO