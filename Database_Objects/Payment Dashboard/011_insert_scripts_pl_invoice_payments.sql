insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_payments','NCSA','pl_invoice_payments',NULL,'1','aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payments','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-11 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_Payments',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Payments',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_INVOICE_PAYMENTS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payments','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_Payments_stage]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
ACCTS_PAY_CODE_COMBINATION_ID	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_INV_CURR	[varchar](500) NULL,
ANNUAL_PERCENTAGE_RATE	[varchar](500) NULL,
APR_ASSIGNMENT_ID	[varchar](500) NULL,
ASSETS_ADDITION_FLAG	[varchar](500) NULL,
ASSET_CODE_COMBINATION_ID	[varchar](500) NULL,
ASSIGNMENT_TYPE_CODE	[varchar](500) NULL,
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
BANK_ACCOUNT_NUM	[varchar](500) NULL,
BANK_ACCOUNT_TYPE	[varchar](500) NULL,
BANK_NUM	[varchar](500) NULL,
CAMPAIGN_NAME	[varchar](500) NULL,
CHECK_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DAYS_ACCELERATED	[varchar](500) NULL,
DISCOUNT_LOST	[varchar](500) NULL,
DISCOUNT_LOST_INV_CURR	[varchar](500) NULL,
DISCOUNT_TAKEN	[varchar](500) NULL,
DISCOUNT_TAKEN_INV_CURR	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
GAIN_CODE_COMBINATION_ID	[varchar](500) NULL,
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
INVOICE_BASE_AMOUNT	[varchar](500) NULL,
INVOICE_CURRENCY_CODE	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_PAYMENT_ID	[varchar](500) NULL,
INVOICE_PAYMENT_TYPE	[varchar](500) NULL,
INVOICING_PARTY_ID	[varchar](500) NULL,
INVOICING_PARTY_SITE_ID	[varchar](500) NULL,
INVOICING_VENDOR_SITE_ID	[varchar](500) NULL,
INV_ORG_ID	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LOSS_CODE_COMBINATION_ID	[varchar](500) NULL,
MRC_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_FUTURE_PAY_POSTED_FLAG	[varchar](4000) NULL,
MRC_GAIN_CODE_COMBINATION_ID	[varchar](4000) NULL,
MRC_INVOICE_BASE_AMOUNT	[varchar](4000) NULL,
MRC_LOSS_CODE_COMBINATION_ID	[varchar](4000) NULL,
MRC_PAYMENT_BASE_AMOUNT	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PAYMENT_BASE_AMOUNT	[varchar](500) NULL,
PAYMENT_CURRENCY_CODE	[varchar](500) NULL,
PAYMENT_NUM	[varchar](500) NULL,
PERIOD_NAME	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
REVERSAL_FLAG	[varchar](500) NULL,
REVERSAL_INV_PMT_ID	[varchar](500) NULL,
SET_OF_BOOKS_ID	[varchar](500) NULL,
X_CURR_RATE	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Invoice_Payments]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
ACCTS_PAY_CODE_COMBINATION_ID	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_INV_CURR	[varchar](500) NULL,
ANNUAL_PERCENTAGE_RATE	[varchar](500) NULL,
APR_ASSIGNMENT_ID	[varchar](500) NULL,
ASSETS_ADDITION_FLAG	[varchar](500) NULL,
ASSET_CODE_COMBINATION_ID	[varchar](500) NULL,
ASSIGNMENT_TYPE_CODE	[varchar](500) NULL,
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
BANK_ACCOUNT_NUM	[varchar](500) NULL,
BANK_ACCOUNT_TYPE	[varchar](500) NULL,
BANK_NUM	[varchar](500) NULL,
CAMPAIGN_NAME	[varchar](500) NULL,
CHECK_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DAYS_ACCELERATED	[varchar](500) NULL,
DISCOUNT_LOST	[varchar](500) NULL,
DISCOUNT_LOST_INV_CURR	[varchar](500) NULL,
DISCOUNT_TAKEN	[varchar](500) NULL,
DISCOUNT_TAKEN_INV_CURR	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
GAIN_CODE_COMBINATION_ID	[varchar](500) NULL,
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
INVOICE_BASE_AMOUNT	[varchar](500) NULL,
INVOICE_CURRENCY_CODE	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_PAYMENT_ID	[varchar](500) NULL,
INVOICE_PAYMENT_TYPE	[varchar](500) NULL,
INVOICING_PARTY_ID	[varchar](500) NULL,
INVOICING_PARTY_SITE_ID	[varchar](500) NULL,
INVOICING_VENDOR_SITE_ID	[varchar](500) NULL,
INV_ORG_ID	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LOSS_CODE_COMBINATION_ID	[varchar](500) NULL,
MRC_EXCHANGE_DATE	[varchar](4000) NULL,
MRC_EXCHANGE_RATE_TYPE	[varchar](4000) NULL,
MRC_FUTURE_PAY_POSTED_FLAG	[varchar](4000) NULL,
MRC_GAIN_CODE_COMBINATION_ID	[varchar](4000) NULL,
MRC_INVOICE_BASE_AMOUNT	[varchar](4000) NULL,
MRC_LOSS_CODE_COMBINATION_ID	[varchar](4000) NULL,
MRC_PAYMENT_BASE_AMOUNT	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PAYMENT_BASE_AMOUNT	[varchar](500) NULL,
PAYMENT_CURRENCY_CODE	[varchar](500) NULL,
PAYMENT_NUM	[varchar](500) NULL,
PERIOD_NAME	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
REVERSAL_FLAG	[varchar](500) NULL,
REVERSAL_INV_PMT_ID	[varchar](500) NULL,
SET_OF_BOOKS_ID	[varchar](500) NULL,
X_CURR_RATE	[varchar](500) NULL,
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



