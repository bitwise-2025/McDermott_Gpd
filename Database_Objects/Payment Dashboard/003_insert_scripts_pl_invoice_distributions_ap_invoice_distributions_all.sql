insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_distributions_ap_invoice_distributions_all','NCSA','pl_invoice_distributions_ap_invoice_distributions_all',NULL,'1','aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-04 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO


--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_distributions_ap_invoice_distributions_all',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Distribution',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_INVOICE_DISTRIBUTIONS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','03',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_distributions_ap_invoice_distributions_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_distributions_ap_invoice_distributions_all_stage]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
ADJUSTMENT_REASON	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
AMOUNT_AT_PREPAY_XRATE	[varchar](500) NULL,
AMOUNT_VARIANCE	[varchar](500) NULL,
ASSETS_ADDITION_FLAG	[varchar](500) NULL,
ASSETS_TRACKING_FLAG	[varchar](500) NULL,
ASSET_BOOK_TYPE_CODE	[varchar](500) NULL,
ASSET_CATEGORY_ID	[varchar](500) NULL,
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
AWARD_ID	[varchar](500) NULL,
AWT_FLAG	[varchar](500) NULL,
AWT_GROSS_AMOUNT	[varchar](500) NULL,
AWT_GROUP_ID	[varchar](500) NULL,
AWT_INVOICE_ID	[varchar](500) NULL,
AWT_INVOICE_PAYMENT_ID	[varchar](500) NULL,
AWT_ORIGIN_GROUP_ID	[varchar](500) NULL,
AWT_RELATED_ID	[varchar](500) NULL,
AWT_TAX_RATE_ID	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BASE_AMOUNT_VARIANCE	[varchar](500) NULL,
BASE_QUANTITY_VARIANCE	[varchar](500) NULL,
BATCH_ID	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
BUDGET_DATE	[varchar](500) NULL,
CANCELLATION_FLAG	[varchar](500) NULL,
CASH_BASIS_FINAL_APP_ROUNDING	[varchar](500) NULL,
CC_REVERSAL_FLAG	[varchar](500) NULL,
CHARGE_APPLICABLE_TO_DIST_ID	[varchar](500) NULL,
COMPANY_PREPAID_INVOICE_ID	[varchar](500) NULL,
CONSUMPTION_ADVICE_HEADER_ID	[varchar](500) NULL,
CONSUMPTION_ADVICE_LINE_ID	[varchar](500) NULL,
CORRECTED_INVOICE_DIST_ID	[varchar](500) NULL,
CORRECTED_QUANTITY	[varchar](500) NULL,
COUNTRY_OF_SUPPLY	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
CREDIT_CARD_TRX_ID	[varchar](500) NULL,
DAILY_AMOUNT	[varchar](500) NULL,
DATA_SET_ID	[varchar](500) NULL,
DEF_ACCTG_ACCRUAL_CCID	[varchar](500) NULL,
DEF_ACCTG_END_DATE	[varchar](500) NULL,
DEF_ACCTG_START_DATE	[varchar](500) NULL,
DESCRIPTION	[varchar](500) NULL,
DETAIL_TAX_DIST_ID	[varchar](500) NULL,
DETAIL_TAX_LINE_ID	[varchar](500) NULL,
DISTRIBUTION_CLASS	[varchar](500) NULL,
DISTRIBUTION_LINE_NUMBER	[varchar](500) NULL,
DIST_CODE_COMBINATION_ID	[varchar](500) NULL,
DIST_MATCH_TYPE	[varchar](500) NULL,
ENCUMBERED_FLAG	[varchar](500) NULL,
END_EXPENSE_DATE	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXPENDITURE_ITEM_DATE	[varchar](500) NULL,
EXPENDITURE_ORGANIZATION_ID	[varchar](500) NULL,
EXPENDITURE_TYPE	[varchar](500) NULL,
EXPENSE_GROUP	[varchar](500) NULL,
EXTRA_PO_ERV	[varchar](500) NULL,
FINAL_APPLICATION_ROUNDING	[varchar](500) NULL,
FINAL_MATCH_FLAG	[varchar](500) NULL,
FINAL_PAYMENT_ROUNDING	[varchar](500) NULL,
FINAL_RELEASE_ROUNDING	[varchar](500) NULL,
FULLY_PAID_ACCTD_FLAG	[varchar](500) NULL,
FUNDS_STATUS	[varchar](500) NULL,
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
GMS_BURDENABLE_RAW_COST	[varchar](500) NULL,
HISTORICAL_FLAG	[varchar](500) NULL,
INCOME_TAX_REGION	[varchar](500) NULL,
INTENDED_USE	[varchar](500) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](500) NULL,
INVENTORY_TRANSFER_STATUS	[varchar](500) NULL,
INVOICE_DISTRIBUTION_ID	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_INCLUDES_PREPAY_FLAG	[varchar](500) NULL,
INVOICE_LINE_NUMBER	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
JUSTIFICATION	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LINE_TYPE_LOOKUP_CODE	[varchar](500) NULL,
MATCHED_UOM_LOOKUP_CODE	[varchar](500) NULL,
MATCH_STATUS_FLAG	[varchar](500) NULL,
MERCHANT_DOCUMENT_NUMBER	[varchar](500) NULL,
MERCHANT_NAME	[varchar](500) NULL,
MERCHANT_REFERENCE	[varchar](500) NULL,
MERCHANT_TAXPAYER_ID	[varchar](500) NULL,
MERCHANT_TAX_REG_NUMBER	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
OLD_DISTRIBUTION_ID	[varchar](500) NULL,
OLD_DIST_LINE_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PARENT_INVOICE_ID	[varchar](500) NULL,
PARENT_REVERSAL_ID	[varchar](500) NULL,
PA_ADDITION_FLAG	[varchar](500) NULL,
PA_CMT_XFACE_FLAG	[varchar](500) NULL,
PA_QUANTITY	[varchar](500) NULL,
PERIOD_NAME	[varchar](500) NULL,
PJC_BILLABLE_FLAG	[varchar](500) NULL,
PJC_CAPITALIZABLE_FLAG	[varchar](500) NULL,
PJC_CONTEXT_CATEGORY	[varchar](500) NULL,
PJC_CONTRACT_ID	[varchar](500) NULL,
PJC_CONTRACT_LINE_ID	[varchar](500) NULL,
PJC_EXPENDITURE_ITEM_DATE	[varchar](500) NULL,
PJC_EXPENDITURE_TYPE_ID	[varchar](500) NULL,
PJC_FUNDING_ALLOCATION_ID	[varchar](500) NULL,
PJC_ORGANIZATION_ID	[varchar](500) NULL,
PJC_PROJECT_ID	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE1	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE10	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE2	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE3	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE4	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE5	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE6	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE7	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE8	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE9	[varchar](500) NULL,
PJC_TASK_ID	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE1	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE10	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE2	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE3	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE4	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE5	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE6	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE7	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE8	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE9	[varchar](500) NULL,
PJC_WORK_TYPE_ID	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
PO_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_AMOUNT_REMAINING	[varchar](500) NULL,
PREPAY_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_TAX_DIFF_AMOUNT	[varchar](500) NULL,
PRODUCT_TABLE	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
PROJECT_ID	[varchar](500) NULL,
QUANTITY_INVOICED	[varchar](500) NULL,
QUANTITY_VARIANCE	[varchar](500) NULL,
RCV_CHARGE_ADDITION_FLAG	[varchar](500) NULL,
RCV_TRANSACTION_ID	[varchar](500) NULL,
RECEIPT_CONVERSION_RATE	[varchar](500) NULL,
RECEIPT_CURRENCY_AMOUNT	[varchar](500) NULL,
RECEIPT_CURRENCY_CODE	[varchar](500) NULL,
RECEIPT_MISSING_FLAG	[varchar](500) NULL,
RECEIPT_REQUIRED_FLAG	[varchar](500) NULL,
RECEIPT_VERIFIED_FLAG	[varchar](500) NULL,
RECOVERY_RATE_CODE	[varchar](500) NULL,
RECOVERY_RATE_ID	[varchar](500) NULL,
RECOVERY_RATE_NAME	[varchar](500) NULL,
RECOVERY_TYPE_CODE	[varchar](500) NULL,
RECURRING_PAYMENT_ID	[varchar](500) NULL,
REC_NREC_RATE	[varchar](500) NULL,
REFERENCE_1	[varchar](500) NULL,
REFERENCE_2	[varchar](500) NULL,
REFERENCE_KEY1	[varchar](500) NULL,
REFERENCE_KEY2	[varchar](500) NULL,
REFERENCE_KEY3	[varchar](500) NULL,
REFERENCE_KEY4	[varchar](500) NULL,
REFERENCE_KEY5	[varchar](500) NULL,
RELATED_ID	[varchar](500) NULL,
RELATED_RETAINAGE_DIST_ID	[varchar](500) NULL,
RELEASE_INV_DIST_DERIVED_FROM	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
RETAINED_AMOUNT_REMAINING	[varchar](500) NULL,
RETAINED_INVOICE_DIST_ID	[varchar](500) NULL,
REVERSAL_FLAG	[varchar](500) NULL,
ROOT_DISTRIBUTION_ID	[varchar](500) NULL,
ROUNDING_AMT	[varchar](500) NULL,
SET_OF_BOOKS_ID	[varchar](500) NULL,
START_EXPENSE_DATE	[varchar](500) NULL,
STAT_AMOUNT	[varchar](500) NULL,
SUMMARY_TAX_LINE_ID	[varchar](500) NULL,
TASK_ID	[varchar](500) NULL,
TAXABLE_AMOUNT	[varchar](500) NULL,
TAXABLE_BASE_AMOUNT	[varchar](500) NULL,
TAX_ALREADY_DISTRIBUTED_FLAG	[varchar](500) NULL,
TAX_CODE_ID	[varchar](500) NULL,
TAX_RECOVERABLE_FLAG	[varchar](500) NULL,
TOTAL_DIST_AMOUNT	[varchar](500) NULL,
TOTAL_DIST_BASE_AMOUNT	[varchar](500) NULL,
TYPE_1099	[varchar](500) NULL,
UNIT_PRICE	[varchar](500) NULL,
UPGRADE_BASE_POSTED_AMT	[varchar](500) NULL,
UPGRADE_POSTED_AMT	[varchar](500) NULL,
WEB_PARAMETER_ID	[varchar](500) NULL,
WITHHOLDING_TAX_CODE_ID	[varchar](500) NULL,
XINV_PARENT_REVERSAL_ID	[varchar](500) NULL,
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





