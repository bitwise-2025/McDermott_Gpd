insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_lines_all','NCSA','pl_po_lines_all',NULL,'1','aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_lines_all','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Lines_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Lines_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_LINES_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_lines_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Lines_All_stage]
(

PO_LINE_ID	[varchar](4000) NULL,
LINE_START_DATE	datetime NULL,
SH_ATTRIBUTE1	[varchar](4000) NULL,
SH_ATTRIBUTE2	[varchar](4000) NULL,
SH_ATTRIBUTE3	[varchar](4000) NULL,
SH_ATTRIBUTE4	[varchar](4000) NULL,
SH_ATTRIBUTE5	[varchar](4000) NULL,
SH_ATTRIBUTE6	[varchar](4000) NULL,
SH_ATTRIBUTE7	[varchar](4000) NULL,
SH_ATTRIBUTE8	[varchar](4000) NULL,
SH_ATTRIBUTE9	[varchar](4000) NULL,
SH_ATTRIBUTE10	[varchar](4000) NULL,
SH_ATTRIBUTE11	[varchar](4000) NULL,
SH_ATTRIBUTE12	[varchar](4000) NULL,
SH_ATTRIBUTE13	[varchar](4000) NULL,
SH_ATTRIBUTE14	[varchar](4000) NULL,
SH_ATTRIBUTE15	[varchar](4000) NULL,
SH_ATTRIBUTE16	[varchar](4000) NULL,
SH_ATTRIBUTE17	[varchar](4000) NULL,
SH_ATTRIBUTE18	[varchar](4000) NULL,
SH_ATTRIBUTE19	[varchar](4000) NULL,
SH_ATTRIBUTE20	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
SH_ATTRIBUTE_DATE1	datetime NULL,
SH_ATTRIBUTE_DATE2	datetime NULL,
SH_ATTRIBUTE_DATE3	datetime NULL,
SH_ATTRIBUTE_DATE4	datetime NULL,
SH_ATTRIBUTE_DATE5	datetime NULL,
SH_ATTRIBUTE_DATE6	datetime NULL,
SH_ATTRIBUTE_DATE7	datetime NULL,
SH_ATTRIBUTE_DATE8	datetime NULL,
SH_ATTRIBUTE_DATE9	datetime NULL,
SH_ATTRIBUTE_DATE10	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP1	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP2	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP3	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP4	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP5	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP6	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP7	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP8	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP9	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP10	datetime NULL,
SH_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
DISCOUNT_TYPE	[varchar](4000) NULL,
DISCOUNT	[varchar](4000) NULL,
DISCOUNT_REASON	[varchar](4000) NULL,
LIST_PRICE	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
CONFIGURED_ITEM_FLAG	[varchar](4000) NULL,
PARENT_ITEM_ID	[varchar](4000) NULL,
SUPPLIER_PARENT_ITEM	[varchar](4000) NULL,
TOP_MODEL_ID	[varchar](4000) NULL,
SUPPLIER_TOP_MODEL	[varchar](4000) NULL,
COMPONENT_AMOUNT_RELEASED	[varchar](4000) NULL,
AMOUNT_RELEASED	[varchar](4000) NULL,
BASE_MODEL_ID	[varchar](4000) NULL,
BASE_MODEL_PRICE	[varchar](4000) NULL,
OPTIONS_PRICE	[varchar](4000) NULL,
AGING_PERIOD_DAYS	[varchar](4000) NULL,
CONSIGNMENT_LINE_FLAG	[varchar](4000) NULL,
CATALOG_NAME	[varchar](4000) NULL,
LINE_STATUS	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
LINE_TYPE_ID	[varchar](4000) NULL,
LINE_NUM	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
ITEM_ID	[varchar](4000) NULL,
ITEM_REVISION	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
ITEM_DESCRIPTION	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
QUANTITY_COMMITTED	[varchar](4000) NULL,
COMMITTED_AMOUNT	[varchar](4000) NULL,
ALLOW_PRICE_OVERRIDE_FLAG	[varchar](4000) NULL,
NOT_TO_EXCEED_PRICE	[varchar](4000) NULL,
LIST_PRICE_PER_UNIT	[varchar](4000) NULL,
UNIT_PRICE	[varchar](4000) NULL,
QUANTITY	[varchar](4000) NULL,
TAX_EXCLUSIVE_PRICE	[varchar](4000) NULL,
UN_NUMBER_ID	[varchar](4000) NULL,
HAZARD_CLASS_ID	[varchar](4000) NULL,
NOTE_TO_VENDOR	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_LINE_ID	[varchar](4000) NULL,
QTY_RCV_TOLERANCE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
OVER_TOLERANCE_ERROR_FLAG	[varchar](4000) NULL,
MARKET_PRICE	[varchar](4000) NULL,
UNORDERED_FLAG	[varchar](4000) NULL,
CANCEL_FLAG	[varchar](4000) NULL,
CANCELLED_BY	[varchar](4000) NULL,
CANCEL_DATE	datetime NULL,
CANCEL_REASON	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	datetime NULL,
VENDOR_PRODUCT_NUM	[varchar](4000) NULL,
TAXABLE_FLAG	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TYPE_1099	[varchar](4000) NULL,
CAPITAL_EXPENSE_FLAG	[varchar](4000) NULL,
NEGOTIATED_BY_PREPARER_FLAG	[varchar](4000) NULL,
ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
ATTRIBUTE1	[varchar](4000) NULL,
ATTRIBUTE2	[varchar](4000) NULL,
ATTRIBUTE3	[varchar](4000) NULL,
ATTRIBUTE4	[varchar](4000) NULL,
ATTRIBUTE5	[varchar](4000) NULL,
ATTRIBUTE6	[varchar](4000) NULL,
ATTRIBUTE7	[varchar](4000) NULL,
ATTRIBUTE8	[varchar](4000) NULL,
ATTRIBUTE9	[varchar](4000) NULL,
ATTRIBUTE10	[varchar](4000) NULL,
REFERENCE_NUM	[varchar](4000) NULL,
ATTRIBUTE11	[varchar](4000) NULL,
ATTRIBUTE12	[varchar](4000) NULL,
ATTRIBUTE13	[varchar](4000) NULL,
ATTRIBUTE14	[varchar](4000) NULL,
ATTRIBUTE15	[varchar](4000) NULL,
ATTRIBUTE16	[varchar](4000) NULL,
ATTRIBUTE17	[varchar](4000) NULL,
ATTRIBUTE18	[varchar](4000) NULL,
ATTRIBUTE19	[varchar](4000) NULL,
ATTRIBUTE20	[varchar](4000) NULL,
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
ATTRIBUTE_TIMESTAMP6	datetime NULL,
ATTRIBUTE_TIMESTAMP7	datetime NULL,
ATTRIBUTE_TIMESTAMP8	datetime NULL,
ATTRIBUTE_TIMESTAMP9	datetime NULL,
ATTRIBUTE_TIMESTAMP10	datetime NULL,
MIN_RELEASE_AMOUNT	[varchar](4000) NULL,
PRICE_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
PRICE_BREAK_LOOKUP_CODE	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
CLOSED_DATE	datetime NULL,
CLOSED_REASON	[varchar](4000) NULL,
CLOSED_BY	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
BASE_UOM	[varchar](4000) NULL,
BASE_QTY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE6	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE7	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE8	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE9	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE10	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE11	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE12	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE13	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE14	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE15	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE16	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE17	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE18	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE19	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE20	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_DATE1	datetime NULL,
GLOBAL_ATTRIBUTE_DATE2	datetime NULL,
GLOBAL_ATTRIBUTE_DATE3	datetime NULL,
GLOBAL_ATTRIBUTE_DATE4	datetime NULL,
GLOBAL_ATTRIBUTE_DATE5	datetime NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
LINE_REFERENCE_NUM	[varchar](4000) NULL,
EXPIRATION_DATE	datetime NULL,
TAX_CODE_ID	[varchar](4000) NULL,
OKE_CONTRACT_HEADER_ID	[varchar](4000) NULL,
OKE_CONTRACT_VERSION_ID	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
PREFERRED_GRADE	[varchar](4000) NULL,
AUCTION_HEADER_ID	[varchar](4000) NULL,
AUCTION_DISPLAY_NUMBER	[varchar](4000) NULL,
AUCTION_LINE_NUMBER	[varchar](4000) NULL,
BID_NUMBER	[varchar](4000) NULL,
BID_LINE_NUMBER	[varchar](4000) NULL,
RETROACTIVE_DATE	datetime NULL,
SUPPLIER_REF_NUMBER	[varchar](4000) NULL,
CONTRACT_ID	[varchar](4000) NULL,
START_DATE	datetime NULL,
AMOUNT	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
CONTRACTOR_FIRST_NAME	[varchar](4000) NULL,
CONTRACTOR_LAST_NAME	[varchar](4000) NULL,
FROM_LINE_LOCATION_ID	[varchar](4000) NULL,
ORDER_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
PURCHASE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
SVC_AMOUNT_NOTIF_SENT	[varchar](4000) NULL,
SVC_COMPLETION_NOTIF_SENT	[varchar](4000) NULL,
BASE_UNIT_PRICE	[varchar](4000) NULL,
MANUAL_PRICE_CHANGE_FLAG	[varchar](4000) NULL,
RETAINAGE_RATE	[varchar](4000) NULL,
MAX_RETAINAGE_AMOUNT	[varchar](4000) NULL,
PROGRESS_PAYMENT_RATE	[varchar](4000) NULL,
RECOUPMENT_RATE	[varchar](4000) NULL,
SUPPLIER_PART_AUXID	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
LAST_UPDATED_PROGRAM	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
ALLOW_DESCRIPTION_UPDATE_FLAG	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
SOURCE_DOC_REV_NUM	[varchar](4000) NULL,
NEXT_CONSUMPTION_ADV_GEN_DATE	datetime NULL,
WORK_ORDER_PRODUCT	[varchar](4000) NULL,
MANUFACTURER	[varchar](4000) NULL,
MANUFACTURER_PART_NUM	[varchar](4000) NULL,
SHIPPING_UOM_CODE	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
CREDIT_FLAG	[varchar](4000) NULL,
source_name	[varchar](500) NULL,
sub_source_name	[varchar](500) NULL,
created_date_time	[datetime] NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO






CREATE TABLE [rpy].[Po_Lines_All]
(

PO_LINE_ID	[varchar](4000) NULL,
LINE_START_DATE	datetime NULL,
SH_ATTRIBUTE1	[varchar](4000) NULL,
SH_ATTRIBUTE2	[varchar](4000) NULL,
SH_ATTRIBUTE3	[varchar](4000) NULL,
SH_ATTRIBUTE4	[varchar](4000) NULL,
SH_ATTRIBUTE5	[varchar](4000) NULL,
SH_ATTRIBUTE6	[varchar](4000) NULL,
SH_ATTRIBUTE7	[varchar](4000) NULL,
SH_ATTRIBUTE8	[varchar](4000) NULL,
SH_ATTRIBUTE9	[varchar](4000) NULL,
SH_ATTRIBUTE10	[varchar](4000) NULL,
SH_ATTRIBUTE11	[varchar](4000) NULL,
SH_ATTRIBUTE12	[varchar](4000) NULL,
SH_ATTRIBUTE13	[varchar](4000) NULL,
SH_ATTRIBUTE14	[varchar](4000) NULL,
SH_ATTRIBUTE15	[varchar](4000) NULL,
SH_ATTRIBUTE16	[varchar](4000) NULL,
SH_ATTRIBUTE17	[varchar](4000) NULL,
SH_ATTRIBUTE18	[varchar](4000) NULL,
SH_ATTRIBUTE19	[varchar](4000) NULL,
SH_ATTRIBUTE20	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
SH_ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
SH_ATTRIBUTE_DATE1	datetime NULL,
SH_ATTRIBUTE_DATE2	datetime NULL,
SH_ATTRIBUTE_DATE3	datetime NULL,
SH_ATTRIBUTE_DATE4	datetime NULL,
SH_ATTRIBUTE_DATE5	datetime NULL,
SH_ATTRIBUTE_DATE6	datetime NULL,
SH_ATTRIBUTE_DATE7	datetime NULL,
SH_ATTRIBUTE_DATE8	datetime NULL,
SH_ATTRIBUTE_DATE9	datetime NULL,
SH_ATTRIBUTE_DATE10	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP1	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP2	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP3	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP4	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP5	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP6	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP7	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP8	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP9	datetime NULL,
SH_ATTRIBUTE_TIMESTAMP10	datetime NULL,
SH_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
DISCOUNT_TYPE	[varchar](4000) NULL,
DISCOUNT	[varchar](4000) NULL,
DISCOUNT_REASON	[varchar](4000) NULL,
LIST_PRICE	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
CONFIGURED_ITEM_FLAG	[varchar](4000) NULL,
PARENT_ITEM_ID	[varchar](4000) NULL,
SUPPLIER_PARENT_ITEM	[varchar](4000) NULL,
TOP_MODEL_ID	[varchar](4000) NULL,
SUPPLIER_TOP_MODEL	[varchar](4000) NULL,
COMPONENT_AMOUNT_RELEASED	[varchar](4000) NULL,
AMOUNT_RELEASED	[varchar](4000) NULL,
BASE_MODEL_ID	[varchar](4000) NULL,
BASE_MODEL_PRICE	[varchar](4000) NULL,
OPTIONS_PRICE	[varchar](4000) NULL,
AGING_PERIOD_DAYS	[varchar](4000) NULL,
CONSIGNMENT_LINE_FLAG	[varchar](4000) NULL,
CATALOG_NAME	[varchar](4000) NULL,
LINE_STATUS	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
LINE_TYPE_ID	[varchar](4000) NULL,
LINE_NUM	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
ITEM_ID	[varchar](4000) NULL,
ITEM_REVISION	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
ITEM_DESCRIPTION	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
QUANTITY_COMMITTED	[varchar](4000) NULL,
COMMITTED_AMOUNT	[varchar](4000) NULL,
ALLOW_PRICE_OVERRIDE_FLAG	[varchar](4000) NULL,
NOT_TO_EXCEED_PRICE	[varchar](4000) NULL,
LIST_PRICE_PER_UNIT	[varchar](4000) NULL,
UNIT_PRICE	[varchar](4000) NULL,
QUANTITY	[varchar](4000) NULL,
TAX_EXCLUSIVE_PRICE	[varchar](4000) NULL,
UN_NUMBER_ID	[varchar](4000) NULL,
HAZARD_CLASS_ID	[varchar](4000) NULL,
NOTE_TO_VENDOR	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_LINE_ID	[varchar](4000) NULL,
QTY_RCV_TOLERANCE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
OVER_TOLERANCE_ERROR_FLAG	[varchar](4000) NULL,
MARKET_PRICE	[varchar](4000) NULL,
UNORDERED_FLAG	[varchar](4000) NULL,
CANCEL_FLAG	[varchar](4000) NULL,
CANCELLED_BY	[varchar](4000) NULL,
CANCEL_DATE	datetime NULL,
CANCEL_REASON	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	datetime NULL,
VENDOR_PRODUCT_NUM	[varchar](4000) NULL,
TAXABLE_FLAG	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TYPE_1099	[varchar](4000) NULL,
CAPITAL_EXPENSE_FLAG	[varchar](4000) NULL,
NEGOTIATED_BY_PREPARER_FLAG	[varchar](4000) NULL,
ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
ATTRIBUTE1	[varchar](4000) NULL,
ATTRIBUTE2	[varchar](4000) NULL,
ATTRIBUTE3	[varchar](4000) NULL,
ATTRIBUTE4	[varchar](4000) NULL,
ATTRIBUTE5	[varchar](4000) NULL,
ATTRIBUTE6	[varchar](4000) NULL,
ATTRIBUTE7	[varchar](4000) NULL,
ATTRIBUTE8	[varchar](4000) NULL,
ATTRIBUTE9	[varchar](4000) NULL,
ATTRIBUTE10	[varchar](4000) NULL,
REFERENCE_NUM	[varchar](4000) NULL,
ATTRIBUTE11	[varchar](4000) NULL,
ATTRIBUTE12	[varchar](4000) NULL,
ATTRIBUTE13	[varchar](4000) NULL,
ATTRIBUTE14	[varchar](4000) NULL,
ATTRIBUTE15	[varchar](4000) NULL,
ATTRIBUTE16	[varchar](4000) NULL,
ATTRIBUTE17	[varchar](4000) NULL,
ATTRIBUTE18	[varchar](4000) NULL,
ATTRIBUTE19	[varchar](4000) NULL,
ATTRIBUTE20	[varchar](4000) NULL,
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
ATTRIBUTE_TIMESTAMP6	datetime NULL,
ATTRIBUTE_TIMESTAMP7	datetime NULL,
ATTRIBUTE_TIMESTAMP8	datetime NULL,
ATTRIBUTE_TIMESTAMP9	datetime NULL,
ATTRIBUTE_TIMESTAMP10	datetime NULL,
MIN_RELEASE_AMOUNT	[varchar](4000) NULL,
PRICE_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
PRICE_BREAK_LOOKUP_CODE	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
CLOSED_DATE	datetime NULL,
CLOSED_REASON	[varchar](4000) NULL,
CLOSED_BY	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
BASE_UOM	[varchar](4000) NULL,
BASE_QTY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE6	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE7	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE8	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE9	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE10	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE11	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE12	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE13	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE14	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE15	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE16	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE17	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE18	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE19	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE20	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_DATE1	datetime NULL,
GLOBAL_ATTRIBUTE_DATE2	datetime NULL,
GLOBAL_ATTRIBUTE_DATE3	datetime NULL,
GLOBAL_ATTRIBUTE_DATE4	datetime NULL,
GLOBAL_ATTRIBUTE_DATE5	datetime NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
LINE_REFERENCE_NUM	[varchar](4000) NULL,
EXPIRATION_DATE	datetime NULL,
TAX_CODE_ID	[varchar](4000) NULL,
OKE_CONTRACT_HEADER_ID	[varchar](4000) NULL,
OKE_CONTRACT_VERSION_ID	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
PREFERRED_GRADE	[varchar](4000) NULL,
AUCTION_HEADER_ID	[varchar](4000) NULL,
AUCTION_DISPLAY_NUMBER	[varchar](4000) NULL,
AUCTION_LINE_NUMBER	[varchar](4000) NULL,
BID_NUMBER	[varchar](4000) NULL,
BID_LINE_NUMBER	[varchar](4000) NULL,
RETROACTIVE_DATE	datetime NULL,
SUPPLIER_REF_NUMBER	[varchar](4000) NULL,
CONTRACT_ID	[varchar](4000) NULL,
START_DATE	datetime NULL,
AMOUNT	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
CONTRACTOR_FIRST_NAME	[varchar](4000) NULL,
CONTRACTOR_LAST_NAME	[varchar](4000) NULL,
FROM_LINE_LOCATION_ID	[varchar](4000) NULL,
ORDER_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
PURCHASE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
SVC_AMOUNT_NOTIF_SENT	[varchar](4000) NULL,
SVC_COMPLETION_NOTIF_SENT	[varchar](4000) NULL,
BASE_UNIT_PRICE	[varchar](4000) NULL,
MANUAL_PRICE_CHANGE_FLAG	[varchar](4000) NULL,
RETAINAGE_RATE	[varchar](4000) NULL,
MAX_RETAINAGE_AMOUNT	[varchar](4000) NULL,
PROGRESS_PAYMENT_RATE	[varchar](4000) NULL,
RECOUPMENT_RATE	[varchar](4000) NULL,
SUPPLIER_PART_AUXID	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
LAST_UPDATED_PROGRAM	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
ALLOW_DESCRIPTION_UPDATE_FLAG	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
SOURCE_DOC_REV_NUM	[varchar](4000) NULL,
NEXT_CONSUMPTION_ADV_GEN_DATE	datetime NULL,
WORK_ORDER_PRODUCT	[varchar](4000) NULL,
MANUFACTURER	[varchar](4000) NULL,
MANUFACTURER_PART_NUM	[varchar](4000) NULL,
SHIPPING_UOM_CODE	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
CREDIT_FLAG	[varchar](4000) NULL,
source_name	[varchar](500) NULL,
sub_source_name	[varchar](500) NULL,
created_date_time	[datetime] NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



Create View [rpy].[Po_Lines_All_v] as
SELECT a.[PO_LINE_ID]
      ,[LINE_START_DATE]
      ,[SH_ATTRIBUTE1]
      ,[SH_ATTRIBUTE2]
      ,[SH_ATTRIBUTE3]
      ,[SH_ATTRIBUTE4]
      ,[SH_ATTRIBUTE5]
      ,[SH_ATTRIBUTE6]
      ,[SH_ATTRIBUTE7]
      ,[SH_ATTRIBUTE8]
      ,[SH_ATTRIBUTE9]
      ,[SH_ATTRIBUTE10]
      ,[SH_ATTRIBUTE11]
      ,[SH_ATTRIBUTE12]
      ,[SH_ATTRIBUTE13]
      ,[SH_ATTRIBUTE14]
      ,[SH_ATTRIBUTE15]
      ,[SH_ATTRIBUTE16]
      ,[SH_ATTRIBUTE17]
      ,[SH_ATTRIBUTE18]
      ,[SH_ATTRIBUTE19]
      ,[SH_ATTRIBUTE20]
      ,[SH_ATTRIBUTE_NUMBER1]
      ,[SH_ATTRIBUTE_NUMBER2]
      ,[SH_ATTRIBUTE_NUMBER3]
      ,[SH_ATTRIBUTE_NUMBER4]
      ,[SH_ATTRIBUTE_NUMBER5]
      ,[SH_ATTRIBUTE_NUMBER6]
      ,[SH_ATTRIBUTE_NUMBER7]
      ,[SH_ATTRIBUTE_NUMBER8]
      ,[SH_ATTRIBUTE_NUMBER9]
      ,[SH_ATTRIBUTE_NUMBER10]
      ,[SH_ATTRIBUTE_DATE1]
      ,[SH_ATTRIBUTE_DATE2]
      ,[SH_ATTRIBUTE_DATE3]
      ,[SH_ATTRIBUTE_DATE4]
      ,[SH_ATTRIBUTE_DATE5]
      ,[SH_ATTRIBUTE_DATE6]
      ,[SH_ATTRIBUTE_DATE7]
      ,[SH_ATTRIBUTE_DATE8]
      ,[SH_ATTRIBUTE_DATE9]
      ,[SH_ATTRIBUTE_DATE10]
      ,[SH_ATTRIBUTE_TIMESTAMP1]
      ,[SH_ATTRIBUTE_TIMESTAMP2]
      ,[SH_ATTRIBUTE_TIMESTAMP3]
      ,[SH_ATTRIBUTE_TIMESTAMP4]
      ,[SH_ATTRIBUTE_TIMESTAMP5]
      ,[SH_ATTRIBUTE_TIMESTAMP6]
      ,[SH_ATTRIBUTE_TIMESTAMP7]
      ,[SH_ATTRIBUTE_TIMESTAMP8]
      ,[SH_ATTRIBUTE_TIMESTAMP9]
      ,[SH_ATTRIBUTE_TIMESTAMP10]
      ,[SH_ATTRIBUTE_CATEGORY]
      ,[DISCOUNT_TYPE]
      ,[DISCOUNT]
      ,[DISCOUNT_REASON]
      ,[LIST_PRICE]
      ,[FUNDS_STATUS]
      ,[CONFIGURED_ITEM_FLAG]
      ,[PARENT_ITEM_ID]
      ,[SUPPLIER_PARENT_ITEM]
      ,[TOP_MODEL_ID]
      ,[SUPPLIER_TOP_MODEL]
      ,[COMPONENT_AMOUNT_RELEASED]
      ,[AMOUNT_RELEASED]
      ,[BASE_MODEL_ID]
      ,[BASE_MODEL_PRICE]
      ,[OPTIONS_PRICE]
      ,[AGING_PERIOD_DAYS]
      ,[CONSIGNMENT_LINE_FLAG]
      ,[CATALOG_NAME]
      ,[LINE_STATUS]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[PO_HEADER_ID]
      ,[LINE_TYPE_ID]
      ,[LINE_NUM]
      ,[LAST_UPDATE_LOGIN]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[ITEM_ID]
      ,[ITEM_REVISION]
      ,[CATEGORY_ID]
      ,[ITEM_DESCRIPTION]
      ,[UOM_CODE]
      ,[QUANTITY_COMMITTED]
      ,[COMMITTED_AMOUNT]
      ,[ALLOW_PRICE_OVERRIDE_FLAG]
      ,[NOT_TO_EXCEED_PRICE]
      ,[LIST_PRICE_PER_UNIT]
      ,[UNIT_PRICE]
      ,[QUANTITY]
      ,[TAX_EXCLUSIVE_PRICE]
      ,[UN_NUMBER_ID]
      ,[HAZARD_CLASS_ID]
      ,[NOTE_TO_VENDOR]
      ,[FROM_HEADER_ID]
      ,[FROM_LINE_ID]
      ,[QTY_RCV_TOLERANCE]
      ,[PRC_BU_ID]
      ,[REQ_BU_ID]
      ,[OVER_TOLERANCE_ERROR_FLAG]
      ,[MARKET_PRICE]
      ,[UNORDERED_FLAG]
      ,[CANCEL_FLAG]
      ,[CANCELLED_BY]
      ,[CANCEL_DATE]
      ,[CANCEL_REASON]
      ,[FIRM_STATUS_LOOKUP_CODE]
      ,[FIRM_DATE]
      ,[VENDOR_PRODUCT_NUM]
      ,[TAXABLE_FLAG]
      ,[TAX_NAME]
      ,[TYPE_1099]
      ,[CAPITAL_EXPENSE_FLAG]
      ,[NEGOTIATED_BY_PREPARER_FLAG]
      ,[ATTRIBUTE_CATEGORY]
      ,[ATTRIBUTE1]
      ,[ATTRIBUTE2]
      ,[ATTRIBUTE3]
      ,[ATTRIBUTE4]
      ,[ATTRIBUTE5]
      ,[ATTRIBUTE6]
      ,[ATTRIBUTE7]
      ,[ATTRIBUTE8]
      ,[ATTRIBUTE9]
      ,[ATTRIBUTE10]
      ,[REFERENCE_NUM]
      ,[ATTRIBUTE11]
      ,[ATTRIBUTE12]
      ,[ATTRIBUTE13]
      ,[ATTRIBUTE14]
      ,[ATTRIBUTE15]
      ,[ATTRIBUTE16]
      ,[ATTRIBUTE17]
      ,[ATTRIBUTE18]
      ,[ATTRIBUTE19]
      ,[ATTRIBUTE20]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,[ATTRIBUTE_NUMBER6]
      ,[ATTRIBUTE_NUMBER7]
      ,[ATTRIBUTE_NUMBER8]
      ,[ATTRIBUTE_NUMBER9]
      ,[ATTRIBUTE_NUMBER10]
      ,[ATTRIBUTE_DATE1]
      ,[ATTRIBUTE_DATE2]
      ,[ATTRIBUTE_DATE3]
      ,[ATTRIBUTE_DATE4]
      ,[ATTRIBUTE_DATE5]
      ,[ATTRIBUTE_DATE6]
      ,[ATTRIBUTE_DATE7]
      ,[ATTRIBUTE_DATE8]
      ,[ATTRIBUTE_DATE9]
      ,[ATTRIBUTE_DATE10]
      ,[ATTRIBUTE_TIMESTAMP1]
      ,[ATTRIBUTE_TIMESTAMP2]
      ,[ATTRIBUTE_TIMESTAMP3]
      ,[ATTRIBUTE_TIMESTAMP4]
      ,[ATTRIBUTE_TIMESTAMP5]
      ,[ATTRIBUTE_TIMESTAMP6]
      ,[ATTRIBUTE_TIMESTAMP7]
      ,[ATTRIBUTE_TIMESTAMP8]
      ,[ATTRIBUTE_TIMESTAMP9]
      ,[ATTRIBUTE_TIMESTAMP10]
      ,[MIN_RELEASE_AMOUNT]
      ,[PRICE_TYPE_LOOKUP_CODE]
      ,[PRICE_BREAK_LOOKUP_CODE]
      ,[GOVERNMENT_CONTEXT]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[CLOSED_DATE]
      ,[CLOSED_REASON]
      ,[CLOSED_BY]
      ,[SOLDTO_BU_ID]
      ,[QC_GRADE]
      ,[BASE_UOM]
      ,[BASE_QTY]
      ,[GLOBAL_ATTRIBUTE_CATEGORY]
      ,[GLOBAL_ATTRIBUTE1]
      ,[GLOBAL_ATTRIBUTE2]
      ,[GLOBAL_ATTRIBUTE3]
      ,[GLOBAL_ATTRIBUTE4]
      ,[GLOBAL_ATTRIBUTE5]
      ,[GLOBAL_ATTRIBUTE6]
      ,[GLOBAL_ATTRIBUTE7]
      ,[GLOBAL_ATTRIBUTE8]
      ,[GLOBAL_ATTRIBUTE9]
      ,[GLOBAL_ATTRIBUTE10]
      ,[GLOBAL_ATTRIBUTE11]
      ,[GLOBAL_ATTRIBUTE12]
      ,[GLOBAL_ATTRIBUTE13]
      ,[GLOBAL_ATTRIBUTE14]
      ,[GLOBAL_ATTRIBUTE15]
      ,[GLOBAL_ATTRIBUTE16]
      ,[GLOBAL_ATTRIBUTE17]
      ,[GLOBAL_ATTRIBUTE18]
      ,[GLOBAL_ATTRIBUTE19]
      ,[GLOBAL_ATTRIBUTE20]
      ,[GLOBAL_ATTRIBUTE_DATE1]
      ,[GLOBAL_ATTRIBUTE_DATE2]
      ,[GLOBAL_ATTRIBUTE_DATE3]
      ,[GLOBAL_ATTRIBUTE_DATE4]
      ,[GLOBAL_ATTRIBUTE_DATE5]
      ,[GLOBAL_ATTRIBUTE_NUMBER1]
      ,[GLOBAL_ATTRIBUTE_NUMBER2]
      ,[GLOBAL_ATTRIBUTE_NUMBER3]
      ,[GLOBAL_ATTRIBUTE_NUMBER4]
      ,[GLOBAL_ATTRIBUTE_NUMBER5]
      ,[LINE_REFERENCE_NUM]
      ,[EXPIRATION_DATE]
      ,[TAX_CODE_ID]
      ,[OKE_CONTRACT_HEADER_ID]
      ,[OKE_CONTRACT_VERSION_ID]
      ,[SECONDARY_QUANTITY]
      ,[SECONDARY_UOM_CODE]
      ,[PREFERRED_GRADE]
      ,[AUCTION_HEADER_ID]
      ,[AUCTION_DISPLAY_NUMBER]
      ,[AUCTION_LINE_NUMBER]
      ,[BID_NUMBER]
      ,[BID_LINE_NUMBER]
      ,[RETROACTIVE_DATE]
      ,[SUPPLIER_REF_NUMBER]
      ,[CONTRACT_ID]
      ,[START_DATE]
      ,[AMOUNT]
      ,[JOB_ID]
      ,[CONTRACTOR_FIRST_NAME]
      ,[CONTRACTOR_LAST_NAME]
      ,[FROM_LINE_LOCATION_ID]
      ,[ORDER_TYPE_LOOKUP_CODE]
      ,[PURCHASE_BASIS]
      ,[MATCHING_BASIS]
      ,[SVC_AMOUNT_NOTIF_SENT]
      ,[SVC_COMPLETION_NOTIF_SENT]
      ,[BASE_UNIT_PRICE]
      ,[MANUAL_PRICE_CHANGE_FLAG]
      ,[RETAINAGE_RATE]
      ,[MAX_RETAINAGE_AMOUNT]
      ,[PROGRESS_PAYMENT_RATE]
      ,[RECOUPMENT_RATE]
      ,[SUPPLIER_PART_AUXID]
      ,[TAX_ATTRIBUTE_UPDATE_CODE]
      ,[LAST_UPDATED_PROGRAM]
      ,[OBJECT_VERSION_NUMBER]
      ,[ALLOW_DESCRIPTION_UPDATE_FLAG]
      ,[PJC_CONTEXT_CATEGORY]
      ,[SOURCE_DOC_REV_NUM]
      ,[NEXT_CONSUMPTION_ADV_GEN_DATE]
      ,[WORK_ORDER_PRODUCT]
      ,[MANUFACTURER]
      ,[MANUFACTURER_PART_NUM]
      ,[SHIPPING_UOM_CODE]
      ,[SHIPPING_UOM_QUANTITY]
      ,[CREDIT_FLAG]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Lines_All] a,
  (SELECT PO_LINE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Lines_All] GROUP BY PO_LINE_ID) b
WHERE a.PO_LINE_ID = b.PO_LINE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Po_Lines_All_PO_LINE_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Lines_All]
(
	[PO_LINE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




