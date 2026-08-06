insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_rcv_shipment_lines','NCSA','pl_rcv_shipment_lines',NULL,'1','aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_lines','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Rcv_Shipment_Lines',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Rcv_Shipment_Lines',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-08-15 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/RCV_SHIPMENT_LINES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','03',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_lines','NetworkFolder')


GO


CREATE TABLE [rpy].[Rcv_Shipment_Lines_stage]
(

SHIPMENT_LINE_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
SHIPMENT_HEADER_ID	[varchar](4000) NULL,
LINE_NUM	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
QUANTITY_SHIPPED	[varchar](4000) NULL,
QUANTITY_RECEIVED	[varchar](4000) NULL,
QUANTITY_DELIVERED	[varchar](4000) NULL,
QUANTITY_RETURNED	[varchar](4000) NULL,
QUANTITY_ACCEPTED	[varchar](4000) NULL,
QUANTITY_REJECTED	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
ITEM_DESCRIPTION	[varchar](4000) NULL,
ITEM_ID	[varchar](4000) NULL,
ITEM_REVISION	[varchar](4000) NULL,
VENDOR_ITEM_NUM	[varchar](4000) NULL,
VENDOR_LOT_NUM	[varchar](4000) NULL,
UOM_CONVERSION_RATE	[varchar](4000) NULL,
SHIPMENT_LINE_STATUS_CODE	[varchar](4000) NULL,
SOURCE_DOCUMENT_CODE	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
PO_LINE_LOCATION_ID	[varchar](4000) NULL,
PO_DISTRIBUTION_ID	[varchar](4000) NULL,
REQUISITION_LINE_ID	[varchar](4000) NULL,
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
ROUTING_HEADER_ID	[varchar](4000) NULL,
PACKING_SLIP	[varchar](4000) NULL,
FROM_ORGANIZATION_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
TO_ORGANIZATION_ID	[varchar](4000) NULL,
TO_SUBINVENTORY	[varchar](4000) NULL,
LOCATOR_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
SHIPMENT_UNIT_PRICE	[varchar](4000) NULL,
TRANSFER_COST	[varchar](4000) NULL,
TRANSPORTATION_COST	[varchar](4000) NULL,
COMMENTS	[varchar](4000) NULL,
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
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
REASON_ID	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
PRIMARY_UOM_CODE	[varchar](4000) NULL,
EXCESS_TRANSPORT_REASON	[varchar](4000) NULL,
EXCESS_TRANSPORT_RESPONSIBLE	[varchar](4000) NULL,
EXCESS_TRANSPORT_AUTH_NUM	[varchar](4000) NULL,
ASN_LINE_FLAG	[varchar](4000) NULL,
ORIGINAL_ASN_PARENT_LINE_ID	[varchar](4000) NULL,
ORIGINAL_ASN_LINE_FLAG	[varchar](4000) NULL,
VENDOR_CUM_SHIPPED_QUANTITY	[varchar](4000) NULL,
NOTICE_UNIT_PRICE	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TAX_AMOUNT	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
CUM_COMPARISON_FLAG	[varchar](4000) NULL,
CONTAINER_NUM	[varchar](4000) NULL,
TRUCK_NUM	[varchar](4000) NULL,
BAR_CODE_LABEL	[varchar](4000) NULL,
TRANSFER_PERCENTAGE	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
CUSTOMER_ITEM_NUM	[varchar](4000) NULL,
SECONDARY_QUANTITY_SHIPPED	[varchar](4000) NULL,
SECONDARY_QUANTITY_RECEIVED	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
MMT_TRANSACTION_ID	[varchar](4000) NULL,
ASN_LPN_ID	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
AMOUNT_RECEIVED	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
TIMECARD_ID	[varchar](4000) NULL,
TIMECARD_OVN	[varchar](4000) NULL,
OSA_FLAG	[varchar](4000) NULL,
REQUESTED_AMOUNT	[varchar](4000) NULL,
MATERIAL_STORED_AMOUNT	[varchar](4000) NULL,
APPROVAL_STATUS	[varchar](4000) NULL,
AMOUNT_SHIPPED	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_NUMBER	[varchar](4000) NULL,
RA_DOCUMENT_LINE_NUMBER	[varchar](4000) NULL,
RA_DOO_HEADER_NUMBER	[varchar](4000) NULL,
RA_DOO_LINE_NUMBER	[varchar](4000) NULL,
RA_DOO_FULFILLMENT_LINE_NUMBER	[varchar](4000) NULL,
RA_DOC_SCHEDULE_NUMBER	[varchar](4000) NULL,
RA_DOC_LINE_CREATION_DATE	datetime NULL,
RA_DOC_LINE_LAST_UPDATE_DATE	datetime NULL,
RA_EXPECTED_RECEIPT_DATE	datetime NULL,
RA_DAYS_EARLY_RECEIPT_ALLOWED	[varchar](4000) NULL,
RA_DAYS_LATE_RECEIPT_ALLOWED	[varchar](4000) NULL,
RA_RECEIPT_DAYS_EXCEPTION_CODE	[varchar](4000) NULL,
RA_ENFORCE_SHIP_TO_LOC_CODE	[varchar](4000) NULL,
RA_ALLOW_SUBSTITUTE_RECEIPT	[varchar](4000) NULL,
RA_QTY_RCV_TOLERANCE	[varchar](4000) NULL,
RA_QTY_RCV_EXCEPTION_CODE	[varchar](4000) NULL,
RA_NOTE_TO_RECEIVER	[varchar](4000) NULL,
RECEIPT_ADVICE_HEADER_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_ID	[varchar](4000) NULL,
RA_ORIG_DOO_HEADER_NUMBER	[varchar](4000) NULL,
RA_ORIG_DOO_LINE_NUMBER	[varchar](4000) NULL,
RA_ORIG_OC_HEADER_NUMBER	[varchar](4000) NULL,
RA_ORIG_OC_LINE_NUMBER	[varchar](4000) NULL,
RA_ORIG_DOO_FULFIL_LINE_NUM	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
RA_QUANTITY_EXPECTED	[varchar](4000) NULL,
RA_SECONDARY_QUANTITY_EXPECTED	[varchar](4000) NULL,
RA_UNIT_PRICE	[varchar](4000) NULL,
SP_QUANTITY	[varchar](4000) NULL,
SP_UOM_CODE	[varchar](4000) NULL,
SP_GROUP_ID	[varchar](4000) NULL,
RA_LAST_ACTION_CODE	[varchar](4000) NULL,
RA_MESSAGE_NUMBER	[varchar](4000) NULL,
INTERFACE_TRANSACTION_ID	[varchar](4000) NULL,
TRANSFER_ORDER_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_LINE_ID	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
CONSUMED_QUANTITY	[varchar](4000) NULL,
EXTERNAL_SYS_INTF_STATUS	[varchar](4000) NULL,
FIRST_PTY_REG_ID	[varchar](4000) NULL,
THIRD_PTY_REG_ID	[varchar](4000) NULL,
DEFAULT_TAXATION_COUNTRY	[varchar](4000) NULL,
DOCUMENT_FISCAL_CLASSIFICATION	[varchar](4000) NULL,
TRX_BUSINESS_CATEGORY	[varchar](4000) NULL,
TAX_INVOICE_NUMBER	[varchar](4000) NULL,
TAX_INVOICE_DATE	datetime NULL,
SHIP_FROM_LOCATION_ID	[varchar](4000) NULL,
USER_DEFINED_FISC_CLASS	[varchar](4000) NULL,
TAX_CLASSIFICATION_CODE	[varchar](4000) NULL,
INTENDED_USE	[varchar](4000) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
ORIG_TO_INV_SHIP_TXN_ID	[varchar](4000) NULL,
CUSTOMER_ITEM_ID	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
PROJECT_ID	[varchar](4000) NULL,
TASK_ID	[varchar](4000) NULL,
INV_STRIPING_CATEGORY	[varchar](4000) NULL,
INV_RESERVED_ATTRIBUTE1	[varchar](4000) NULL,
INV_RESERVED_ATTRIBUTE2	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE1	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE2	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE3	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE4	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE5	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE6	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE7	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE8	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE9	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE10	[varchar](4000) NULL,
EWAY_BILL_NUMBER	[varchar](4000) NULL,
EWAY_BILL_DATE	datetime NULL,
EXT_SYS_GROUP_ID	[varchar](4000) NULL,
DS_LINE_INTERFACED_TO_OM	[varchar](4000) NULL,
SECONDARY_QTY_DELIVERED	[varchar](4000) NULL,
SECONDARY_QTY_RETURNED	[varchar](4000) NULL,
SECONDARY_QTY_ACCEPTED	[varchar](4000) NULL,
SECONDARY_QTY_REJECTED	[varchar](4000) NULL,
WORK_CONFIRMATION_ID	[varchar](4000) NULL,
WORK_CONFIRMATION_LINE_ID	[varchar](4000) NULL,
ELASTIC_SEARCH_INGEST_STATUS	[varchar](4000) NULL,
CST_TRANSFER_STATUS	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Rcv_Shipment_Lines]
(

SHIPMENT_LINE_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
SHIPMENT_HEADER_ID	[varchar](4000) NULL,
LINE_NUM	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
QUANTITY_SHIPPED	[varchar](4000) NULL,
QUANTITY_RECEIVED	[varchar](4000) NULL,
QUANTITY_DELIVERED	[varchar](4000) NULL,
QUANTITY_RETURNED	[varchar](4000) NULL,
QUANTITY_ACCEPTED	[varchar](4000) NULL,
QUANTITY_REJECTED	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
ITEM_DESCRIPTION	[varchar](4000) NULL,
ITEM_ID	[varchar](4000) NULL,
ITEM_REVISION	[varchar](4000) NULL,
VENDOR_ITEM_NUM	[varchar](4000) NULL,
VENDOR_LOT_NUM	[varchar](4000) NULL,
UOM_CONVERSION_RATE	[varchar](4000) NULL,
SHIPMENT_LINE_STATUS_CODE	[varchar](4000) NULL,
SOURCE_DOCUMENT_CODE	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
PO_LINE_LOCATION_ID	[varchar](4000) NULL,
PO_DISTRIBUTION_ID	[varchar](4000) NULL,
REQUISITION_LINE_ID	[varchar](4000) NULL,
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
ROUTING_HEADER_ID	[varchar](4000) NULL,
PACKING_SLIP	[varchar](4000) NULL,
FROM_ORGANIZATION_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
TO_ORGANIZATION_ID	[varchar](4000) NULL,
TO_SUBINVENTORY	[varchar](4000) NULL,
LOCATOR_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
SHIPMENT_UNIT_PRICE	[varchar](4000) NULL,
TRANSFER_COST	[varchar](4000) NULL,
TRANSPORTATION_COST	[varchar](4000) NULL,
COMMENTS	[varchar](4000) NULL,
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
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
REASON_ID	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
PRIMARY_UOM_CODE	[varchar](4000) NULL,
EXCESS_TRANSPORT_REASON	[varchar](4000) NULL,
EXCESS_TRANSPORT_RESPONSIBLE	[varchar](4000) NULL,
EXCESS_TRANSPORT_AUTH_NUM	[varchar](4000) NULL,
ASN_LINE_FLAG	[varchar](4000) NULL,
ORIGINAL_ASN_PARENT_LINE_ID	[varchar](4000) NULL,
ORIGINAL_ASN_LINE_FLAG	[varchar](4000) NULL,
VENDOR_CUM_SHIPPED_QUANTITY	[varchar](4000) NULL,
NOTICE_UNIT_PRICE	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TAX_AMOUNT	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
CUM_COMPARISON_FLAG	[varchar](4000) NULL,
CONTAINER_NUM	[varchar](4000) NULL,
TRUCK_NUM	[varchar](4000) NULL,
BAR_CODE_LABEL	[varchar](4000) NULL,
TRANSFER_PERCENTAGE	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
CUSTOMER_ITEM_NUM	[varchar](4000) NULL,
SECONDARY_QUANTITY_SHIPPED	[varchar](4000) NULL,
SECONDARY_QUANTITY_RECEIVED	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
MMT_TRANSACTION_ID	[varchar](4000) NULL,
ASN_LPN_ID	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
AMOUNT_RECEIVED	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
TIMECARD_ID	[varchar](4000) NULL,
TIMECARD_OVN	[varchar](4000) NULL,
OSA_FLAG	[varchar](4000) NULL,
REQUESTED_AMOUNT	[varchar](4000) NULL,
MATERIAL_STORED_AMOUNT	[varchar](4000) NULL,
APPROVAL_STATUS	[varchar](4000) NULL,
AMOUNT_SHIPPED	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_NUMBER	[varchar](4000) NULL,
RA_DOCUMENT_LINE_NUMBER	[varchar](4000) NULL,
RA_DOO_HEADER_NUMBER	[varchar](4000) NULL,
RA_DOO_LINE_NUMBER	[varchar](4000) NULL,
RA_DOO_FULFILLMENT_LINE_NUMBER	[varchar](4000) NULL,
RA_DOC_SCHEDULE_NUMBER	[varchar](4000) NULL,
RA_DOC_LINE_CREATION_DATE	datetime NULL,
RA_DOC_LINE_LAST_UPDATE_DATE	datetime NULL,
RA_EXPECTED_RECEIPT_DATE	datetime NULL,
RA_DAYS_EARLY_RECEIPT_ALLOWED	[varchar](4000) NULL,
RA_DAYS_LATE_RECEIPT_ALLOWED	[varchar](4000) NULL,
RA_RECEIPT_DAYS_EXCEPTION_CODE	[varchar](4000) NULL,
RA_ENFORCE_SHIP_TO_LOC_CODE	[varchar](4000) NULL,
RA_ALLOW_SUBSTITUTE_RECEIPT	[varchar](4000) NULL,
RA_QTY_RCV_TOLERANCE	[varchar](4000) NULL,
RA_QTY_RCV_EXCEPTION_CODE	[varchar](4000) NULL,
RA_NOTE_TO_RECEIVER	[varchar](4000) NULL,
RECEIPT_ADVICE_HEADER_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_ID	[varchar](4000) NULL,
RA_ORIG_DOO_HEADER_NUMBER	[varchar](4000) NULL,
RA_ORIG_DOO_LINE_NUMBER	[varchar](4000) NULL,
RA_ORIG_OC_HEADER_NUMBER	[varchar](4000) NULL,
RA_ORIG_OC_LINE_NUMBER	[varchar](4000) NULL,
RA_ORIG_DOO_FULFIL_LINE_NUM	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
RA_QUANTITY_EXPECTED	[varchar](4000) NULL,
RA_SECONDARY_QUANTITY_EXPECTED	[varchar](4000) NULL,
RA_UNIT_PRICE	[varchar](4000) NULL,
SP_QUANTITY	[varchar](4000) NULL,
SP_UOM_CODE	[varchar](4000) NULL,
SP_GROUP_ID	[varchar](4000) NULL,
RA_LAST_ACTION_CODE	[varchar](4000) NULL,
RA_MESSAGE_NUMBER	[varchar](4000) NULL,
INTERFACE_TRANSACTION_ID	[varchar](4000) NULL,
TRANSFER_ORDER_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_LINE_ID	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
CONSUMED_QUANTITY	[varchar](4000) NULL,
EXTERNAL_SYS_INTF_STATUS	[varchar](4000) NULL,
FIRST_PTY_REG_ID	[varchar](4000) NULL,
THIRD_PTY_REG_ID	[varchar](4000) NULL,
DEFAULT_TAXATION_COUNTRY	[varchar](4000) NULL,
DOCUMENT_FISCAL_CLASSIFICATION	[varchar](4000) NULL,
TRX_BUSINESS_CATEGORY	[varchar](4000) NULL,
TAX_INVOICE_NUMBER	[varchar](4000) NULL,
TAX_INVOICE_DATE	datetime NULL,
SHIP_FROM_LOCATION_ID	[varchar](4000) NULL,
USER_DEFINED_FISC_CLASS	[varchar](4000) NULL,
TAX_CLASSIFICATION_CODE	[varchar](4000) NULL,
INTENDED_USE	[varchar](4000) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
ORIG_TO_INV_SHIP_TXN_ID	[varchar](4000) NULL,
CUSTOMER_ITEM_ID	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
PROJECT_ID	[varchar](4000) NULL,
TASK_ID	[varchar](4000) NULL,
INV_STRIPING_CATEGORY	[varchar](4000) NULL,
INV_RESERVED_ATTRIBUTE1	[varchar](4000) NULL,
INV_RESERVED_ATTRIBUTE2	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE1	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE2	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE3	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE4	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE5	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE6	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE7	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE8	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE9	[varchar](4000) NULL,
INV_USER_DEF_ATTRIBUTE10	[varchar](4000) NULL,
EWAY_BILL_NUMBER	[varchar](4000) NULL,
EWAY_BILL_DATE	datetime NULL,
EXT_SYS_GROUP_ID	[varchar](4000) NULL,
DS_LINE_INTERFACED_TO_OM	[varchar](4000) NULL,
SECONDARY_QTY_DELIVERED	[varchar](4000) NULL,
SECONDARY_QTY_RETURNED	[varchar](4000) NULL,
SECONDARY_QTY_ACCEPTED	[varchar](4000) NULL,
SECONDARY_QTY_REJECTED	[varchar](4000) NULL,
WORK_CONFIRMATION_ID	[varchar](4000) NULL,
WORK_CONFIRMATION_LINE_ID	[varchar](4000) NULL,
ELASTIC_SEARCH_INGEST_STATUS	[varchar](4000) NULL,
CST_TRANSFER_STATUS	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
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



Create View [rpy].[Rcv_Shipment_Lines_v] as
SELECT a.[SHIPMENT_LINE_ID]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[LAST_UPDATE_LOGIN]
      ,[SHIPMENT_HEADER_ID]
      ,[LINE_NUM]
      ,[CATEGORY_ID]
      ,[QUANTITY_SHIPPED]
      ,[QUANTITY_RECEIVED]
      ,[QUANTITY_DELIVERED]
      ,[QUANTITY_RETURNED]
      ,[QUANTITY_ACCEPTED]
      ,[QUANTITY_REJECTED]
      ,[UOM_CODE]
      ,[ITEM_DESCRIPTION]
      ,[ITEM_ID]
      ,[ITEM_REVISION]
      ,[VENDOR_ITEM_NUM]
      ,[VENDOR_LOT_NUM]
      ,[UOM_CONVERSION_RATE]
      ,[SHIPMENT_LINE_STATUS_CODE]
      ,[SOURCE_DOCUMENT_CODE]
      ,[PO_HEADER_ID]
      ,[PO_LINE_ID]
      ,[PO_LINE_LOCATION_ID]
      ,[PO_DISTRIBUTION_ID]
      ,[REQUISITION_LINE_ID]
      ,[REQ_DISTRIBUTION_ID]
      ,[ROUTING_HEADER_ID]
      ,[PACKING_SLIP]
      ,[FROM_ORGANIZATION_ID]
      ,[DELIVER_TO_PERSON_ID]
      ,[EMPLOYEE_ID]
      ,[DESTINATION_TYPE_CODE]
      ,[TO_ORGANIZATION_ID]
      ,[TO_SUBINVENTORY]
      ,[LOCATOR_ID]
      ,[DELIVER_TO_LOCATION_ID]
      ,[SHIPMENT_UNIT_PRICE]
      ,[TRANSFER_COST]
      ,[TRANSPORTATION_COST]
      ,[COMMENTS]
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
      ,[ATTRIBUTE_TIMESTAMP1]
      ,[ATTRIBUTE_TIMESTAMP2]
      ,[ATTRIBUTE_TIMESTAMP3]
      ,[ATTRIBUTE_TIMESTAMP4]
      ,[ATTRIBUTE_TIMESTAMP5]
      ,[REASON_ID]
      ,[GOVERNMENT_CONTEXT]
      ,[REQUEST_ID]
      ,[DESTINATION_CONTEXT]
      ,[PRIMARY_UOM_CODE]
      ,[EXCESS_TRANSPORT_REASON]
      ,[EXCESS_TRANSPORT_RESPONSIBLE]
      ,[EXCESS_TRANSPORT_AUTH_NUM]
      ,[ASN_LINE_FLAG]
      ,[ORIGINAL_ASN_PARENT_LINE_ID]
      ,[ORIGINAL_ASN_LINE_FLAG]
      ,[VENDOR_CUM_SHIPPED_QUANTITY]
      ,[NOTICE_UNIT_PRICE]
      ,[TAX_NAME]
      ,[TAX_AMOUNT]
      ,[INVOICE_STATUS_CODE]
      ,[CUM_COMPARISON_FLAG]
      ,[CONTAINER_NUM]
      ,[TRUCK_NUM]
      ,[BAR_CODE_LABEL]
      ,[TRANSFER_PERCENTAGE]
      ,[SHIP_TO_LOCATION_ID]
      ,[COUNTRY_OF_ORIGIN_CODE]
      ,[CUSTOMER_ITEM_NUM]
      ,[SECONDARY_QUANTITY_SHIPPED]
      ,[SECONDARY_QUANTITY_RECEIVED]
      ,[SECONDARY_UOM_CODE]
      ,[QC_GRADE]
      ,[MMT_TRANSACTION_ID]
      ,[ASN_LPN_ID]
      ,[AMOUNT]
      ,[AMOUNT_RECEIVED]
      ,[JOB_ID]
      ,[TIMECARD_ID]
      ,[TIMECARD_OVN]
      ,[OSA_FLAG]
      ,[REQUESTED_AMOUNT]
      ,[MATERIAL_STORED_AMOUNT]
      ,[APPROVAL_STATUS]
      ,[AMOUNT_SHIPPED]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[OBJECT_VERSION_NUMBER]
      ,[RECEIPT_ADVICE_LINE_NUMBER]
      ,[RA_DOCUMENT_LINE_NUMBER]
      ,[RA_DOO_HEADER_NUMBER]
      ,[RA_DOO_LINE_NUMBER]
      ,[RA_DOO_FULFILLMENT_LINE_NUMBER]
      ,[RA_DOC_SCHEDULE_NUMBER]
      ,[RA_DOC_LINE_CREATION_DATE]
      ,[RA_DOC_LINE_LAST_UPDATE_DATE]
      ,[RA_EXPECTED_RECEIPT_DATE]
      ,[RA_DAYS_EARLY_RECEIPT_ALLOWED]
      ,[RA_DAYS_LATE_RECEIPT_ALLOWED]
      ,[RA_RECEIPT_DAYS_EXCEPTION_CODE]
      ,[RA_ENFORCE_SHIP_TO_LOC_CODE]
      ,[RA_ALLOW_SUBSTITUTE_RECEIPT]
      ,[RA_QTY_RCV_TOLERANCE]
      ,[RA_QTY_RCV_EXCEPTION_CODE]
      ,[RA_NOTE_TO_RECEIVER]
      ,[RECEIPT_ADVICE_HEADER_ID]
      ,[RECEIPT_ADVICE_LINE_ID]
      ,[RA_ORIG_DOO_HEADER_NUMBER]
      ,[RA_ORIG_DOO_LINE_NUMBER]
      ,[RA_ORIG_OC_HEADER_NUMBER]
      ,[RA_ORIG_OC_LINE_NUMBER]
      ,[RA_ORIG_DOO_FULFIL_LINE_NUM]
      ,[CUSTOMER_ID]
      ,[CUSTOMER_SITE_ID]
      ,[RA_QUANTITY_EXPECTED]
      ,[RA_SECONDARY_QUANTITY_EXPECTED]
      ,[RA_UNIT_PRICE]
      ,[SP_QUANTITY]
      ,[SP_UOM_CODE]
      ,[SP_GROUP_ID]
      ,[RA_LAST_ACTION_CODE]
      ,[RA_MESSAGE_NUMBER]
      ,[INTERFACE_TRANSACTION_ID]
      ,[TRANSFER_ORDER_HEADER_ID]
      ,[TRANSFER_ORDER_LINE_ID]
      ,[CONSIGNED_FLAG]
      ,[CONSUMED_QUANTITY]
      ,[EXTERNAL_SYS_INTF_STATUS]
      ,[FIRST_PTY_REG_ID]
      ,[THIRD_PTY_REG_ID]
      ,[DEFAULT_TAXATION_COUNTRY]
      ,[DOCUMENT_FISCAL_CLASSIFICATION]
      ,[TRX_BUSINESS_CATEGORY]
      ,[TAX_INVOICE_NUMBER]
      ,[TAX_INVOICE_DATE]
      ,[SHIP_FROM_LOCATION_ID]
      ,[USER_DEFINED_FISC_CLASS]
      ,[TAX_CLASSIFICATION_CODE]
      ,[INTENDED_USE]
      ,[INTENDED_USE_CLASSIF_ID]
      ,[PRODUCT_TYPE]
      ,[PRODUCT_CATEGORY]
      ,[ASSESSABLE_VALUE]
      ,[FINAL_DISCHARGE_LOCATION_ID]
      ,[PRODUCT_FISC_CLASS_ID]
      ,[ORIG_TO_INV_SHIP_TXN_ID]
      ,[CUSTOMER_ITEM_ID]
      ,[BACK_TO_BACK_FLAG]
      ,[PROJECT_ID]
      ,[TASK_ID]
      ,[INV_STRIPING_CATEGORY]
      ,[INV_RESERVED_ATTRIBUTE1]
      ,[INV_RESERVED_ATTRIBUTE2]
      ,[INV_USER_DEF_ATTRIBUTE1]
      ,[INV_USER_DEF_ATTRIBUTE2]
      ,[INV_USER_DEF_ATTRIBUTE3]
      ,[INV_USER_DEF_ATTRIBUTE4]
      ,[INV_USER_DEF_ATTRIBUTE5]
      ,[INV_USER_DEF_ATTRIBUTE6]
      ,[INV_USER_DEF_ATTRIBUTE7]
      ,[INV_USER_DEF_ATTRIBUTE8]
      ,[INV_USER_DEF_ATTRIBUTE9]
      ,[INV_USER_DEF_ATTRIBUTE10]
      ,[EWAY_BILL_NUMBER]
      ,[EWAY_BILL_DATE]
      ,[EXT_SYS_GROUP_ID]
      ,[DS_LINE_INTERFACED_TO_OM]
      ,[SECONDARY_QTY_DELIVERED]
      ,[SECONDARY_QTY_RETURNED]
      ,[SECONDARY_QTY_ACCEPTED]
      ,[SECONDARY_QTY_REJECTED]
      ,[WORK_CONFIRMATION_ID]
      ,[WORK_CONFIRMATION_LINE_ID]
      ,[ELASTIC_SEARCH_INGEST_STATUS]
      ,[CST_TRANSFER_STATUS]
      ,[FOB_LOOKUP_CODE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Rcv_Shipment_Lines] a,
  (SELECT SHIPMENT_LINE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Rcv_Shipment_Lines] GROUP BY SHIPMENT_LINE_ID) b
WHERE a.SHIPMENT_LINE_ID = b.SHIPMENT_LINE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Rcv_Shipment_Lines_SHIPMENT_LINE_ID_LAST_UPDATE_DATE] ON [rpy].[Rcv_Shipment_Lines]
(
	[SHIPMENT_LINE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




