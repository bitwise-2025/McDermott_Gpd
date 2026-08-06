insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_line_ap_invoice_lines_all','NCSA','pl_invoice_line_ap_invoice_lines_all',NULL,'1','aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043',4)


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-03 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_line_ap_invoice_lines_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO



--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_line_ap_invoice_lines_all',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Lines',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_INVOICE_LINES_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','07',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_line_ap_invoice_lines_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_line_ap_invoice_lines_all_stage]
(
ACCOUNTING_DATE	 [varchar](500) NULL,
ACCOUNT_SEGMENT	 [varchar](500) NULL,
ACC_REFERENCE_VALUE1	 [varchar](4000) NULL,
ADJUSTMENT_REASON	 [varchar](500) NULL,
AMOUNT	 [varchar](500) NULL,
APPLICATION_ID	 [varchar](500) NULL,
ASSESSABLE_VALUE	 [varchar](500) NULL,
ASSETS_TRACKING_FLAG	 [varchar](500) NULL,
ASSET_BOOK_TYPE_CODE	 [varchar](500) NULL,
ASSET_CATEGORY_ID	 [varchar](500) NULL,
ATTRIBUTE1	 [varchar](500) NULL,
ATTRIBUTE10	 [varchar](500) NULL,
ATTRIBUTE11	 [varchar](500) NULL,
ATTRIBUTE12	 [varchar](500) NULL,
ATTRIBUTE13	 [varchar](500) NULL,
ATTRIBUTE14	 [varchar](500) NULL,
ATTRIBUTE15	 [varchar](500) NULL,
ATTRIBUTE2	 [varchar](500) NULL,
ATTRIBUTE3	 [varchar](500) NULL,
ATTRIBUTE4	 [varchar](500) NULL,
ATTRIBUTE5	 [varchar](500) NULL,
ATTRIBUTE6	 [varchar](500) NULL,
ATTRIBUTE7	 [varchar](500) NULL,
ATTRIBUTE8	 [varchar](500) NULL,
ATTRIBUTE9	 [varchar](500) NULL,
ATTRIBUTE_CATEGORY	 [varchar](500) NULL,
ATTRIBUTE_DATE1	 [varchar](500) NULL,
ATTRIBUTE_DATE2	 [varchar](500) NULL,
ATTRIBUTE_DATE3	 [varchar](500) NULL,
ATTRIBUTE_DATE4	 [varchar](500) NULL,
ATTRIBUTE_DATE5	 [varchar](500) NULL,
ATTRIBUTE_NUMBER1	 [varchar](500) NULL,
ATTRIBUTE_NUMBER2	 [varchar](500) NULL,
ATTRIBUTE_NUMBER3	 [varchar](500) NULL,
ATTRIBUTE_NUMBER4	 [varchar](500) NULL,
ATTRIBUTE_NUMBER5	 [varchar](500) NULL,
AWARD_ID	 [varchar](500) NULL,
AWT_GROUP_ID	 [varchar](500) NULL,
BALANCING_SEGMENT	 [varchar](500) NULL,
BASE_AMOUNT	 [varchar](500) NULL,
BUDGET_DATE	 [varchar](500) NULL,
CANCELLED_FLAG	 [varchar](500) NULL,
CC_REVERSAL_FLAG	 [varchar](500) NULL,
COMPANY_PREPAID_INVOICE_ID	 [varchar](500) NULL,
CONSUMPTION_ADVICE_HEADER_ID	 [varchar](500) NULL,
CONSUMPTION_ADVICE_LINE_ID	 [varchar](500) NULL,
CONTROL_AMOUNT	 [varchar](500) NULL,
CORRECTED_INV_ID	 [varchar](500) NULL,
CORRECTED_LINE_NUMBER	 [varchar](500) NULL,
COST_CENTER_SEGMENT	 [varchar](500) NULL,
COST_FACTOR_ID	 [varchar](500) NULL,
COUNTRY_OF_SUPPLY	 [varchar](500) NULL,
CREATED_BY	 [varchar](500) NULL,
CREATION_DATE	 [datetime] NULL,
CREDIT_CARD_TRX_ID	 [varchar](500) NULL,
DAILY_AMOUNT	 [varchar](500) NULL,
DEFAULT_DIST_CCID	 [varchar](500) NULL,
DEFERRED_ACCTG_FLAG	 [varchar](500) NULL,
DEF_ACCTG_ACCRUAL_CCID	 [varchar](500) NULL,
DEF_ACCTG_END_DATE	 [varchar](500) NULL,
DEF_ACCTG_NUMBER_OF_PERIODS	 [varchar](500) NULL,
DEF_ACCTG_PERIOD_TYPE	 [varchar](500) NULL,
DEF_ACCTG_START_DATE	 [varchar](500) NULL,
DESCRIPTION	 [varchar](4000) NULL,
DISCARDED_FLAG	 [varchar](500) NULL,
DISPUTABLE_FLAG	 [varchar](500) NULL,
DISTRIBUTION_SET_ID	 [varchar](500) NULL,
END_EXPENSE_DATE	 [varchar](500) NULL,
EXPENDITURE_ITEM_DATE	 [varchar](500) NULL,
EXPENDITURE_ORGANIZATION_ID	 [varchar](500) NULL,
EXPENDITURE_TYPE	 [varchar](500) NULL,
EXPENSE_GROUP	 [varchar](500) NULL,
FINAL_DISCHARGE_LOCATION_ID	 [varchar](500) NULL,
FINAL_MATCH_FLAG	 [varchar](500) NULL,
FISCAL_CHARGE_TYPE	 [varchar](500) NULL,
FOS_XFACE_FLAG	 [varchar](500) NULL,
FUNDS_STATUS	 [varchar](500) NULL,
GENERATE_DISTS	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE10	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE11	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE12	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE13	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE14	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE15	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE16	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE17	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE18	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE19	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE20	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE5	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE6	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE7	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE8	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE9	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	 [varchar](500) NULL,
HISTORICAL_FLAG	 [varchar](500) NULL,
INCLUDED_TAX_AMOUNT	 [varchar](500) NULL,
INCOME_TAX_REGION	 [varchar](500) NULL,
INTENDED_USE_CLASSIF_ID	 [varchar](500) NULL,
INVENTORY_ITEM_ID	 [varchar](500) NULL,
INVOICE_ID	 [varchar](250) NULL,
INVOICE_INCLUDES_PREPAY_FLAG	 [varchar](500) NULL,
ITEM_DESCRIPTION	 [varchar](4000) NULL,
JOB_DEFINITION_NAME	 [varchar](500) NULL,
JOB_DEFINITION_PACKAGE	 [varchar](4000) NULL,
JUSTIFICATION	 [varchar](500) NULL,
LAST_UPDATED_BY	 [varchar](500) NULL,
LAST_UPDATE_DATE	 [datetime] NULL,
LAST_UPDATE_LOGIN	 [varchar](500) NULL,
LCM_ENABLED_FLAG	 [varchar](500) NULL,
LINE_GROUP_NUMBER	 [varchar](500) NULL,
LINE_NUMBER	 [varchar](500) NULL,
LINE_OWNER_ROLE	 [varchar](500) NULL,
LINE_SELECTED_FOR_APPL_FLAG	 [varchar](500) NULL,
LINE_SELECTED_FOR_RELEASE_FLAG	 [varchar](500) NULL,
LINE_SOURCE	 [varchar](500) NULL,
LINE_TYPE_LOOKUP_CODE	 [varchar](500) NULL,
MANUFACTURER	 [varchar](500) NULL,
MATCHING_RULE_ID	 [varchar](500) NULL,
MATCHING_RULE_SET_ID	 [varchar](500) NULL,
MATCH_TYPE	 [varchar](500) NULL,
MERCHANT_DOCUMENT_NUMBER	 [varchar](500) NULL,
MERCHANT_NAME	 [varchar](500) NULL,
MERCHANT_REFERENCE	 [varchar](500) NULL,
MERCHANT_TAXPAYER_ID	 [varchar](500) NULL,
MERCHANT_TAX_REG_NUMBER	 [varchar](500) NULL,
MODEL_NUMBER	 [varchar](500) NULL,
OBJECT_VERSION_NUMBER	 [varchar](500) NULL,
ORG_ID	 [varchar](500) NULL,
ORIGINAL_AMOUNT	 [varchar](500) NULL,
ORIGINAL_BASE_AMOUNT	 [varchar](500) NULL,
ORIGINAL_ROUNDING_AMT	 [varchar](500) NULL,
OVERLAY_DIST_CODE_CONCAT	 [varchar](500) NULL,
PA_CC_AR_INVOICE_ID	 [varchar](500) NULL,
PA_CC_AR_INVOICE_LINE_NUM	 [varchar](500) NULL,
PA_CC_PROCESSED_CODE	 [varchar](500) NULL,
PA_QUANTITY	 [varchar](500) NULL,
PERIOD_NAME	 [varchar](500) NULL,
PJC_BILLABLE_FLAG	 [varchar](500) NULL,
PJC_CAPITALIZABLE_FLAG	 [varchar](500) NULL,
PJC_CONTEXT_CATEGORY	 [varchar](500) NULL,
PJC_CONTRACT_ID	 [varchar](500) NULL,
PJC_CONTRACT_LINE_ID	 [varchar](500) NULL,
PJC_EXPENDITURE_ITEM_DATE	 [varchar](500) NULL,
PJC_EXPENDITURE_TYPE_ID	 [varchar](500) NULL,
PJC_FUNDING_ALLOCATION_ID	 [varchar](500) NULL,
PJC_ORGANIZATION_ID	 [varchar](500) NULL,
PJC_PROJECT_ID	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE1	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE10	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE2	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE3	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE4	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE5	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE6	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE7	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE8	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE9	 [varchar](500) NULL,
PJC_TASK_ID	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE1	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE10	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE2	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE3	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE4	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE5	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE6	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE7	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE8	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE9	 [varchar](500) NULL,
PJC_WORK_TYPE_ID	 [varchar](500) NULL,
PO_DISTRIBUTION_ID	 [varchar](500) NULL,
PO_HEADER_ID	 [varchar](500) NULL,
PO_LINE_ID	 [varchar](500) NULL,
PO_LINE_LOCATION_ID	 [varchar](500) NULL,
PO_RELEASE_ID	 [varchar](500) NULL,
PREPAY_APPL_REQUEST_ID	 [varchar](500) NULL,
PREPAY_INVOICE_ID	 [varchar](500) NULL,
PREPAY_LINE_NUMBER	 [varchar](500) NULL,
PRIMARY_INTENDED_USE	 [varchar](500) NULL,
PRODUCT_CATEGORY	 [varchar](500) NULL,
PRODUCT_FISC_CLASSIFICATION	 [varchar](500) NULL,
PRODUCT_TABLE	 [varchar](500) NULL,
PRODUCT_TYPE	 [varchar](500) NULL,
PROD_FC_CATEG_ID	 [varchar](500) NULL,
PROGRAM_APPLICATION_ID	 [varchar](500) NULL,
PROGRAM_ID	 [varchar](500) NULL,
PROGRAM_UPDATE_DATE	 [varchar](500) NULL,
PROJECT_ID	 [varchar](500) NULL,
PRORATE_ACROSS_ALL_ITEMS	 [varchar](500) NULL,
PURCHASING_CATEGORY_ID	 [varchar](500) NULL,
QUANTITY_INVOICED	 [varchar](500) NULL,
RCV_SHIPMENT_LINE_ID	 [varchar](500) NULL,
RCV_TRANSACTION_ID	 [varchar](500) NULL,
RECEIPT_CONVERSION_RATE	 [varchar](500) NULL,
RECEIPT_CURRENCY_AMOUNT	 [varchar](500) NULL,
RECEIPT_CURRENCY_CODE	 [varchar](500) NULL,
RECEIPT_MISSING_FLAG	 [varchar](500) NULL,
RECEIPT_REQUIRED_FLAG	 [varchar](500) NULL,
RECEIPT_VERIFIED_FLAG	 [varchar](500) NULL,
REFERENCE_1	 [varchar](500) NULL,
REFERENCE_2	 [varchar](500) NULL,
REFERENCE_KEY1	 [varchar](500) NULL,
REFERENCE_KEY2	 [varchar](500) NULL,
REFERENCE_KEY3	 [varchar](500) NULL,
REFERENCE_KEY4	 [varchar](500) NULL,
REFERENCE_KEY5	 [varchar](500) NULL,
REQUESTER_ID	 [varchar](500) NULL,
REQUEST_ID	 [varchar](500) NULL,
RETAINED_AMOUNT	 [varchar](500) NULL,
RETAINED_AMOUNT_REMAINING	 [varchar](500) NULL,
RETAINED_INVOICE_ID	 [varchar](500) NULL,
RETAINED_LINE_NUMBER	 [varchar](500) NULL,
ROUNDING_AMT	 [varchar](500) NULL,
SERIAL_NUMBER	 [varchar](500) NULL,
SET_OF_BOOKS_ID	 [varchar](500) NULL,
SHIP_FROM_LOCATION_ID	 [varchar](500) NULL,
SHIP_TO_CUST_LOCATION_ID	 [varchar](500) NULL,
SHIP_TO_LOCATION_ID	 [varchar](500) NULL,
SOURCE_APPLICATION_ID	 [varchar](500) NULL,
SOURCE_ENTITY_CODE	 [varchar](500) NULL,
SOURCE_EVENT_CLASS_CODE	 [varchar](500) NULL,
SOURCE_LINE_ID	 [varchar](500) NULL,
SOURCE_TRX_ID	 [varchar](500) NULL,
SOURCE_TRX_LEVEL_TYPE	 [varchar](500) NULL,
START_EXPENSE_DATE	 [varchar](500) NULL,
STAT_AMOUNT	 [varchar](500) NULL,
SUMMARY_TAX_LINE_ID	 [varchar](500) NULL,
TASK_ID	 [varchar](500) NULL,
TAX	 [varchar](500) NULL,
TAX_ALREADY_CALCULATED_FLAG	 [varchar](500) NULL,
TAX_CLASSIFICATION_CODE	 [varchar](500) NULL,
TAX_CODE_ID	 [varchar](500) NULL,
TAX_JURISDICTION_CODE	 [varchar](500) NULL,
TAX_RATE	 [varchar](500) NULL,
TAX_RATE_CODE	 [varchar](500) NULL,
TAX_RATE_ID	 [varchar](500) NULL,
TAX_REGIME_CODE	 [varchar](500) NULL,
TAX_STATUS_CODE	 [varchar](500) NULL,
TOTAL_NREC_TAX_AMOUNT	 [varchar](500) NULL,
TOTAL_NREC_TAX_AMT_FUNCL_CURR	 [varchar](500) NULL,
TOTAL_REC_TAX_AMOUNT	 [varchar](500) NULL,
TOTAL_REC_TAX_AMT_FUNCL_CURR	 [varchar](500) NULL,
TRANSACTION_LINE_GEOGRAPHY_ID	 [varchar](500) NULL,
TRX_BUSINESS_CATEGORY	 [varchar](500) NULL,
TYPE_1099	 [varchar](500) NULL,
UNIT_MEAS_LOOKUP_CODE	 [varchar](500) NULL,
UNIT_PRICE	 [varchar](500) NULL,
USER_DEFINED_FISC_CLASS	 [varchar](500) NULL,
USSGL_TRANSACTION_CODE	 [varchar](500) NULL,
WARRANTY_NUMBER	 [varchar](500) NULL,
WEB_PARAMETER_ID	 [varchar](500) NULL,
WFAPPROVAL_STATUS	 [varchar](500) NULL,
source_name	 [varchar](250) NULL,
sub_source_name	 [varchar](250) NULL,
created_date_time	[datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




CREATE TABLE [rpy].[Invoice_line_ap_invoice_lines_all]
(
ACCOUNTING_DATE	 [varchar](500) NULL,
ACCOUNT_SEGMENT	 [varchar](500) NULL,
ACC_REFERENCE_VALUE1	 [varchar](4000) NULL,
ADJUSTMENT_REASON	 [varchar](500) NULL,
AMOUNT	 [varchar](500) NULL,
APPLICATION_ID	 [varchar](500) NULL,
ASSESSABLE_VALUE	 [varchar](500) NULL,
ASSETS_TRACKING_FLAG	 [varchar](500) NULL,
ASSET_BOOK_TYPE_CODE	 [varchar](500) NULL,
ASSET_CATEGORY_ID	 [varchar](500) NULL,
ATTRIBUTE1	 [varchar](500) NULL,
ATTRIBUTE10	 [varchar](500) NULL,
ATTRIBUTE11	 [varchar](500) NULL,
ATTRIBUTE12	 [varchar](500) NULL,
ATTRIBUTE13	 [varchar](500) NULL,
ATTRIBUTE14	 [varchar](500) NULL,
ATTRIBUTE15	 [varchar](500) NULL,
ATTRIBUTE2	 [varchar](500) NULL,
ATTRIBUTE3	 [varchar](500) NULL,
ATTRIBUTE4	 [varchar](500) NULL,
ATTRIBUTE5	 [varchar](500) NULL,
ATTRIBUTE6	 [varchar](500) NULL,
ATTRIBUTE7	 [varchar](500) NULL,
ATTRIBUTE8	 [varchar](500) NULL,
ATTRIBUTE9	 [varchar](500) NULL,
ATTRIBUTE_CATEGORY	 [varchar](500) NULL,
ATTRIBUTE_DATE1	 [varchar](500) NULL,
ATTRIBUTE_DATE2	 [varchar](500) NULL,
ATTRIBUTE_DATE3	 [varchar](500) NULL,
ATTRIBUTE_DATE4	 [varchar](500) NULL,
ATTRIBUTE_DATE5	 [varchar](500) NULL,
ATTRIBUTE_NUMBER1	 [varchar](500) NULL,
ATTRIBUTE_NUMBER2	 [varchar](500) NULL,
ATTRIBUTE_NUMBER3	 [varchar](500) NULL,
ATTRIBUTE_NUMBER4	 [varchar](500) NULL,
ATTRIBUTE_NUMBER5	 [varchar](500) NULL,
AWARD_ID	 [varchar](500) NULL,
AWT_GROUP_ID	 [varchar](500) NULL,
BALANCING_SEGMENT	 [varchar](500) NULL,
BASE_AMOUNT	 [varchar](500) NULL,
BUDGET_DATE	 [varchar](500) NULL,
CANCELLED_FLAG	 [varchar](500) NULL,
CC_REVERSAL_FLAG	 [varchar](500) NULL,
COMPANY_PREPAID_INVOICE_ID	 [varchar](500) NULL,
CONSUMPTION_ADVICE_HEADER_ID	 [varchar](500) NULL,
CONSUMPTION_ADVICE_LINE_ID	 [varchar](500) NULL,
CONTROL_AMOUNT	 [varchar](500) NULL,
CORRECTED_INV_ID	 [varchar](500) NULL,
CORRECTED_LINE_NUMBER	 [varchar](500) NULL,
COST_CENTER_SEGMENT	 [varchar](500) NULL,
COST_FACTOR_ID	 [varchar](500) NULL,
COUNTRY_OF_SUPPLY	 [varchar](500) NULL,
CREATED_BY	 [varchar](500) NULL,
CREATION_DATE	 [datetime] NULL,
CREDIT_CARD_TRX_ID	 [varchar](500) NULL,
DAILY_AMOUNT	 [varchar](500) NULL,
DEFAULT_DIST_CCID	 [varchar](500) NULL,
DEFERRED_ACCTG_FLAG	 [varchar](500) NULL,
DEF_ACCTG_ACCRUAL_CCID	 [varchar](500) NULL,
DEF_ACCTG_END_DATE	 [varchar](500) NULL,
DEF_ACCTG_NUMBER_OF_PERIODS	 [varchar](500) NULL,
DEF_ACCTG_PERIOD_TYPE	 [varchar](500) NULL,
DEF_ACCTG_START_DATE	 [varchar](500) NULL,
DESCRIPTION	 [varchar](4000) NULL,
DISCARDED_FLAG	 [varchar](500) NULL,
DISPUTABLE_FLAG	 [varchar](500) NULL,
DISTRIBUTION_SET_ID	 [varchar](500) NULL,
END_EXPENSE_DATE	 [varchar](500) NULL,
EXPENDITURE_ITEM_DATE	 [varchar](500) NULL,
EXPENDITURE_ORGANIZATION_ID	 [varchar](500) NULL,
EXPENDITURE_TYPE	 [varchar](500) NULL,
EXPENSE_GROUP	 [varchar](500) NULL,
FINAL_DISCHARGE_LOCATION_ID	 [varchar](500) NULL,
FINAL_MATCH_FLAG	 [varchar](500) NULL,
FISCAL_CHARGE_TYPE	 [varchar](500) NULL,
FOS_XFACE_FLAG	 [varchar](500) NULL,
FUNDS_STATUS	 [varchar](500) NULL,
GENERATE_DISTS	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE10	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE11	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE12	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE13	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE14	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE15	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE16	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE17	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE18	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE19	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE20	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE5	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE6	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE7	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE8	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE9	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_CATEGORY	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	 [varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	 [varchar](500) NULL,
HISTORICAL_FLAG	 [varchar](500) NULL,
INCLUDED_TAX_AMOUNT	 [varchar](500) NULL,
INCOME_TAX_REGION	 [varchar](500) NULL,
INTENDED_USE_CLASSIF_ID	 [varchar](500) NULL,
INVENTORY_ITEM_ID	 [varchar](500) NULL,
INVOICE_ID	 [varchar](250) NULL,
INVOICE_INCLUDES_PREPAY_FLAG	 [varchar](500) NULL,
ITEM_DESCRIPTION	 [varchar](4000) NULL,
JOB_DEFINITION_NAME	 [varchar](500) NULL,
JOB_DEFINITION_PACKAGE	 [varchar](4000) NULL,
JUSTIFICATION	 [varchar](500) NULL,
LAST_UPDATED_BY	 [varchar](500) NULL,
LAST_UPDATE_DATE	 [datetime] NULL,
LAST_UPDATE_LOGIN	 [varchar](500) NULL,
LCM_ENABLED_FLAG	 [varchar](500) NULL,
LINE_GROUP_NUMBER	 [varchar](500) NULL,
LINE_NUMBER	 [varchar](500) NULL,
LINE_OWNER_ROLE	 [varchar](500) NULL,
LINE_SELECTED_FOR_APPL_FLAG	 [varchar](500) NULL,
LINE_SELECTED_FOR_RELEASE_FLAG	 [varchar](500) NULL,
LINE_SOURCE	 [varchar](500) NULL,
LINE_TYPE_LOOKUP_CODE	 [varchar](500) NULL,
MANUFACTURER	 [varchar](500) NULL,
MATCHING_RULE_ID	 [varchar](500) NULL,
MATCHING_RULE_SET_ID	 [varchar](500) NULL,
MATCH_TYPE	 [varchar](500) NULL,
MERCHANT_DOCUMENT_NUMBER	 [varchar](500) NULL,
MERCHANT_NAME	 [varchar](500) NULL,
MERCHANT_REFERENCE	 [varchar](500) NULL,
MERCHANT_TAXPAYER_ID	 [varchar](500) NULL,
MERCHANT_TAX_REG_NUMBER	 [varchar](500) NULL,
MODEL_NUMBER	 [varchar](500) NULL,
OBJECT_VERSION_NUMBER	 [varchar](500) NULL,
ORG_ID	 [varchar](500) NULL,
ORIGINAL_AMOUNT	 [varchar](500) NULL,
ORIGINAL_BASE_AMOUNT	 [varchar](500) NULL,
ORIGINAL_ROUNDING_AMT	 [varchar](500) NULL,
OVERLAY_DIST_CODE_CONCAT	 [varchar](500) NULL,
PA_CC_AR_INVOICE_ID	 [varchar](500) NULL,
PA_CC_AR_INVOICE_LINE_NUM	 [varchar](500) NULL,
PA_CC_PROCESSED_CODE	 [varchar](500) NULL,
PA_QUANTITY	 [varchar](500) NULL,
PERIOD_NAME	 [varchar](500) NULL,
PJC_BILLABLE_FLAG	 [varchar](500) NULL,
PJC_CAPITALIZABLE_FLAG	 [varchar](500) NULL,
PJC_CONTEXT_CATEGORY	 [varchar](500) NULL,
PJC_CONTRACT_ID	 [varchar](500) NULL,
PJC_CONTRACT_LINE_ID	 [varchar](500) NULL,
PJC_EXPENDITURE_ITEM_DATE	 [varchar](500) NULL,
PJC_EXPENDITURE_TYPE_ID	 [varchar](500) NULL,
PJC_FUNDING_ALLOCATION_ID	 [varchar](500) NULL,
PJC_ORGANIZATION_ID	 [varchar](500) NULL,
PJC_PROJECT_ID	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE1	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE10	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE2	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE3	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE4	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE5	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE6	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE7	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE8	 [varchar](500) NULL,
PJC_RESERVED_ATTRIBUTE9	 [varchar](500) NULL,
PJC_TASK_ID	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE1	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE10	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE2	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE3	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE4	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE5	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE6	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE7	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE8	 [varchar](500) NULL,
PJC_USER_DEF_ATTRIBUTE9	 [varchar](500) NULL,
PJC_WORK_TYPE_ID	 [varchar](500) NULL,
PO_DISTRIBUTION_ID	 [varchar](500) NULL,
PO_HEADER_ID	 [varchar](500) NULL,
PO_LINE_ID	 [varchar](500) NULL,
PO_LINE_LOCATION_ID	 [varchar](500) NULL,
PO_RELEASE_ID	 [varchar](500) NULL,
PREPAY_APPL_REQUEST_ID	 [varchar](500) NULL,
PREPAY_INVOICE_ID	 [varchar](500) NULL,
PREPAY_LINE_NUMBER	 [varchar](500) NULL,
PRIMARY_INTENDED_USE	 [varchar](500) NULL,
PRODUCT_CATEGORY	 [varchar](500) NULL,
PRODUCT_FISC_CLASSIFICATION	 [varchar](500) NULL,
PRODUCT_TABLE	 [varchar](500) NULL,
PRODUCT_TYPE	 [varchar](500) NULL,
PROD_FC_CATEG_ID	 [varchar](500) NULL,
PROGRAM_APPLICATION_ID	 [varchar](500) NULL,
PROGRAM_ID	 [varchar](500) NULL,
PROGRAM_UPDATE_DATE	 [varchar](500) NULL,
PROJECT_ID	 [varchar](500) NULL,
PRORATE_ACROSS_ALL_ITEMS	 [varchar](500) NULL,
PURCHASING_CATEGORY_ID	 [varchar](500) NULL,
QUANTITY_INVOICED	 [varchar](500) NULL,
RCV_SHIPMENT_LINE_ID	 [varchar](500) NULL,
RCV_TRANSACTION_ID	 [varchar](500) NULL,
RECEIPT_CONVERSION_RATE	 [varchar](500) NULL,
RECEIPT_CURRENCY_AMOUNT	 [varchar](500) NULL,
RECEIPT_CURRENCY_CODE	 [varchar](500) NULL,
RECEIPT_MISSING_FLAG	 [varchar](500) NULL,
RECEIPT_REQUIRED_FLAG	 [varchar](500) NULL,
RECEIPT_VERIFIED_FLAG	 [varchar](500) NULL,
REFERENCE_1	 [varchar](500) NULL,
REFERENCE_2	 [varchar](500) NULL,
REFERENCE_KEY1	 [varchar](500) NULL,
REFERENCE_KEY2	 [varchar](500) NULL,
REFERENCE_KEY3	 [varchar](500) NULL,
REFERENCE_KEY4	 [varchar](500) NULL,
REFERENCE_KEY5	 [varchar](500) NULL,
REQUESTER_ID	 [varchar](500) NULL,
REQUEST_ID	 [varchar](500) NULL,
RETAINED_AMOUNT	 [varchar](500) NULL,
RETAINED_AMOUNT_REMAINING	 [varchar](500) NULL,
RETAINED_INVOICE_ID	 [varchar](500) NULL,
RETAINED_LINE_NUMBER	 [varchar](500) NULL,
ROUNDING_AMT	 [varchar](500) NULL,
SERIAL_NUMBER	 [varchar](500) NULL,
SET_OF_BOOKS_ID	 [varchar](500) NULL,
SHIP_FROM_LOCATION_ID	 [varchar](500) NULL,
SHIP_TO_CUST_LOCATION_ID	 [varchar](500) NULL,
SHIP_TO_LOCATION_ID	 [varchar](500) NULL,
SOURCE_APPLICATION_ID	 [varchar](500) NULL,
SOURCE_ENTITY_CODE	 [varchar](500) NULL,
SOURCE_EVENT_CLASS_CODE	 [varchar](500) NULL,
SOURCE_LINE_ID	 [varchar](500) NULL,
SOURCE_TRX_ID	 [varchar](500) NULL,
SOURCE_TRX_LEVEL_TYPE	 [varchar](500) NULL,
START_EXPENSE_DATE	 [varchar](500) NULL,
STAT_AMOUNT	 [varchar](500) NULL,
SUMMARY_TAX_LINE_ID	 [varchar](500) NULL,
TASK_ID	 [varchar](500) NULL,
TAX	 [varchar](500) NULL,
TAX_ALREADY_CALCULATED_FLAG	 [varchar](500) NULL,
TAX_CLASSIFICATION_CODE	 [varchar](500) NULL,
TAX_CODE_ID	 [varchar](500) NULL,
TAX_JURISDICTION_CODE	 [varchar](500) NULL,
TAX_RATE	 [varchar](500) NULL,
TAX_RATE_CODE	 [varchar](500) NULL,
TAX_RATE_ID	 [varchar](500) NULL,
TAX_REGIME_CODE	 [varchar](500) NULL,
TAX_STATUS_CODE	 [varchar](500) NULL,
TOTAL_NREC_TAX_AMOUNT	 [varchar](500) NULL,
TOTAL_NREC_TAX_AMT_FUNCL_CURR	 [varchar](500) NULL,
TOTAL_REC_TAX_AMOUNT	 [varchar](500) NULL,
TOTAL_REC_TAX_AMT_FUNCL_CURR	 [varchar](500) NULL,
TRANSACTION_LINE_GEOGRAPHY_ID	 [varchar](500) NULL,
TRX_BUSINESS_CATEGORY	 [varchar](500) NULL,
TYPE_1099	 [varchar](500) NULL,
UNIT_MEAS_LOOKUP_CODE	 [varchar](500) NULL,
UNIT_PRICE	 [varchar](500) NULL,
USER_DEFINED_FISC_CLASS	 [varchar](500) NULL,
USSGL_TRANSACTION_CODE	 [varchar](500) NULL,
WARRANTY_NUMBER	 [varchar](500) NULL,
WEB_PARAMETER_ID	 [varchar](500) NULL,
WFAPPROVAL_STATUS	 [varchar](500) NULL,
source_name	 [varchar](250) NULL,
sub_source_name	 [varchar](250) NULL,
created_date_time	[datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



Create View [rpy].[Invoice_line_ap_invoice_lines_all_v] as
SELECT FORMAT(Cast([ACCOUNTING_DATE] as date), 'MM-dd-yyyy') as [ACCOUNTING_DATE]
      ,[ACCOUNT_SEGMENT]
      ,[ACC_REFERENCE_VALUE1]
      ,[ADJUSTMENT_REASON]
      ,CAST([AMOUNT] as decimal(38, 10)) as [AMOUNT]
      ,[APPLICATION_ID]
      ,[ASSESSABLE_VALUE]
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
	  ,FORMAT(Cast([ATTRIBUTE_NUMBER1] as date), 'MM-dd-yyyy') as [ATTRIBUTE_NUMBER1]
      ,FORMAT(Cast([ATTRIBUTE_NUMBER2] as date), 'MM-dd-yyyy') as [ATTRIBUTE_NUMBER2]
      ,FORMAT(Cast([ATTRIBUTE_NUMBER3] as date), 'MM-dd-yyyy') as [ATTRIBUTE_NUMBER3]
      ,FORMAT(Cast([ATTRIBUTE_NUMBER4] as date), 'MM-dd-yyyy') as [ATTRIBUTE_NUMBER4]
      ,FORMAT(Cast([ATTRIBUTE_NUMBER5] as date), 'MM-dd-yyyy') as [ATTRIBUTE_NUMBER5]
      ,[AWARD_ID]
      ,[AWT_GROUP_ID]
      ,[BALANCING_SEGMENT]
      ,CAST([BASE_AMOUNT] as decimal(38, 10)) as [BASE_AMOUNT]
      ,FORMAT(Cast([BUDGET_DATE] as date), 'MM-dd-yyyy') as [BUDGET_DATE]
      ,[CANCELLED_FLAG]
      ,[CC_REVERSAL_FLAG]
      ,[COMPANY_PREPAID_INVOICE_ID]
      ,[CONSUMPTION_ADVICE_HEADER_ID]
      ,[CONSUMPTION_ADVICE_LINE_ID]
      ,CAST([CONTROL_AMOUNT] as decimal(38, 10)) as [CONTROL_AMOUNT]
      ,[CORRECTED_INV_ID]
      ,[CORRECTED_LINE_NUMBER]
      ,[COST_CENTER_SEGMENT]
      ,[COST_FACTOR_ID]
      ,[COUNTRY_OF_SUPPLY]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[CREDIT_CARD_TRX_ID]
      ,CAST([DAILY_AMOUNT] as decimal(38, 10)) as [DAILY_AMOUNT]
      ,[DEFAULT_DIST_CCID]
      ,[DEFERRED_ACCTG_FLAG]
      ,[DEF_ACCTG_ACCRUAL_CCID]
      ,FORMAT(Cast([DEF_ACCTG_END_DATE] as date), 'MM-dd-yyyy') as [DEF_ACCTG_END_DATE]
      ,[DEF_ACCTG_NUMBER_OF_PERIODS]
      ,[DEF_ACCTG_PERIOD_TYPE]
      ,FORMAT(Cast([DEF_ACCTG_START_DATE] as date), 'MM-dd-yyyy') as [DEF_ACCTG_START_DATE]
      ,[DESCRIPTION]
      ,[DISCARDED_FLAG]
      ,[DISPUTABLE_FLAG]
      ,[DISTRIBUTION_SET_ID]
      ,FORMAT(Cast([END_EXPENSE_DATE] as date), 'MM-dd-yyyy') as [END_EXPENSE_DATE]
      ,FORMAT(Cast([EXPENDITURE_ITEM_DATE] as date), 'MM-dd-yyyy') as [EXPENDITURE_ITEM_DATE]
      ,[EXPENDITURE_ORGANIZATION_ID]
      ,[EXPENDITURE_TYPE]
      ,[EXPENSE_GROUP]
      ,[FINAL_DISCHARGE_LOCATION_ID]
      ,[FINAL_MATCH_FLAG]
      ,[FISCAL_CHARGE_TYPE]
      ,[FOS_XFACE_FLAG]
      ,[FUNDS_STATUS]
      ,[GENERATE_DISTS]
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
      ,[HISTORICAL_FLAG]
      ,[INCLUDED_TAX_AMOUNT]
      ,[INCOME_TAX_REGION]
      ,[INTENDED_USE_CLASSIF_ID]
      ,[INVENTORY_ITEM_ID]
      ,a.[INVOICE_ID]
      ,[INVOICE_INCLUDES_PREPAY_FLAG]
      ,[ITEM_DESCRIPTION]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[JUSTIFICATION]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LCM_ENABLED_FLAG]
      ,[LINE_GROUP_NUMBER]
      ,a.[LINE_NUMBER]
      ,[LINE_OWNER_ROLE]
      ,[LINE_SELECTED_FOR_APPL_FLAG]
      ,[LINE_SELECTED_FOR_RELEASE_FLAG]
      ,[LINE_SOURCE]
      ,[LINE_TYPE_LOOKUP_CODE]
      ,[MANUFACTURER]
      ,[MATCHING_RULE_ID]
      ,[MATCHING_RULE_SET_ID]
      ,[MATCH_TYPE]
      ,[MERCHANT_DOCUMENT_NUMBER]
      ,[MERCHANT_NAME]
      ,[MERCHANT_REFERENCE]
      ,[MERCHANT_TAXPAYER_ID]
      ,[MERCHANT_TAX_REG_NUMBER]
      ,[MODEL_NUMBER]
      ,[OBJECT_VERSION_NUMBER]
      ,[ORG_ID]
      ,CAST([ORIGINAL_AMOUNT] as decimal(38, 10)) as [ORIGINAL_AMOUNT]
      ,[ORIGINAL_BASE_AMOUNT]
      ,CAST([ORIGINAL_ROUNDING_AMT] as decimal(38, 10)) as [ORIGINAL_ROUNDING_AMT]
      ,[OVERLAY_DIST_CODE_CONCAT]
      ,[PA_CC_AR_INVOICE_ID]
      ,[PA_CC_AR_INVOICE_LINE_NUM]
      ,[PA_CC_PROCESSED_CODE]
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
      ,[PO_DISTRIBUTION_ID]
      ,[PO_HEADER_ID]
      ,[PO_LINE_ID]
      ,[PO_LINE_LOCATION_ID]
      ,[PO_RELEASE_ID]
      ,[PREPAY_APPL_REQUEST_ID]
      ,[PREPAY_INVOICE_ID]
      ,[PREPAY_LINE_NUMBER]
      ,[PRIMARY_INTENDED_USE]
      ,[PRODUCT_CATEGORY]
      ,[PRODUCT_FISC_CLASSIFICATION]
      ,[PRODUCT_TABLE]
      ,[PRODUCT_TYPE]
      ,[PROD_FC_CATEG_ID]
      ,[PROGRAM_APPLICATION_ID]
      ,[PROGRAM_ID]
      ,FORMAT(Cast([PROGRAM_UPDATE_DATE] as date), 'MM-dd-yyyy') as [PROGRAM_UPDATE_DATE]
      ,[PROJECT_ID]
      ,[PRORATE_ACROSS_ALL_ITEMS]
      ,[PURCHASING_CATEGORY_ID]
      ,[QUANTITY_INVOICED]
      ,[RCV_SHIPMENT_LINE_ID]
      ,[RCV_TRANSACTION_ID]
      ,[RECEIPT_CONVERSION_RATE]
      ,[RECEIPT_CURRENCY_AMOUNT]
      ,[RECEIPT_CURRENCY_CODE]
      ,[RECEIPT_MISSING_FLAG]
      ,[RECEIPT_REQUIRED_FLAG]
      ,[RECEIPT_VERIFIED_FLAG]
      ,[REFERENCE_1]
      ,[REFERENCE_2]
      ,[REFERENCE_KEY1]
      ,[REFERENCE_KEY2]
      ,[REFERENCE_KEY3]
      ,[REFERENCE_KEY4]
      ,[REFERENCE_KEY5]
      ,[REQUESTER_ID]
      ,[REQUEST_ID]
      ,[RETAINED_AMOUNT]
      ,[RETAINED_AMOUNT_REMAINING]
      ,[RETAINED_INVOICE_ID]
      ,[RETAINED_LINE_NUMBER]
      ,CAST([ROUNDING_AMT] as decimal(38, 10)) as [ROUNDING_AMT]
      ,[SERIAL_NUMBER]
      ,[SET_OF_BOOKS_ID]
      ,[SHIP_FROM_LOCATION_ID]
      ,[SHIP_TO_CUST_LOCATION_ID]
      ,[SHIP_TO_LOCATION_ID]
      ,[SOURCE_APPLICATION_ID]
      ,[SOURCE_ENTITY_CODE]
      ,[SOURCE_EVENT_CLASS_CODE]
      ,[SOURCE_LINE_ID]
      ,[SOURCE_TRX_ID]
      ,[SOURCE_TRX_LEVEL_TYPE]
      ,FORMAT(Cast([START_EXPENSE_DATE] as date), 'MM-dd-yyyy') as [START_EXPENSE_DATE]
      ,CAST([STAT_AMOUNT] as decimal(38, 10)) as [STAT_AMOUNT]
      ,[SUMMARY_TAX_LINE_ID]
      ,[TASK_ID]
      ,[TAX]
      ,[TAX_ALREADY_CALCULATED_FLAG]
      ,[TAX_CLASSIFICATION_CODE]
      ,[TAX_CODE_ID]
      ,[TAX_JURISDICTION_CODE]
      ,[TAX_RATE]
      ,[TAX_RATE_CODE]
      ,[TAX_RATE_ID]
      ,[TAX_REGIME_CODE]
      ,[TAX_STATUS_CODE]
      ,CAST([TOTAL_NREC_TAX_AMOUNT] as decimal(38, 10)) as [TOTAL_NREC_TAX_AMOUNT]
      ,CAST([TOTAL_NREC_TAX_AMT_FUNCL_CURR] as decimal(38, 10)) as [TOTAL_NREC_TAX_AMT_FUNCL_CURR]
      ,CAST([TOTAL_REC_TAX_AMOUNT] as decimal(38, 10)) as [TOTAL_REC_TAX_AMOUNT]
      ,CAST([TOTAL_REC_TAX_AMT_FUNCL_CURR] as decimal(38, 10)) as [TOTAL_REC_TAX_AMT_FUNCL_CURR]
      ,[TRANSACTION_LINE_GEOGRAPHY_ID]
      ,[TRX_BUSINESS_CATEGORY]
      ,[TYPE_1099]
      ,[UNIT_MEAS_LOOKUP_CODE]
      ,[UNIT_PRICE]
      ,[USER_DEFINED_FISC_CLASS]
      ,[USSGL_TRANSACTION_CODE]
      ,[WARRANTY_NUMBER]
      ,[WEB_PARAMETER_ID]
      ,[WFAPPROVAL_STATUS]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Invoice_line_ap_invoice_lines_all] a,
  (SELECT INVOICE_ID, LINE_NUMBER, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_line_ap_invoice_lines_all] GROUP BY INVOICE_ID, LINE_NUMBER) b
WHERE a.INVOICE_ID = b.INVOICE_ID 
AND a.LINE_NUMBER = b.LINE_NUMBER 
AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE




GO





CREATE NONCLUSTERED INDEX [idx_Invoice_line_ap_invoice_lines_all_INVOICE_ID_LINE_NUMBER_LAST_UPDATE_DATE] ON [rpy].[Invoice_line_ap_invoice_lines_all]
(
	[INVOICE_ID],[LINE_NUMBER],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO





 