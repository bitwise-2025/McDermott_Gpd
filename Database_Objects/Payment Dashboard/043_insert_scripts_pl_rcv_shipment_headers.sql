insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_rcv_shipment_headers','NCSA','pl_rcv_shipment_headers',NULL,'1','aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_rcv_shipment_headers','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Rcv_Shipment_Headers',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Rcv_Shipment_Headers',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-08-15 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/RCV_SHIPMENT_HEADERS.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_rcv_shipment_headers','NetworkFolder')


GO


CREATE TABLE [rpy].[Rcv_Shipment_Headers_stage]
(

SHIPMENT_HEADER_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
RECEIPT_SOURCE_CODE	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
ORGANIZATION_ID	[varchar](4000) NULL,
SHIPMENT_NUM	[varchar](4000) NULL,
RECEIPT_NUM	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
BILL_OF_LADING	[varchar](4000) NULL,
PACKING_SLIP	[varchar](4000) NULL,
SHIPPED_DATE	datetime NULL,
FREIGHT_CARRIER_ID	[varchar](4000) NULL,
EXPECTED_RECEIPT_DATE	datetime NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
NUM_OF_CONTAINERS	[varchar](4000) NULL,
WAYBILL_AIRBILL_NUM	[varchar](4000) NULL,
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
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
ASN_TYPE	[varchar](4000) NULL,
EDI_CONTROL_NUM	[varchar](4000) NULL,
NOTICE_CREATION_DATE	datetime NULL,
GROSS_WEIGHT	[varchar](4000) NULL,
GROSS_WEIGHT_UOM_CODE	[varchar](4000) NULL,
NET_WEIGHT	[varchar](4000) NULL,
NET_WEIGHT_UOM_CODE	[varchar](4000) NULL,
TAR_WEIGHT	[varchar](4000) NULL,
TAR_WEIGHT_UOM_CODE	[varchar](4000) NULL,
PACKAGING_CODE	[varchar](4000) NULL,
CARRIER_METHOD	[varchar](4000) NULL,
CARRIER_EQUIPMENT	[varchar](4000) NULL,
SPECIAL_HANDLING_CODE	[varchar](4000) NULL,
HAZARD_CODE	[varchar](4000) NULL,
HAZARD_CLASS	[varchar](4000) NULL,
HAZARD_DESCRIPTION	[varchar](4000) NULL,
FREIGHT_TERMS	[varchar](4000) NULL,
FREIGHT_BILL_NUMBER	[varchar](4000) NULL,
INVOICE_NUM	[varchar](4000) NULL,
INVOICE_DATE	datetime NULL,
INVOICE_AMOUNT	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TAX_AMOUNT	[varchar](4000) NULL,
FREIGHT_AMOUNT	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
ASN_STATUS	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
CONVERSION_RATE_TYPE	[varchar](4000) NULL,
CONVERSION_RATE	[varchar](4000) NULL,
CONVERSION_DATE	datetime NULL,
PAYMENT_TERMS_ID	[varchar](4000) NULL,
SHIP_TO_ORG_ID	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
REMIT_TO_SITE_ID	[varchar](4000) NULL,
SHIP_FROM_LOCATION_ID	[varchar](4000) NULL,
APPROVAL_STATUS	[varchar](4000) NULL,
PERFORMANCE_PERIOD_FROM	datetime NULL,
PERFORMANCE_PERIOD_TO	datetime NULL,
REQUEST_DATE	datetime NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LSP_FLAG	[varchar](4000) NULL,
RA_OUTSOURCER_PARTY_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_NUMBER	[varchar](4000) NULL,
RA_DOCUMENT_CODE	[varchar](4000) NULL,
RA_DOCUMENT_NUMBER	[varchar](4000) NULL,
RA_DOC_REVISION_NUMBER	[varchar](4000) NULL,
RA_DOC_REVISION_DATE	datetime NULL,
RA_DOC_CREATION_DATE	datetime NULL,
RA_DOC_LAST_UPDATE_DATE	datetime NULL,
RA_OUTSOURCER_CONTACT_ID	[varchar](4000) NULL,
RA_NOTE_TO_RECEIVER	[varchar](4000) NULL,
RMA_BU_ID	[varchar](4000) NULL,
RA_DOO_SOURCE_SYSTEM_ID	[varchar](4000) NULL,
HEADER_INTERFACE_ID	[varchar](4000) NULL,
RA_ORIG_SYSTEM_REF	[varchar](4000) NULL,
GL_DATE	datetime NULL,
EXTERNAL_SYS_TXN_REFERENCE	[varchar](4000) NULL,
CONTAINER_NUMBER	[varchar](4000) NULL,
SUPPLIER_SHIPMENT_NUMBER	[varchar](4000) NULL,
SHIP_METHOD_CODE	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Rcv_Shipment_Headers]
(

SHIPMENT_HEADER_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
RECEIPT_SOURCE_CODE	[varchar](4000) NULL,
VENDOR_ID	[varchar](4000) NULL,
VENDOR_SITE_ID	[varchar](4000) NULL,
ORGANIZATION_ID	[varchar](4000) NULL,
SHIPMENT_NUM	[varchar](4000) NULL,
RECEIPT_NUM	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
BILL_OF_LADING	[varchar](4000) NULL,
PACKING_SLIP	[varchar](4000) NULL,
SHIPPED_DATE	datetime NULL,
FREIGHT_CARRIER_ID	[varchar](4000) NULL,
EXPECTED_RECEIPT_DATE	datetime NULL,
EMPLOYEE_ID	[varchar](4000) NULL,
NUM_OF_CONTAINERS	[varchar](4000) NULL,
WAYBILL_AIRBILL_NUM	[varchar](4000) NULL,
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
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
ASN_TYPE	[varchar](4000) NULL,
EDI_CONTROL_NUM	[varchar](4000) NULL,
NOTICE_CREATION_DATE	datetime NULL,
GROSS_WEIGHT	[varchar](4000) NULL,
GROSS_WEIGHT_UOM_CODE	[varchar](4000) NULL,
NET_WEIGHT	[varchar](4000) NULL,
NET_WEIGHT_UOM_CODE	[varchar](4000) NULL,
TAR_WEIGHT	[varchar](4000) NULL,
TAR_WEIGHT_UOM_CODE	[varchar](4000) NULL,
PACKAGING_CODE	[varchar](4000) NULL,
CARRIER_METHOD	[varchar](4000) NULL,
CARRIER_EQUIPMENT	[varchar](4000) NULL,
SPECIAL_HANDLING_CODE	[varchar](4000) NULL,
HAZARD_CODE	[varchar](4000) NULL,
HAZARD_CLASS	[varchar](4000) NULL,
HAZARD_DESCRIPTION	[varchar](4000) NULL,
FREIGHT_TERMS	[varchar](4000) NULL,
FREIGHT_BILL_NUMBER	[varchar](4000) NULL,
INVOICE_NUM	[varchar](4000) NULL,
INVOICE_DATE	datetime NULL,
INVOICE_AMOUNT	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
TAX_AMOUNT	[varchar](4000) NULL,
FREIGHT_AMOUNT	[varchar](4000) NULL,
INVOICE_STATUS_CODE	[varchar](4000) NULL,
ASN_STATUS	[varchar](4000) NULL,
CURRENCY_CODE	[varchar](4000) NULL,
CONVERSION_RATE_TYPE	[varchar](4000) NULL,
CONVERSION_RATE	[varchar](4000) NULL,
CONVERSION_DATE	datetime NULL,
PAYMENT_TERMS_ID	[varchar](4000) NULL,
SHIP_TO_ORG_ID	[varchar](4000) NULL,
CUSTOMER_ID	[varchar](4000) NULL,
CUSTOMER_SITE_ID	[varchar](4000) NULL,
REMIT_TO_SITE_ID	[varchar](4000) NULL,
SHIP_FROM_LOCATION_ID	[varchar](4000) NULL,
APPROVAL_STATUS	[varchar](4000) NULL,
PERFORMANCE_PERIOD_FROM	datetime NULL,
PERFORMANCE_PERIOD_TO	datetime NULL,
REQUEST_DATE	datetime NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LSP_FLAG	[varchar](4000) NULL,
RA_OUTSOURCER_PARTY_ID	[varchar](4000) NULL,
RECEIPT_ADVICE_NUMBER	[varchar](4000) NULL,
RA_DOCUMENT_CODE	[varchar](4000) NULL,
RA_DOCUMENT_NUMBER	[varchar](4000) NULL,
RA_DOC_REVISION_NUMBER	[varchar](4000) NULL,
RA_DOC_REVISION_DATE	datetime NULL,
RA_DOC_CREATION_DATE	datetime NULL,
RA_DOC_LAST_UPDATE_DATE	datetime NULL,
RA_OUTSOURCER_CONTACT_ID	[varchar](4000) NULL,
RA_NOTE_TO_RECEIVER	[varchar](4000) NULL,
RMA_BU_ID	[varchar](4000) NULL,
RA_DOO_SOURCE_SYSTEM_ID	[varchar](4000) NULL,
HEADER_INTERFACE_ID	[varchar](4000) NULL,
RA_ORIG_SYSTEM_REF	[varchar](4000) NULL,
GL_DATE	datetime NULL,
EXTERNAL_SYS_TXN_REFERENCE	[varchar](4000) NULL,
CONTAINER_NUMBER	[varchar](4000) NULL,
SUPPLIER_SHIPMENT_NUMBER	[varchar](4000) NULL,
SHIP_METHOD_CODE	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
INTERFACE_SOURCE_CODE	[varchar](4000) NULL,
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



Create View [rpy].[Rcv_Shipment_Headers_v] as
SELECT a.[SHIPMENT_HEADER_ID]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[LAST_UPDATE_LOGIN]
      ,[RECEIPT_SOURCE_CODE]
      ,[VENDOR_ID]
      ,[VENDOR_SITE_ID]
      ,[ORGANIZATION_ID]
      ,[SHIPMENT_NUM]
      ,[RECEIPT_NUM]
      ,[SHIP_TO_LOCATION_ID]
      ,[BILL_OF_LADING]
      ,[PACKING_SLIP]
      ,[SHIPPED_DATE]
      ,[FREIGHT_CARRIER_ID]
      ,[EXPECTED_RECEIPT_DATE]
      ,[EMPLOYEE_ID]
      ,[NUM_OF_CONTAINERS]
      ,[WAYBILL_AIRBILL_NUM]
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
      ,[GOVERNMENT_CONTEXT]
      ,[REQUEST_ID]
      ,[ASN_TYPE]
      ,[EDI_CONTROL_NUM]
      ,[NOTICE_CREATION_DATE]
      ,[GROSS_WEIGHT]
      ,[GROSS_WEIGHT_UOM_CODE]
      ,[NET_WEIGHT]
      ,[NET_WEIGHT_UOM_CODE]
      ,[TAR_WEIGHT]
      ,[TAR_WEIGHT_UOM_CODE]
      ,[PACKAGING_CODE]
      ,[CARRIER_METHOD]
      ,[CARRIER_EQUIPMENT]
      ,[SPECIAL_HANDLING_CODE]
      ,[HAZARD_CODE]
      ,[HAZARD_CLASS]
      ,[HAZARD_DESCRIPTION]
      ,[FREIGHT_TERMS]
      ,[FREIGHT_BILL_NUMBER]
      ,[INVOICE_NUM]
      ,[INVOICE_DATE]
      ,[INVOICE_AMOUNT]
      ,[TAX_NAME]
      ,[TAX_AMOUNT]
      ,[FREIGHT_AMOUNT]
      ,[INVOICE_STATUS_CODE]
      ,[ASN_STATUS]
      ,[CURRENCY_CODE]
      ,[CONVERSION_RATE_TYPE]
      ,[CONVERSION_RATE]
      ,[CONVERSION_DATE]
      ,[PAYMENT_TERMS_ID]
      ,[SHIP_TO_ORG_ID]
      ,[CUSTOMER_ID]
      ,[CUSTOMER_SITE_ID]
      ,[REMIT_TO_SITE_ID]
      ,[SHIP_FROM_LOCATION_ID]
      ,[APPROVAL_STATUS]
      ,[PERFORMANCE_PERIOD_FROM]
      ,[PERFORMANCE_PERIOD_TO]
      ,[REQUEST_DATE]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[OBJECT_VERSION_NUMBER]
      ,[LSP_FLAG]
      ,[RA_OUTSOURCER_PARTY_ID]
      ,[RECEIPT_ADVICE_NUMBER]
      ,[RA_DOCUMENT_CODE]
      ,[RA_DOCUMENT_NUMBER]
      ,[RA_DOC_REVISION_NUMBER]
      ,[RA_DOC_REVISION_DATE]
      ,[RA_DOC_CREATION_DATE]
      ,[RA_DOC_LAST_UPDATE_DATE]
      ,[RA_OUTSOURCER_CONTACT_ID]
      ,[RA_NOTE_TO_RECEIVER]
      ,[RMA_BU_ID]
      ,[RA_DOO_SOURCE_SYSTEM_ID]
      ,[HEADER_INTERFACE_ID]
      ,[RA_ORIG_SYSTEM_REF]
      ,[GL_DATE]
      ,[EXTERNAL_SYS_TXN_REFERENCE]
      ,[CONTAINER_NUMBER]
      ,[SUPPLIER_SHIPMENT_NUMBER]
      ,[SHIP_METHOD_CODE]
      ,[MODE_OF_TRANSPORT]
      ,[SERVICE_LEVEL]
      ,[INTERFACE_SOURCE_CODE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Rcv_Shipment_Headers] a,
  (SELECT SHIPMENT_HEADER_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Rcv_Shipment_Headers] GROUP BY SHIPMENT_HEADER_ID) b
WHERE a.SHIPMENT_HEADER_ID = b.SHIPMENT_HEADER_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Rcv_Shipment_Headers_SHIPMENT_HEADER_ID_LAST_UPDATE_DATE] ON [rpy].[Rcv_Shipment_Headers]
(
	[SHIPMENT_HEADER_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