Create View [rpy].[Invoice_Payments_v] as
SELECT FORMAT(Cast([ACCOUNTING_DATE] as date), 'MM-dd-yyyy') as [ACCOUNTING_DATE]
      ,[ACCOUNTING_EVENT_ID]
      ,[ACCTS_PAY_CODE_COMBINATION_ID]
      ,CAST([AMOUNT] as decimal(38, 10)) as [AMOUNT]
      ,CAST([AMOUNT_INV_CURR] as decimal(38, 10)) as [AMOUNT_INV_CURR]
      ,[ANNUAL_PERCENTAGE_RATE]
      ,[APR_ASSIGNMENT_ID]
      ,[ASSETS_ADDITION_FLAG]
      ,[ASSET_CODE_COMBINATION_ID]
      ,[ASSIGNMENT_TYPE_CODE]
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
      ,[BANK_ACCOUNT_NUM]
      ,[BANK_ACCOUNT_TYPE]
      ,[BANK_NUM]
      ,[CAMPAIGN_NAME]
      ,[CHECK_ID]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[DAYS_ACCELERATED]
      ,CAST([DISCOUNT_LOST] as decimal(38, 10)) as [DISCOUNT_LOST]
      ,CAST([DISCOUNT_LOST_INV_CURR] as decimal(38, 10)) as [DISCOUNT_LOST_INV_CURR]
      ,CAST([DISCOUNT_TAKEN] as decimal(38, 10)) as [DISCOUNT_TAKEN]
      ,CAST([DISCOUNT_TAKEN_INV_CURR] as decimal(38, 10)) as [DISCOUNT_TAKEN_INV_CURR]
      ,FORMAT(Cast([EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [EXCHANGE_DATE]
      ,[EXCHANGE_RATE]
      ,[EXCHANGE_RATE_TYPE]
      ,[EXTERNAL_BANK_ACCOUNT_ID]
      ,[GAIN_CODE_COMBINATION_ID]
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
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE1] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE1]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE2] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE2]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE3] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE3]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE4] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE4]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE5] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE5]
      ,[GLOBAL_ATTRIBUTE_NUMBER1]
      ,[GLOBAL_ATTRIBUTE_NUMBER2]
      ,[GLOBAL_ATTRIBUTE_NUMBER3]
      ,[GLOBAL_ATTRIBUTE_NUMBER4]
      ,[GLOBAL_ATTRIBUTE_NUMBER5]
      ,[IBAN_NUMBER]
      ,CAST([INVOICE_BASE_AMOUNT] as decimal(38, 10)) as [INVOICE_BASE_AMOUNT]
      ,[INVOICE_CURRENCY_CODE]
      ,[INVOICE_ID]
      ,a.[INVOICE_PAYMENT_ID]
      ,[INVOICE_PAYMENT_TYPE]
      ,[INVOICING_PARTY_ID]
      ,[INVOICING_PARTY_SITE_ID]
      ,[INVOICING_VENDOR_SITE_ID]
      ,[INV_ORG_ID]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LOSS_CODE_COMBINATION_ID]
      ,FORMAT(Cast([MRC_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [MRC_EXCHANGE_DATE]
      ,[MRC_EXCHANGE_RATE_TYPE]
      ,[MRC_FUTURE_PAY_POSTED_FLAG]
      ,[MRC_GAIN_CODE_COMBINATION_ID]
      ,CAST([MRC_INVOICE_BASE_AMOUNT] as decimal(38, 10)) as [MRC_INVOICE_BASE_AMOUNT]
      ,[MRC_LOSS_CODE_COMBINATION_ID]
      ,CAST([MRC_PAYMENT_BASE_AMOUNT] as decimal(38, 10)) as [MRC_PAYMENT_BASE_AMOUNT]
      ,[OBJECT_VERSION_NUMBER]
      ,[ORG_ID]
      ,CAST([PAYMENT_BASE_AMOUNT] as decimal(38, 10)) as [PAYMENT_BASE_AMOUNT]
      ,[PAYMENT_CURRENCY_CODE]
      ,[PAYMENT_NUM]
      ,[PERIOD_NAME]
      ,[POSTED_FLAG]
      ,[REMIT_TO_ADDRESS_ID]
      ,[REMIT_TO_ADDRESS_NAME]
      ,[REMIT_TO_SUPPLIER_ID]
      ,[REMIT_TO_SUPPLIER_NAME]
      ,[REVERSAL_FLAG]
      ,[REVERSAL_INV_PMT_ID]
      ,[SET_OF_BOOKS_ID]
      ,[X_CURR_RATE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Invoice_Payments] a,
  (SELECT INVOICE_PAYMENT_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_Payments] GROUP BY INVOICE_PAYMENT_ID) b
WHERE a.INVOICE_PAYMENT_ID = b.INVOICE_PAYMENT_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO


Create View [rpy].[Invoice_Payments_final_v] as
SELECT a.[ACCOUNTING_DATE]
      ,a.[ACCOUNTING_EVENT_ID]
      ,a.[ACCTS_PAY_CODE_COMBINATION_ID]
      ,a.[AMOUNT]
      ,a.[AMOUNT_INV_CURR]
      ,a.[ANNUAL_PERCENTAGE_RATE]
      ,a.[APR_ASSIGNMENT_ID]
      ,a.[ASSETS_ADDITION_FLAG]
      ,a.[ASSET_CODE_COMBINATION_ID]
      ,a.[ASSIGNMENT_TYPE_CODE]
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
      ,a.[BANK_ACCOUNT_NUM]
      ,a.[BANK_ACCOUNT_TYPE]
      ,a.[BANK_NUM]
      ,a.[CAMPAIGN_NAME]
      ,a.[CHECK_ID]
      ,a.[CREATED_BY]
      ,a.[CREATION_DATE]
      ,a.[DAYS_ACCELERATED]
      ,a.[DISCOUNT_LOST]
      ,a.[DISCOUNT_LOST_INV_CURR]
      ,a.[DISCOUNT_TAKEN]
      ,a.[DISCOUNT_TAKEN_INV_CURR]
      ,a.[EXCHANGE_DATE]
      ,a.[EXCHANGE_RATE]
      ,a.[EXCHANGE_RATE_TYPE]
      ,a.[EXTERNAL_BANK_ACCOUNT_ID]
      ,a.[GAIN_CODE_COMBINATION_ID]
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
      ,a.[INVOICE_BASE_AMOUNT]
      ,a.[INVOICE_CURRENCY_CODE]
      ,a.[INVOICE_ID]
      ,a.[INVOICE_PAYMENT_ID]
      ,a.[INVOICE_PAYMENT_TYPE]
      ,a.[INVOICING_PARTY_ID]
      ,a.[INVOICING_PARTY_SITE_ID]
      ,a.[INVOICING_VENDOR_SITE_ID]
      ,a.[INV_ORG_ID]
      ,a.[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,a.[LAST_UPDATE_LOGIN]
      ,a.[LOSS_CODE_COMBINATION_ID]
      ,a.[MRC_EXCHANGE_DATE]
      ,a.[MRC_EXCHANGE_RATE_TYPE]
      ,a.[MRC_FUTURE_PAY_POSTED_FLAG]
      ,a.[MRC_GAIN_CODE_COMBINATION_ID]
      ,a.[MRC_INVOICE_BASE_AMOUNT]
      ,a.[MRC_LOSS_CODE_COMBINATION_ID]
      ,a.[MRC_PAYMENT_BASE_AMOUNT]
      ,a.[OBJECT_VERSION_NUMBER]
      ,a.[ORG_ID]
      ,a.[PAYMENT_BASE_AMOUNT]
      ,a.[PAYMENT_CURRENCY_CODE]
      ,a.[PAYMENT_NUM]
      ,a.[PERIOD_NAME]
      ,a.[POSTED_FLAG]
      ,a.[REMIT_TO_ADDRESS_ID]
      ,a.[REMIT_TO_ADDRESS_NAME]
      ,a.[REMIT_TO_SUPPLIER_ID]
      ,a.[REMIT_TO_SUPPLIER_NAME]
      ,a.[REVERSAL_FLAG]
      ,a.[REVERSAL_INV_PMT_ID]
      ,a.[SET_OF_BOOKS_ID]
      ,a.[X_CURR_RATE]
      ,a.[source_name]
      ,a.[sub_source_name]
      ,a.[created_date_time]
	,case 
		when a.[PAYMENT_CURRENCY_CODE] = e.[FROM_CURRENCY] and e.[CONVERSION_TYPE]='Corporate' 
		then a.[AMOUNT_INV_CURR] * e.[CONVERSION_RATE]

		when a.[PAYMENT_CURRENCY_CODE] = 'USD' and e.[CONVERSION_TYPE]='Corporate' 
		then 1 * a.[AMOUNT_INV_CURR]

		end as amount_corporate_exch_rate_to_usd

	,case 
			when a.[PAYMENT_CURRENCY_CODE] = e.[FROM_CURRENCY] and e.[CONVERSION_TYPE]='300000229387042' 
			then a.[AMOUNT_INV_CURR] * e.[CONVERSION_RATE]

			when a.[PAYMENT_CURRENCY_CODE] = 'USD' and e.[CONVERSION_TYPE]='300000229387042' 
			then 1 * a.[AMOUNT_INV_CURR]

	end as amount_month_end_exch_rate_to_usd
 
    FROM [rpy].[Invoice_Payments_v] a
	left outer join [rpy].[Payment_Details_v] p	
	on a.[CHECK_ID]=p.[CHECK_ID]
	left outer join [rpy].[Exchange_Rates_Data_v] e	
	on e.[CONVERSION_DATE] = (select p.[CHECK_DATE] WHERE p.[CHECK_ID] = a.[CHECK_ID]) and e.[TO_CURRENCY] = 'USD'


GO



CREATE NONCLUSTERED INDEX [idx_Invoice_Payments_INVOICE_PAYMENT_ID_LAST_UPDATE_DATE] ON [rpy].[Invoice_Payments]
(
	[INVOICE_PAYMENT_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO



