insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_header_ap_invoices_all','NCSA','pl_invoice_header_ap_invoices_all',NULL,'1','aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','incremental_start_date',10,'incremental_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_header_ap_invoices_all','NetworkFolder','incremental_end_date',11,'incremental_end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')



GO


--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_header_ap_invoices_all',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Header',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_INVOICES_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','60',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('incremental_start_date','2024-01-25 15:42:59',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('incremental_end_date','2025-05-25 15:42:59',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_header_ap_invoices_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_header_ap_invoices_all_stage]
(
	[INVOICE_ID] [varchar](250) NULL,
	[LAST_UPDATE_DATE] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](250) NULL,
	[VENDOR_ID] [varchar](250) NULL,
	[INVOICE_NUM] [varchar](250) NULL,
	[SET_OF_BOOKS_ID] [varchar](250) NULL,
	[INVOICE_CURRENCY_CODE] [varchar](250) NULL,
	[PAYMENT_CURRENCY_CODE] [varchar](250) NULL,
	[PAYMENT_CROSS_RATE] [varchar](250) NULL,
	[INVOICE_AMOUNT] [varchar](250) NULL,
	[VENDOR_SITE_ID] [varchar](250) NULL,
	[AMOUNT_PAID] [varchar](250) NULL,
	[DISCOUNT_AMOUNT_TAKEN] [varchar](250) NULL,
	[INVOICE_DATE] [varchar](500) NULL,
	[SOURCE] [varchar](250) NULL,
	[INVOICE_TYPE_LOOKUP_CODE] [varchar](250) NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[BATCH_ID] [varchar](250) NULL,
	[AMOUNT_APPLICABLE_TO_DISCOUNT] [varchar](250) NULL,
	[TERMS_ID] [varchar](250) NULL,
	[TERMS_DATE] [varchar](500) NULL,
	[PAYMENT_METHOD_LOOKUP_CODE] [varchar](250) NULL,
	[PAY_GROUP_LOOKUP_CODE] [varchar](250) NULL,
	[ACCTS_PAY_CODE_COMBINATION_ID] [varchar](250) NULL,
	[PAYMENT_STATUS_FLAG] [varchar](10) NULL,
	[CREATION_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](250) NULL,
	[BASE_AMOUNT] [varchar](250) NULL,
	[LAST_UPDATE_LOGIN] [varchar](250) NULL,
	[EXCLUSIVE_PAYMENT_FLAG] [varchar](10) NULL,
	[PO_HEADER_ID] [varchar](250) NULL,
	[FREIGHT_AMOUNT] [varchar](250) NULL,
	[GOODS_RECEIVED_DATE] [varchar](500) NULL,
	[INVOICE_RECEIVED_DATE] [varchar](500) NULL,
	[VOUCHER_NUM] [varchar](250) NULL,
	[APPROVED_AMOUNT] [varchar](250) NULL,
	[RECURRING_PAYMENT_ID] [varchar](250) NULL,
	[EARLIEST_SETTLEMENT_DATE] [varchar](500) NULL,
	[DOC_SEQUENCE_ID] [varchar](250) NULL,
	[DOC_SEQUENCE_VALUE] [varchar](250) NULL,
	[DOC_CATEGORY_CODE] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](500) NULL,
	[ATTRIBUTE2] [varchar](500) NULL,
	[ATTRIBUTE3] [varchar](500) NULL,
	[ATTRIBUTE4] [varchar](500) NULL,
	[ATTRIBUTE5] [varchar](500) NULL,
	[ATTRIBUTE6] [varchar](500) NULL,
	[ATTRIBUTE7] [varchar](500) NULL,
	[ATTRIBUTE8] [varchar](500) NULL,
	[ATTRIBUTE9] [varchar](500) NULL,
	[ATTRIBUTE10] [varchar](500) NULL,
	[ATTRIBUTE11] [varchar](500) NULL,
	[ATTRIBUTE12] [varchar](500) NULL,
	[ATTRIBUTE13] [varchar](500) NULL,
	[ATTRIBUTE14] [varchar](500) NULL,
	[ATTRIBUTE15] [varchar](4000) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](500) NULL,
	[APPROVAL_STATUS] [varchar](250) NULL,
	[APPROVAL_DESCRIPTION] [varchar](500) NULL,
	[POSTING_STATUS] [varchar](250) NULL,
	[CANCELLED_DATE] [varchar](500) NULL,
	[CANCELLED_BY] [varchar](250) NULL,
	[CANCELLED_AMOUNT] [varchar](250) NULL,
	[TEMP_CANCELLED_AMOUNT] [varchar](250) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](250) NULL,
	[USSGL_TRX_CODE_CONTEXT] [varchar](250) NULL,
	[PROJECT_ID] [varchar](250) NULL,
	[TASK_ID] [varchar](250) NULL,
	[EXPENDITURE_TYPE] [varchar](250) NULL,
	[EXPENDITURE_ITEM_DATE] [varchar](500) NULL,
	[PA_QUANTITY] [varchar](250) NULL,
	[EXPENDITURE_ORGANIZATION_ID] [varchar](250) NULL,
	[PA_DEFAULT_DIST_CCID] [varchar](250) NULL,
	[PAYMENT_AMOUNT_TOTAL] [varchar](250) NULL,
	[AWT_FLAG] [varchar](10) NULL,
	[AWT_GROUP_ID] [varchar](250) NULL,
	[REFERENCE_1] [varchar](250) NULL,
	[REFERENCE_2] [varchar](250) NULL,
	[ORG_ID] [varchar](250) NULL,
	[PRE_WITHHOLDING_AMOUNT] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER1] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER2] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER3] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER4] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER5] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER1] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER2] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER3] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER4] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER5] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_DATE1] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE2] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE3] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE4] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE5] [varchar](500) NULL,
	[ATTRIBUTE_DATE1] [varchar](500) NULL,
	[ATTRIBUTE_DATE2] [varchar](500) NULL,
	[ATTRIBUTE_DATE3] [varchar](500) NULL,
	[ATTRIBUTE_DATE4] [varchar](500) NULL,
	[ATTRIBUTE_DATE5] [varchar](500) NULL,
	[PAYMENT_CROSS_RATE_TYPE] [varchar](250) NULL,
	[PAYMENT_CROSS_RATE_DATE] [varchar](500) NULL,
	[PAY_CURR_INVOICE_AMOUNT] [varchar](250) NULL,
	[MRC_BASE_AMOUNT] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE_TYPE] [varchar](2000) NULL,
	[MRC_EXCHANGE_DATE] [varchar](2000) NULL,
	[MRC_POSTING_STATUS] [varchar](4000) NULL,
	[GL_DATE] [varchar](500) NULL,
	[AWARD_ID] [varchar](250) NULL,
	[PAID_ON_BEHALF_EMPLOYEE_ID] [varchar](250) NULL,
	[AMT_DUE_CCARD_COMPANY] [varchar](250) NULL,
	[AMT_DUE_EMPLOYEE] [varchar](250) NULL,
	[APPROVAL_READY_FLAG] [varchar](10) NULL,
	[APPROVAL_ITERATION] [varchar](250) NULL,
	[WFAPPROVAL_STATUS] [varchar](250) NULL,
	[REQUESTER_ID] [varchar](250) NULL,
	[VALIDATION_REQUEST_ID] [varchar](250) NULL,
	[VALIDATED_TAX_AMOUNT] [varchar](250) NULL,
	[QUICK_CREDIT] [varchar](10) NULL,
	[CREDITED_INVOICE_ID] [varchar](250) NULL,
	[DISTRIBUTION_SET_ID] [varchar](250) NULL,
	[APPLICATION_ID] [varchar](250) NULL,
	[PRODUCT_TABLE] [varchar](4000) NULL,
	[REFERENCE_KEY1] [varchar](4000) NULL,
	[REFERENCE_KEY2] [varchar](4000) NULL,
	[REFERENCE_KEY3] [varchar](4000) NULL,
	[REFERENCE_KEY4] [varchar](4000) NULL,
	[REFERENCE_KEY5] [varchar](4000) NULL,
	[TOTAL_TAX_AMOUNT] [varchar](250) NULL,
	[SELF_ASSESSED_TAX_AMOUNT] [varchar](250) NULL,
	[TAX_RELATED_INVOICE_ID] [varchar](250) NULL,
	[TRX_BUSINESS_CATEGORY] [varchar](500) NULL,
	[USER_DEFINED_FISC_CLASS] [varchar](500) NULL,
	[TAXATION_COUNTRY] [varchar](250) NULL,
	[DOCUMENT_SUB_TYPE] [varchar](500) NULL,
	[SUPPLIER_TAX_INVOICE_NUMBER] [varchar](500) NULL,
	[SUPPLIER_TAX_INVOICE_DATE] [varchar](500) NULL,
	[SUPPLIER_TAX_EXCHANGE_RATE] [varchar](250) NULL,
	[TAX_INVOICE_RECORDING_DATE] [varchar](500) NULL,
	[TAX_INVOICE_INTERNAL_SEQ] [varchar](500) NULL,
	[LEGAL_ENTITY_ID] [varchar](250) NULL,
	[HISTORICAL_FLAG] [varchar](10) NULL,
	[FORCE_REVALIDATION_FLAG] [varchar](10) NULL,
	[BANK_CHARGE_BEARER] [varchar](250) NULL,
	[REMITTANCE_MESSAGE1] [varchar](500) NULL,
	[REMITTANCE_MESSAGE2] [varchar](500) NULL,
	[REMITTANCE_MESSAGE3] [varchar](500) NULL,
	[UNIQUE_REMITTANCE_IDENTIFIER] [varchar](500) NULL,
	[URI_CHECK_DIGIT] [varchar](10) NULL,
	[SETTLEMENT_PRIORITY] [varchar](250) NULL,
	[PAYMENT_REASON_CODE] [varchar](250) NULL,
	[PAYMENT_REASON_COMMENTS] [varchar](500) NULL,
	[PAYMENT_METHOD_CODE] [varchar](250) NULL,
	[DELIVERY_CHANNEL_CODE] [varchar](250) NULL,
	[QUICK_PO_HEADER_ID] [varchar](250) NULL,
	[NET_OF_RETAINAGE_FLAG] [varchar](10) NULL,
	[RELEASE_AMOUNT_NET_OF_TAX] [varchar](250) NULL,
	[CONTROL_AMOUNT] [varchar](250) NULL,
	[PARTY_ID] [varchar](250) NULL,
	[PARTY_SITE_ID] [varchar](250) NULL,
	[PAY_PROC_TRXN_TYPE_CODE] [varchar](250) NULL,
	[PAYMENT_FUNCTION] [varchar](250) NULL,
	[CUST_REGISTRATION_CODE] [varchar](250) NULL,
	[CUST_REGISTRATION_NUMBER] [varchar](250) NULL,
	[PORT_OF_ENTRY_CODE] [varchar](250) NULL,
	[EXTERNAL_BANK_ACCOUNT_ID] [varchar](250) NULL,
	[FINANCING_STATUS_CODE] [varchar](250) NULL,
	[FINANCING_STATUS_DATE] [varchar](500) NULL,
	[VENDOR_CONTACT_ID] [varchar](250) NULL,
	[INTERNAL_CONTACT_EMAIL] [varchar](2000) NULL,
	[DISC_IS_INV_LESS_TAX_FLAG] [varchar](10) NULL,
	[EXCLUDE_FREIGHT_FROM_DISCOUNT] [varchar](10) NULL,
	[OBJECT_VERSION_NUMBER] [varchar](250) NULL,
	[EXCHANGE_RATE_TYPE] [varchar](250) NULL,
	[EXCHANGE_RATE] [varchar](250) NULL,
	[EXCHANGE_DATE] [varchar](500) NULL,
	[EMPLOYEE_ADDRESS_CODE] [varchar](250) NULL,
	[INTERCOMPANY_FLAG] [varchar](10) NULL,
	[IMPORT_DOCUMENT_NUMBER] [varchar](250) NULL,
	[IMPORT_DOCUMENT_DATE] [varchar](500) NULL,
	[CORRECTION_YEAR] [varchar](250) NULL,
	[CORRECTION_PERIOD] [varchar](10) NULL,
	[CHECK_VAT_AMOUNT_PAID] [varchar](10) NULL,
	[REQUEST_ID] [varchar](250) NULL,
	[JOB_DEFINITION_NAME] [varchar](250) NULL,
	[JOB_DEFINITION_PACKAGE] [varchar](4000) NULL,
	[TRANSACTION_DEADLINE] [varchar](250) NULL,
	[MERGE_REQUEST_ID] [varchar](250) NULL,
	[BUDGET_DATE] [varchar](500) NULL,
	[DATA_SET_ID] [varchar](250) NULL,
	[FUNDS_STATUS] [varchar](250) NULL,
	[FIRST_PARTY_REGISTRATION_ID] [varchar](250) NULL,
	[THIRD_PARTY_REGISTRATION_ID] [varchar](250) NULL,
	[ROUTING_ATTRIBUTE1] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE2] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE3] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE4] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE5] [varchar](500) NULL,
	[IMAGE_DOCUMENT_NUM] [varchar](250) NULL,
	[FISCAL_DOC_ACCESS_KEY] [varchar](250) NULL,
	[REMIT_TO_SUPPLIER_NAME] [varchar](500) NULL,
	[REMIT_TO_SUPPLIER_ID] [varchar](250) NULL,
	[REMIT_TO_ADDRESS_NAME] [varchar](500) NULL,
	[REMIT_TO_ADDRESS_ID] [varchar](250) NULL,
	[RELATIONSHIP_ID] [varchar](250) NULL,
	[PO_MATCHED_FLAG] [varchar](10) NULL,
	[VALIDATION_WORKER_ID] [varchar](250) NULL,
	[LOCKED_BY] [varchar](250) NULL,
	[LOCK_TIME] [datetime] NULL,
	[ROUTING_STATUS_LOOKUP_CODE] [varchar](250) NULL,
	[ACC_REFERENCE_VALUE1] [varchar](4000) NULL,
	[ADDITIONAL_NOTE] [varchar](4000) NULL,
	[SOURCE_NAME] [varchar](250) NULL,
	[SUB_SOURCE_NAME] [varchar](250) NULL,
	[CREATED_DATE_TIME] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO






