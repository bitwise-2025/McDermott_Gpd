insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_rcv_transactions','NCSA','pl_rcv_transactions',NULL,'1','aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_transactions','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Rcv_Transactions',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Rcv_Transactions',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-08-15 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/RCV_TRANSACTIONS.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','03',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_transactions','NetworkFolder')


GO


CREATE TABLE [rpy].[Rcv_Transactions_stage]
(

TRANSACTION_ID	[varchar](4000) NULL,
INTF_RETURNS_TO_SHIPPING	[varchar](4000) NULL,
CONSUMED_QUANTITY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
TRANSACTION_TYPE	[varchar](4000) NULL,
TRANSACTION_DATE	datetime NULL,
QUANTITY	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
SHIPMENT_HEADER_ID	[varchar](4000) NULL,
SHIPMENT_LINE_ID	[varchar](4000) NULL,
USER_ENTERED_FLAG	[varchar](4000) NULL,
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
INTERFACE_SOURCE_LINE_ID	[varchar](4000) NULL,
INV_TRANSACTION_ID	[varchar](4000) NULL,
SOURCE_DOCUMENT_CODE	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
PRIMARY_QUANTITY	[varchar](4000) NULL,
PRIMARY_UOM_CODE	[varchar](4000) NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
PARENT_TRANSACTION_ID	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
PO_LINE_LOCATION_ID	[varchar](4000) NULL,
PO_DISTRIBUTION_ID	[varchar](4000) NULL,
PO_REVISION_NUM	[varchar](4000) NULL,
REQUISITION_LINE_ID	[varchar](4000) NULL,
PO_UNIT_PRICE	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
CURRENCY_CONVERSION_TYPE	[varchar](4000) NULL,
CURRENCY_CONVERSION_RATE	[varchar](4000) NULL,
CURRENCY_CONVERSION_DATE	datetime NULL,
ROUTING_HEADER_ID	[varchar](4000) NULL,
ROUTING_STEP_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
ORGANIZATION_ID	[varchar](4000) NULL,
SUBINVENTORY	[varchar](4000) NULL,
LOCATOR_ID	[varchar](4000) NULL,
WIP_ENTITY_ID	[varchar](4000) NULL,
WIP_LINE_ID	[varchar](4000) NULL,
WIP_REPETITIVE_SCHEDULE_ID	[varchar](4000) NULL,
WIP_OPERATION_SEQ_NUM	[varchar](4000) NULL,
WIP_RESOURCE_SEQ_NUM	[varchar](4000) NULL,
BOM_RESOURCE_ID	[varchar](4000) NULL,
LOCATION_ID	[varchar](4000) NULL,
SUBSTITUTE_UNORDERED_CODE	[varchar](4000) NULL,
RECEIPT_EXCEPTION_FLAG	[varchar](4000) NULL,
INSPECTION_STATUS_CODE	[varchar](4000) NULL,
ACCRUAL_STATUS_CODE	[varchar](4000) NULL,
INSPECTION_QUALITY_CODE	[varchar](4000) NULL,
VENDOR_LOT_NUM	[varchar](4000) NULL,
RMA_REFERENCE	[varchar](4000) NULL,
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
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
DEPARTMENT_CODE	[varchar](4000) NULL,
REASON_ID	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
LOCATOR_ATTRIBUTE	[varchar](4000) NULL,
CHILD_INSPECTION_FLAG	[varchar](4000) NULL,
SOURCE_DOC_QUANTITY	[varchar](4000) NULL,
SOURCE_DOC_UOM_CODE	[varchar](4000) NULL,
INTERFACE_TRANSACTION_ID	[varchar](4000) NULL,
INTERFACE_GROUP_ID	[varchar](4000) NULL,
GROUP_ID	[varchar](4000) NULL,
MOVEMENT_ID	[varchar](4000) NULL,
INVOICE_ID	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
QA_COLLECTION_ID	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
MVT_STAT_STATUS	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
MATCH_FLAG	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
BASE_AMOUNT_BILLED	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
LPN_ID	[varchar](4000) NULL,
TRANSFER_LPN_ID	[varchar](4000) NULL,
MOBILE_TXN	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
PA_ADDITION_FLAG	[varchar](4000) NULL,
SOURCE_TRANSACTION_NUM	[varchar](4000) NULL,
FROM_SUBINVENTORY	[varchar](4000) NULL,
FROM_LOCATOR_ID	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
DROPSHIP_TYPE_CODE	[varchar](4000) NULL,
LPN_GROUP_ID	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
TIMECARD_ID	[varchar](4000) NULL,
TIMECARD_OVN	[varchar](4000) NULL,
PROJECT_ID	[varchar](4000) NULL,
TASK_ID	[varchar](4000) NULL,
REQUESTED_AMOUNT	[varchar](4000) NULL,
MATERIAL_STORED_AMOUNT	[varchar](4000) NULL,
REPLENISH_ORDER_LINE_ID	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
RECEIPT_ADVICE_HEADER_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_ID	[varchar](4000) NULL,
RCPT_CONF_STATUS	[varchar](4000) NULL,
RCPT_CONF_MESSAGE_NUMBER	[varchar](4000) NULL,
SP_QUANTITY	[varchar](4000) NULL,
SP_UOM_CODE	[varchar](4000) NULL,
SP_GROUP_ID	[varchar](4000) NULL,
PARENT_SP_GROUP_ID	[varchar](4000) NULL,
TXN_FLOW_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_LINE_ID	[varchar](4000) NULL,
TRANSFER_ORDER_DIST_ID	[varchar](4000) NULL,
PHYSICAL_RETURN_REQD	[varchar](4000) NULL,
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
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
INTENDED_USE	[varchar](4000) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
DS_RECEIPT_EVENT_TYPE	[varchar](4000) NULL,
DS_RECEIPT_SOURCE_LINE_ID	[varchar](4000) NULL,
CSE_INTERFACE_STATUS_CODE	[varchar](4000) NULL,
FISCAL_DOC_HEADER_ID	[varchar](4000) NULL,
FISCAL_DOC_ACCESS_KNUM	[varchar](4000) NULL,
FISCAL_DOC_LINE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_HEADER_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_LINE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_ACCESS_KNUM	[varchar](4000) NULL,
RETURN_TO_HEADER_ID	[varchar](4000) NULL,
RETURN_TO_LINE_ID	[varchar](4000) NULL,
BUSINESS_EVENT_PUBLISHED	[varchar](4000) NULL,
INTF_FROM_EXT_SYSTEM_FLAG	[varchar](4000) NULL,
FISCAL_DOC_SCHEDULE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_SCHEDULE_ID	[varchar](4000) NULL,
QA_IP_EVENT_ID	[varchar](4000) NULL,
QA_SKIP_INSPECTION	[varchar](4000) NULL,
ERECORD_ID	[varchar](4000) NULL,
EXTERNAL_SYSTEM_PACKING_UNIT	[varchar](4000) NULL,
AUTO_DEBIT_MEMO_CREATED	[varchar](4000) NULL,
EWAY_BILL_NUMBER	[varchar](4000) NULL,
EWAY_BILL_DATE	datetime NULL,
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
RECALL_HEADER_ID	[varchar](4000) NULL,
RECALL_LINE_ID	[varchar](4000) NULL,
EXTERNAL_SYS_TXN_REFERENCE	[varchar](4000) NULL,
PRICING_QUANTITY	[varchar](4000) NULL,
PRICING_UOM_CODE	[varchar](4000) NULL,
ALM_INTERFACE_STATUS	[varchar](4000) NULL,
BILLING_UOM_CODE	[varchar](4000) NULL,
SCH_INTERFACE_STATUS	[varchar](4000) NULL,
ELASTIC_SEARCH_INGEST_STATUS	[varchar](4000) NULL,
DEFAULT_LOTSER_FROM_SHIPMENT	[varchar](4000) NULL,
DELIVERY_REQUIRED_FLAG	[varchar](4000) NULL,
DIRECT_TRANSFER_ORDER_FLAG	[varchar](4000) NULL,
SUPPLIER_RETURN_HEADER_ID	[varchar](4000) NULL,
SUPPLIER_RETURN_LINE_ID	[varchar](4000) NULL,
RETURN_FOR_CREDIT_FLAG	[varchar](4000) NULL,
COPY_LOTSER_PARENT_TXN	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Rcv_Transactions]
(

TRANSACTION_ID	[varchar](4000) NULL,
INTF_RETURNS_TO_SHIPPING	[varchar](4000) NULL,
CONSUMED_QUANTITY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
TRANSACTION_TYPE	[varchar](4000) NULL,
TRANSACTION_DATE	datetime NULL,
QUANTITY	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
SHIPMENT_HEADER_ID	[varchar](4000) NULL,
SHIPMENT_LINE_ID	[varchar](4000) NULL,
USER_ENTERED_FLAG	[varchar](4000) NULL,
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
INTERFACE_SOURCE_LINE_ID	[varchar](4000) NULL,
INV_TRANSACTION_ID	[varchar](4000) NULL,
SOURCE_DOCUMENT_CODE	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
PRIMARY_QUANTITY	[varchar](4000) NULL,
PRIMARY_UOM_CODE	[varchar](4000) NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
PARENT_TRANSACTION_ID	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
PO_LINE_LOCATION_ID	[varchar](4000) NULL,
PO_DISTRIBUTION_ID	[varchar](4000) NULL,
PO_REVISION_NUM	[varchar](4000) NULL,
REQUISITION_LINE_ID	[varchar](4000) NULL,
PO_UNIT_PRICE	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
CURRENCY_CONVERSION_TYPE	[varchar](4000) NULL,
CURRENCY_CONVERSION_RATE	[varchar](4000) NULL,
CURRENCY_CONVERSION_DATE	datetime NULL,
ROUTING_HEADER_ID	[varchar](4000) NULL,
ROUTING_STEP_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
ORGANIZATION_ID	[varchar](4000) NULL,
SUBINVENTORY	[varchar](4000) NULL,
LOCATOR_ID	[varchar](4000) NULL,
WIP_ENTITY_ID	[varchar](4000) NULL,
WIP_LINE_ID	[varchar](4000) NULL,
WIP_REPETITIVE_SCHEDULE_ID	[varchar](4000) NULL,
WIP_OPERATION_SEQ_NUM	[varchar](4000) NULL,
WIP_RESOURCE_SEQ_NUM	[varchar](4000) NULL,
BOM_RESOURCE_ID	[varchar](4000) NULL,
LOCATION_ID	[varchar](4000) NULL,
SUBSTITUTE_UNORDERED_CODE	[varchar](4000) NULL,
RECEIPT_EXCEPTION_FLAG	[varchar](4000) NULL,
INSPECTION_STATUS_CODE	[varchar](4000) NULL,
ACCRUAL_STATUS_CODE	[varchar](4000) NULL,
INSPECTION_QUALITY_CODE	[varchar](4000) NULL,
VENDOR_LOT_NUM	[varchar](4000) NULL,
RMA_REFERENCE	[varchar](4000) NULL,
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
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
DEPARTMENT_CODE	[varchar](4000) NULL,
REASON_ID	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
LOCATOR_ATTRIBUTE	[varchar](4000) NULL,
CHILD_INSPECTION_FLAG	[varchar](4000) NULL,
SOURCE_DOC_QUANTITY	[varchar](4000) NULL,
SOURCE_DOC_UOM_CODE	[varchar](4000) NULL,
INTERFACE_TRANSACTION_ID	[varchar](4000) NULL,
INTERFACE_GROUP_ID	[varchar](4000) NULL,
GROUP_ID	[varchar](4000) NULL,
MOVEMENT_ID	[varchar](4000) NULL,
INVOICE_ID	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
QA_COLLECTION_ID	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
MVT_STAT_STATUS	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
MATCH_FLAG	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
BASE_AMOUNT_BILLED	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
LPN_ID	[varchar](4000) NULL,
TRANSFER_LPN_ID	[varchar](4000) NULL,
MOBILE_TXN	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
QC_GRADE	[varchar](4000) NULL,
PA_ADDITION_FLAG	[varchar](4000) NULL,
SOURCE_TRANSACTION_NUM	[varchar](4000) NULL,
FROM_SUBINVENTORY	[varchar](4000) NULL,
FROM_LOCATOR_ID	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
DROPSHIP_TYPE_CODE	[varchar](4000) NULL,
LPN_GROUP_ID	[varchar](4000) NULL,
JOB_ID	[varchar](4000) NULL,
TIMECARD_ID	[varchar](4000) NULL,
TIMECARD_OVN	[varchar](4000) NULL,
PROJECT_ID	[varchar](4000) NULL,
TASK_ID	[varchar](4000) NULL,
REQUESTED_AMOUNT	[varchar](4000) NULL,
MATERIAL_STORED_AMOUNT	[varchar](4000) NULL,
REPLENISH_ORDER_LINE_ID	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
RECEIPT_ADVICE_HEADER_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_LINE_ID	[varchar](4000) NULL,
RCPT_CONF_STATUS	[varchar](4000) NULL,
RCPT_CONF_MESSAGE_NUMBER	[varchar](4000) NULL,
SP_QUANTITY	[varchar](4000) NULL,
SP_UOM_CODE	[varchar](4000) NULL,
SP_GROUP_ID	[varchar](4000) NULL,
PARENT_SP_GROUP_ID	[varchar](4000) NULL,
TXN_FLOW_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_HEADER_ID	[varchar](4000) NULL,
TRANSFER_ORDER_LINE_ID	[varchar](4000) NULL,
TRANSFER_ORDER_DIST_ID	[varchar](4000) NULL,
PHYSICAL_RETURN_REQD	[varchar](4000) NULL,
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
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
INTENDED_USE	[varchar](4000) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
DS_RECEIPT_EVENT_TYPE	[varchar](4000) NULL,
DS_RECEIPT_SOURCE_LINE_ID	[varchar](4000) NULL,
CSE_INTERFACE_STATUS_CODE	[varchar](4000) NULL,
FISCAL_DOC_HEADER_ID	[varchar](4000) NULL,
FISCAL_DOC_ACCESS_KNUM	[varchar](4000) NULL,
FISCAL_DOC_LINE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_HEADER_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_LINE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_ACCESS_KNUM	[varchar](4000) NULL,
RETURN_TO_HEADER_ID	[varchar](4000) NULL,
RETURN_TO_LINE_ID	[varchar](4000) NULL,
BUSINESS_EVENT_PUBLISHED	[varchar](4000) NULL,
INTF_FROM_EXT_SYSTEM_FLAG	[varchar](4000) NULL,
FISCAL_DOC_SCHEDULE_ID	[varchar](4000) NULL,
REF_FISCAL_DOC_SCHEDULE_ID	[varchar](4000) NULL,
QA_IP_EVENT_ID	[varchar](4000) NULL,
QA_SKIP_INSPECTION	[varchar](4000) NULL,
ERECORD_ID	[varchar](4000) NULL,
EXTERNAL_SYSTEM_PACKING_UNIT	[varchar](4000) NULL,
AUTO_DEBIT_MEMO_CREATED	[varchar](4000) NULL,
EWAY_BILL_NUMBER	[varchar](4000) NULL,
EWAY_BILL_DATE	datetime NULL,
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
RECALL_HEADER_ID	[varchar](4000) NULL,
RECALL_LINE_ID	[varchar](4000) NULL,
EXTERNAL_SYS_TXN_REFERENCE	[varchar](4000) NULL,
PRICING_QUANTITY	[varchar](4000) NULL,
PRICING_UOM_CODE	[varchar](4000) NULL,
ALM_INTERFACE_STATUS	[varchar](4000) NULL,
BILLING_UOM_CODE	[varchar](4000) NULL,
SCH_INTERFACE_STATUS	[varchar](4000) NULL,
ELASTIC_SEARCH_INGEST_STATUS	[varchar](4000) NULL,
DEFAULT_LOTSER_FROM_SHIPMENT	[varchar](4000) NULL,
DELIVERY_REQUIRED_FLAG	[varchar](4000) NULL,
DIRECT_TRANSFER_ORDER_FLAG	[varchar](4000) NULL,
SUPPLIER_RETURN_HEADER_ID	[varchar](4000) NULL,
SUPPLIER_RETURN_LINE_ID	[varchar](4000) NULL,
RETURN_FOR_CREDIT_FLAG	[varchar](4000) NULL,
COPY_LOTSER_PARENT_TXN	[varchar](4000) NULL,
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



Create View [rpy].[Rcv_Transactions_v] as
SELECT a.[TRANSACTION_ID]
      ,[INTF_RETURNS_TO_SHIPPING]
      ,[CONSUMED_QUANTITY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[LAST_UPDATE_LOGIN]
      ,[REQUEST_ID]
      ,[TRANSACTION_TYPE]
      ,[TRANSACTION_DATE]
      ,[QUANTITY]
      ,[UOM_CODE]
      ,[SHIPMENT_HEADER_ID]
      ,[SHIPMENT_LINE_ID]
      ,[USER_ENTERED_FLAG]
      ,[INTERFACE_SOURCE_CODE]
      ,[INTERFACE_SOURCE_LINE_ID]
      ,[INV_TRANSACTION_ID]
      ,[SOURCE_DOCUMENT_CODE]
      ,[DESTINATION_TYPE_CODE]
      ,[PRIMARY_QUANTITY]
      ,[PRIMARY_UOM_CODE]
      ,[EMPLOYEE_ID]
      ,[PARENT_TRANSACTION_ID]
      ,[PO_HEADER_ID]
      ,[PO_LINE_ID]
      ,[PO_LINE_LOCATION_ID]
      ,[PO_DISTRIBUTION_ID]
      ,[PO_REVISION_NUM]
      ,[REQUISITION_LINE_ID]
      ,[PO_UNIT_PRICE]
      ,[CURRENCY_CODE]
      ,[CURRENCY_CONVERSION_TYPE]
      ,[CURRENCY_CONVERSION_RATE]
      ,[CURRENCY_CONVERSION_DATE]
      ,[ROUTING_HEADER_ID]
      ,[ROUTING_STEP_ID]
      ,[DELIVER_TO_PERSON_ID]
      ,[DELIVER_TO_LOCATION_ID]
      ,[VENDOR_ID]
      ,[VENDOR_SITE_ID]
      ,[ORGANIZATION_ID]
      ,[SUBINVENTORY]
      ,[LOCATOR_ID]
      ,[WIP_ENTITY_ID]
      ,[WIP_LINE_ID]
      ,[WIP_REPETITIVE_SCHEDULE_ID]
      ,[WIP_OPERATION_SEQ_NUM]
      ,[WIP_RESOURCE_SEQ_NUM]
      ,[BOM_RESOURCE_ID]
      ,[LOCATION_ID]
      ,[SUBSTITUTE_UNORDERED_CODE]
      ,[RECEIPT_EXCEPTION_FLAG]
      ,[INSPECTION_STATUS_CODE]
      ,[ACCRUAL_STATUS_CODE]
      ,[INSPECTION_QUALITY_CODE]
      ,[VENDOR_LOT_NUM]
      ,[RMA_REFERENCE]
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
      ,[REQ_DISTRIBUTION_ID]
      ,[DEPARTMENT_CODE]
      ,[REASON_ID]
      ,[DESTINATION_CONTEXT]
      ,[LOCATOR_ATTRIBUTE]
      ,[CHILD_INSPECTION_FLAG]
      ,[SOURCE_DOC_QUANTITY]
      ,[SOURCE_DOC_UOM_CODE]
      ,[INTERFACE_TRANSACTION_ID]
      ,[INTERFACE_GROUP_ID]
      ,[GROUP_ID]
      ,[MOVEMENT_ID]
      ,[INVOICE_ID]
      ,[INVOICE_STATUS_CODE]
      ,[QA_COLLECTION_ID]
      ,[COUNTRY_OF_ORIGIN_CODE]
      ,[MVT_STAT_STATUS]
      ,[QUANTITY_BILLED]
      ,[MATCH_FLAG]
      ,[AMOUNT_BILLED]
      ,[BASE_AMOUNT_BILLED]
      ,[MATCH_OPTION]
      ,[CONSIGNED_FLAG]
      ,[BACK_TO_BACK_FLAG]
      ,[CUSTOMER_ID]
      ,[CUSTOMER_SITE_ID]
      ,[LPN_ID]
      ,[TRANSFER_LPN_ID]
      ,[MOBILE_TXN]
      ,[SECONDARY_QUANTITY]
      ,[SECONDARY_UOM_CODE]
      ,[QC_GRADE]
      ,[PA_ADDITION_FLAG]
      ,[SOURCE_TRANSACTION_NUM]
      ,[FROM_SUBINVENTORY]
      ,[FROM_LOCATOR_ID]
      ,[AMOUNT]
      ,[DROPSHIP_TYPE_CODE]
      ,[LPN_GROUP_ID]
      ,[JOB_ID]
      ,[TIMECARD_ID]
      ,[TIMECARD_OVN]
      ,[PROJECT_ID]
      ,[TASK_ID]
      ,[REQUESTED_AMOUNT]
      ,[MATERIAL_STORED_AMOUNT]
      ,[REPLENISH_ORDER_LINE_ID]
      ,[JOB_DEFINITION_PACKAGE]
      ,[JOB_DEFINITION_NAME]
      ,[OBJECT_VERSION_NUMBER]
      ,[RECEIPT_ADVICE_HEADER_ID]
      ,[RECEIPT_ADVICE_LINE_ID]
      ,[RCPT_CONF_STATUS]
      ,[RCPT_CONF_MESSAGE_NUMBER]
      ,[SP_QUANTITY]
      ,[SP_UOM_CODE]
      ,[SP_GROUP_ID]
      ,[PARENT_SP_GROUP_ID]
      ,[TXN_FLOW_HEADER_ID]
      ,[TRANSFER_ORDER_HEADER_ID]
      ,[TRANSFER_ORDER_LINE_ID]
      ,[TRANSFER_ORDER_DIST_ID]
      ,[PHYSICAL_RETURN_REQD]
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
      ,[PRODUCT_FISC_CLASS_ID]
      ,[INTENDED_USE]
      ,[INTENDED_USE_CLASSIF_ID]
      ,[PRODUCT_TYPE]
      ,[PRODUCT_CATEGORY]
      ,[ASSESSABLE_VALUE]
      ,[FINAL_DISCHARGE_LOCATION_ID]
      ,[DS_RECEIPT_EVENT_TYPE]
      ,[DS_RECEIPT_SOURCE_LINE_ID]
      ,[CSE_INTERFACE_STATUS_CODE]
      ,[FISCAL_DOC_HEADER_ID]
      ,[FISCAL_DOC_ACCESS_KNUM]
      ,[FISCAL_DOC_LINE_ID]
      ,[REF_FISCAL_DOC_HEADER_ID]
      ,[REF_FISCAL_DOC_LINE_ID]
      ,[REF_FISCAL_DOC_ACCESS_KNUM]
      ,[RETURN_TO_HEADER_ID]
      ,[RETURN_TO_LINE_ID]
      ,[BUSINESS_EVENT_PUBLISHED]
      ,[INTF_FROM_EXT_SYSTEM_FLAG]
      ,[FISCAL_DOC_SCHEDULE_ID]
      ,[REF_FISCAL_DOC_SCHEDULE_ID]
      ,[QA_IP_EVENT_ID]
      ,[QA_SKIP_INSPECTION]
      ,[ERECORD_ID]
      ,[EXTERNAL_SYSTEM_PACKING_UNIT]
      ,[AUTO_DEBIT_MEMO_CREATED]
      ,[EWAY_BILL_NUMBER]
      ,[EWAY_BILL_DATE]
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
      ,[RECALL_HEADER_ID]
      ,[RECALL_LINE_ID]
      ,[EXTERNAL_SYS_TXN_REFERENCE]
      ,[PRICING_QUANTITY]
      ,[PRICING_UOM_CODE]
      ,[ALM_INTERFACE_STATUS]
      ,[BILLING_UOM_CODE]
      ,[SCH_INTERFACE_STATUS]
      ,[ELASTIC_SEARCH_INGEST_STATUS]
      ,[DEFAULT_LOTSER_FROM_SHIPMENT]
      ,[DELIVERY_REQUIRED_FLAG]
      ,[DIRECT_TRANSFER_ORDER_FLAG]
      ,[SUPPLIER_RETURN_HEADER_ID]
      ,[SUPPLIER_RETURN_LINE_ID]
      ,[RETURN_FOR_CREDIT_FLAG]
      ,[COPY_LOTSER_PARENT_TXN]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Rcv_Transactions] a,
  (SELECT TRANSACTION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Rcv_Transactions] GROUP BY TRANSACTION_ID) b
WHERE a.TRANSACTION_ID = b.TRANSACTION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Rcv_Transactions_TRANSACTION_ID_LAST_UPDATE_DATE] ON [rpy].[Rcv_Transactions]
(
	[TRANSACTION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO





