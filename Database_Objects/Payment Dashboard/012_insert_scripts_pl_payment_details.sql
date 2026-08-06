insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_payment_details','NCSA','pl_payment_details',NULL,'1','aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_details','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Payment_Details',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Payment_Details',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_CHECKS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_details','NetworkFolder')


GO


CREATE TABLE [rpy].[Payment_Details_stage]
(

ACTUAL_VALUE_DATE	[varchar](500) NULL,
ADDRESS_LINE1	[varchar](500) NULL,
ADDRESS_LINE2	[varchar](500) NULL,
ADDRESS_LINE3	[varchar](500) NULL,
ADDRESS_LINE4	[varchar](500) NULL,
ADDRESS_STYLE	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
ANTICIPATED_VALUE_DATE	[varchar](500) NULL,
ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_NUMBER1	[varchar](500) NULL,
ATTRIBUTE_NUMBER2	[varchar](500) NULL,
ATTRIBUTE_NUMBER3	[varchar](500) NULL,
ATTRIBUTE_NUMBER4	[varchar](500) NULL,
ATTRIBUTE_NUMBER5	[varchar](500) NULL,
BANK_ACCOUNT_NAME	[varchar](500) NULL,
BANK_ACCOUNT_NUM	[varchar](500) NULL,
BANK_ACCOUNT_TYPE	[varchar](500) NULL,
BANK_CHARGE_BEARER	[varchar](500) NULL,
BANK_NUM	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BEP_RESPONSE_CODE	[varchar](500) NULL,
BEP_RESPONSE_DATE	[varchar](500) NULL,
BEP_STATUS	[varchar](500) NULL,
BEP_TRXN_RESPONSE_ID	[varchar](500) NULL,
CE_BANK_ACCT_USE_ID	[varchar](500) NULL,
CHECKRUN_ID	[varchar](500) NULL,
CHECKRUN_NAME	[varchar](500) NULL,
CHECK_DATE	[varchar](500) NULL,
CHECK_FORMAT_ID	[varchar](500) NULL,
CHECK_ID	[varchar](500) NULL,
CHECK_NUMBER	[varchar](500) NULL,
CHECK_STOCK_ID	[varchar](500) NULL,
CHECK_VOUCHER_NUM	[varchar](500) NULL,
CITY	[varchar](500) NULL,
CLEARED_AMOUNT	[varchar](500) NULL,
CLEARED_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_CHARGES_AMOUNT	[varchar](500) NULL,
CLEARED_CHARGES_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_DATE	[varchar](500) NULL,
CLEARED_ERROR_AMOUNT	[varchar](500) NULL,
CLEARED_ERROR_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_EXCHANGE_DATE	[varchar](500) NULL,
CLEARED_EXCHANGE_RATE	[varchar](500) NULL,
CLEARED_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
COMPLETED_PMTS_GROUP_ID	[varchar](500) NULL,
COUNTRY	[varchar](500) NULL,
COUNTY	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
CURRENCY_CODE	[varchar](500) NULL,
DESCRIPTION	[varchar](500) NULL,
DOC_CATEGORY_CODE	[varchar](500) NULL,
DOC_SEQUENCE_ID	[varchar](500) NULL,
DOC_SEQUENCE_VALUE	[varchar](500) NULL,
EMPLOYEE_ADDRESS_CODE	[varchar](500) NULL,
ESCHEATMENT_INVOICE_ID	[varchar](500) NULL,
ESCHEATMENT_VENDOR_ID	[varchar](500) NULL,
ESCHEATMENT_VENDOR_SITE_ID	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
FUTURE_PAY_DUE_DATE	[varchar](500) NULL,
GLOBAL_ATTRIBUTE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE10	[varchar](500) NULL,
GLOBAL_ATTRIBUTE11	[varchar](500) NULL,
GLOBAL_ATTRIBUTE12	[varchar](500) NULL,
GLOBAL_ATTRIBUTE13	[varchar](500) NULL,
GLOBAL_ATTRIBUTE14	[varchar](500) NULL,
GLOBAL_ATTRIBUTE15	[varchar](500) NULL,
GLOBAL_ATTRIBUTE16	[varchar](500) NULL,
GLOBAL_ATTRIBUTE17	[varchar](500) NULL,
GLOBAL_ATTRIBUTE18	[varchar](500) NULL,
GLOBAL_ATTRIBUTE19	[varchar](500) NULL,
GLOBAL_ATTRIBUTE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE20	[varchar](500) NULL,
GLOBAL_ATTRIBUTE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE6	[varchar](500) NULL,
GLOBAL_ATTRIBUTE7	[varchar](500) NULL,
GLOBAL_ATTRIBUTE8	[varchar](500) NULL,
GLOBAL_ATTRIBUTE9	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](500) NULL,
IBAN_NUMBER	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
LOGICAL_GROUP_REFERENCE	[varchar](500) NULL,
MATURITY_EXCHANGE_DATE	[varchar](500) NULL,
MATURITY_EXCHANGE_RATE	[varchar](500) NULL,
MATURITY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
MRC_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_CHARGES_BASE_AMT	[varchar](4000) NULL,
MRC_CLEARED_ERROR_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_RATE	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_MATURITY_EXG_DATE	[varchar](4000) NULL,
MRC_MATURITY_EXG_RATE	[varchar](4000) NULL,
MRC_MATURITY_EXG_RATE_TYPE	[varchar](4000) NULL,
MRC_STAMP_DUTY_BASE_AMT	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PARTY_ID	[varchar](500) NULL,
PARTY_SITE_ID	[varchar](500) NULL,
PAYMENT_DOCUMENT_ID	[varchar](500) NULL,
PAYMENT_ID	[varchar](500) NULL,
PAYMENT_INSTRUCTION_ID	[varchar](500) NULL,
PAYMENT_INSTRUMENT_ID	[varchar](500) NULL,
PAYMENT_METHOD_CODE	[varchar](500) NULL,
PAYMENT_METHOD_LOOKUP_CODE	[varchar](500) NULL,
PAYMENT_MODE_CODE	[varchar](500) NULL,
PAYMENT_PROFILE_ID	[varchar](500) NULL,
PAYMENT_TYPE_FLAG	[varchar](500) NULL,
PMT_INSTR_BU_ASSIGNMENT_ID	[varchar](500) NULL,
PMT_TO_BANK_AMOUNT	[varchar](500) NULL,
PMT_TO_BANK_RATE	[varchar](500) NULL,
PMT_TO_BANK_RATE_TYPE	[varchar](500) NULL,
POSITIVE_PAY_STATUS_CODE	[varchar](500) NULL,
PROVINCE	[varchar](500) NULL,
RECONCILIATION_BATCH_ID	[varchar](500) NULL,
RECON_FLAG	[varchar](500) NULL,
RELATIONSHIP_ID	[varchar](500) NULL,
RELEASED_BY	[varchar](500) NULL,
RELEASED_DATE	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
SETTLEMENT_PRIORITY	[varchar](500) NULL,
STAMP_DUTY_AMT	[varchar](500) NULL,
STAMP_DUTY_BASE_AMT	[varchar](500) NULL,
STATE	[varchar](500) NULL,
STATUS_LOOKUP_CODE	[varchar](500) NULL,
STOPPED_BY	[varchar](500) NULL,
STOPPED_DATE	[varchar](500) NULL,
TRANSFER_PRIORITY	[varchar](500) NULL,
TREASURY_PAY_DATE	[varchar](500) NULL,
TREASURY_PAY_NUMBER	[varchar](500) NULL,
USSGL_TRANSACTION_CODE	[varchar](500) NULL,
USSGL_TRX_CODE_CONTEXT	[varchar](500) NULL,
VENDOR_ID	[varchar](500) NULL,
VENDOR_NAME	[varchar](500) NULL,
VENDOR_SITE_CODE	[varchar](500) NULL,
VENDOR_SITE_ID	[varchar](500) NULL,
VOID_DATE	[varchar](500) NULL,
X_CURR_RATE_TYPE	[varchar](500) NULL,
ZIP	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Payment_Details]
(

ACTUAL_VALUE_DATE	[varchar](500) NULL,
ADDRESS_LINE1	[varchar](500) NULL,
ADDRESS_LINE2	[varchar](500) NULL,
ADDRESS_LINE3	[varchar](500) NULL,
ADDRESS_LINE4	[varchar](500) NULL,
ADDRESS_STYLE	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
ANTICIPATED_VALUE_DATE	[varchar](500) NULL,
ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_NUMBER1	[varchar](500) NULL,
ATTRIBUTE_NUMBER2	[varchar](500) NULL,
ATTRIBUTE_NUMBER3	[varchar](500) NULL,
ATTRIBUTE_NUMBER4	[varchar](500) NULL,
ATTRIBUTE_NUMBER5	[varchar](500) NULL,
BANK_ACCOUNT_NAME	[varchar](500) NULL,
BANK_ACCOUNT_NUM	[varchar](500) NULL,
BANK_ACCOUNT_TYPE	[varchar](500) NULL,
BANK_CHARGE_BEARER	[varchar](500) NULL,
BANK_NUM	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BEP_RESPONSE_CODE	[varchar](500) NULL,
BEP_RESPONSE_DATE	[varchar](500) NULL,
BEP_STATUS	[varchar](500) NULL,
BEP_TRXN_RESPONSE_ID	[varchar](500) NULL,
CE_BANK_ACCT_USE_ID	[varchar](500) NULL,
CHECKRUN_ID	[varchar](500) NULL,
CHECKRUN_NAME	[varchar](500) NULL,
CHECK_DATE	[varchar](500) NULL,
CHECK_FORMAT_ID	[varchar](500) NULL,
CHECK_ID	[varchar](500) NULL,
CHECK_NUMBER	[varchar](500) NULL,
CHECK_STOCK_ID	[varchar](500) NULL,
CHECK_VOUCHER_NUM	[varchar](500) NULL,
CITY	[varchar](500) NULL,
CLEARED_AMOUNT	[varchar](500) NULL,
CLEARED_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_CHARGES_AMOUNT	[varchar](500) NULL,
CLEARED_CHARGES_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_DATE	[varchar](500) NULL,
CLEARED_ERROR_AMOUNT	[varchar](500) NULL,
CLEARED_ERROR_BASE_AMOUNT	[varchar](500) NULL,
CLEARED_EXCHANGE_DATE	[varchar](500) NULL,
CLEARED_EXCHANGE_RATE	[varchar](500) NULL,
CLEARED_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
COMPLETED_PMTS_GROUP_ID	[varchar](500) NULL,
COUNTRY	[varchar](500) NULL,
COUNTY	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
CURRENCY_CODE	[varchar](500) NULL,
DESCRIPTION	[varchar](500) NULL,
DOC_CATEGORY_CODE	[varchar](500) NULL,
DOC_SEQUENCE_ID	[varchar](500) NULL,
DOC_SEQUENCE_VALUE	[varchar](500) NULL,
EMPLOYEE_ADDRESS_CODE	[varchar](500) NULL,
ESCHEATMENT_INVOICE_ID	[varchar](500) NULL,
ESCHEATMENT_VENDOR_ID	[varchar](500) NULL,
ESCHEATMENT_VENDOR_SITE_ID	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
FUTURE_PAY_DUE_DATE	[varchar](500) NULL,
GLOBAL_ATTRIBUTE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE10	[varchar](500) NULL,
GLOBAL_ATTRIBUTE11	[varchar](500) NULL,
GLOBAL_ATTRIBUTE12	[varchar](500) NULL,
GLOBAL_ATTRIBUTE13	[varchar](500) NULL,
GLOBAL_ATTRIBUTE14	[varchar](500) NULL,
GLOBAL_ATTRIBUTE15	[varchar](500) NULL,
GLOBAL_ATTRIBUTE16	[varchar](500) NULL,
GLOBAL_ATTRIBUTE17	[varchar](500) NULL,
GLOBAL_ATTRIBUTE18	[varchar](500) NULL,
GLOBAL_ATTRIBUTE19	[varchar](500) NULL,
GLOBAL_ATTRIBUTE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE20	[varchar](500) NULL,
GLOBAL_ATTRIBUTE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE6	[varchar](500) NULL,
GLOBAL_ATTRIBUTE7	[varchar](500) NULL,
GLOBAL_ATTRIBUTE8	[varchar](500) NULL,
GLOBAL_ATTRIBUTE9	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](500) NULL,
IBAN_NUMBER	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
LOGICAL_GROUP_REFERENCE	[varchar](500) NULL,
MATURITY_EXCHANGE_DATE	[varchar](500) NULL,
MATURITY_EXCHANGE_RATE	[varchar](500) NULL,
MATURITY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
MRC_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_CHARGES_BASE_AMT	[varchar](4000) NULL,
MRC_CLEARED_ERROR_BASE_AMOUNT	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_RATE	[varchar](4000) NULL,
MRC_CLEARED_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_MATURITY_EXG_DATE	[varchar](4000) NULL,
MRC_MATURITY_EXG_RATE	[varchar](4000) NULL,
MRC_MATURITY_EXG_RATE_TYPE	[varchar](4000) NULL,
MRC_STAMP_DUTY_BASE_AMT	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PARTY_ID	[varchar](500) NULL,
PARTY_SITE_ID	[varchar](500) NULL,
PAYMENT_DOCUMENT_ID	[varchar](500) NULL,
PAYMENT_ID	[varchar](500) NULL,
PAYMENT_INSTRUCTION_ID	[varchar](500) NULL,
PAYMENT_INSTRUMENT_ID	[varchar](500) NULL,
PAYMENT_METHOD_CODE	[varchar](500) NULL,
PAYMENT_METHOD_LOOKUP_CODE	[varchar](500) NULL,
PAYMENT_MODE_CODE	[varchar](500) NULL,
PAYMENT_PROFILE_ID	[varchar](500) NULL,
PAYMENT_TYPE_FLAG	[varchar](500) NULL,
PMT_INSTR_BU_ASSIGNMENT_ID	[varchar](500) NULL,
PMT_TO_BANK_AMOUNT	[varchar](500) NULL,
PMT_TO_BANK_RATE	[varchar](500) NULL,
PMT_TO_BANK_RATE_TYPE	[varchar](500) NULL,
POSITIVE_PAY_STATUS_CODE	[varchar](500) NULL,
PROVINCE	[varchar](500) NULL,
RECONCILIATION_BATCH_ID	[varchar](500) NULL,
RECON_FLAG	[varchar](500) NULL,
RELATIONSHIP_ID	[varchar](500) NULL,
RELEASED_BY	[varchar](500) NULL,
RELEASED_DATE	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
SETTLEMENT_PRIORITY	[varchar](500) NULL,
STAMP_DUTY_AMT	[varchar](500) NULL,
STAMP_DUTY_BASE_AMT	[varchar](500) NULL,
STATE	[varchar](500) NULL,
STATUS_LOOKUP_CODE	[varchar](500) NULL,
STOPPED_BY	[varchar](500) NULL,
STOPPED_DATE	[varchar](500) NULL,
TRANSFER_PRIORITY	[varchar](500) NULL,
TREASURY_PAY_DATE	[varchar](500) NULL,
TREASURY_PAY_NUMBER	[varchar](500) NULL,
USSGL_TRANSACTION_CODE	[varchar](500) NULL,
USSGL_TRX_CODE_CONTEXT	[varchar](500) NULL,
VENDOR_ID	[varchar](500) NULL,
VENDOR_NAME	[varchar](500) NULL,
VENDOR_SITE_CODE	[varchar](500) NULL,
VENDOR_SITE_ID	[varchar](500) NULL,
VOID_DATE	[varchar](500) NULL,
X_CURR_RATE_TYPE	[varchar](500) NULL,
ZIP	[varchar](500) NULL,
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



