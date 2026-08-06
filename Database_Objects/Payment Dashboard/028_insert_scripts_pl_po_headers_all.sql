insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_headers_all','NCSA','pl_po_headers_all',NULL,'1','aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_headers_all','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Headers_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Headers_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_HEADERS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_headers_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Headers_All_stage]

(
PO_HEADER_ID	[varchar](4000) NULL,
CHECKLIST_ID	[varchar](4000) NULL,
SCHEDULE_GROUP	[varchar](4000) NULL,
SIGNATURE_REQUIRED_FLAG	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
BUYER_MANAGED_TRANSPORT_FLAG	[varchar](4000) NULL,
BILLTO_BU_ID	[varchar](4000) NULL,
SOLDTO_LE_ID	[varchar](4000) NULL,
DEFAULT_PO_TRADE_ORG_ID	[varchar](4000) NULL,
ORCHESTRATION_ORDER_FLAG	[varchar](4000) NULL,
AGING_PERIOD_DAYS	[varchar](4000) NULL,
AGING_ONSET_POINT	[varchar](4000) NULL,
CONSUMPTION_ADVICE_FREQUENCY	[varchar](4000) NULL,
CONSUMPTION_ADVICE_SUMMARY	[varchar](4000) NULL,
BILLING_CYCLE_CLOSING_DATE	datetime NULL,
LAST_BILLED_DATE	datetime NULL,
DEFAULT_CONSIGNMENT_LINE_FLAG	[varchar](4000) NULL,
PAY_ON_USE_FLAG	[varchar](4000) NULL,
ACTIVE_VERSION_FLAG	[varchar](4000) NULL,
ACCEPTANCE_WITHIN_DAYS	[varchar](4000) NULL,
AMOUNT_RELEASED	[varchar](4000) NULL,
LAST_RELEASE_DATE	datetime NULL,
CURRENT_VERSION_ID	[varchar](4000) NULL,
GENERATE_ORDERS_AUTOMATIC	[varchar](4000) NULL,
SUBMIT_APPROVAL_AUTOMATIC	[varchar](4000) NULL,
GROUP_REQUISITIONS	[varchar](4000) NULL,
GROUP_REQUISITION_LINES	[varchar](4000) NULL,
USE_NEED_BY_DATE	[varchar](4000) NULL,
USE_SHIP_TO	[varchar](4000) NULL,
DOCUMENT_STATUS	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
DEFAULT_TAXATION_COUNTRY	[varchar](4000) NULL,
TAX_DOCUMENT_SUBTYPE	[varchar](4000) NULL,
AGENT_ID	[varchar](4000) NULL,
TYPE_LOOKUP_CODE	[varchar](4000) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
SEGMENT1	[varchar](4000) NULL,
SUMMARY_FLAG	[varchar](4000) NULL,
CARRIER_ID	[varchar](4000) NULL,
ENABLED_FLAG	[varchar](4000) NULL,
SEGMENT2	[varchar](4000) NULL,
SEGMENT3	[varchar](4000) NULL,
SEGMENT4	[varchar](4000) NULL,
SEGMENT5	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	[datetime] NULL,
CREATED_BY	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
VENDOR_CONTACT_ID	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
BILL_TO_LOCATION_ID	[varchar](4000) NULL,
TERMS_ID	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
FREIGHT_TERMS_LOOKUP_CODE	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
RATE_TYPE	[varchar](4000) NULL,
RATE_DATE	datetime NULL,
RATE	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
START_DATE	datetime NULL,
END_DATE	datetime NULL,
BLANKET_TOTAL_AMOUNT	[varchar](4000) NULL,
REVISION_NUM	[varchar](4000) NULL,
REVISED_DATE	datetime NULL,
APPROVED_FLAG	[varchar](4000) NULL,
APPROVED_DATE	datetime NULL,
AMOUNT_LIMIT	[varchar](4000) NULL,
MIN_RELEASE_AMOUNT	[varchar](4000) NULL,
NOTE_TO_AUTHORIZER	[varchar](4000) NULL,
NOTE_TO_VENDOR	[varchar](4000) NULL,
NOTE_TO_RECEIVER	[varchar](4000) NULL,
VENDOR_ORDER_NUM	[varchar](4000) NULL,
CONFIRMING_ORDER_FLAG	[varchar](4000) NULL,
COMMENTS	[varchar](4000) NULL,
ACCEPTANCE_REQUIRED_FLAG	[varchar](4000) NULL,
ACCEPTANCE_DUE_DATE	datetime NULL,
CLOSED_DATE	datetime NULL,
CANCEL_FLAG	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	datetime NULL,
FROZEN_FLAG	[varchar](4000) NULL,
EDI_PROCESSED_FLAG	[varchar](4000) NULL,
EDI_PROCESSED_STATUS	[varchar](4000) NULL,
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
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	[datetime] NULL,
ATTRIBUTE_TIMESTAMP2	[datetime] NULL,
ATTRIBUTE_TIMESTAMP3	[datetime] NULL,
ATTRIBUTE_TIMESTAMP4	[datetime] NULL,
ATTRIBUTE_TIMESTAMP5	[datetime] NULL,
ATTRIBUTE_TIMESTAMP6	[datetime] NULL,
ATTRIBUTE_TIMESTAMP7	[datetime] NULL,
ATTRIBUTE_TIMESTAMP8	[datetime] NULL,
ATTRIBUTE_TIMESTAMP9	[datetime] NULL,
ATTRIBUTE_TIMESTAMP10	[datetime] NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
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
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
REFERENCE_NUM	[varchar](4000) NULL,
PCARD_ID	[varchar](4000) NULL,
PRICE_UPDATE_TOLERANCE	[varchar](4000) NULL,
PAY_ON_CODE	[varchar](4000) NULL,
XML_FLAG	[varchar](4000) NULL,
XML_SEND_DATE	datetime NULL,
XML_CHANGE_SEND_DATE	datetime NULL,
CONSIGNED_CONSUMPTION_FLAG	[varchar](4000) NULL,
CBC_ACCOUNTING_DATE	datetime NULL,
CONSUME_REQ_DEMAND_FLAG	[varchar](4000) NULL,
CHANGE_REQUESTED_BY	[varchar](4000) NULL,
SHIPPING_CONTROL	[varchar](4000) NULL,
CONTERMS_EXIST_FLAG	[varchar](4000) NULL,
CONTERMS_ARTICLES_UPD_DATE	datetime NULL,
CONTERMS_DELIV_UPD_DATE	datetime NULL,
PENDING_SIGNATURE_FLAG	[varchar](4000) NULL,
CHANGE_SUMMARY	[varchar](4000) NULL,
ENCUMBRANCE_REQUIRED_FLAG	[varchar](4000) NULL,
DOCUMENT_CREATION_METHOD	[varchar](4000) NULL,
SUBMIT_DATE	datetime NULL,
SUPPLIER_NOTIF_METHOD	[varchar](4000) NULL,
FAX	[varchar](4000) NULL,
EMAIL_ADDRESS	[varchar](4000) NULL,
USE_ORDER_DATE_IN_PRICING_FLAG	[varchar](4000) NULL,
RETRO_PRICE_COMM_UPDATES_FLAG	[varchar](4000) NULL,
RETRO_PRICE_APPLY_UPDATES_FLAG	[varchar](4000) NULL,
UPDATE_SOURCING_RULES_FLAG	[varchar](4000) NULL,
AUTO_SOURCING_FLAG	[varchar](4000) NULL,
CREATED_LANGUAGE	[varchar](4000) NULL,
CPA_REFERENCE	[varchar](4000) NULL,
STYLE_ID	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
LAST_UPDATED_PROGRAM	[varchar](4000) NULL,
CAT_ADMIN_AUTH_ENABLED_FLAG	[varchar](4000) NULL,
RELEASE_METHOD	[varchar](4000) NULL,
REVIEW_AUTOGENERATED_RELEASES	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
MERGE_REQUEST_ID	[varchar](4000) NULL,
USE_SALES_ORDER_NUMBER_FLAG	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
FIRST_PTY_REG_ID	[varchar](4000) NULL,
THIRD_PTY_REG_ID	[varchar](4000) NULL,
DISABLE_AUTOSOURCING_FLAG	[varchar](4000) NULL,
PUNCHOUT_SOURCING_ONLY_FLAG	[varchar](4000) NULL,
BUDGET_CONTROL_ENABLED_FLAG	[varchar](4000) NULL,
RETRO_PRICE_OPEN_ORDER_FLAG	[varchar](4000) NULL,
RETRO_PRICE_INIT_APPROVAL_FLAG	[varchar](4000) NULL,
REBUILD_INDEX	[varchar](4000) NULL,
REFRESH_INDEX	[varchar](4000) NULL,
ALLOW_MULTIPLE_SITES_FLAG	[varchar](4000) NULL,
USE_SHIP_TO_FOR_GROUP_REQS	[varchar](4000) NULL,
MASTER_CONTRACT_ID	[varchar](4000) NULL,
CC_EMAIL_ADDRESS	[varchar](4000) NULL,
BCC_EMAIL_ADDRESS	[varchar](4000) NULL,
OVERRIDING_APPROVER_ID	[varchar](4000) NULL,
SKIP_ELECTRONIC_COMM_FLAG	[varchar](4000) NULL,
ALT_CONTACT_EMAIL_ADDRESS	[varchar](4000) NULL,
SOURCING_PRIORITY	[varchar](4000) NULL,
SH_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
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
SH_ATTRIBUTE_TIMESTAMP1	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP2	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP3	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP4	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP5	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP6	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP7	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP8	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP9	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP10	[datetime] NULL,
SPECIAL_HANDLING_TYPE_CODE	[varchar](4000) NULL,
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







CREATE TABLE [rpy].[Po_Headers_All]

(
PO_HEADER_ID	[varchar](4000) NULL,
CHECKLIST_ID	[varchar](4000) NULL,
SCHEDULE_GROUP	[varchar](4000) NULL,
SIGNATURE_REQUIRED_FLAG	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
BUYER_MANAGED_TRANSPORT_FLAG	[varchar](4000) NULL,
BILLTO_BU_ID	[varchar](4000) NULL,
SOLDTO_LE_ID	[varchar](4000) NULL,
DEFAULT_PO_TRADE_ORG_ID	[varchar](4000) NULL,
ORCHESTRATION_ORDER_FLAG	[varchar](4000) NULL,
AGING_PERIOD_DAYS	[varchar](4000) NULL,
AGING_ONSET_POINT	[varchar](4000) NULL,
CONSUMPTION_ADVICE_FREQUENCY	[varchar](4000) NULL,
CONSUMPTION_ADVICE_SUMMARY	[varchar](4000) NULL,
BILLING_CYCLE_CLOSING_DATE	datetime NULL,
LAST_BILLED_DATE	datetime NULL,
DEFAULT_CONSIGNMENT_LINE_FLAG	[varchar](4000) NULL,
PAY_ON_USE_FLAG	[varchar](4000) NULL,
ACTIVE_VERSION_FLAG	[varchar](4000) NULL,
ACCEPTANCE_WITHIN_DAYS	[varchar](4000) NULL,
AMOUNT_RELEASED	[varchar](4000) NULL,
LAST_RELEASE_DATE	datetime NULL,
CURRENT_VERSION_ID	[varchar](4000) NULL,
GENERATE_ORDERS_AUTOMATIC	[varchar](4000) NULL,
SUBMIT_APPROVAL_AUTOMATIC	[varchar](4000) NULL,
GROUP_REQUISITIONS	[varchar](4000) NULL,
GROUP_REQUISITION_LINES	[varchar](4000) NULL,
USE_NEED_BY_DATE	[varchar](4000) NULL,
USE_SHIP_TO	[varchar](4000) NULL,
DOCUMENT_STATUS	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
DEFAULT_TAXATION_COUNTRY	[varchar](4000) NULL,
TAX_DOCUMENT_SUBTYPE	[varchar](4000) NULL,
AGENT_ID	[varchar](4000) NULL,
TYPE_LOOKUP_CODE	[varchar](4000) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
SEGMENT1	[varchar](4000) NULL,
SUMMARY_FLAG	[varchar](4000) NULL,
CARRIER_ID	[varchar](4000) NULL,
ENABLED_FLAG	[varchar](4000) NULL,
SEGMENT2	[varchar](4000) NULL,
SEGMENT3	[varchar](4000) NULL,
SEGMENT4	[varchar](4000) NULL,
SEGMENT5	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	[datetime] NULL,
CREATED_BY	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
VENDOR_CONTACT_ID	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
BILL_TO_LOCATION_ID	[varchar](4000) NULL,
TERMS_ID	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
FREIGHT_TERMS_LOOKUP_CODE	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
RATE_TYPE	[varchar](4000) NULL,
RATE_DATE	datetime NULL,
RATE	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
START_DATE	datetime NULL,
END_DATE	datetime NULL,
BLANKET_TOTAL_AMOUNT	[varchar](4000) NULL,
REVISION_NUM	[varchar](4000) NULL,
REVISED_DATE	datetime NULL,
APPROVED_FLAG	[varchar](4000) NULL,
APPROVED_DATE	datetime NULL,
AMOUNT_LIMIT	[varchar](4000) NULL,
MIN_RELEASE_AMOUNT	[varchar](4000) NULL,
NOTE_TO_AUTHORIZER	[varchar](4000) NULL,
NOTE_TO_VENDOR	[varchar](4000) NULL,
NOTE_TO_RECEIVER	[varchar](4000) NULL,
VENDOR_ORDER_NUM	[varchar](4000) NULL,
CONFIRMING_ORDER_FLAG	[varchar](4000) NULL,
COMMENTS	[varchar](4000) NULL,
ACCEPTANCE_REQUIRED_FLAG	[varchar](4000) NULL,
ACCEPTANCE_DUE_DATE	datetime NULL,
CLOSED_DATE	datetime NULL,
CANCEL_FLAG	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	datetime NULL,
FROZEN_FLAG	[varchar](4000) NULL,
EDI_PROCESSED_FLAG	[varchar](4000) NULL,
EDI_PROCESSED_STATUS	[varchar](4000) NULL,
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
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	[datetime] NULL,
ATTRIBUTE_TIMESTAMP2	[datetime] NULL,
ATTRIBUTE_TIMESTAMP3	[datetime] NULL,
ATTRIBUTE_TIMESTAMP4	[datetime] NULL,
ATTRIBUTE_TIMESTAMP5	[datetime] NULL,
ATTRIBUTE_TIMESTAMP6	[datetime] NULL,
ATTRIBUTE_TIMESTAMP7	[datetime] NULL,
ATTRIBUTE_TIMESTAMP8	[datetime] NULL,
ATTRIBUTE_TIMESTAMP9	[datetime] NULL,
ATTRIBUTE_TIMESTAMP10	[datetime] NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
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
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
REFERENCE_NUM	[varchar](4000) NULL,
PCARD_ID	[varchar](4000) NULL,
PRICE_UPDATE_TOLERANCE	[varchar](4000) NULL,
PAY_ON_CODE	[varchar](4000) NULL,
XML_FLAG	[varchar](4000) NULL,
XML_SEND_DATE	datetime NULL,
XML_CHANGE_SEND_DATE	datetime NULL,
CONSIGNED_CONSUMPTION_FLAG	[varchar](4000) NULL,
CBC_ACCOUNTING_DATE	datetime NULL,
CONSUME_REQ_DEMAND_FLAG	[varchar](4000) NULL,
CHANGE_REQUESTED_BY	[varchar](4000) NULL,
SHIPPING_CONTROL	[varchar](4000) NULL,
CONTERMS_EXIST_FLAG	[varchar](4000) NULL,
CONTERMS_ARTICLES_UPD_DATE	datetime NULL,
CONTERMS_DELIV_UPD_DATE	datetime NULL,
PENDING_SIGNATURE_FLAG	[varchar](4000) NULL,
CHANGE_SUMMARY	[varchar](4000) NULL,
ENCUMBRANCE_REQUIRED_FLAG	[varchar](4000) NULL,
DOCUMENT_CREATION_METHOD	[varchar](4000) NULL,
SUBMIT_DATE	datetime NULL,
SUPPLIER_NOTIF_METHOD	[varchar](4000) NULL,
FAX	[varchar](4000) NULL,
EMAIL_ADDRESS	[varchar](4000) NULL,
USE_ORDER_DATE_IN_PRICING_FLAG	[varchar](4000) NULL,
RETRO_PRICE_COMM_UPDATES_FLAG	[varchar](4000) NULL,
RETRO_PRICE_APPLY_UPDATES_FLAG	[varchar](4000) NULL,
UPDATE_SOURCING_RULES_FLAG	[varchar](4000) NULL,
AUTO_SOURCING_FLAG	[varchar](4000) NULL,
CREATED_LANGUAGE	[varchar](4000) NULL,
CPA_REFERENCE	[varchar](4000) NULL,
STYLE_ID	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
LAST_UPDATED_PROGRAM	[varchar](4000) NULL,
CAT_ADMIN_AUTH_ENABLED_FLAG	[varchar](4000) NULL,
RELEASE_METHOD	[varchar](4000) NULL,
REVIEW_AUTOGENERATED_RELEASES	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
MERGE_REQUEST_ID	[varchar](4000) NULL,
USE_SALES_ORDER_NUMBER_FLAG	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
FIRST_PTY_REG_ID	[varchar](4000) NULL,
THIRD_PTY_REG_ID	[varchar](4000) NULL,
DISABLE_AUTOSOURCING_FLAG	[varchar](4000) NULL,
PUNCHOUT_SOURCING_ONLY_FLAG	[varchar](4000) NULL,
BUDGET_CONTROL_ENABLED_FLAG	[varchar](4000) NULL,
RETRO_PRICE_OPEN_ORDER_FLAG	[varchar](4000) NULL,
RETRO_PRICE_INIT_APPROVAL_FLAG	[varchar](4000) NULL,
REBUILD_INDEX	[varchar](4000) NULL,
REFRESH_INDEX	[varchar](4000) NULL,
ALLOW_MULTIPLE_SITES_FLAG	[varchar](4000) NULL,
USE_SHIP_TO_FOR_GROUP_REQS	[varchar](4000) NULL,
MASTER_CONTRACT_ID	[varchar](4000) NULL,
CC_EMAIL_ADDRESS	[varchar](4000) NULL,
BCC_EMAIL_ADDRESS	[varchar](4000) NULL,
OVERRIDING_APPROVER_ID	[varchar](4000) NULL,
SKIP_ELECTRONIC_COMM_FLAG	[varchar](4000) NULL,
ALT_CONTACT_EMAIL_ADDRESS	[varchar](4000) NULL,
SOURCING_PRIORITY	[varchar](4000) NULL,
SH_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
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
SH_ATTRIBUTE_TIMESTAMP1	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP2	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP3	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP4	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP5	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP6	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP7	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP8	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP9	[datetime] NULL,
SH_ATTRIBUTE_TIMESTAMP10	[datetime] NULL,
SPECIAL_HANDLING_TYPE_CODE	[varchar](4000) NULL,
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


Create View [rpy].[Po_Headers_All_v] as
SELECT a.[PO_HEADER_ID]
      ,[CHECKLIST_ID]
      ,[SCHEDULE_GROUP]
      ,[SIGNATURE_REQUIRED_FLAG]
      ,[MODE_OF_TRANSPORT]
      ,[SERVICE_LEVEL]
      ,[BUYER_MANAGED_TRANSPORT_FLAG]
      ,[BILLTO_BU_ID]
      ,[SOLDTO_LE_ID]
      ,[DEFAULT_PO_TRADE_ORG_ID]
      ,[ORCHESTRATION_ORDER_FLAG]
      ,[AGING_PERIOD_DAYS]
      ,[AGING_ONSET_POINT]
      ,[CONSUMPTION_ADVICE_FREQUENCY]
      ,[CONSUMPTION_ADVICE_SUMMARY]
      ,[BILLING_CYCLE_CLOSING_DATE]
      ,[LAST_BILLED_DATE]
      ,[DEFAULT_CONSIGNMENT_LINE_FLAG]
      ,[PAY_ON_USE_FLAG]
      ,[ACTIVE_VERSION_FLAG]
      ,[ACCEPTANCE_WITHIN_DAYS]
      ,[AMOUNT_RELEASED]
      ,[LAST_RELEASE_DATE]
      ,[CURRENT_VERSION_ID]
      ,[GENERATE_ORDERS_AUTOMATIC]
      ,[SUBMIT_APPROVAL_AUTOMATIC]
      ,[GROUP_REQUISITIONS]
      ,[GROUP_REQUISITION_LINES]
      ,[USE_NEED_BY_DATE]
      ,[USE_SHIP_TO]
      ,[DOCUMENT_STATUS]
      ,[PRC_BU_ID]
      ,[REQ_BU_ID]
      ,[DEFAULT_TAXATION_COUNTRY]
      ,[TAX_DOCUMENT_SUBTYPE]
      ,[AGENT_ID]
      ,[TYPE_LOOKUP_CODE]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[SEGMENT1]
      ,[SUMMARY_FLAG]
      ,[CARRIER_ID]
      ,[ENABLED_FLAG]
      ,[SEGMENT2]
      ,[SEGMENT3]
      ,[SEGMENT4]
      ,[SEGMENT5]
      ,[LAST_UPDATE_LOGIN]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[VENDOR_ID]
      ,[VENDOR_SITE_ID]
      ,[VENDOR_CONTACT_ID]
      ,[SHIP_TO_LOCATION_ID]
      ,[BILL_TO_LOCATION_ID]
      ,[TERMS_ID]
      ,[FOB_LOOKUP_CODE]
      ,[FREIGHT_TERMS_LOOKUP_CODE]
      ,[CURRENCY_CODE]
      ,[RATE_TYPE]
      ,[RATE_DATE]
      ,[RATE]
      ,[FROM_HEADER_ID]
      ,[FROM_TYPE_LOOKUP_CODE]
      ,[START_DATE]
      ,[END_DATE]
      ,[BLANKET_TOTAL_AMOUNT]
      ,[REVISION_NUM]
      ,[REVISED_DATE]
      ,[APPROVED_FLAG]
      ,[APPROVED_DATE]
      ,[AMOUNT_LIMIT]
      ,[MIN_RELEASE_AMOUNT]
      ,[NOTE_TO_AUTHORIZER]
      ,[NOTE_TO_VENDOR]
      ,[NOTE_TO_RECEIVER]
      ,[VENDOR_ORDER_NUM]
      ,[CONFIRMING_ORDER_FLAG]
      ,[COMMENTS]
      ,[ACCEPTANCE_REQUIRED_FLAG]
      ,[ACCEPTANCE_DUE_DATE]
      ,[CLOSED_DATE]
      ,[CANCEL_FLAG]
      ,[FIRM_STATUS_LOOKUP_CODE]
      ,[FIRM_DATE]
      ,[FROZEN_FLAG]
      ,[EDI_PROCESSED_FLAG]
      ,[EDI_PROCESSED_STATUS]
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
      ,[GOVERNMENT_CONTEXT]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[SOLDTO_BU_ID]
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
      ,[INTERFACE_SOURCE_CODE]
      ,[REFERENCE_NUM]
      ,[PCARD_ID]
      ,[PRICE_UPDATE_TOLERANCE]
      ,[PAY_ON_CODE]
      ,[XML_FLAG]
      ,[XML_SEND_DATE]
      ,[XML_CHANGE_SEND_DATE]
      ,[CONSIGNED_CONSUMPTION_FLAG]
      ,[CBC_ACCOUNTING_DATE]
      ,[CONSUME_REQ_DEMAND_FLAG]
      ,[CHANGE_REQUESTED_BY]
      ,[SHIPPING_CONTROL]
      ,[CONTERMS_EXIST_FLAG]
      ,[CONTERMS_ARTICLES_UPD_DATE]
      ,[CONTERMS_DELIV_UPD_DATE]
      ,[PENDING_SIGNATURE_FLAG]
      ,[CHANGE_SUMMARY]
      ,[ENCUMBRANCE_REQUIRED_FLAG]
      ,[DOCUMENT_CREATION_METHOD]
      ,[SUBMIT_DATE]
      ,[SUPPLIER_NOTIF_METHOD]
      ,[FAX]
      ,[EMAIL_ADDRESS]
      ,[USE_ORDER_DATE_IN_PRICING_FLAG]
      ,[RETRO_PRICE_COMM_UPDATES_FLAG]
      ,[RETRO_PRICE_APPLY_UPDATES_FLAG]
      ,[UPDATE_SOURCING_RULES_FLAG]
      ,[AUTO_SOURCING_FLAG]
      ,[CREATED_LANGUAGE]
      ,[CPA_REFERENCE]
      ,[STYLE_ID]
      ,[TAX_ATTRIBUTE_UPDATE_CODE]
      ,[LAST_UPDATED_PROGRAM]
      ,[CAT_ADMIN_AUTH_ENABLED_FLAG]
      ,[RELEASE_METHOD]
      ,[REVIEW_AUTOGENERATED_RELEASES]
      ,[OBJECT_VERSION_NUMBER]
      ,[MERGE_REQUEST_ID]
      ,[USE_SALES_ORDER_NUMBER_FLAG]
      ,[FUNDS_STATUS]
      ,[FIRST_PTY_REG_ID]
      ,[THIRD_PTY_REG_ID]
      ,[DISABLE_AUTOSOURCING_FLAG]
      ,[PUNCHOUT_SOURCING_ONLY_FLAG]
      ,[BUDGET_CONTROL_ENABLED_FLAG]
      ,[RETRO_PRICE_OPEN_ORDER_FLAG]
      ,[RETRO_PRICE_INIT_APPROVAL_FLAG]
      ,[REBUILD_INDEX]
      ,[REFRESH_INDEX]
      ,[ALLOW_MULTIPLE_SITES_FLAG]
      ,[USE_SHIP_TO_FOR_GROUP_REQS]
      ,[MASTER_CONTRACT_ID]
      ,[CC_EMAIL_ADDRESS]
      ,[BCC_EMAIL_ADDRESS]
      ,[OVERRIDING_APPROVER_ID]
      ,[SKIP_ELECTRONIC_COMM_FLAG]
      ,[ALT_CONTACT_EMAIL_ADDRESS]
      ,[SOURCING_PRIORITY]
      ,[SH_ATTRIBUTE_CATEGORY]
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
      ,[SPECIAL_HANDLING_TYPE_CODE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Headers_All] a,
  (SELECT PO_HEADER_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Headers_All] GROUP BY PO_HEADER_ID) b
WHERE a.PO_HEADER_ID = b.PO_HEADER_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Po_Headers_All_PO_HEADER_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Headers_All]
(
	[PO_HEADER_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




