CREATE TABLE [epr].[Po_Line_item_All_Projects]
(
	[PROJECT_ID] [varchar](500) NOT NULL,
	[REQUISITION_NO] [varchar](500) NULL,
	[REQ_REV] [varchar](500) NULL,
	[REQ_ORIGINATOR] [varchar](500) NULL,
	[REQ_DATE] [varchar](500) NULL,
	[RELEASED_TO_PROC] [varchar](500) NULL,
	[PROC_ACK_DATE] [varchar](500) NULL,
	[MATL_WRK_GRP] [varchar](500) NULL,
	[MATL_WRK_NLS] [varchar](500) NULL,
	[RLI_POS] [varchar](500) NULL,
	[RLI_SUB_POS] [varchar](500) NULL,
	[RELEASED_QTY] [varchar](500) NULL,
	[UOM] [varchar](500) NULL,
	[ROS_DATE] [varchar](500) NULL,
	[PO_NUMBER] [varchar](500) NULL,
	[PO_REV] [varchar](500) NULL,
	[PO_DESCRIPTION] [varchar](500) NULL,
	[PO_STATUS] [varchar](500) NULL,
	[STATUS_DATE] [varchar](500) NULL,
	[PO_CREATED_DATE] [varchar](500) NULL,
	[PO_ISSUE_DATE] [varchar](500) NULL,
	[PO_APPROVED_DATE] [varchar](500) NULL,
	[SUPPLIER_CODE] [varchar](500) NULL,
	[SUPPLIER_NAME] [varchar](500) NULL,
	[SUPPLIER_LOCATION] [varchar](500) NULL,
	[COUNTRY_OF_ORIGIN] [varchar](500) NULL,
	[BUYER] [varchar](500) NULL,
	[SELECT_CODE] [varchar](500) NULL,
	[PAYMENT_MODE] [varchar](500) NULL,
	[COMMODITY_CODE] [varchar](500) NULL,
	[IDENT_CODE] [varchar](500) NULL,
	[ITEM_DESC] [varchar](4000) NULL,
	[POLI_POS] [varchar](500) NULL,
	[POLI_SUB_POS] [varchar](500) NULL,
	[ACCOUNT_CODE_ITEM] [varchar](500) NULL,
	[POLI_UOM] [varchar](500) NULL,
	[POLI_QTY] [varchar](500) NULL,
	[UNIT_PRICE_ITEM] [varchar](500) NULL,
	[PO_LINE_ITEM_PRICE] [varchar](500) NULL,
	[PO_LINE_ITEM_PRICE_USD] [varchar](500) NULL,
	[PO_TOTAL_COST] [varchar](500) NULL,
	[PO_TOTAL_USD] [varchar](500) NULL,
	[PO_CURRENCY] [varchar](500) NULL,
	[CURRENCY_PO_ITEM] [varchar](500) NULL,
	[DISCOUNT_PERCENTAGE] [varchar](500) NULL,
	[INCOTERM] [varchar](500) NULL,
	[DELIVERY_PLACE] [varchar](500) NULL,
	[GROUP1] [varchar](500) NULL,
	[GROUP2] [varchar](500) NULL,
	[GROUP3] [varchar](500) NULL,
	[GROUP4] [varchar](500) NULL,
	[GROUP5] [varchar](500) NULL,
	[PROM_DELIVERY_DATE] [varchar](500) NULL,
	[MRR_NUMBER] [varchar](500) NULL,
	[MRR_CREATION_DATE] [varchar](500) NULL,
	[MRR_RECV_DATE] [varchar](500) NULL,
	[MRR_POSTED_DATE] [varchar](500) NULL,
	[MRR_QUANTITY] [varchar](500) NULL,
	[IS_MASTER_TAG] [varchar](500) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Po_Line_item_All_Projects','NCSA','SMAT Vendor Progress Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2024-12-09 03:58:16.660','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Po_Line_item_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2024-12-09 04:06:32.620')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Po_Line_item_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2024-12-09 04:06:32.620')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Po_Line_item_All_Projects','NetworkFolder','project_number','3','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2024-12-09 04:06:32.620')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2024-12-09 04:56:37.463','pl_Po_Line_item_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7507','1','sundararaju.batta@mcdermott.com','2024-12-09 04:56:37.463','pl_Po_Line_item_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Po_Line_item_All_Projects','1','sundararaju.batta@mcdermott.com','2024-12-09 04:56:37.463','pl_Po_Line_item_All_Projects','NetworkFolder')
GO