Create View [rpy].[Payment_Details_v] as
SELECT Cast([ACTUAL_VALUE_DATE] as date) as [ACTUAL_VALUE_DATE]
      ,[ADDRESS_LINE1]
      ,[ADDRESS_LINE2]
      ,[ADDRESS_LINE3]
      ,[ADDRESS_LINE4]
      ,[ADDRESS_STYLE]
      ,CAST([AMOUNT] as decimal(38, 10)) as [AMOUNT]
      ,Cast([ANTICIPATED_VALUE_DATE] as date) as [ANTICIPATED_VALUE_DATE]
      ,[ATTRIBUTE1]
      ,[ATTRIBUTE10]
      ,[ATTRIBUTE11]
      ,[ATTRIBUTE12]
      ,[ATTRIBUTE13]
      ,[ATTRIBUTE14]
      ,[ATTRIBUTE15]
      ,[ATTRIBUTE2]
      ,[ATTRIBUTE3]
      ,[ATTRIBUTE4]
      ,[ATTRIBUTE5]
      ,[ATTRIBUTE6]
      ,[ATTRIBUTE7]
      ,[ATTRIBUTE8]
      ,[ATTRIBUTE9]
      ,[ATTRIBUTE_CATEGORY]
      ,Cast([ATTRIBUTE_DATE1] as date) as [ATTRIBUTE_DATE1]
      ,Cast([ATTRIBUTE_DATE2] as date) as [ATTRIBUTE_DATE2]
      ,Cast([ATTRIBUTE_DATE3] as date) as [ATTRIBUTE_DATE3]
      ,Cast([ATTRIBUTE_DATE4] as date) as [ATTRIBUTE_DATE4]
      ,Cast([ATTRIBUTE_DATE5] as date) as [ATTRIBUTE_DATE5]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,[BANK_ACCOUNT_NAME]
      ,[BANK_ACCOUNT_NUM]
      ,[BANK_ACCOUNT_TYPE]
      ,[BANK_CHARGE_BEARER]
      ,[BANK_NUM]
      ,CAST([BASE_AMOUNT] as decimal(38, 10)) as [BASE_AMOUNT]
      ,[BEP_RESPONSE_CODE]
      ,Cast([BEP_RESPONSE_DATE] as date) as [BEP_RESPONSE_DATE]
      ,[BEP_STATUS]
      ,[BEP_TRXN_RESPONSE_ID]
      ,[CE_BANK_ACCT_USE_ID]
      ,[CHECKRUN_ID]
      ,[CHECKRUN_NAME]
	  ,Cast([CHECK_DATE] as date) as [CHECK_DATE]
      --,FORMAT(Cast(LEFT([CHECK_DATE],10) as datetime), 'MM-dd-yyyy')  as [CHECK_DATE]
      ,[CHECK_FORMAT_ID]
      ,a.[CHECK_ID]
      ,[CHECK_NUMBER]
      ,[CHECK_STOCK_ID]
      ,[CHECK_VOUCHER_NUM]
      ,[CITY]
      ,CAST([CLEARED_AMOUNT] as decimal(38, 10)) as [CLEARED_AMOUNT]
      ,CAST([CLEARED_BASE_AMOUNT] as decimal(38, 10)) as [CLEARED_BASE_AMOUNT]
      ,CAST([CLEARED_CHARGES_AMOUNT] as decimal(38, 10)) as [CLEARED_CHARGES_AMOUNT]
      ,CAST([CLEARED_CHARGES_BASE_AMOUNT] as decimal(38, 10)) as [CLEARED_CHARGES_BASE_AMOUNT]
      ,FORMAT(Cast([CLEARED_DATE] as date), 'MM-dd-yyyy') as [CLEARED_DATE]
      ,CAST([CLEARED_ERROR_AMOUNT] as decimal(38, 10)) as [CLEARED_ERROR_AMOUNT]
      ,CAST([CLEARED_ERROR_BASE_AMOUNT] as decimal(38, 10)) as [CLEARED_ERROR_BASE_AMOUNT]
      ,FORMAT(Cast([CLEARED_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [CLEARED_EXCHANGE_DATE]
      ,[CLEARED_EXCHANGE_RATE]
      ,[CLEARED_EXCHANGE_RATE_TYPE]
      ,[COMPLETED_PMTS_GROUP_ID]
      ,[COUNTRY]
      ,[COUNTY]
      ,[CREATED_BY]
      ,Cast([CREATION_DATE] as date) as [CREATION_DATE]
      ,[CURRENCY_CODE]
      ,[DESCRIPTION]
      ,[DOC_CATEGORY_CODE]
      ,[DOC_SEQUENCE_ID]
      ,[DOC_SEQUENCE_VALUE]
      ,[EMPLOYEE_ADDRESS_CODE]
      ,[ESCHEATMENT_INVOICE_ID]
      ,[ESCHEATMENT_VENDOR_ID]
      ,[ESCHEATMENT_VENDOR_SITE_ID]
      ,Cast([EXCHANGE_DATE] as date) as [EXCHANGE_DATE]
      ,[EXCHANGE_RATE]
      ,[EXCHANGE_RATE_TYPE]
      ,[EXTERNAL_BANK_ACCOUNT_ID]
      ,Cast([FUTURE_PAY_DUE_DATE] as date) as [FUTURE_PAY_DUE_DATE]
      ,[GLOBAL_ATTRIBUTE1]
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
      ,[GLOBAL_ATTRIBUTE2]
      ,[GLOBAL_ATTRIBUTE20]
      ,[GLOBAL_ATTRIBUTE3]
      ,[GLOBAL_ATTRIBUTE4]
      ,[GLOBAL_ATTRIBUTE5]
      ,[GLOBAL_ATTRIBUTE6]
      ,[GLOBAL_ATTRIBUTE7]
      ,[GLOBAL_ATTRIBUTE8]
      ,[GLOBAL_ATTRIBUTE9]
      ,[GLOBAL_ATTRIBUTE_CATEGORY]
      ,Cast([GLOBAL_ATTRIBUTE_DATE1] as date) as [GLOBAL_ATTRIBUTE_DATE1]
      ,Cast([GLOBAL_ATTRIBUTE_DATE2] as date) as [GLOBAL_ATTRIBUTE_DATE2]
      ,Cast([GLOBAL_ATTRIBUTE_DATE3] as date) as [GLOBAL_ATTRIBUTE_DATE3]
      ,Cast([GLOBAL_ATTRIBUTE_DATE4] as date) as [GLOBAL_ATTRIBUTE_DATE4]
      ,Cast([GLOBAL_ATTRIBUTE_DATE5] as date) as [GLOBAL_ATTRIBUTE_DATE5]
      ,[GLOBAL_ATTRIBUTE_NUMBER1]
      ,[GLOBAL_ATTRIBUTE_NUMBER2]
      ,[GLOBAL_ATTRIBUTE_NUMBER3]
      ,[GLOBAL_ATTRIBUTE_NUMBER4]
      ,[GLOBAL_ATTRIBUTE_NUMBER5]
      ,[IBAN_NUMBER]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LEGAL_ENTITY_ID]
      ,[LOGICAL_GROUP_REFERENCE]
      ,Cast([MATURITY_EXCHANGE_DATE] as date) as [MATURITY_EXCHANGE_DATE]
      ,[MATURITY_EXCHANGE_RATE]
      ,[MATURITY_EXCHANGE_RATE_TYPE]
      ,CAST([MRC_BASE_AMOUNT] as decimal(38, 10)) as [MRC_BASE_AMOUNT]
      ,CAST([MRC_CLEARED_BASE_AMOUNT] as decimal(38, 10)) as [MRC_CLEARED_BASE_AMOUNT]
      ,CAST([MRC_CLEARED_CHARGES_BASE_AMT] as decimal(38, 10)) as [MRC_CLEARED_CHARGES_BASE_AMT]
      ,CAST([MRC_CLEARED_ERROR_BASE_AMOUNT] as decimal(38, 10)) as [MRC_CLEARED_ERROR_BASE_AMOUNT]
      ,Cast([MRC_CLEARED_EXCHANGE_DATE] as date) as [MRC_CLEARED_EXCHANGE_DATE]
      ,[MRC_CLEARED_EXCHANGE_RATE]
      ,[MRC_CLEARED_EXCHANGE_RATE_TYPE]
      ,Cast([MRC_EXCHANGE_DATE] as date) as [MRC_EXCHANGE_DATE]
      ,[MRC_EXCHANGE_RATE]
      ,[MRC_EXCHANGE_RATE_TYPE]
      ,Cast([MRC_MATURITY_EXG_DATE] as date) as [MRC_MATURITY_EXG_DATE]
      ,[MRC_MATURITY_EXG_RATE]
      ,[MRC_MATURITY_EXG_RATE_TYPE]
      ,CAST([MRC_STAMP_DUTY_BASE_AMT] as decimal(38, 10)) as [MRC_STAMP_DUTY_BASE_AMT]
      ,[OBJECT_VERSION_NUMBER]
      ,[ORG_ID]
      ,[PARTY_ID]
      ,[PARTY_SITE_ID]
      ,[PAYMENT_DOCUMENT_ID]
      ,[PAYMENT_ID]
      ,[PAYMENT_INSTRUCTION_ID]
      ,[PAYMENT_INSTRUMENT_ID]
      ,[PAYMENT_METHOD_CODE]
      ,[PAYMENT_METHOD_LOOKUP_CODE]
      ,[PAYMENT_MODE_CODE]
      ,[PAYMENT_PROFILE_ID]
      ,[PAYMENT_TYPE_FLAG]
      ,[PMT_INSTR_BU_ASSIGNMENT_ID]
      ,CAST([PMT_TO_BANK_AMOUNT] as decimal(38, 10)) as [PMT_TO_BANK_AMOUNT]
      ,[PMT_TO_BANK_RATE]
      ,[PMT_TO_BANK_RATE_TYPE]
      ,[POSITIVE_PAY_STATUS_CODE]
      ,[PROVINCE]
      ,[RECONCILIATION_BATCH_ID]
      ,[RECON_FLAG]
      ,[RELATIONSHIP_ID]
      ,[RELEASED_BY]
      ,Cast([RELEASED_DATE] as date) as [RELEASED_DATE]
      ,[REMIT_TO_ADDRESS_ID]
      ,[REMIT_TO_ADDRESS_NAME]
      ,[REMIT_TO_SUPPLIER_ID]
      ,[REMIT_TO_SUPPLIER_NAME]
      ,[REQUEST_ID]
      ,[SETTLEMENT_PRIORITY]
      ,CAST([STAMP_DUTY_AMT] as decimal(38, 10)) as [STAMP_DUTY_AMT]
      ,CAST([STAMP_DUTY_BASE_AMT] as decimal(38, 10)) as [STAMP_DUTY_BASE_AMT]
      ,[STATE]
      ,[STATUS_LOOKUP_CODE]
      ,[STOPPED_BY]
      ,Cast([STOPPED_DATE] as date) as [STOPPED_DATE]
      ,[TRANSFER_PRIORITY]
      ,Cast([TREASURY_PAY_DATE] as date) as [TREASURY_PAY_DATE]
      ,[TREASURY_PAY_NUMBER]
      ,[USSGL_TRANSACTION_CODE]
      ,[USSGL_TRX_CODE_CONTEXT]
      ,[VENDOR_ID]
      ,[VENDOR_NAME]
      ,[VENDOR_SITE_CODE]
      ,[VENDOR_SITE_ID]
      ,[VOID_DATE]
      ,[X_CURR_RATE_TYPE]
      ,[ZIP]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Payment_Details] a,
  (SELECT CHECK_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Payment_Details] GROUP BY CHECK_ID) b