CREATE TABLE [rpy].[Invoice_distributions_ap_invoice_distributions_all]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
ADJUSTMENT_REASON	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
AMOUNT_AT_PREPAY_XRATE	[varchar](500) NULL,
AMOUNT_VARIANCE	[varchar](500) NULL,
ASSETS_ADDITION_FLAG	[varchar](500) NULL,
ASSETS_TRACKING_FLAG	[varchar](500) NULL,
ASSET_BOOK_TYPE_CODE	[varchar](500) NULL,
ASSET_CATEGORY_ID	[varchar](500) NULL,
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
AWARD_ID	[varchar](500) NULL,
AWT_FLAG	[varchar](500) NULL,
AWT_GROSS_AMOUNT	[varchar](500) NULL,
AWT_GROUP_ID	[varchar](500) NULL,
AWT_INVOICE_ID	[varchar](500) NULL,
AWT_INVOICE_PAYMENT_ID	[varchar](500) NULL,
AWT_ORIGIN_GROUP_ID	[varchar](500) NULL,
AWT_RELATED_ID	[varchar](500) NULL,
AWT_TAX_RATE_ID	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BASE_AMOUNT_VARIANCE	[varchar](500) NULL,
BASE_QUANTITY_VARIANCE	[varchar](500) NULL,
BATCH_ID	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
BUDGET_DATE	[varchar](500) NULL,
CANCELLATION_FLAG	[varchar](500) NULL,
CASH_BASIS_FINAL_APP_ROUNDING	[varchar](500) NULL,
CC_REVERSAL_FLAG	[varchar](500) NULL,
CHARGE_APPLICABLE_TO_DIST_ID	[varchar](500) NULL,
COMPANY_PREPAID_INVOICE_ID	[varchar](500) NULL,
CONSUMPTION_ADVICE_HEADER_ID	[varchar](500) NULL,
CONSUMPTION_ADVICE_LINE_ID	[varchar](500) NULL,
CORRECTED_INVOICE_DIST_ID	[varchar](500) NULL,
CORRECTED_QUANTITY	[varchar](500) NULL,
COUNTRY_OF_SUPPLY	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
CREDIT_CARD_TRX_ID	[varchar](500) NULL,
DAILY_AMOUNT	[varchar](500) NULL,
DATA_SET_ID	[varchar](500) NULL,
DEF_ACCTG_ACCRUAL_CCID	[varchar](500) NULL,
DEF_ACCTG_END_DATE	[varchar](500) NULL,
DEF_ACCTG_START_DATE	[varchar](500) NULL,
DESCRIPTION	[varchar](500) NULL,
DETAIL_TAX_DIST_ID	[varchar](500) NULL,
DETAIL_TAX_LINE_ID	[varchar](500) NULL,
DISTRIBUTION_CLASS	[varchar](500) NULL,
DISTRIBUTION_LINE_NUMBER	[varchar](500) NULL,
DIST_CODE_COMBINATION_ID	[varchar](500) NULL,
DIST_MATCH_TYPE	[varchar](500) NULL,
ENCUMBERED_FLAG	[varchar](500) NULL,
END_EXPENSE_DATE	[varchar](500) NULL,
EXCHANGE_DATE	[varchar](500) NULL,
EXCHANGE_RATE	[varchar](500) NULL,
EXCHANGE_RATE_TYPE	[varchar](500) NULL,
EXPENDITURE_ITEM_DATE	[varchar](500) NULL,
EXPENDITURE_ORGANIZATION_ID	[varchar](500) NULL,
EXPENDITURE_TYPE	[varchar](500) NULL,
EXPENSE_GROUP	[varchar](500) NULL,
EXTRA_PO_ERV	[varchar](500) NULL,
FINAL_APPLICATION_ROUNDING	[varchar](500) NULL,
FINAL_MATCH_FLAG	[varchar](500) NULL,
FINAL_PAYMENT_ROUNDING	[varchar](500) NULL,
FINAL_RELEASE_ROUNDING	[varchar](500) NULL,
FULLY_PAID_ACCTD_FLAG	[varchar](500) NULL,
FUNDS_STATUS	[varchar](500) NULL,
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
GMS_BURDENABLE_RAW_COST	[varchar](500) NULL,
HISTORICAL_FLAG	[varchar](500) NULL,
INCOME_TAX_REGION	[varchar](500) NULL,
INTENDED_USE	[varchar](500) NULL,
INTENDED_USE_CLASSIF_ID	[varchar](500) NULL,
INVENTORY_TRANSFER_STATUS	[varchar](500) NULL,
INVOICE_DISTRIBUTION_ID	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_INCLUDES_PREPAY_FLAG	[varchar](500) NULL,
INVOICE_LINE_NUMBER	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
JUSTIFICATION	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LINE_TYPE_LOOKUP_CODE	[varchar](500) NULL,
MATCHED_UOM_LOOKUP_CODE	[varchar](500) NULL,
MATCH_STATUS_FLAG	[varchar](500) NULL,
MERCHANT_DOCUMENT_NUMBER	[varchar](500) NULL,
MERCHANT_NAME	[varchar](500) NULL,
MERCHANT_REFERENCE	[varchar](500) NULL,
MERCHANT_TAXPAYER_ID	[varchar](500) NULL,
MERCHANT_TAX_REG_NUMBER	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
OLD_DISTRIBUTION_ID	[varchar](500) NULL,
OLD_DIST_LINE_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PARENT_INVOICE_ID	[varchar](500) NULL,
PARENT_REVERSAL_ID	[varchar](500) NULL,
PA_ADDITION_FLAG	[varchar](500) NULL,
PA_CMT_XFACE_FLAG	[varchar](500) NULL,
PA_QUANTITY	[varchar](500) NULL,
PERIOD_NAME	[varchar](500) NULL,
PJC_BILLABLE_FLAG	[varchar](500) NULL,
PJC_CAPITALIZABLE_FLAG	[varchar](500) NULL,
PJC_CONTEXT_CATEGORY	[varchar](500) NULL,
PJC_CONTRACT_ID	[varchar](500) NULL,
PJC_CONTRACT_LINE_ID	[varchar](500) NULL,
PJC_EXPENDITURE_ITEM_DATE	[varchar](500) NULL,
PJC_EXPENDITURE_TYPE_ID	[varchar](500) NULL,
PJC_FUNDING_ALLOCATION_ID	[varchar](500) NULL,
PJC_ORGANIZATION_ID	[varchar](500) NULL,
PJC_PROJECT_ID	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE1	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE10	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE2	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE3	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE4	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE5	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE6	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE7	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE8	[varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE9	[varchar](500) NULL,
PJC_TASK_ID	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE1	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE10	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE2	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE3	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE4	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE5	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE6	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE7	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE8	[varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE9	[varchar](500) NULL,
PJC_WORK_TYPE_ID	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
PO_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_AMOUNT_REMAINING	[varchar](500) NULL,
PREPAY_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_TAX_DIFF_AMOUNT	[varchar](500) NULL,
PRODUCT_TABLE	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
PROJECT_ID	[varchar](500) NULL,
QUANTITY_INVOICED	[varchar](500) NULL,
QUANTITY_VARIANCE	[varchar](500) NULL,
RCV_CHARGE_ADDITION_FLAG	[varchar](500) NULL,
RCV_TRANSACTION_ID	[varchar](500) NULL,
RECEIPT_CONVERSION_RATE	[varchar](500) NULL,
RECEIPT_CURRENCY_AMOUNT	[varchar](500) NULL,
RECEIPT_CURRENCY_CODE	[varchar](500) NULL,
RECEIPT_MISSING_FLAG	[varchar](500) NULL,
RECEIPT_REQUIRED_FLAG	[varchar](500) NULL,
RECEIPT_VERIFIED_FLAG	[varchar](500) NULL,
RECOVERY_RATE_CODE	[varchar](500) NULL,
RECOVERY_RATE_ID	[varchar](500) NULL,
RECOVERY_RATE_NAME	[varchar](500) NULL,
RECOVERY_TYPE_CODE	[varchar](500) NULL,
RECURRING_PAYMENT_ID	[varchar](500) NULL,
REC_NREC_RATE	[varchar](500) NULL,
REFERENCE_1	[varchar](500) NULL,
REFERENCE_2	[varchar](500) NULL,
REFERENCE_KEY1	[varchar](500) NULL,
REFERENCE_KEY2	[varchar](500) NULL,
REFERENCE_KEY3	[varchar](500) NULL,
REFERENCE_KEY4	[varchar](500) NULL,
REFERENCE_KEY5	[varchar](500) NULL,
RELATED_ID	[varchar](500) NULL,
RELATED_RETAINAGE_DIST_ID	[varchar](500) NULL,
RELEASE_INV_DIST_DERIVED_FROM	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
RETAINED_AMOUNT_REMAINING	[varchar](500) NULL,
RETAINED_INVOICE_DIST_ID	[varchar](500) NULL,
REVERSAL_FLAG	[varchar](500) NULL,
ROOT_DISTRIBUTION_ID	[varchar](500) NULL,
ROUNDING_AMT	[varchar](500) NULL,
SET_OF_BOOKS_ID	[varchar](500) NULL,
START_EXPENSE_DATE	[varchar](500) NULL,
STAT_AMOUNT	[varchar](500) NULL,
SUMMARY_TAX_LINE_ID	[varchar](500) NULL,
TASK_ID	[varchar](500) NULL,
TAXABLE_AMOUNT	[varchar](500) NULL,
TAXABLE_BASE_AMOUNT	[varchar](500) NULL,
TAX_ALREADY_DISTRIBUTED_FLAG	[varchar](500) NULL,
TAX_CODE_ID	[varchar](500) NULL,
TAX_RECOVERABLE_FLAG	[varchar](500) NULL,
TOTAL_DIST_AMOUNT	[varchar](500) NULL,
TOTAL_DIST_BASE_AMOUNT	[varchar](500) NULL,
TYPE_1099	[varchar](500) NULL,
UNIT_PRICE	[varchar](500) NULL,
UPGRADE_BASE_POSTED_AMT	[varchar](500) NULL,
UPGRADE_POSTED_AMT	[varchar](500) NULL,
WEB_PARAMETER_ID	[varchar](500) NULL,
WITHHOLDING_TAX_CODE_ID	[varchar](500) NULL,
XINV_PARENT_REVERSAL_ID	[varchar](500) NULL,
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



Create View [rpy].[Invoice_distributions_ap_invoice_distributions_all_v] as
SELECT FORMAT(Cast([ACCOUNTING_DATE] as date), 'MM-dd-yyyy') as [ACCOUNTING_DATE]
      ,[ACCOUNTING_EVENT_ID]
      ,[ADJUSTMENT_REASON]
      ,CAST([AMOUNT] as decimal(38, 10)) as [AMOUNT]
      ,CAST([AMOUNT_AT_PREPAY_PAY_XRATE] as decimal(38, 10)) as [AMOUNT_AT_PREPAY_PAY_XRATE]
      ,CAST([AMOUNT_AT_PREPAY_XRATE] as decimal(38, 10)) as [AMOUNT_AT_PREPAY_XRATE]
      ,CAST([AMOUNT_VARIANCE] as decimal(38, 10)) as [AMOUNT_VARIANCE]
      ,[ASSETS_ADDITION_FLAG]
      ,[ASSETS_TRACKING_FLAG]
      ,[ASSET_BOOK_TYPE_CODE]
      ,[ASSET_CATEGORY_ID]
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
      ,FORMAT(Cast([ATTRIBUTE_DATE1] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE1]
      ,FORMAT(Cast([ATTRIBUTE_DATE2] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE2]
      ,FORMAT(Cast([ATTRIBUTE_DATE3] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE3]
      ,FORMAT(Cast([ATTRIBUTE_DATE4] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE4]
      ,FORMAT(Cast([ATTRIBUTE_DATE5] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE5]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,[AWARD_ID]
      ,[AWT_FLAG]
      ,CAST([AWT_GROSS_AMOUNT] as decimal(38, 10)) as [AWT_GROSS_AMOUNT]
      ,[AWT_GROUP_ID]
      ,[AWT_INVOICE_ID]
      ,[AWT_INVOICE_PAYMENT_ID]
      ,[AWT_ORIGIN_GROUP_ID]
      ,[AWT_RELATED_ID]
      ,[AWT_TAX_RATE_ID]
      ,CAST([BASE_AMOUNT] as decimal(38, 10)) as [BASE_AMOUNT]
      ,CAST([BASE_AMOUNT_VARIANCE] as decimal(38, 10)) as [BASE_AMOUNT_VARIANCE]
      ,[BASE_QUANTITY_VARIANCE]
      ,[BATCH_ID]
      ,[BC_EVENT_ID]
      ,FORMAT(Cast([BUDGET_DATE] as date), 'MM-dd-yyyy') as [BUDGET_DATE]
      ,[CANCELLATION_FLAG]
      ,[CASH_BASIS_FINAL_APP_ROUNDING]
      ,[CC_REVERSAL_FLAG]
      ,[CHARGE_APPLICABLE_TO_DIST_ID]
      ,[COMPANY_PREPAID_INVOICE_ID]
      ,[CONSUMPTION_ADVICE_HEADER_ID]
      ,[CONSUMPTION_ADVICE_LINE_ID]
      ,[CORRECTED_INVOICE_DIST_ID]
      ,[CORRECTED_QUANTITY]
      ,[COUNTRY_OF_SUPPLY]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[CREDIT_CARD_TRX_ID]
      ,CAST([DAILY_AMOUNT] as decimal(38, 10)) as [DAILY_AMOUNT]
      ,[DATA_SET_ID]
      ,[DEF_ACCTG_ACCRUAL_CCID]
      ,FORMAT(Cast([DEF_ACCTG_END_DATE] as date), 'MM-dd-yyyy') as [DEF_ACCTG_END_DATE]
      ,FORMAT(Cast([DEF_ACCTG_START_DATE] as date), 'MM-dd-yyyy') as [DEF_ACCTG_START_DATE]
      ,[DESCRIPTION]
      ,[DETAIL_TAX_DIST_ID]
      ,[DETAIL_TAX_LINE_ID]
      ,[DISTRIBUTION_CLASS]
      ,[DISTRIBUTION_LINE_NUMBER]
      ,[DIST_CODE_COMBINATION_ID]
      ,[DIST_MATCH_TYPE]
      ,[ENCUMBERED_FLAG]
      ,FORMAT(Cast([END_EXPENSE_DATE] as date), 'MM-dd-yyyy') as [END_EXPENSE_DATE]
      ,FORMAT(Cast([EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [EXCHANGE_DATE]
      ,[EXCHANGE_RATE]
      ,[EXCHANGE_RATE_TYPE]
      ,FORMAT(Cast([EXPENDITURE_ITEM_DATE] as date), 'MM-dd-yyyy') as [EXPENDITURE_ITEM_DATE]
      ,[EXPENDITURE_ORGANIZATION_ID]
      ,[EXPENDITURE_TYPE]
      ,[EXPENSE_GROUP]
      ,[EXTRA_PO_ERV]
      ,[FINAL_APPLICATION_ROUNDING]
      ,[FINAL_MATCH_FLAG]
      ,[FINAL_PAYMENT_ROUNDING]
      ,[FINAL_RELEASE_ROUNDING]
      ,[FULLY_PAID_ACCTD_FLAG]
      ,[FUNDS_STATUS]
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
      ,[GMS_BURDENABLE_RAW_COST]
      ,[HISTORICAL_FLAG]
      ,[INCOME_TAX_REGION]
      ,[INTENDED_USE]
      ,[INTENDED_USE_CLASSIF_ID]
      ,[INVENTORY_TRANSFER_STATUS]
      ,a.[INVOICE_DISTRIBUTION_ID]
      ,[INVOICE_ID]
      ,[INVOICE_INCLUDES_PREPAY_FLAG]
      ,[INVOICE_LINE_NUMBER]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[JUSTIFICATION]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LINE_TYPE_LOOKUP_CODE]
      ,[MATCHED_UOM_LOOKUP_CODE]
      ,[MATCH_STATUS_FLAG]
      ,[MERCHANT_DOCUMENT_NUMBER]
      ,[MERCHANT_NAME]
      ,[MERCHANT_REFERENCE]
      ,[MERCHANT_TAXPAYER_ID]
      ,[MERCHANT_TAX_REG_NUMBER]
      ,[OBJECT_VERSION_NUMBER]
      ,[OLD_DISTRIBUTION_ID]
      ,[OLD_DIST_LINE_NUMBER]
      ,[ORG_ID]
      ,[PARENT_INVOICE_ID]
      ,[PARENT_REVERSAL_ID]
      ,[PA_ADDITION_FLAG]
      ,[PA_CMT_XFACE_FLAG]
      ,[PA_QUANTITY]
      ,[PERIOD_NAME]
      ,[PJC_BILLABLE_FLAG]
      ,[PJC_CAPITALIZABLE_FLAG]
      ,[PJC_CONTEXT_CATEGORY]
      ,[PJC_CONTRACT_ID]
      ,[PJC_CONTRACT_LINE_ID]
      ,FORMAT(Cast([PJC_EXPENDITURE_ITEM_DATE] as date), 'MM-dd-yyyy') as [PJC_EXPENDITURE_ITEM_DATE]
      ,[PJC_EXPENDITURE_TYPE_ID]
      ,[PJC_FUNDING_ALLOCATION_ID]
      ,[PJC_ORGANIZATION_ID]
      ,[PJC_PROJECT_ID]
      ,[PJC_RESERVED_ATTRIBUTE1]
      ,[PJC_RESERVED_ATTRIBUTE10]
      ,[PJC_RESERVED_ATTRIBUTE2]
      ,[PJC_RESERVED_ATTRIBUTE3]
      ,[PJC_RESERVED_ATTRIBUTE4]
      ,[PJC_RESERVED_ATTRIBUTE5]
      ,[PJC_RESERVED_ATTRIBUTE6]
      ,[PJC_RESERVED_ATTRIBUTE7]
      ,[PJC_RESERVED_ATTRIBUTE8]
      ,[PJC_RESERVED_ATTRIBUTE9]
      ,[PJC_TASK_ID]
      ,[PJC_USER_DEF_ATTRIBUTE1]
      ,[PJC_USER_DEF_ATTRIBUTE10]
      ,[PJC_USER_DEF_ATTRIBUTE2]
      ,[PJC_USER_DEF_ATTRIBUTE3]
      ,[PJC_USER_DEF_ATTRIBUTE4]
      ,[PJC_USER_DEF_ATTRIBUTE5]
      ,[PJC_USER_DEF_ATTRIBUTE6]
      ,[PJC_USER_DEF_ATTRIBUTE7]
      ,[PJC_USER_DEF_ATTRIBUTE8]
      ,[PJC_USER_DEF_ATTRIBUTE9]
      ,[PJC_WORK_TYPE_ID]
      ,[POSTED_FLAG]
      ,[PO_DISTRIBUTION_ID]
      ,CAST([PREPAY_AMOUNT_REMAINING] as decimal(38, 10)) as [PREPAY_AMOUNT_REMAINING]
      ,[PREPAY_DISTRIBUTION_ID]
      ,CAST([PREPAY_TAX_DIFF_AMOUNT] as decimal(38, 10)) as [PREPAY_TAX_DIFF_AMOUNT]
      ,[PRODUCT_TABLE]
      ,[PROGRAM_APPLICATION_ID]
      ,[PROGRAM_ID]
      ,FORMAT(Cast([PROGRAM_UPDATE_DATE] as date), 'MM-dd-yyyy') as [PROGRAM_UPDATE_DATE]
      ,[PROJECT_ID]
      ,[QUANTITY_INVOICED]
      ,[QUANTITY_VARIANCE]
      ,[RCV_CHARGE_ADDITION_FLAG]
      ,[RCV_TRANSACTION_ID]
      ,[RECEIPT_CONVERSION_RATE]
      ,CAST([RECEIPT_CURRENCY_AMOUNT] as decimal(38, 10)) as [RECEIPT_CURRENCY_AMOUNT]
      ,[RECEIPT_CURRENCY_CODE]
      ,[RECEIPT_MISSING_FLAG]
      ,[RECEIPT_REQUIRED_FLAG]
      ,[RECEIPT_VERIFIED_FLAG]
      ,[RECOVERY_RATE_CODE]
      ,[RECOVERY_RATE_ID]
      ,[RECOVERY_RATE_NAME]
      ,[RECOVERY_TYPE_CODE]
      ,[RECURRING_PAYMENT_ID]
      ,[REC_NREC_RATE]
      ,[REFERENCE_1]
      ,[REFERENCE_2]
      ,[REFERENCE_KEY1]
      ,[REFERENCE_KEY2]
      ,[REFERENCE_KEY3]
      ,[REFERENCE_KEY4]
      ,[REFERENCE_KEY5]
      ,[RELATED_ID]
      ,[RELATED_RETAINAGE_DIST_ID]
      ,[RELEASE_INV_DIST_DERIVED_FROM]
      ,[REQUEST_ID]
      ,CAST([RETAINED_AMOUNT_REMAINING] as decimal(38, 10)) as [RETAINED_AMOUNT_REMAINING]
      ,[RETAINED_INVOICE_DIST_ID]
      ,[REVERSAL_FLAG]
      ,[ROOT_DISTRIBUTION_ID]
      ,CAST([ROUNDING_AMT] as decimal(38, 10)) as [ROUNDING_AMT]
      ,[SET_OF_BOOKS_ID]
      ,FORMAT(Cast([START_EXPENSE_DATE] as date), 'MM-dd-yyyy') as [START_EXPENSE_DATE]
      ,CAST([STAT_AMOUNT] as decimal(38, 10)) as [STAT_AMOUNT]
      ,[SUMMARY_TAX_LINE_ID]
      ,[TASK_ID]
      ,CAST([TAXABLE_AMOUNT] as decimal(38, 10)) as [TAXABLE_AMOUNT]
      ,CAST([TAXABLE_BASE_AMOUNT] as decimal(38, 10)) as [TAXABLE_BASE_AMOUNT]
      ,[TAX_ALREADY_DISTRIBUTED_FLAG]
      ,[TAX_CODE_ID]
      ,[TAX_RECOVERABLE_FLAG]
      ,CAST([TOTAL_DIST_AMOUNT] as decimal(38, 10)) as [TOTAL_DIST_AMOUNT]
      ,CAST([TOTAL_DIST_BASE_AMOUNT] as decimal(38, 10)) as [TOTAL_DIST_BASE_AMOUNT]
      ,[TYPE_1099]
      ,[UNIT_PRICE]
      ,CAST([UPGRADE_BASE_POSTED_AMT] as decimal(38, 10)) as [UPGRADE_BASE_POSTED_AMT]
      ,CAST([UPGRADE_POSTED_AMT] as decimal(38, 10)) as [UPGRADE_POSTED_AMT]
      ,[WEB_PARAMETER_ID]
      ,[WITHHOLDING_TAX_CODE_ID]
      ,[XINV_PARENT_REVERSAL_ID]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Invoice_distributions_ap_invoice_distributions_all] a,
  (SELECT INVOICE_DISTRIBUTION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_distributions_ap_invoice_distributions_all] GROUP BY INVOICE_DISTRIBUTION_ID) b
WHERE a.INVOICE_DISTRIBUTION_ID = b.INVOICE_DISTRIBUTION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO




CREATE NONCLUSTERED INDEX [idx_Invoice_distributions_ap_invoice_distributions_all_INVOICE_DISTRIBUTION_ID_LAST_UPDATE_DATE] ON [rpy].[Invoice_distributions_ap_invoice_distributions_all]
(
	[INVOICE_DISTRIBUTION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




  
