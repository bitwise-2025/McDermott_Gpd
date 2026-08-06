insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_distributions_all','NCSA','pl_po_distributions_all',NULL,'1','aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-30 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_distributions_all','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Distributions_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Distributions_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_DISTRIBUTIONS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_distributions_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Distributions_All_stage]
(

PO_DISTRIBUTION_ID	[varchar](4000) NULL,
BUDGET_DATE	datetime NULL,
CANCEL_BUDGET_DATE	datetime NULL,
CLOSE_BUDGET_DATE	datetime NULL,
FUNDS_STATUS	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
DIST_INTENDED_USE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
LINE_LOCATION_ID	[varchar](4000) NULL,
SET_OF_BOOKS_ID	[varchar](4000) NULL,
CODE_COMBINATION_ID	[varchar](4000) NULL,
QUANTITY_ORDERED	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
QUANTITY_DELIVERED	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
QUANTITY_CANCELLED	[varchar](4000) NULL,
CONSIGNMENT_QUANTITY	[varchar](4000) NULL,
REQ_HEADER_REFERENCE_NUM	[varchar](4000) NULL,
REQ_LINE_REFERENCE_NUM	[varchar](4000) NULL,
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
RATE_DATE	datetime NULL,
RATE	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
ACCRUED_FLAG	[varchar](4000) NULL,
ENCUMBERED_FLAG	[varchar](4000) NULL,
ENCUMBERED_AMOUNT	[varchar](4000) NULL,
UNENCUMBERED_QUANTITY	[varchar](4000) NULL,
UNENCUMBERED_AMOUNT	[varchar](4000) NULL,
FAILED_FUNDS_LOOKUP_CODE	[varchar](4000) NULL,
GL_ENCUMBERED_DATE	datetime NULL,
GL_ENCUMBERED_PERIOD_NAME	[varchar](4000) NULL,
GL_CANCELLED_DATE	datetime NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
DESTINATION_ORGANIZATION_ID	[varchar](4000) NULL,
DESTINATION_SUBINVENTORY	[varchar](4000) NULL,
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
WIP_ENTITY_ID	[varchar](4000) NULL,
WIP_OPERATION_SEQ_NUM	[varchar](4000) NULL,
WIP_RESOURCE_SEQ_NUM	[varchar](4000) NULL,
WIP_REPETITIVE_SCHEDULE_ID	[varchar](4000) NULL,
WIP_LINE_ID	[varchar](4000) NULL,
BOM_RESOURCE_ID	[varchar](4000) NULL,
BUDGET_ACCOUNT_ID	[varchar](4000) NULL,
ACCRUAL_ACCOUNT_ID	[varchar](4000) NULL,
VARIANCE_ACCOUNT_ID	[varchar](4000) NULL,
PREVENT_ENCUMBRANCE_FLAG	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
DISTRIBUTION_NUM	[varchar](4000) NULL,
SOURCE_DISTRIBUTION_ID	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
GL_CLOSED_DATE	datetime NULL,
ACCRUE_ON_RECEIPT_FLAG	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
KANBAN_CARD_ID	[varchar](4000) NULL,
AWARD_ID	[varchar](4000) NULL,
END_ITEM_UNIT_NUMBER	[varchar](4000) NULL,
TAX_RECOVERY_OVERRIDE_FLAG	[varchar](4000) NULL,
RECOVERABLE_TAX	[varchar](4000) NULL,
NONRECOVERABLE_TAX	[varchar](4000) NULL,
RECOVERABLE_INCLUSIVE_TAX	[varchar](4000) NULL,
NONRECOVERABLE_INCLUSIVE_TAX	[varchar](4000) NULL,
TAX_EXCLUSIVE_AMOUNT	[varchar](4000) NULL,
RECOVERY_RATE	[varchar](4000) NULL,
OKE_CONTRACT_LINE_ID	[varchar](4000) NULL,
OKE_CONTRACT_DELIVERABLE_ID	[varchar](4000) NULL,
AMOUNT_ORDERED	[varchar](4000) NULL,
AMOUNT_DELIVERED	[varchar](4000) NULL,
AMOUNT_CANCELLED	[varchar](4000) NULL,
DISTRIBUTION_TYPE	[varchar](4000) NULL,
AMOUNT_TO_ENCUMBER	[varchar](4000) NULL,
INVOICE_ADJUSTMENT_FLAG	[varchar](4000) NULL,
DEST_CHARGE_ACCOUNT_ID	[varchar](4000) NULL,
DEST_VARIANCE_ACCOUNT_ID	[varchar](4000) NULL,
QUANTITY_FINANCED	[varchar](4000) NULL,
AMOUNT_FINANCED	[varchar](4000) NULL,
QUANTITY_RECOUPED	[varchar](4000) NULL,
AMOUNT_RECOUPED	[varchar](4000) NULL,
RETAINAGE_WITHHELD_AMOUNT	[varchar](4000) NULL,
RETAINAGE_RELEASED_AMOUNT	[varchar](4000) NULL,
INVOICED_VAL_IN_NTFN	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
INTERFACE_DISTRIBUTION_REF	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PJC_PROJECT_ID	[varchar](4000) NULL,
PJC_TASK_ID	[varchar](4000) NULL,
PJC_EXPENDITURE_ITEM_DATE	datetime NULL,
PJC_ORGANIZATION_ID	[varchar](4000) NULL,
PJC_EXPENDITURE_TYPE_ID	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
PJC_BILLABLE_FLAG	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE1	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE2	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE3	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE4	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE5	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE6	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE7	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE8	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE9	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE10	[varchar](4000) NULL,
PJC_CONTRACT_ID	[varchar](4000) NULL,
PJC_WORK_TYPE_ID	[varchar](4000) NULL,
PJC_CAPITALIZABLE_FLAG	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE1	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE2	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE3	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE4	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE5	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE6	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE7	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE8	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE9	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE10	[varchar](4000) NULL,
PJC_FUNDING_ALLOCATION_ID	[varchar](4000) NULL,
PJC_CONTRACT_LINE_ID	[varchar](4000) NULL,
ORIGINAL_DISTRIBUTION_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_LOCATION_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_CONTACT_ID	[varchar](4000) NULL,
SHIPPING_UOM_QTY_DELIVERED	[varchar](4000) NULL,
SECONDARY_QUANTITY_DELIVERED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_CANCELED	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Po_Distributions_All]
(

PO_DISTRIBUTION_ID	[varchar](4000) NULL,
BUDGET_DATE	datetime NULL,
CANCEL_BUDGET_DATE	datetime NULL,
CLOSE_BUDGET_DATE	datetime NULL,
FUNDS_STATUS	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
DIST_INTENDED_USE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
LINE_LOCATION_ID	[varchar](4000) NULL,
SET_OF_BOOKS_ID	[varchar](4000) NULL,
CODE_COMBINATION_ID	[varchar](4000) NULL,
QUANTITY_ORDERED	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
QUANTITY_DELIVERED	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
QUANTITY_CANCELLED	[varchar](4000) NULL,
CONSIGNMENT_QUANTITY	[varchar](4000) NULL,
REQ_HEADER_REFERENCE_NUM	[varchar](4000) NULL,
REQ_LINE_REFERENCE_NUM	[varchar](4000) NULL,
REQ_DISTRIBUTION_ID	[varchar](4000) NULL,
DELIVER_TO_LOCATION_ID	[varchar](4000) NULL,
DELIVER_TO_PERSON_ID	[varchar](4000) NULL,
RATE_DATE	datetime NULL,
RATE	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
ACCRUED_FLAG	[varchar](4000) NULL,
ENCUMBERED_FLAG	[varchar](4000) NULL,
ENCUMBERED_AMOUNT	[varchar](4000) NULL,
UNENCUMBERED_QUANTITY	[varchar](4000) NULL,
UNENCUMBERED_AMOUNT	[varchar](4000) NULL,
FAILED_FUNDS_LOOKUP_CODE	[varchar](4000) NULL,
GL_ENCUMBERED_DATE	datetime NULL,
GL_ENCUMBERED_PERIOD_NAME	[varchar](4000) NULL,
GL_CANCELLED_DATE	datetime NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
DESTINATION_ORGANIZATION_ID	[varchar](4000) NULL,
DESTINATION_SUBINVENTORY	[varchar](4000) NULL,
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
WIP_ENTITY_ID	[varchar](4000) NULL,
WIP_OPERATION_SEQ_NUM	[varchar](4000) NULL,
WIP_RESOURCE_SEQ_NUM	[varchar](4000) NULL,
WIP_REPETITIVE_SCHEDULE_ID	[varchar](4000) NULL,
WIP_LINE_ID	[varchar](4000) NULL,
BOM_RESOURCE_ID	[varchar](4000) NULL,
BUDGET_ACCOUNT_ID	[varchar](4000) NULL,
ACCRUAL_ACCOUNT_ID	[varchar](4000) NULL,
VARIANCE_ACCOUNT_ID	[varchar](4000) NULL,
PREVENT_ENCUMBRANCE_FLAG	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
DESTINATION_CONTEXT	[varchar](4000) NULL,
DISTRIBUTION_NUM	[varchar](4000) NULL,
SOURCE_DISTRIBUTION_ID	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
GL_CLOSED_DATE	datetime NULL,
ACCRUE_ON_RECEIPT_FLAG	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
KANBAN_CARD_ID	[varchar](4000) NULL,
AWARD_ID	[varchar](4000) NULL,
END_ITEM_UNIT_NUMBER	[varchar](4000) NULL,
TAX_RECOVERY_OVERRIDE_FLAG	[varchar](4000) NULL,
RECOVERABLE_TAX	[varchar](4000) NULL,
NONRECOVERABLE_TAX	[varchar](4000) NULL,
RECOVERABLE_INCLUSIVE_TAX	[varchar](4000) NULL,
NONRECOVERABLE_INCLUSIVE_TAX	[varchar](4000) NULL,
TAX_EXCLUSIVE_AMOUNT	[varchar](4000) NULL,
RECOVERY_RATE	[varchar](4000) NULL,
OKE_CONTRACT_LINE_ID	[varchar](4000) NULL,
OKE_CONTRACT_DELIVERABLE_ID	[varchar](4000) NULL,
AMOUNT_ORDERED	[varchar](4000) NULL,
AMOUNT_DELIVERED	[varchar](4000) NULL,
AMOUNT_CANCELLED	[varchar](4000) NULL,
DISTRIBUTION_TYPE	[varchar](4000) NULL,
AMOUNT_TO_ENCUMBER	[varchar](4000) NULL,
INVOICE_ADJUSTMENT_FLAG	[varchar](4000) NULL,
DEST_CHARGE_ACCOUNT_ID	[varchar](4000) NULL,
DEST_VARIANCE_ACCOUNT_ID	[varchar](4000) NULL,
QUANTITY_FINANCED	[varchar](4000) NULL,
AMOUNT_FINANCED	[varchar](4000) NULL,
QUANTITY_RECOUPED	[varchar](4000) NULL,
AMOUNT_RECOUPED	[varchar](4000) NULL,
RETAINAGE_WITHHELD_AMOUNT	[varchar](4000) NULL,
RETAINAGE_RELEASED_AMOUNT	[varchar](4000) NULL,
INVOICED_VAL_IN_NTFN	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
INTERFACE_DISTRIBUTION_REF	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PJC_PROJECT_ID	[varchar](4000) NULL,
PJC_TASK_ID	[varchar](4000) NULL,
PJC_EXPENDITURE_ITEM_DATE	datetime NULL,
PJC_ORGANIZATION_ID	[varchar](4000) NULL,
PJC_EXPENDITURE_TYPE_ID	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
PJC_BILLABLE_FLAG	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE1	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE2	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE3	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE4	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE5	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE6	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE7	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE8	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE9	[varchar](4000) NULL,
PJC_USER_DEF_ATTRIBUTE10	[varchar](4000) NULL,
PJC_CONTRACT_ID	[varchar](4000) NULL,
PJC_WORK_TYPE_ID	[varchar](4000) NULL,
PJC_CAPITALIZABLE_FLAG	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE1	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE2	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE3	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE4	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE5	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE6	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE7	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE8	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE9	[varchar](4000) NULL,
PJC_RESERVED_ATTRIBUTE10	[varchar](4000) NULL,
PJC_FUNDING_ALLOCATION_ID	[varchar](4000) NULL,
PJC_CONTRACT_LINE_ID	[varchar](4000) NULL,
ORIGINAL_DISTRIBUTION_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_LOCATION_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_ID	[varchar](4000) NULL,
DELIVER_TO_CUST_CONTACT_ID	[varchar](4000) NULL,
SHIPPING_UOM_QTY_DELIVERED	[varchar](4000) NULL,
SECONDARY_QUANTITY_DELIVERED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_CANCELED	[varchar](4000) NULL,
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



Create View [rpy].[Po_Distributions_All_v] as
SELECT a.[PO_DISTRIBUTION_ID]
      ,[BUDGET_DATE]
      ,[CANCEL_BUDGET_DATE]
      ,[CLOSE_BUDGET_DATE]
      ,[FUNDS_STATUS]
      ,a.[LAST_UPDATE_DATE]
      ,[DIST_INTENDED_USE]
      ,[PRC_BU_ID]
      ,[REQ_BU_ID]
      ,[LAST_UPDATED_BY]
      ,[PO_HEADER_ID]
      ,[PO_LINE_ID]
      ,[LINE_LOCATION_ID]
      ,[SET_OF_BOOKS_ID]
      ,[CODE_COMBINATION_ID]
      ,[QUANTITY_ORDERED]
      ,[LAST_UPDATE_LOGIN]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[QUANTITY_DELIVERED]
      ,[QUANTITY_BILLED]
      ,[QUANTITY_CANCELLED]
      ,[CONSIGNMENT_QUANTITY]
      ,[REQ_HEADER_REFERENCE_NUM]
      ,[REQ_LINE_REFERENCE_NUM]
      ,[REQ_DISTRIBUTION_ID]
      ,[DELIVER_TO_LOCATION_ID]
      ,[DELIVER_TO_PERSON_ID]
      ,[RATE_DATE]
      ,[RATE]
      ,[AMOUNT_BILLED]
      ,[ACCRUED_FLAG]
      ,[ENCUMBERED_FLAG]
      ,[ENCUMBERED_AMOUNT]
      ,[UNENCUMBERED_QUANTITY]
      ,[UNENCUMBERED_AMOUNT]
      ,[FAILED_FUNDS_LOOKUP_CODE]
      ,[GL_ENCUMBERED_DATE]
      ,[GL_ENCUMBERED_PERIOD_NAME]
      ,[GL_CANCELLED_DATE]
      ,[DESTINATION_TYPE_CODE]
      ,[DESTINATION_ORGANIZATION_ID]
      ,[DESTINATION_SUBINVENTORY]
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
      ,[WIP_ENTITY_ID]
      ,[WIP_OPERATION_SEQ_NUM]
      ,[WIP_RESOURCE_SEQ_NUM]
      ,[WIP_REPETITIVE_SCHEDULE_ID]
      ,[WIP_LINE_ID]
      ,[BOM_RESOURCE_ID]
      ,[BUDGET_ACCOUNT_ID]
      ,[ACCRUAL_ACCOUNT_ID]
      ,[VARIANCE_ACCOUNT_ID]
      ,[PREVENT_ENCUMBRANCE_FLAG]
      ,[GOVERNMENT_CONTEXT]
      ,[DESTINATION_CONTEXT]
      ,[DISTRIBUTION_NUM]
      ,[SOURCE_DISTRIBUTION_ID]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[GL_CLOSED_DATE]
      ,[ACCRUE_ON_RECEIPT_FLAG]
      ,[SOLDTO_BU_ID]
      ,[KANBAN_CARD_ID]
      ,[AWARD_ID]
      ,[END_ITEM_UNIT_NUMBER]
      ,[TAX_RECOVERY_OVERRIDE_FLAG]
      ,[RECOVERABLE_TAX]
      ,[NONRECOVERABLE_TAX]
      ,[RECOVERABLE_INCLUSIVE_TAX]
      ,[NONRECOVERABLE_INCLUSIVE_TAX]
      ,[TAX_EXCLUSIVE_AMOUNT]
      ,[RECOVERY_RATE]
      ,[OKE_CONTRACT_LINE_ID]
      ,[OKE_CONTRACT_DELIVERABLE_ID]
      ,[AMOUNT_ORDERED]
      ,[AMOUNT_DELIVERED]
      ,[AMOUNT_CANCELLED]
      ,[DISTRIBUTION_TYPE]
      ,[AMOUNT_TO_ENCUMBER]
      ,[INVOICE_ADJUSTMENT_FLAG]
      ,[DEST_CHARGE_ACCOUNT_ID]
      ,[DEST_VARIANCE_ACCOUNT_ID]
      ,[QUANTITY_FINANCED]
      ,[AMOUNT_FINANCED]
      ,[QUANTITY_RECOUPED]
      ,[AMOUNT_RECOUPED]
      ,[RETAINAGE_WITHHELD_AMOUNT]
      ,[RETAINAGE_RELEASED_AMOUNT]
      ,[INVOICED_VAL_IN_NTFN]
      ,[TAX_ATTRIBUTE_UPDATE_CODE]
      ,[INTERFACE_DISTRIBUTION_REF]
      ,[OBJECT_VERSION_NUMBER]
      ,[PJC_PROJECT_ID]
      ,[PJC_TASK_ID]
      ,[PJC_EXPENDITURE_ITEM_DATE]
      ,[PJC_ORGANIZATION_ID]
      ,[PJC_EXPENDITURE_TYPE_ID]
      ,[PJC_CONTEXT_CATEGORY]
      ,[PJC_BILLABLE_FLAG]
      ,[PJC_USER_DEF_ATTRIBUTE1]
      ,[PJC_USER_DEF_ATTRIBUTE2]
      ,[PJC_USER_DEF_ATTRIBUTE3]
      ,[PJC_USER_DEF_ATTRIBUTE4]
      ,[PJC_USER_DEF_ATTRIBUTE5]
      ,[PJC_USER_DEF_ATTRIBUTE6]
      ,[PJC_USER_DEF_ATTRIBUTE7]
      ,[PJC_USER_DEF_ATTRIBUTE8]
      ,[PJC_USER_DEF_ATTRIBUTE9]
      ,[PJC_USER_DEF_ATTRIBUTE10]
      ,[PJC_CONTRACT_ID]
      ,[PJC_WORK_TYPE_ID]
      ,[PJC_CAPITALIZABLE_FLAG]
      ,[PJC_RESERVED_ATTRIBUTE1]
      ,[PJC_RESERVED_ATTRIBUTE2]
      ,[PJC_RESERVED_ATTRIBUTE3]
      ,[PJC_RESERVED_ATTRIBUTE4]
      ,[PJC_RESERVED_ATTRIBUTE5]
      ,[PJC_RESERVED_ATTRIBUTE6]
      ,[PJC_RESERVED_ATTRIBUTE7]
      ,[PJC_RESERVED_ATTRIBUTE8]
      ,[PJC_RESERVED_ATTRIBUTE9]
      ,[PJC_RESERVED_ATTRIBUTE10]
      ,[PJC_FUNDING_ALLOCATION_ID]
      ,[PJC_CONTRACT_LINE_ID]
      ,[ORIGINAL_DISTRIBUTION_ID]
      ,[DELIVER_TO_CUST_LOCATION_ID]
      ,[DELIVER_TO_CUST_ID]
      ,[DELIVER_TO_CUST_CONTACT_ID]
      ,[SHIPPING_UOM_QTY_DELIVERED]
      ,[SECONDARY_QUANTITY_DELIVERED]
      ,[SHIPPING_UOM_QUANTITY]
      ,[SHIPPING_UOM_QUANTITY_CANCELED]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Distributions_All] a,
  (SELECT PO_DISTRIBUTION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Distributions_All] GROUP BY PO_DISTRIBUTION_ID) b
WHERE a.PO_DISTRIBUTION_ID = b.PO_DISTRIBUTION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Po_Distributions_All_PO_DISTRIBUTION_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Distributions_All]
(
	[PO_DISTRIBUTION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