WHERE a.CHECK_ID = b.CHECK_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO




Create View [rpy].[Payment_Details_final_v] as
SELECT a.[ACTUAL_VALUE_DATE]
      ,a.[ADDRESS_LINE1]
      ,a.[ADDRESS_LINE2]
      ,a.[ADDRESS_LINE3]
      ,a.[ADDRESS_LINE4]
      ,a.[ADDRESS_STYLE]
      ,a.[AMOUNT]
      ,a.[ANTICIPATED_VALUE_DATE]
      ,a.[ATTRIBUTE1]
      ,a.[ATTRIBUTE10]
      ,a.[ATTRIBUTE11]
      ,a.[ATTRIBUTE12]
      ,a.[ATTRIBUTE13]
      ,a.[ATTRIBUTE14]
      ,a.[ATTRIBUTE15]
      ,a.[ATTRIBUTE2]
      ,a.[ATTRIBUTE3]
      ,a.[ATTRIBUTE4]
      ,a.[ATTRIBUTE5]
      ,a.[ATTRIBUTE6]
      ,a.[ATTRIBUTE7]
      ,a.[ATTRIBUTE8]
      ,a.[ATTRIBUTE9]
      ,a.[ATTRIBUTE_CATEGORY]
      ,a.[ATTRIBUTE_DATE1]
      ,a.[ATTRIBUTE_DATE2]
      ,a.[ATTRIBUTE_DATE3]
      ,a.[ATTRIBUTE_DATE4]
      ,a.[ATTRIBUTE_DATE5]
      ,a.[ATTRIBUTE_NUMBER1]
      ,a.[ATTRIBUTE_NUMBER2]
      ,a.[ATTRIBUTE_NUMBER3]
      ,a.[ATTRIBUTE_NUMBER4]
      ,a.[ATTRIBUTE_NUMBER5]
      ,a.[BANK_ACCOUNT_NAME]
      ,a.[BANK_ACCOUNT_NUM]
      ,a.[BANK_ACCOUNT_TYPE]
      ,a.[BANK_CHARGE_BEARER]
      ,a.[BANK_NUM]
      ,a.[BASE_AMOUNT]
      ,a.[BEP_RESPONSE_CODE]
      ,a.[BEP_RESPONSE_DATE]
      ,a.[BEP_STATUS]
      ,a.[BEP_TRXN_RESPONSE_ID]
      ,a.[CE_BANK_ACCT_USE_ID]
      ,a.[CHECKRUN_ID]
      ,a.[CHECKRUN_NAME]
      ,a.[CHECK_DATE]
      ,a.[CHECK_FORMAT_ID]
      ,a.[CHECK_ID]
      ,a.[CHECK_NUMBER]
      ,a.[CHECK_STOCK_ID]
      ,a.[CHECK_VOUCHER_NUM]
      ,a.[CITY]
      ,a.[CLEARED_AMOUNT]
      ,a.[CLEARED_BASE_AMOUNT]
      ,a.[CLEARED_CHARGES_AMOUNT]
      ,a.[CLEARED_CHARGES_BASE_AMOUNT]
      ,a.[CLEARED_DATE]
      ,a.[CLEARED_ERROR_AMOUNT]
      ,a.[CLEARED_ERROR_BASE_AMOUNT]
      ,a.[CLEARED_EXCHANGE_DATE]
      ,a.[CLEARED_EXCHANGE_RATE]
      ,a.[CLEARED_EXCHANGE_RATE_TYPE]
      ,a.[COMPLETED_PMTS_GROUP_ID]
      ,a.[COUNTRY]
      ,a.[COUNTY]
      ,a.[CREATED_BY]
      ,a.[CREATION_DATE]
      ,a.[CURRENCY_CODE]
      ,a.[DESCRIPTION]
      ,a.[DOC_CATEGORY_CODE]
      ,a.[DOC_SEQUENCE_ID]
      ,a.[DOC_SEQUENCE_VALUE]
      ,a.[EMPLOYEE_ADDRESS_CODE]
      ,a.[ESCHEATMENT_INVOICE_ID]
      ,a.[ESCHEATMENT_VENDOR_ID]
      ,a.[ESCHEATMENT_VENDOR_SITE_ID]
      ,a.[EXCHANGE_DATE]
      ,a.[EXCHANGE_RATE]
      ,a.[EXCHANGE_RATE_TYPE]
      ,a.[EXTERNAL_BANK_ACCOUNT_ID]
      ,a.[FUTURE_PAY_DUE_DATE]
      ,a.[GLOBAL_ATTRIBUTE1]
      ,a.[GLOBAL_ATTRIBUTE10]
      ,a.[GLOBAL_ATTRIBUTE11]
      ,a.[GLOBAL_ATTRIBUTE12]
      ,a.[GLOBAL_ATTRIBUTE13]
      ,a.[GLOBAL_ATTRIBUTE14]
      ,a.[GLOBAL_ATTRIBUTE15]
      ,a.[GLOBAL_ATTRIBUTE16]
      ,a.[GLOBAL_ATTRIBUTE17]
      ,a.[GLOBAL_ATTRIBUTE18]
      ,a.[GLOBAL_ATTRIBUTE19]
      ,a.[GLOBAL_ATTRIBUTE2]
      ,a.[GLOBAL_ATTRIBUTE20]
      ,a.[GLOBAL_ATTRIBUTE3]
      ,a.[GLOBAL_ATTRIBUTE4]
      ,a.[GLOBAL_ATTRIBUTE5]
      ,a.[GLOBAL_ATTRIBUTE6]
      ,a.[GLOBAL_ATTRIBUTE7]
      ,a.[GLOBAL_ATTRIBUTE8]
      ,a.[GLOBAL_ATTRIBUTE9]
      ,a.[GLOBAL_ATTRIBUTE_CATEGORY]
      ,a.[GLOBAL_ATTRIBUTE_DATE1]
      ,a.[GLOBAL_ATTRIBUTE_DATE2]
      ,a.[GLOBAL_ATTRIBUTE_DATE3]
      ,a.[GLOBAL_ATTRIBUTE_DATE4]
      ,a.[GLOBAL_ATTRIBUTE_DATE5]
      ,a.[GLOBAL_ATTRIBUTE_NUMBER1]
      ,a.[GLOBAL_ATTRIBUTE_NUMBER2]
      ,a.[GLOBAL_ATTRIBUTE_NUMBER3]
      ,a.[GLOBAL_ATTRIBUTE_NUMBER4]
      ,a.[GLOBAL_ATTRIBUTE_NUMBER5]
      ,a.[IBAN_NUMBER]
      ,a.[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,a.[LAST_UPDATE_LOGIN]
      ,a.[LEGAL_ENTITY_ID]
      ,a.[LOGICAL_GROUP_REFERENCE]
      ,a.[MATURITY_EXCHANGE_DATE]
      ,a.[MATURITY_EXCHANGE_RATE]
      ,a.[MATURITY_EXCHANGE_RATE_TYPE]
      ,a.[MRC_BASE_AMOUNT]
      ,a.[MRC_CLEARED_BASE_AMOUNT]
      ,a.[MRC_CLEARED_CHARGES_BASE_AMT]
      ,a.[MRC_CLEARED_ERROR_BASE_AMOUNT]
      ,a.[MRC_CLEARED_EXCHANGE_DATE]
      ,a.[MRC_CLEARED_EXCHANGE_RATE]
      ,a.[MRC_CLEARED_EXCHANGE_RATE_TYPE]
      ,a.[MRC_EXCHANGE_DATE]
      ,a.[MRC_EXCHANGE_RATE]
      ,a.[MRC_EXCHANGE_RATE_TYPE]
      ,a.[MRC_MATURITY_EXG_DATE]
      ,a.[MRC_MATURITY_EXG_RATE]
      ,a.[MRC_MATURITY_EXG_RATE_TYPE]
      ,a.[MRC_STAMP_DUTY_BASE_AMT]
      ,a.[OBJECT_VERSION_NUMBER]
      ,a.[ORG_ID]
      ,a.[PARTY_ID]
      ,a.[PARTY_SITE_ID]
      ,a.[PAYMENT_DOCUMENT_ID]
      ,a.[PAYMENT_ID]
      ,a.[PAYMENT_INSTRUCTION_ID]
      ,a.[PAYMENT_INSTRUMENT_ID]
      ,a.[PAYMENT_METHOD_CODE]
      ,a.[PAYMENT_METHOD_LOOKUP_CODE]
      ,a.[PAYMENT_MODE_CODE]
      ,a.[PAYMENT_PROFILE_ID]
      ,a.[PAYMENT_TYPE_FLAG]
      ,a.[PMT_INSTR_BU_ASSIGNMENT_ID]
      ,a.[PMT_TO_BANK_AMOUNT]
      ,a.[PMT_TO_BANK_RATE]
      ,a.[PMT_TO_BANK_RATE_TYPE]
      ,a.[POSITIVE_PAY_STATUS_CODE]
      ,a.[PROVINCE]
      ,a.[RECONCILIATION_BATCH_ID]
      ,a.[RECON_FLAG]
      ,a.[RELATIONSHIP_ID]
      ,a.[RELEASED_BY]
      ,a.[RELEASED_DATE]
      ,a.[REMIT_TO_ADDRESS_ID]
      ,a.[REMIT_TO_ADDRESS_NAME]
      ,a.[REMIT_TO_SUPPLIER_ID]
      ,a.[REMIT_TO_SUPPLIER_NAME]
      ,a.[REQUEST_ID]
      ,a.[SETTLEMENT_PRIORITY]
      ,a.[STAMP_DUTY_AMT]
      ,a.[STAMP_DUTY_BASE_AMT]
      ,a.[STATE]
      ,a.[STATUS_LOOKUP_CODE]
      ,a.[STOPPED_BY]
      ,a.[STOPPED_DATE]
      ,a.[TRANSFER_PRIORITY]
      ,a.[TREASURY_PAY_DATE]
      ,a.[TREASURY_PAY_NUMBER]
      ,a.[USSGL_TRANSACTION_CODE]
      ,a.[USSGL_TRX_CODE_CONTEXT]
      ,a.[VENDOR_ID]
      ,a.[VENDOR_NAME]
      ,a.[VENDOR_SITE_CODE]
      ,a.[VENDOR_SITE_ID]
      ,a.[VOID_DATE]
      ,a.[X_CURR_RATE_TYPE]
      ,a.[ZIP]
      ,a.[source_name]
      ,a.[sub_source_name]
      ,a.[created_date_time]
	  ,case 
			when a.[CURRENCY_CODE] = e.[FROM_CURRENCY] and e.[CONVERSION_TYPE]='Corporate' 
			then a.[AMOUNT] * e.[CONVERSION_RATE]
	
			when a.[CURRENCY_CODE] = 'USD' and e.[CONVERSION_TYPE]='Corporate' 
			then 1 * a.[AMOUNT]
	
			end as amount_corporate_exch_rate_to_usd

	,case 
			when a.[CURRENCY_CODE] = e.[FROM_CURRENCY] and e.[CONVERSION_TYPE]='300000229387042' 
			then a.[AMOUNT] * e.[CONVERSION_RATE]

			when a.[CURRENCY_CODE] = 'USD' and e.[CONVERSION_TYPE]='300000229387042' 
			then 1 * a.[AMOUNT]

	end as amount_month_end_exch_rate_to_usd
 
FROM [rpy].[Payment_Details_v] a
left outer join [rpy].[Exchange_Rates_Data_v] e	
on e.[CONVERSION_DATE] = a.[CHECK_DATE] and e.[TO_CURRENCY] = 'USD'
  

GO




CREATE NONCLUSTERED INDEX [idx_Payment_Details_CHECK_ID_LAST_UPDATE_DATE] ON [rpy].[Payment_Details]
(
	[CHECK_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO



