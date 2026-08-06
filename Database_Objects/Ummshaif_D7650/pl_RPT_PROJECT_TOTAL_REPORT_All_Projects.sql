CREATE TABLE [epr].[RPT_PROJECT_TOTAL_REPORT_All_Projects]
(
	[PROJ_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[PART_NO] [varchar](200) NULL,
	[SIZE_1] [varchar](200) NULL,
	[SIZE_2] [varchar](200) NULL,
	[SIZE_3] [varchar](200) NULL,
	[SIZE_4] [varchar](200) NULL,
	[SIZE_5] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](4000) NULL,
	[COMMODITY_CODE] [varchar](200) NULL,
	[UNIT] [varchar](200) NULL,
	[BULK_MTO] [varchar](200) NULL,
	[AFC_MTO] [varchar](200) NULL,
	[REQ_QTY] [varchar](200) NULL,
	[PO_QTY] [varchar](200) NULL,
	[SHIP_QTY] [varchar](200) NULL,
	[RECV_QTY] [varchar](200) NULL,
	[RESV_QTY] [varchar](200) NULL,
	[UNPOSTED_MIR] [varchar](200) NULL,
	[BOM_ISSUED_QTY] [varchar](200) NULL,
	[OVER_ISSUED_QTY] [varchar](200) NULL,
	[DIRECT_ISSUE] [varchar](200) NULL,
	[UNPOSTED_DIRECT_ISSUE] [varchar](200) NULL,
	[ONHAND_QTY] [varchar](200) NULL,
	[OSD_QTY] [varchar](200) NULL,
	[FIM_RECVQTY] [varchar](200) NULL,
	[FIM_ONHANDQTY] [varchar](200) NULL,
	[SHORTAGE] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_RPT_PROJECT_TOTAL_REPORT_All_Projects','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_PROJECT_TOTAL_REPORT_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_RPT_PROJECT_TOTAL_REPORT_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_PROJECT_TOTAL_REPORT_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','RPT_PROJECT_TOTAL_REPORT_All_Projects','1','sundararaju.batta@mcdermott.com','2025-08-08 07:15:45.050','pl_RPT_PROJECT_TOTAL_REPORT_All_Projects','NetworkFolder')
GO

