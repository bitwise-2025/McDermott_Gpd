insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_line_locations_all','NCSA','pl_po_line_locations_all',NULL,'1','aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_locations_all','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Line_Locations_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Line_Locations_All',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_LINE_LOCATIONS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_locations_all','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Line_Locations_All_stage]
(

LINE_LOCATION_ID	[varchar](4000) NULL,
WORK_ORDER_SUB_TYPE	[varchar](4000) NULL,
WORK_ORDER_OPERATION_SEQ	[varchar](4000) NULL,
WORK_ORDER_OPERATION_ID	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_INTF_CO_SEQ	[varchar](4000) NULL,
FIRM_FLAG	[varchar](4000) NULL,
ORCHESTRATION_CODE	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
REQUESTED_SHIP_DATE	[varchar](500) NULL,
PROMISED_SHIP_DATE	[varchar](500) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
SFO_PTR_ID	[varchar](4000) NULL,
SFO_AGREEMENT_NUMBER	[varchar](4000) NULL,
SFO_AGREEMENT_LINE_NUMBER	[varchar](4000) NULL,
PO_TRADING_ORGANIZATION_ID	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
AUTO_CLOSURE_MODE	[varchar](4000) NULL,
SCHEDULE_STATUS	[varchar](4000) NULL,
UNIT_OF_MEASURE_CLASS	[varchar](4000) NULL,
TRX_BUSINESS_CATEGORY	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
PRODUCT_FISC_CLASSIFICATION	[varchar](4000) NULL,
LINE_INTENDED_USE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
USER_DEFINED_FISC_CLASS	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
INPUT_TAX_CLASSIFICATION_CODE	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	[varchar](500) NULL,
CREATED_BY	[varchar](4000) NULL,
QUANTITY	[varchar](4000) NULL,
QUANTITY_RECEIVED	[varchar](4000) NULL,
QUANTITY_ACCEPTED	[varchar](4000) NULL,
QUANTITY_REJECTED	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
QUANTITY_CANCELLED	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
CARRIER_ID	[varchar](4000) NULL,
NEED_BY_DATE	[varchar](500) NULL,
PROMISED_DATE	[varchar](500) NULL,
LAST_ACCEPT_DATE	[varchar](500) NULL,
PRICE_OVERRIDE	[varchar](4000) NULL,
ENCUMBERED_FLAG	[varchar](4000) NULL,
ENCUMBERED_DATE	[varchar](500) NULL,
UNENCUMBERED_QUANTITY	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
FREIGHT_TERMS_LOOKUP_CODE	[varchar](4000) NULL,
TAXABLE_FLAG	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
ESTIMATED_TAX_AMOUNT	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_LINE_ID	[varchar](4000) NULL,
FROM_LINE_LOCATION_ID	[varchar](4000) NULL,
START_DATE	[varchar](500) NULL,
END_DATE	[varchar](500) NULL,
LEAD_TIME	[varchar](4000) NULL,
LEAD_TIME_UNIT	[varchar](4000) NULL,
PRICE_DISCOUNT	[varchar](4000) NULL,
TERMS_ID	[varchar](4000) NULL,
CANCEL_FLAG	[varchar](4000) NULL,
CANCELLED_BY	[varchar](4000) NULL,
CANCEL_DATE	[varchar](500) NULL,
CANCEL_REASON	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	[varchar](500) NULL,
FIRMED_BY	[varchar](4000) NULL,
FIRM_REASON	[varchar](4000) NULL,
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
ENCUMBER_NOW	[varchar](4000) NULL,
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
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_DATE6	[varchar](500) NULL,
ATTRIBUTE_DATE7	[varchar](500) NULL,
ATTRIBUTE_DATE8	[varchar](500) NULL,
ATTRIBUTE_DATE9	[varchar](500) NULL,
ATTRIBUTE_DATE10	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP1	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP2	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP3	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP4	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP5	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP6	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP7	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP8	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP9	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP10	[varchar](500) NULL,
INSPECTION_REQUIRED_FLAG	[varchar](4000) NULL,
RECEIPT_REQUIRED_FLAG	[varchar](4000) NULL,
QTY_RCV_TOLERANCE	[varchar](4000) NULL,
QTY_RCV_EXCEPTION_CODE	[varchar](4000) NULL,
ENFORCE_SHIP_TO_LOCATION_CODE	[varchar](4000) NULL,
ALLOW_SUBSTITUTE_RECEIPTS_FLAG	[varchar](4000) NULL,
DAYS_EARLY_RECEIPT_ALLOWED	[varchar](4000) NULL,
DAYS_LATE_RECEIPT_ALLOWED	[varchar](4000) NULL,
RECEIPT_DAYS_EXCEPTION_CODE	[varchar](4000) NULL,
INVOICE_CLOSE_TOLERANCE	[varchar](4000) NULL,
RECEIVE_CLOSE_TOLERANCE	[varchar](4000) NULL,
SHIP_TO_ORGANIZATION_ID	[varchar](4000) NULL,
SHIPMENT_NUM	[varchar](4000) NULL,
SOURCE_SHIPMENT_ID	[varchar](4000) NULL,
SHIPMENT_TYPE	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
RECEIVING_ROUTING_ID	[varchar](4000) NULL,
ACCRUE_ON_RECEIPT_FLAG	[varchar](4000) NULL,
CLOSED_REASON	[varchar](4000) NULL,
CLOSED_DATE	[varchar](500) NULL,
CLOSED_BY	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
QUANTITY_SHIPPED	[varchar](4000) NULL,
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
GLOBAL_ATTRIBUTE_DATE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
TAX_USER_OVERRIDE_FLAG	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
TAX_CODE_ID	[varchar](4000) NULL,
CALCULATE_TAX_FLAG	[varchar](4000) NULL,
CHANGE_PROMISED_DATE_REASON	[varchar](4000) NULL,
NOTE_TO_RECEIVER	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
PREFERRED_GRADE	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
SECONDARY_QUANTITY_RECEIVED	[varchar](4000) NULL,
SECONDARY_QUANTITY_ACCEPTED	[varchar](4000) NULL,
SECONDARY_QUANTITY_REJECTED	[varchar](4000) NULL,
SECONDARY_QUANTITY_CANCELLED	[varchar](4000) NULL,
VMI_FLAG	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
RETROACTIVE_DATE	[varchar](500) NULL,
SUPPLIER_ORDER_LINE_NUMBER	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
AMOUNT_RECEIVED	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
AMOUNT_CANCELLED	[varchar](4000) NULL,
AMOUNT_REJECTED	[varchar](4000) NULL,
AMOUNT_ACCEPTED	[varchar](4000) NULL,
DROP_SHIP_FLAG	[varchar](4000) NULL,
SALES_ORDER_UPDATE_DATE	[varchar](500) NULL,
TRANSACTION_FLOW_HEADER_ID	[varchar](4000) NULL,
SECONDARY_QUANTITY_SHIPPED	[varchar](4000) NULL,
FINAL_MATCH_FLAG	[varchar](4000) NULL,
MANUAL_PRICE_CHANGE_FLAG	[varchar](4000) NULL,
SHIPMENT_CLOSED_DATE	[varchar](500) NULL,
CLOSED_FOR_RECEIVING_DATE	[varchar](500) NULL,
CLOSED_FOR_INVOICE_DATE	[varchar](500) NULL,
VALUE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
PAYMENT_TYPE	[varchar](4000) NULL,
GROUP_NAME	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
WORK_APPROVER_ID	[varchar](4000) NULL,
BID_PAYMENT_ID	[varchar](4000) NULL,
QUANTITY_FINANCED	[varchar](4000) NULL,
AMOUNT_FINANCED	[varchar](4000) NULL,
QUANTITY_RECOUPED	[varchar](4000) NULL,
AMOUNT_RECOUPED	[varchar](4000) NULL,
RETAINAGE_WITHHELD_AMOUNT	[varchar](4000) NULL,
RETAINAGE_RELEASED_AMOUNT	[varchar](4000) NULL,
AMOUNT_SHIPPED	[varchar](4000) NULL,
OUTSOURCED_ASSEMBLY	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
ORIGINAL_SHIPMENT_ID	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
ORIG_SCHEDULE_STATUS	[varchar](4000) NULL,
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
LINE_INTENDED_USE_ID	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_INTF_STATUS	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
CUSTOMER_PO_NUMBER	[varchar](4000) NULL,
CUSTOMER_PO_LINE_NUMBER	[varchar](4000) NULL,
CUSTOMER_PO_SCHEDULE_NUMBER	[varchar](4000) NULL,
CUSTOMER_ITEM	[varchar](4000) NULL,
CUSTOMER_ITEM_DESC	[varchar](4000) NULL,
SALES_ORDER_NUMBER	[varchar](4000) NULL,
SALES_ORDER_LINE_NUMBER	[varchar](4000) NULL,
SALES_ORDER_SCHEDULE_NUMBER	[varchar](4000) NULL,
SHIP_TO_CUST_LOCATION_ID	[varchar](4000) NULL,
SHIP_TO_CUST_ID	[varchar](4000) NULL,
SHIP_TO_CUST_CONTACT_ID	[varchar](4000) NULL,
CANCEL_BUDGET_DATE_OPTION	[varchar](4000) NULL,
REINSTATE_BUDGET_DATE_OPTION	[varchar](4000) NULL,
CANCEL_BUDGET_DATE	[varchar](500) NULL,
REINSTATE_BUDGET_DATE	[varchar](500) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
REOPEN_FINAL_CLOSE_DATE	[varchar](500) NULL,
WORK_ORDER_ID	[varchar](4000) NULL,
WORK_ORDER_NUMBER	[varchar](4000) NULL,
ANTICIPATED_ARRIVAL_DATE	[varchar](500) NULL,
DELIVERY_DATE_CONFIRMATION_REQ	[varchar](4000) NULL,
TAX_EXCLUSIVE_PRICE	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_GROUP_ID	[varchar](4000) NULL,
RETAINAGE_RATE	[varchar](4000) NULL,
SHIPPING_UOM_CODE	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_RECEIVED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_ACCEPTED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_REJECTED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_SHIPPED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_CANCELED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
RETURN_TO_VENDOR_TYPE	[varchar](4000) NULL,
KANBAN_CARD_NUMBER	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Po_Line_Locations_All]
(

LINE_LOCATION_ID	[varchar](4000) NULL,
WORK_ORDER_SUB_TYPE	[varchar](4000) NULL,
WORK_ORDER_OPERATION_SEQ	[varchar](4000) NULL,
WORK_ORDER_OPERATION_ID	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_INTF_CO_SEQ	[varchar](4000) NULL,
FIRM_FLAG	[varchar](4000) NULL,
ORCHESTRATION_CODE	[varchar](4000) NULL,
MODE_OF_TRANSPORT	[varchar](4000) NULL,
SERVICE_LEVEL	[varchar](4000) NULL,
REQUESTED_SHIP_DATE	[varchar](500) NULL,
PROMISED_SHIP_DATE	[varchar](500) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
SFO_PTR_ID	[varchar](4000) NULL,
SFO_AGREEMENT_NUMBER	[varchar](4000) NULL,
SFO_AGREEMENT_LINE_NUMBER	[varchar](4000) NULL,
PO_TRADING_ORGANIZATION_ID	[varchar](4000) NULL,
DESTINATION_TYPE_CODE	[varchar](4000) NULL,
AUTO_CLOSURE_MODE	[varchar](4000) NULL,
SCHEDULE_STATUS	[varchar](4000) NULL,
UNIT_OF_MEASURE_CLASS	[varchar](4000) NULL,
TRX_BUSINESS_CATEGORY	[varchar](4000) NULL,
PRODUCT_CATEGORY	[varchar](4000) NULL,
PRODUCT_FISC_CLASSIFICATION	[varchar](4000) NULL,
LINE_INTENDED_USE	[varchar](4000) NULL,
PRC_BU_ID	[varchar](4000) NULL,
REQ_BU_ID	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
USER_DEFINED_FISC_CLASS	[varchar](4000) NULL,
ASSESSABLE_VALUE	[varchar](4000) NULL,
INPUT_TAX_CLASSIFICATION_CODE	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
PO_LINE_ID	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	[varchar](500) NULL,
CREATED_BY	[varchar](4000) NULL,
QUANTITY	[varchar](4000) NULL,
QUANTITY_RECEIVED	[varchar](4000) NULL,
QUANTITY_ACCEPTED	[varchar](4000) NULL,
QUANTITY_REJECTED	[varchar](4000) NULL,
QUANTITY_BILLED	[varchar](4000) NULL,
QUANTITY_CANCELLED	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
SHIP_TO_LOCATION_ID	[varchar](4000) NULL,
CARRIER_ID	[varchar](4000) NULL,
NEED_BY_DATE	[varchar](500) NULL,
PROMISED_DATE	[varchar](500) NULL,
LAST_ACCEPT_DATE	[varchar](500) NULL,
PRICE_OVERRIDE	[varchar](4000) NULL,
ENCUMBERED_FLAG	[varchar](4000) NULL,
ENCUMBERED_DATE	[varchar](500) NULL,
UNENCUMBERED_QUANTITY	[varchar](4000) NULL,
FOB_LOOKUP_CODE	[varchar](4000) NULL,
FREIGHT_TERMS_LOOKUP_CODE	[varchar](4000) NULL,
TAXABLE_FLAG	[varchar](4000) NULL,
TAX_NAME	[varchar](4000) NULL,
ESTIMATED_TAX_AMOUNT	[varchar](4000) NULL,
FROM_HEADER_ID	[varchar](4000) NULL,
FROM_LINE_ID	[varchar](4000) NULL,
FROM_LINE_LOCATION_ID	[varchar](4000) NULL,
START_DATE	[varchar](500) NULL,
END_DATE	[varchar](500) NULL,
LEAD_TIME	[varchar](4000) NULL,
LEAD_TIME_UNIT	[varchar](4000) NULL,
PRICE_DISCOUNT	[varchar](4000) NULL,
TERMS_ID	[varchar](4000) NULL,
CANCEL_FLAG	[varchar](4000) NULL,
CANCELLED_BY	[varchar](4000) NULL,
CANCEL_DATE	[varchar](500) NULL,
CANCEL_REASON	[varchar](4000) NULL,
FIRM_STATUS_LOOKUP_CODE	[varchar](4000) NULL,
FIRM_DATE	[varchar](500) NULL,
FIRMED_BY	[varchar](4000) NULL,
FIRM_REASON	[varchar](4000) NULL,
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
ENCUMBER_NOW	[varchar](4000) NULL,
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
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_DATE6	[varchar](500) NULL,
ATTRIBUTE_DATE7	[varchar](500) NULL,
ATTRIBUTE_DATE8	[varchar](500) NULL,
ATTRIBUTE_DATE9	[varchar](500) NULL,
ATTRIBUTE_DATE10	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP1	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP2	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP3	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP4	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP5	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP6	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP7	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP8	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP9	[varchar](500) NULL,
ATTRIBUTE_TIMESTAMP10	[varchar](500) NULL,
INSPECTION_REQUIRED_FLAG	[varchar](4000) NULL,
RECEIPT_REQUIRED_FLAG	[varchar](4000) NULL,
QTY_RCV_TOLERANCE	[varchar](4000) NULL,
QTY_RCV_EXCEPTION_CODE	[varchar](4000) NULL,
ENFORCE_SHIP_TO_LOCATION_CODE	[varchar](4000) NULL,
ALLOW_SUBSTITUTE_RECEIPTS_FLAG	[varchar](4000) NULL,
DAYS_EARLY_RECEIPT_ALLOWED	[varchar](4000) NULL,
DAYS_LATE_RECEIPT_ALLOWED	[varchar](4000) NULL,
RECEIPT_DAYS_EXCEPTION_CODE	[varchar](4000) NULL,
INVOICE_CLOSE_TOLERANCE	[varchar](4000) NULL,
RECEIVE_CLOSE_TOLERANCE	[varchar](4000) NULL,
SHIP_TO_ORGANIZATION_ID	[varchar](4000) NULL,
SHIPMENT_NUM	[varchar](4000) NULL,
SOURCE_SHIPMENT_ID	[varchar](4000) NULL,
SHIPMENT_TYPE	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
GOVERNMENT_CONTEXT	[varchar](4000) NULL,
RECEIVING_ROUTING_ID	[varchar](4000) NULL,
ACCRUE_ON_RECEIPT_FLAG	[varchar](4000) NULL,
CLOSED_REASON	[varchar](4000) NULL,
CLOSED_DATE	[varchar](500) NULL,
CLOSED_BY	[varchar](4000) NULL,
SOLDTO_BU_ID	[varchar](4000) NULL,
QUANTITY_SHIPPED	[varchar](4000) NULL,
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
GLOBAL_ATTRIBUTE_DATE1	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE2	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE3	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE4	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_DATE5	[varchar](500) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
COUNTRY_OF_ORIGIN_CODE	[varchar](4000) NULL,
TAX_USER_OVERRIDE_FLAG	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
TAX_CODE_ID	[varchar](4000) NULL,
CALCULATE_TAX_FLAG	[varchar](4000) NULL,
CHANGE_PROMISED_DATE_REASON	[varchar](4000) NULL,
NOTE_TO_RECEIVER	[varchar](4000) NULL,
SECONDARY_QUANTITY	[varchar](4000) NULL,
PREFERRED_GRADE	[varchar](4000) NULL,
SECONDARY_UOM_CODE	[varchar](4000) NULL,
SECONDARY_QUANTITY_RECEIVED	[varchar](4000) NULL,
SECONDARY_QUANTITY_ACCEPTED	[varchar](4000) NULL,
SECONDARY_QUANTITY_REJECTED	[varchar](4000) NULL,
SECONDARY_QUANTITY_CANCELLED	[varchar](4000) NULL,
VMI_FLAG	[varchar](4000) NULL,
CONSIGNED_FLAG	[varchar](4000) NULL,
RETROACTIVE_DATE	[varchar](500) NULL,
SUPPLIER_ORDER_LINE_NUMBER	[varchar](4000) NULL,
AMOUNT	[varchar](4000) NULL,
AMOUNT_RECEIVED	[varchar](4000) NULL,
AMOUNT_BILLED	[varchar](4000) NULL,
AMOUNT_CANCELLED	[varchar](4000) NULL,
AMOUNT_REJECTED	[varchar](4000) NULL,
AMOUNT_ACCEPTED	[varchar](4000) NULL,
DROP_SHIP_FLAG	[varchar](4000) NULL,
SALES_ORDER_UPDATE_DATE	[varchar](500) NULL,
TRANSACTION_FLOW_HEADER_ID	[varchar](4000) NULL,
SECONDARY_QUANTITY_SHIPPED	[varchar](4000) NULL,
FINAL_MATCH_FLAG	[varchar](4000) NULL,
MANUAL_PRICE_CHANGE_FLAG	[varchar](4000) NULL,
SHIPMENT_CLOSED_DATE	[varchar](500) NULL,
CLOSED_FOR_RECEIVING_DATE	[varchar](500) NULL,
CLOSED_FOR_INVOICE_DATE	[varchar](500) NULL,
VALUE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
PAYMENT_TYPE	[varchar](4000) NULL,
GROUP_NAME	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
WORK_APPROVER_ID	[varchar](4000) NULL,
BID_PAYMENT_ID	[varchar](4000) NULL,
QUANTITY_FINANCED	[varchar](4000) NULL,
AMOUNT_FINANCED	[varchar](4000) NULL,
QUANTITY_RECOUPED	[varchar](4000) NULL,
AMOUNT_RECOUPED	[varchar](4000) NULL,
RETAINAGE_WITHHELD_AMOUNT	[varchar](4000) NULL,
RETAINAGE_RELEASED_AMOUNT	[varchar](4000) NULL,
AMOUNT_SHIPPED	[varchar](4000) NULL,
OUTSOURCED_ASSEMBLY	[varchar](4000) NULL,
TAX_ATTRIBUTE_UPDATE_CODE	[varchar](4000) NULL,
ORIGINAL_SHIPMENT_ID	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PJC_CONTEXT_CATEGORY	[varchar](4000) NULL,
ORIG_SCHEDULE_STATUS	[varchar](4000) NULL,
PRODUCT_FISC_CLASS_ID	[varchar](4000) NULL,
LINE_INTENDED_USE_ID	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_INTF_STATUS	[varchar](4000) NULL,
BACK_TO_BACK_FLAG	[varchar](4000) NULL,
CUSTOMER_PO_NUMBER	[varchar](4000) NULL,
CUSTOMER_PO_LINE_NUMBER	[varchar](4000) NULL,
CUSTOMER_PO_SCHEDULE_NUMBER	[varchar](4000) NULL,
CUSTOMER_ITEM	[varchar](4000) NULL,
CUSTOMER_ITEM_DESC	[varchar](4000) NULL,
SALES_ORDER_NUMBER	[varchar](4000) NULL,
SALES_ORDER_LINE_NUMBER	[varchar](4000) NULL,
SALES_ORDER_SCHEDULE_NUMBER	[varchar](4000) NULL,
SHIP_TO_CUST_LOCATION_ID	[varchar](4000) NULL,
SHIP_TO_CUST_ID	[varchar](4000) NULL,
SHIP_TO_CUST_CONTACT_ID	[varchar](4000) NULL,
CANCEL_BUDGET_DATE_OPTION	[varchar](4000) NULL,
REINSTATE_BUDGET_DATE_OPTION	[varchar](4000) NULL,
CANCEL_BUDGET_DATE	[varchar](500) NULL,
REINSTATE_BUDGET_DATE	[varchar](500) NULL,
FINAL_DISCHARGE_LOCATION_ID	[varchar](4000) NULL,
REOPEN_FINAL_CLOSE_DATE	[varchar](500) NULL,
WORK_ORDER_ID	[varchar](4000) NULL,
WORK_ORDER_NUMBER	[varchar](4000) NULL,
ANTICIPATED_ARRIVAL_DATE	[varchar](500) NULL,
DELIVERY_DATE_CONFIRMATION_REQ	[varchar](4000) NULL,
TAX_EXCLUSIVE_PRICE	[varchar](4000) NULL,
EXTERNAL_SYS_RCV_GROUP_ID	[varchar](4000) NULL,
RETAINAGE_RATE	[varchar](4000) NULL,
SHIPPING_UOM_CODE	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_RECEIVED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_ACCEPTED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_REJECTED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_SHIPPED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY_CANCELED	[varchar](4000) NULL,
SHIPPING_UOM_QUANTITY	[varchar](4000) NULL,
RETURN_TO_VENDOR_TYPE	[varchar](4000) NULL,
KANBAN_CARD_NUMBER	[varchar](4000) NULL,
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



Create View [rpy].[Po_Line_Locations_All_v] as
SELECT a.[LINE_LOCATION_ID]
      ,[WORK_ORDER_SUB_TYPE]
      ,[WORK_ORDER_OPERATION_SEQ]
      ,[WORK_ORDER_OPERATION_ID]
      ,[EXTERNAL_SYS_RCV_INTF_CO_SEQ]
      ,[FIRM_FLAG]
      ,[ORCHESTRATION_CODE]
      ,[MODE_OF_TRANSPORT]
      ,[SERVICE_LEVEL]
      ,[REQUESTED_SHIP_DATE]
      ,[PROMISED_SHIP_DATE]
      ,[FUNDS_STATUS]
      ,[SFO_PTR_ID]
      ,[SFO_AGREEMENT_NUMBER]
      ,[SFO_AGREEMENT_LINE_NUMBER]
      ,[PO_TRADING_ORGANIZATION_ID]
      ,[DESTINATION_TYPE_CODE]
      ,[AUTO_CLOSURE_MODE]
      ,[SCHEDULE_STATUS]
      ,[UNIT_OF_MEASURE_CLASS]
      ,[TRX_BUSINESS_CATEGORY]
      ,[PRODUCT_CATEGORY]
      ,[PRODUCT_FISC_CLASSIFICATION]
      ,[LINE_INTENDED_USE]
      ,[PRC_BU_ID]
      ,[REQ_BU_ID]
      ,[PRODUCT_TYPE]
      ,[USER_DEFINED_FISC_CLASS]
      ,[ASSESSABLE_VALUE]
      ,[INPUT_TAX_CLASSIFICATION_CODE]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[PO_HEADER_ID]
      ,[PO_LINE_ID]
      ,[LAST_UPDATE_LOGIN]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[QUANTITY]
      ,[QUANTITY_RECEIVED]
      ,[QUANTITY_ACCEPTED]
      ,[QUANTITY_REJECTED]
      ,[QUANTITY_BILLED]
      ,[QUANTITY_CANCELLED]
      ,[UOM_CODE]
      ,[SHIP_TO_LOCATION_ID]
      ,[CARRIER_ID]
      ,[NEED_BY_DATE]
      ,[PROMISED_DATE]
      ,[LAST_ACCEPT_DATE]
      ,[PRICE_OVERRIDE]
      ,[ENCUMBERED_FLAG]
      ,[ENCUMBERED_DATE]
      ,[UNENCUMBERED_QUANTITY]
      ,[FOB_LOOKUP_CODE]
      ,[FREIGHT_TERMS_LOOKUP_CODE]
      ,[TAXABLE_FLAG]
      ,[TAX_NAME]
      ,[ESTIMATED_TAX_AMOUNT]
      ,[FROM_HEADER_ID]
      ,[FROM_LINE_ID]
      ,[FROM_LINE_LOCATION_ID]
      ,[START_DATE]
      ,[END_DATE]
      ,[LEAD_TIME]
      ,[LEAD_TIME_UNIT]
      ,[PRICE_DISCOUNT]
      ,[TERMS_ID]
      ,[CANCEL_FLAG]
      ,[CANCELLED_BY]
      ,[CANCEL_DATE]
      ,[CANCEL_REASON]
      ,[FIRM_STATUS_LOOKUP_CODE]
      ,[FIRM_DATE]
      ,[FIRMED_BY]
      ,[FIRM_REASON]
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
      ,[ENCUMBER_NOW]
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
      ,[INSPECTION_REQUIRED_FLAG]
      ,[RECEIPT_REQUIRED_FLAG]
      ,[QTY_RCV_TOLERANCE]
      ,[QTY_RCV_EXCEPTION_CODE]
      ,[ENFORCE_SHIP_TO_LOCATION_CODE]
      ,[ALLOW_SUBSTITUTE_RECEIPTS_FLAG]
      ,[DAYS_EARLY_RECEIPT_ALLOWED]
      ,[DAYS_LATE_RECEIPT_ALLOWED]
      ,[RECEIPT_DAYS_EXCEPTION_CODE]
      ,[INVOICE_CLOSE_TOLERANCE]
      ,[RECEIVE_CLOSE_TOLERANCE]
      ,[SHIP_TO_ORGANIZATION_ID]
      ,[SHIPMENT_NUM]
      ,[SOURCE_SHIPMENT_ID]
      ,[SHIPMENT_TYPE]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[GOVERNMENT_CONTEXT]
      ,[RECEIVING_ROUTING_ID]
      ,[ACCRUE_ON_RECEIPT_FLAG]
      ,[CLOSED_REASON]
      ,[CLOSED_DATE]
      ,[CLOSED_BY]
      ,[SOLDTO_BU_ID]
      ,[QUANTITY_SHIPPED]
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
      ,[COUNTRY_OF_ORIGIN_CODE]
      ,[TAX_USER_OVERRIDE_FLAG]
      ,[MATCH_OPTION]
      ,[TAX_CODE_ID]
      ,[CALCULATE_TAX_FLAG]
      ,[CHANGE_PROMISED_DATE_REASON]
      ,[NOTE_TO_RECEIVER]
      ,[SECONDARY_QUANTITY]
      ,[PREFERRED_GRADE]
      ,[SECONDARY_UOM_CODE]
      ,[SECONDARY_QUANTITY_RECEIVED]
      ,[SECONDARY_QUANTITY_ACCEPTED]
      ,[SECONDARY_QUANTITY_REJECTED]
      ,[SECONDARY_QUANTITY_CANCELLED]
      ,[VMI_FLAG]
      ,[CONSIGNED_FLAG]
      ,[RETROACTIVE_DATE]
      ,[SUPPLIER_ORDER_LINE_NUMBER]
      ,[AMOUNT]
      ,[AMOUNT_RECEIVED]
      ,[AMOUNT_BILLED]
      ,[AMOUNT_CANCELLED]
      ,[AMOUNT_REJECTED]
      ,[AMOUNT_ACCEPTED]
      ,[DROP_SHIP_FLAG]
      ,[SALES_ORDER_UPDATE_DATE]
      ,[TRANSACTION_FLOW_HEADER_ID]
      ,[SECONDARY_QUANTITY_SHIPPED]
      ,[FINAL_MATCH_FLAG]
      ,[MANUAL_PRICE_CHANGE_FLAG]
      ,[SHIPMENT_CLOSED_DATE]
      ,[CLOSED_FOR_RECEIVING_DATE]
      ,[CLOSED_FOR_INVOICE_DATE]
      ,[VALUE_BASIS]
      ,[MATCHING_BASIS]
      ,[PAYMENT_TYPE]
      ,[GROUP_NAME]
      ,[DESCRIPTION]
      ,[WORK_APPROVER_ID]
      ,[BID_PAYMENT_ID]
      ,[QUANTITY_FINANCED]
      ,[AMOUNT_FINANCED]
      ,[QUANTITY_RECOUPED]
      ,[AMOUNT_RECOUPED]
      ,[RETAINAGE_WITHHELD_AMOUNT]
      ,[RETAINAGE_RELEASED_AMOUNT]
      ,[AMOUNT_SHIPPED]
      ,[OUTSOURCED_ASSEMBLY]
      ,[TAX_ATTRIBUTE_UPDATE_CODE]
      ,[ORIGINAL_SHIPMENT_ID]
      ,[OBJECT_VERSION_NUMBER]
      ,[PJC_CONTEXT_CATEGORY]
      ,[ORIG_SCHEDULE_STATUS]
      ,[PRODUCT_FISC_CLASS_ID]
      ,[LINE_INTENDED_USE_ID]
      ,[EXTERNAL_SYS_RCV_INTF_STATUS]
      ,[BACK_TO_BACK_FLAG]
      ,[CUSTOMER_PO_NUMBER]
      ,[CUSTOMER_PO_LINE_NUMBER]
      ,[CUSTOMER_PO_SCHEDULE_NUMBER]
      ,[CUSTOMER_ITEM]
      ,[CUSTOMER_ITEM_DESC]
      ,[SALES_ORDER_NUMBER]
      ,[SALES_ORDER_LINE_NUMBER]
      ,[SALES_ORDER_SCHEDULE_NUMBER]
      ,[SHIP_TO_CUST_LOCATION_ID]
      ,[SHIP_TO_CUST_ID]
      ,[SHIP_TO_CUST_CONTACT_ID]
      ,[CANCEL_BUDGET_DATE_OPTION]
      ,[REINSTATE_BUDGET_DATE_OPTION]
      ,[CANCEL_BUDGET_DATE]
      ,[REINSTATE_BUDGET_DATE]
      ,[FINAL_DISCHARGE_LOCATION_ID]
      ,[REOPEN_FINAL_CLOSE_DATE]
      ,[WORK_ORDER_ID]
      ,[WORK_ORDER_NUMBER]
      ,[ANTICIPATED_ARRIVAL_DATE]
      ,[DELIVERY_DATE_CONFIRMATION_REQ]
      ,[TAX_EXCLUSIVE_PRICE]
      ,[EXTERNAL_SYS_RCV_GROUP_ID]
      ,[RETAINAGE_RATE]
      ,[SHIPPING_UOM_CODE]
      ,[SHIPPING_UOM_QUANTITY_RECEIVED]
      ,[SHIPPING_UOM_QUANTITY_ACCEPTED]
      ,[SHIPPING_UOM_QUANTITY_REJECTED]
      ,[SHIPPING_UOM_QUANTITY_SHIPPED]
      ,[SHIPPING_UOM_QUANTITY_CANCELED]
      ,[SHIPPING_UOM_QUANTITY]
      ,[RETURN_TO_VENDOR_TYPE]
      ,[KANBAN_CARD_NUMBER]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Line_Locations_All] a,
  (SELECT LINE_LOCATION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Line_Locations_All] GROUP BY LINE_LOCATION_ID) b
WHERE a.LINE_LOCATION_ID = b.LINE_LOCATION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Po_Lines_All_LINE_LOCATION_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Line_Locations_All]
(
	[LINE_LOCATION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