CREATE TABLE [rpy].[Invoice_header_ap_invoices_all]
(
	[INVOICE_ID] [varchar](250) NULL,
	[LAST_UPDATE_DATE] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](250) NULL,
	[VENDOR_ID] [varchar](250) NULL,
	[INVOICE_NUM] [varchar](250) NULL,
	[SET_OF_BOOKS_ID] [varchar](250) NULL,
	[INVOICE_CURRENCY_CODE] [varchar](250) NULL,
	[PAYMENT_CURRENCY_CODE] [varchar](250) NULL,
	[PAYMENT_CROSS_RATE] [varchar](250) NULL,
	[INVOICE_AMOUNT] [varchar](250) NULL,
	[VENDOR_SITE_ID] [varchar](250) NULL,
	[AMOUNT_PAID] [varchar](250) NULL,
	[DISCOUNT_AMOUNT_TAKEN] [varchar](250) NULL,
	[INVOICE_DATE] [varchar](500) NULL,
	[SOURCE] [varchar](250) NULL,
	[INVOICE_TYPE_LOOKUP_CODE] [varchar](250) NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[BATCH_ID] [varchar](250) NULL,
	[AMOUNT_APPLICABLE_TO_DISCOUNT] [varchar](250) NULL,
	[TERMS_ID] [varchar](250) NULL,
	[TERMS_DATE] [varchar](500) NULL,
	[PAYMENT_METHOD_LOOKUP_CODE] [varchar](250) NULL,
	[PAY_GROUP_LOOKUP_CODE] [varchar](250) NULL,
	[ACCTS_PAY_CODE_COMBINATION_ID] [varchar](250) NULL,
	[PAYMENT_STATUS_FLAG] [varchar](10) NULL,
	[CREATION_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](250) NULL,
	[BASE_AMOUNT] [varchar](250) NULL,
	[LAST_UPDATE_LOGIN] [varchar](250) NULL,
	[EXCLUSIVE_PAYMENT_FLAG] [varchar](10) NULL,
	[PO_HEADER_ID] [varchar](250) NULL,
	[FREIGHT_AMOUNT] [varchar](250) NULL,
	[GOODS_RECEIVED_DATE] [varchar](500) NULL,
	[INVOICE_RECEIVED_DATE] [varchar](500) NULL,
	[VOUCHER_NUM] [varchar](250) NULL,
	[APPROVED_AMOUNT] [varchar](250) NULL,
	[RECURRING_PAYMENT_ID] [varchar](250) NULL,
	[EARLIEST_SETTLEMENT_DATE] [varchar](500) NULL,
	[DOC_SEQUENCE_ID] [varchar](250) NULL,
	[DOC_SEQUENCE_VALUE] [varchar](250) NULL,
	[DOC_CATEGORY_CODE] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](500) NULL,
	[ATTRIBUTE2] [varchar](500) NULL,
	[ATTRIBUTE3] [varchar](500) NULL,
	[ATTRIBUTE4] [varchar](500) NULL,
	[ATTRIBUTE5] [varchar](500) NULL,
	[ATTRIBUTE6] [varchar](500) NULL,
	[ATTRIBUTE7] [varchar](500) NULL,
	[ATTRIBUTE8] [varchar](500) NULL,
	[ATTRIBUTE9] [varchar](500) NULL,
	[ATTRIBUTE10] [varchar](500) NULL,
	[ATTRIBUTE11] [varchar](500) NULL,
	[ATTRIBUTE12] [varchar](500) NULL,
	[ATTRIBUTE13] [varchar](500) NULL,
	[ATTRIBUTE14] [varchar](500) NULL,
	[ATTRIBUTE15] [varchar](4000) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](500) NULL,
	[APPROVAL_STATUS] [varchar](250) NULL,
	[APPROVAL_DESCRIPTION] [varchar](500) NULL,
	[POSTING_STATUS] [varchar](250) NULL,
	[CANCELLED_DATE] [varchar](500) NULL,
	[CANCELLED_BY] [varchar](250) NULL,
	[CANCELLED_AMOUNT] [varchar](250) NULL,
	[TEMP_CANCELLED_AMOUNT] [varchar](250) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](250) NULL,
	[USSGL_TRX_CODE_CONTEXT] [varchar](250) NULL,
	[PROJECT_ID] [varchar](250) NULL,
	[TASK_ID] [varchar](250) NULL,
	[EXPENDITURE_TYPE] [varchar](250) NULL,
	[EXPENDITURE_ITEM_DATE] [varchar](500) NULL,
	[PA_QUANTITY] [varchar](250) NULL,
	[EXPENDITURE_ORGANIZATION_ID] [varchar](250) NULL,
	[PA_DEFAULT_DIST_CCID] [varchar](250) NULL,
	[PAYMENT_AMOUNT_TOTAL] [varchar](250) NULL,
	[AWT_FLAG] [varchar](10) NULL,
	[AWT_GROUP_ID] [varchar](250) NULL,
	[REFERENCE_1] [varchar](250) NULL,
	[REFERENCE_2] [varchar](250) NULL,
	[ORG_ID] [varchar](250) NULL,
	[PRE_WITHHOLDING_AMOUNT] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER1] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER2] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER3] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER4] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_NUMBER5] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER1] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER2] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER3] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER4] [varchar](250) NULL,
	[ATTRIBUTE_NUMBER5] [varchar](250) NULL,
	[GLOBAL_ATTRIBUTE_DATE1] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE2] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE3] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE4] [varchar](500) NULL,
	[GLOBAL_ATTRIBUTE_DATE5] [varchar](500) NULL,
	[ATTRIBUTE_DATE1] [varchar](500) NULL,
	[ATTRIBUTE_DATE2] [varchar](500) NULL,
	[ATTRIBUTE_DATE3] [varchar](500) NULL,
	[ATTRIBUTE_DATE4] [varchar](500) NULL,
	[ATTRIBUTE_DATE5] [varchar](500) NULL,
	[PAYMENT_CROSS_RATE_TYPE] [varchar](250) NULL,
	[PAYMENT_CROSS_RATE_DATE] [varchar](500) NULL,
	[PAY_CURR_INVOICE_AMOUNT] [varchar](250) NULL,
	[MRC_BASE_AMOUNT] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE_TYPE] [varchar](2000) NULL,
	[MRC_EXCHANGE_DATE] [varchar](2000) NULL,
	[MRC_POSTING_STATUS] [varchar](4000) NULL,
	[GL_DATE] [varchar](500) NULL,
	[AWARD_ID] [varchar](250) NULL,
	[PAID_ON_BEHALF_EMPLOYEE_ID] [varchar](250) NULL,
	[AMT_DUE_CCARD_COMPANY] [varchar](250) NULL,
	[AMT_DUE_EMPLOYEE] [varchar](250) NULL,
	[APPROVAL_READY_FLAG] [varchar](10) NULL,
	[APPROVAL_ITERATION] [varchar](250) NULL,
	[WFAPPROVAL_STATUS] [varchar](250) NULL,
	[REQUESTER_ID] [varchar](250) NULL,
	[VALIDATION_REQUEST_ID] [varchar](250) NULL,
	[VALIDATED_TAX_AMOUNT] [varchar](250) NULL,
	[QUICK_CREDIT] [varchar](10) NULL,
	[CREDITED_INVOICE_ID] [varchar](250) NULL,
	[DISTRIBUTION_SET_ID] [varchar](250) NULL,
	[APPLICATION_ID] [varchar](250) NULL,
	[PRODUCT_TABLE] [varchar](4000) NULL,
	[REFERENCE_KEY1] [varchar](4000) NULL,
	[REFERENCE_KEY2] [varchar](4000) NULL,
	[REFERENCE_KEY3] [varchar](4000) NULL,
	[REFERENCE_KEY4] [varchar](4000) NULL,
	[REFERENCE_KEY5] [varchar](4000) NULL,
	[TOTAL_TAX_AMOUNT] [varchar](250) NULL,
	[SELF_ASSESSED_TAX_AMOUNT] [varchar](250) NULL,
	[TAX_RELATED_INVOICE_ID] [varchar](250) NULL,
	[TRX_BUSINESS_CATEGORY] [varchar](500) NULL,
	[USER_DEFINED_FISC_CLASS] [varchar](500) NULL,
	[TAXATION_COUNTRY] [varchar](250) NULL,
	[DOCUMENT_SUB_TYPE] [varchar](500) NULL,
	[SUPPLIER_TAX_INVOICE_NUMBER] [varchar](500) NULL,
	[SUPPLIER_TAX_INVOICE_DATE] [varchar](500) NULL,
	[SUPPLIER_TAX_EXCHANGE_RATE] [varchar](250) NULL,
	[TAX_INVOICE_RECORDING_DATE] [varchar](500) NULL,
	[TAX_INVOICE_INTERNAL_SEQ] [varchar](500) NULL,
	[LEGAL_ENTITY_ID] [varchar](250) NULL,
	[HISTORICAL_FLAG] [varchar](10) NULL,
	[FORCE_REVALIDATION_FLAG] [varchar](10) NULL,
	[BANK_CHARGE_BEARER] [varchar](250) NULL,
	[REMITTANCE_MESSAGE1] [varchar](500) NULL,
	[REMITTANCE_MESSAGE2] [varchar](500) NULL,
	[REMITTANCE_MESSAGE3] [varchar](500) NULL,
	[UNIQUE_REMITTANCE_IDENTIFIER] [varchar](500) NULL,
	[URI_CHECK_DIGIT] [varchar](10) NULL,
	[SETTLEMENT_PRIORITY] [varchar](250) NULL,
	[PAYMENT_REASON_CODE] [varchar](250) NULL,
	[PAYMENT_REASON_COMMENTS] [varchar](500) NULL,
	[PAYMENT_METHOD_CODE] [varchar](250) NULL,
	[DELIVERY_CHANNEL_CODE] [varchar](250) NULL,
	[QUICK_PO_HEADER_ID] [varchar](250) NULL,
	[NET_OF_RETAINAGE_FLAG] [varchar](10) NULL,
	[RELEASE_AMOUNT_NET_OF_TAX] [varchar](250) NULL,
	[CONTROL_AMOUNT] [varchar](250) NULL,
	[PARTY_ID] [varchar](250) NULL,
	[PARTY_SITE_ID] [varchar](250) NULL,
	[PAY_PROC_TRXN_TYPE_CODE] [varchar](250) NULL,
	[PAYMENT_FUNCTION] [varchar](250) NULL,
	[CUST_REGISTRATION_CODE] [varchar](250) NULL,
	[CUST_REGISTRATION_NUMBER] [varchar](250) NULL,
	[PORT_OF_ENTRY_CODE] [varchar](250) NULL,
	[EXTERNAL_BANK_ACCOUNT_ID] [varchar](250) NULL,
	[FINANCING_STATUS_CODE] [varchar](250) NULL,
	[FINANCING_STATUS_DATE] [varchar](500) NULL,
	[VENDOR_CONTACT_ID] [varchar](250) NULL,
	[INTERNAL_CONTACT_EMAIL] [varchar](2000) NULL,
	[DISC_IS_INV_LESS_TAX_FLAG] [varchar](10) NULL,
	[EXCLUDE_FREIGHT_FROM_DISCOUNT] [varchar](10) NULL,
	[OBJECT_VERSION_NUMBER] [varchar](250) NULL,
	[EXCHANGE_RATE_TYPE] [varchar](250) NULL,
	[EXCHANGE_RATE] [varchar](250) NULL,
	[EXCHANGE_DATE] [varchar](500) NULL,
	[EMPLOYEE_ADDRESS_CODE] [varchar](250) NULL,
	[INTERCOMPANY_FLAG] [varchar](10) NULL,
	[IMPORT_DOCUMENT_NUMBER] [varchar](250) NULL,
	[IMPORT_DOCUMENT_DATE] [varchar](500) NULL,
	[CORRECTION_YEAR] [varchar](250) NULL,
	[CORRECTION_PERIOD] [varchar](10) NULL,
	[CHECK_VAT_AMOUNT_PAID] [varchar](10) NULL,
	[REQUEST_ID] [varchar](250) NULL,
	[JOB_DEFINITION_NAME] [varchar](250) NULL,
	[JOB_DEFINITION_PACKAGE] [varchar](4000) NULL,
	[TRANSACTION_DEADLINE] [varchar](250) NULL,
	[MERGE_REQUEST_ID] [varchar](250) NULL,
	[BUDGET_DATE] [varchar](500) NULL,
	[DATA_SET_ID] [varchar](250) NULL,
	[FUNDS_STATUS] [varchar](250) NULL,
	[FIRST_PARTY_REGISTRATION_ID] [varchar](250) NULL,
	[THIRD_PARTY_REGISTRATION_ID] [varchar](250) NULL,
	[ROUTING_ATTRIBUTE1] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE2] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE3] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE4] [varchar](500) NULL,
	[ROUTING_ATTRIBUTE5] [varchar](500) NULL,
	[IMAGE_DOCUMENT_NUM] [varchar](250) NULL,
	[FISCAL_DOC_ACCESS_KEY] [varchar](250) NULL,
	[REMIT_TO_SUPPLIER_NAME] [varchar](500) NULL,
	[REMIT_TO_SUPPLIER_ID] [varchar](250) NULL,
	[REMIT_TO_ADDRESS_NAME] [varchar](500) NULL,
	[REMIT_TO_ADDRESS_ID] [varchar](250) NULL,
	[RELATIONSHIP_ID] [varchar](250) NULL,
	[PO_MATCHED_FLAG] [varchar](10) NULL,
	[VALIDATION_WORKER_ID] [varchar](250) NULL,
	[LOCKED_BY] [varchar](250) NULL,
	[LOCK_TIME] [datetime] NULL,
	[ROUTING_STATUS_LOOKUP_CODE] [varchar](250) NULL,
	[ACC_REFERENCE_VALUE1] [varchar](4000) NULL,
	[ADDITIONAL_NOTE] [varchar](4000) NULL,
	[SOURCE_NAME] [varchar](250) NULL,
	[SUB_SOURCE_NAME] [varchar](250) NULL,
	[CREATED_DATE_TIME] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


Create View [rpy].[Invoice_header_ap_invoices_all_v] as
SELECT a.[INVOICE_ID]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[VENDOR_ID]
      ,[INVOICE_NUM]
      ,[SET_OF_BOOKS_ID]
      ,[INVOICE_CURRENCY_CODE]
      ,[PAYMENT_CURRENCY_CODE]
      ,[PAYMENT_CROSS_RATE]
      ,CAST([INVOICE_AMOUNT] as decimal(38, 10)) as [INVOICE_AMOUNT]
      ,[VENDOR_SITE_ID]
      ,CAST([AMOUNT_PAID] as decimal(38, 10)) as [AMOUNT_PAID]
      ,CAST([DISCOUNT_AMOUNT_TAKEN] as decimal(38, 10)) as [DISCOUNT_AMOUNT_TAKEN]
	  ,FORMAT(Cast([INVOICE_DATE] as date), 'MM-dd-yyyy')  as [INVOICE_DATE]
      --,FORMAT(Cast(LEFT([INVOICE_DATE],10) as datetime), 'MM-dd-yyyy')  as [INVOICE_DATE]
      ,[SOURCE]
      ,[INVOICE_TYPE_LOOKUP_CODE]
      ,[DESCRIPTION]
      ,[BATCH_ID]
      ,CAST([AMOUNT_APPLICABLE_TO_DISCOUNT] as decimal(38, 10)) as [AMOUNT_APPLICABLE_TO_DISCOUNT]
      ,[TERMS_ID]
      ,FORMAT(Cast([TERMS_DATE] as date), 'MM-dd-yyyy') as [TERMS_DATE]
      ,[PAYMENT_METHOD_LOOKUP_CODE]
      ,[PAY_GROUP_LOOKUP_CODE]
      ,[ACCTS_PAY_CODE_COMBINATION_ID]
      ,[PAYMENT_STATUS_FLAG]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[CREATED_BY]
      ,CAST([BASE_AMOUNT] as decimal(38, 10)) as [BASE_AMOUNT]
      ,[LAST_UPDATE_LOGIN]
      ,[EXCLUSIVE_PAYMENT_FLAG]
      ,[PO_HEADER_ID]
      ,CAST([FREIGHT_AMOUNT] as decimal(38, 10)) as [FREIGHT_AMOUNT]
      ,FORMAT(Cast([GOODS_RECEIVED_DATE] as date), 'MM-dd-yyyy') as [GOODS_RECEIVED_DATE]
      ,FORMAT(Cast([INVOICE_RECEIVED_DATE] as date), 'MM-dd-yyyy') as [INVOICE_RECEIVED_DATE]
      ,[VOUCHER_NUM]
      ,CAST([APPROVED_AMOUNT] as decimal(38, 10)) as [APPROVED_AMOUNT]
      ,[RECURRING_PAYMENT_ID]
      ,FORMAT(Cast([EARLIEST_SETTLEMENT_DATE] as date), 'MM-dd-yyyy') as [EARLIEST_SETTLEMENT_DATE]
      ,[DOC_SEQUENCE_ID]
      ,[DOC_SEQUENCE_VALUE]
      ,[DOC_CATEGORY_CODE]
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
      ,[ATTRIBUTE_CATEGORY]
      ,[APPROVAL_STATUS]
      ,[APPROVAL_DESCRIPTION]
      ,[POSTING_STATUS]
      ,FORMAT(Cast([CANCELLED_DATE] as date), 'MM-dd-yyyy') as [CANCELLED_DATE]
      ,[CANCELLED_BY]
      ,CAST([CANCELLED_AMOUNT] as decimal(38, 10)) as [CANCELLED_AMOUNT]
      ,CAST([TEMP_CANCELLED_AMOUNT] as decimal(38, 10)) as [TEMP_CANCELLED_AMOUNT]
      ,[USSGL_TRANSACTION_CODE]
      ,[USSGL_TRX_CODE_CONTEXT]
      ,[PROJECT_ID]
      ,[TASK_ID]
      ,[EXPENDITURE_TYPE]
      ,FORMAT(Cast([EXPENDITURE_ITEM_DATE] as date), 'MM-dd-yyyy') as [EXPENDITURE_ITEM_DATE]
      ,[PA_QUANTITY]
      ,[EXPENDITURE_ORGANIZATION_ID]
      ,[PA_DEFAULT_DIST_CCID]
      ,CAST([PAYMENT_AMOUNT_TOTAL] as decimal(38, 10)) as [PAYMENT_AMOUNT_TOTAL]
      ,[AWT_FLAG]
      ,[AWT_GROUP_ID]
      ,[REFERENCE_1]
      ,[REFERENCE_2]
      ,[ORG_ID]
      ,CAST([PRE_WITHHOLDING_AMOUNT] as decimal(38, 10)) as [PRE_WITHHOLDING_AMOUNT]
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
      ,[GLOBAL_ATTRIBUTE_NUMBER1]
      ,[GLOBAL_ATTRIBUTE_NUMBER2]
      ,[GLOBAL_ATTRIBUTE_NUMBER3]
      ,[GLOBAL_ATTRIBUTE_NUMBER4]
      ,[GLOBAL_ATTRIBUTE_NUMBER5]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE1] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE1]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE2] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE2]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE3] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE3]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE4] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE4]
      ,FORMAT(Cast([GLOBAL_ATTRIBUTE_DATE5] as date), 'MM-dd-yyyy') as [GLOBAL_ATTRIBUTE_DATE5]
      ,FORMAT(Cast([ATTRIBUTE_DATE1] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE1]
      ,FORMAT(Cast([ATTRIBUTE_DATE2] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE2]
      ,FORMAT(Cast([ATTRIBUTE_DATE3] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE3]
      ,FORMAT(Cast([ATTRIBUTE_DATE4] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE4]
      ,FORMAT(Cast([ATTRIBUTE_DATE5] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE5]
      ,[PAYMENT_CROSS_RATE_TYPE]
      ,FORMAT(Cast([PAYMENT_CROSS_RATE_DATE] as date), 'MM-dd-yyyy') as [PAYMENT_CROSS_RATE_DATE]
      ,CAST([PAY_CURR_INVOICE_AMOUNT] as decimal(38, 10)) as [PAY_CURR_INVOICE_AMOUNT]
      ,CAST([MRC_BASE_AMOUNT] as decimal(38, 10)) as [MRC_BASE_AMOUNT]
      ,[MRC_EXCHANGE_RATE]
      ,[MRC_EXCHANGE_RATE_TYPE]
      ,FORMAT(Cast([MRC_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [MRC_EXCHANGE_DATE]
      ,[MRC_POSTING_STATUS]
      ,FORMAT(Cast([GL_DATE] as date), 'MM-dd-yyyy') as [GL_DATE]
      ,[AWARD_ID]
      ,[PAID_ON_BEHALF_EMPLOYEE_ID]
      ,CAST([AMT_DUE_CCARD_COMPANY] as decimal(38, 10)) as [AMT_DUE_CCARD_COMPANY]
      ,CAST([AMT_DUE_EMPLOYEE] as decimal(38, 10)) as [AMT_DUE_EMPLOYEE]
      ,[APPROVAL_READY_FLAG]
      ,[APPROVAL_ITERATION]
      ,[WFAPPROVAL_STATUS]
      ,[REQUESTER_ID]
      ,[VALIDATION_REQUEST_ID]
      ,CAST([VALIDATED_TAX_AMOUNT] as decimal(38, 10)) as [VALIDATED_TAX_AMOUNT]
      ,[QUICK_CREDIT]
      ,[CREDITED_INVOICE_ID]
      ,[DISTRIBUTION_SET_ID]
      ,[APPLICATION_ID]
      ,[PRODUCT_TABLE]
      ,[REFERENCE_KEY1]
      ,[REFERENCE_KEY2]
      ,[REFERENCE_KEY3]
      ,[REFERENCE_KEY4]
      ,[REFERENCE_KEY5]
      ,CAST([TOTAL_TAX_AMOUNT] as decimal(38, 10)) as [TOTAL_TAX_AMOUNT]
      ,CAST([SELF_ASSESSED_TAX_AMOUNT] as decimal(38, 10)) as [SELF_ASSESSED_TAX_AMOUNT]
      ,[TAX_RELATED_INVOICE_ID]
      ,[TRX_BUSINESS_CATEGORY]
      ,[USER_DEFINED_FISC_CLASS]
      ,[TAXATION_COUNTRY]
      ,[DOCUMENT_SUB_TYPE]
      ,[SUPPLIER_TAX_INVOICE_NUMBER]
      ,FORMAT(Cast([SUPPLIER_TAX_INVOICE_DATE] as date), 'MM-dd-yyyy') as [SUPPLIER_TAX_INVOICE_DATE]
      ,[SUPPLIER_TAX_EXCHANGE_RATE]
      ,FORMAT(Cast([TAX_INVOICE_RECORDING_DATE] as date), 'MM-dd-yyyy') as [TAX_INVOICE_RECORDING_DATE]
      ,[TAX_INVOICE_INTERNAL_SEQ]
      ,[LEGAL_ENTITY_ID]
      ,[HISTORICAL_FLAG]
      ,[FORCE_REVALIDATION_FLAG]
      ,[BANK_CHARGE_BEARER]
      ,[REMITTANCE_MESSAGE1]
      ,[REMITTANCE_MESSAGE2]
      ,[REMITTANCE_MESSAGE3]
      ,[UNIQUE_REMITTANCE_IDENTIFIER]
      ,[URI_CHECK_DIGIT]
      ,[SETTLEMENT_PRIORITY]
      ,[PAYMENT_REASON_CODE]
      ,[PAYMENT_REASON_COMMENTS]
      ,[PAYMENT_METHOD_CODE]
      ,[DELIVERY_CHANNEL_CODE]
      ,[QUICK_PO_HEADER_ID]
      ,[NET_OF_RETAINAGE_FLAG]
      ,CAST([RELEASE_AMOUNT_NET_OF_TAX] as decimal(38, 10)) as [RELEASE_AMOUNT_NET_OF_TAX]
      ,CAST([CONTROL_AMOUNT] as decimal(38, 10)) as [CONTROL_AMOUNT]
      ,[PARTY_ID]
      ,[PARTY_SITE_ID]
      ,[PAY_PROC_TRXN_TYPE_CODE]
      ,[PAYMENT_FUNCTION]
      ,[CUST_REGISTRATION_CODE]
      ,[CUST_REGISTRATION_NUMBER]
      ,[PORT_OF_ENTRY_CODE]
      ,[EXTERNAL_BANK_ACCOUNT_ID]
      ,[FINANCING_STATUS_CODE]
      ,FORMAT(Cast([FINANCING_STATUS_DATE] as date), 'MM-dd-yyyy') as [FINANCING_STATUS_DATE]
      ,[VENDOR_CONTACT_ID]
      ,[INTERNAL_CONTACT_EMAIL]
      ,[DISC_IS_INV_LESS_TAX_FLAG]
      ,[EXCLUDE_FREIGHT_FROM_DISCOUNT]
      ,[OBJECT_VERSION_NUMBER]
      ,[EXCHANGE_RATE_TYPE]
      ,[EXCHANGE_RATE]
      ,FORMAT(Cast([EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [EXCHANGE_DATE]
      ,[EMPLOYEE_ADDRESS_CODE]
      ,[INTERCOMPANY_FLAG]
      ,[IMPORT_DOCUMENT_NUMBER]
      ,FORMAT(Cast([IMPORT_DOCUMENT_DATE] as date), 'MM-dd-yyyy') as [IMPORT_DOCUMENT_DATE]
      ,[CORRECTION_YEAR]
      ,[CORRECTION_PERIOD]
      ,[CHECK_VAT_AMOUNT_PAID]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[TRANSACTION_DEADLINE]
      ,[MERGE_REQUEST_ID]
      ,FORMAT(Cast([BUDGET_DATE] as date), 'MM-dd-yyyy') as [BUDGET_DATE]
      ,[DATA_SET_ID]
      ,[FUNDS_STATUS]
      ,[FIRST_PARTY_REGISTRATION_ID]
      ,[THIRD_PARTY_REGISTRATION_ID]
      ,[ROUTING_ATTRIBUTE1]
      ,[ROUTING_ATTRIBUTE2]
      ,[ROUTING_ATTRIBUTE3]
      ,[ROUTING_ATTRIBUTE4]
      ,[ROUTING_ATTRIBUTE5]
      ,[IMAGE_DOCUMENT_NUM]
      ,[FISCAL_DOC_ACCESS_KEY]
      ,[REMIT_TO_SUPPLIER_NAME]
      ,[REMIT_TO_SUPPLIER_ID]
      ,[REMIT_TO_ADDRESS_NAME]
      ,[REMIT_TO_ADDRESS_ID]
      ,[RELATIONSHIP_ID]
      ,[PO_MATCHED_FLAG]
      ,[VALIDATION_WORKER_ID]
      ,[LOCKED_BY]
      ,[LOCK_TIME]
      ,[ROUTING_STATUS_LOOKUP_CODE]
      ,[ACC_REFERENCE_VALUE1]
      ,[ADDITIONAL_NOTE]
      ,[SOURCE_NAME]
      ,[SUB_SOURCE_NAME]
      ,[CREATED_DATE_TIME]
  FROM [rpy].[Invoice_header_ap_invoices_all] a,
  (SELECT INVOICE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_header_ap_invoices_all] GROUP BY INVOICE_ID) b
WHERE a.INVOICE_ID = b.INVOICE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO




CREATE NONCLUSTERED INDEX [idx_Invoice_header_ap_invoices_all_INVOICE_ID_LAST_UPDATE_DATE] ON [rpy].[Invoice_header_ap_invoices_all]
(
	[INVOICE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO

