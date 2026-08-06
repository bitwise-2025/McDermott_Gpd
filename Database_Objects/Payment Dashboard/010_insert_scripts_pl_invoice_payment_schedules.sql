insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_payment_schedules','NCSA','pl_invoice_payment_schedules',NULL,'1','aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_payment_schedules','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_Payment_Schedules',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Payment_Schedules',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_PAYMENT_SCHEDULES_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_payment_schedules','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_payment_schedules_stage]
(

AMOUNT_REMAINING	[varchar](500) NULL,
APR_DISCOUNT_RATE	[varchar](500) NULL,
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
BATCH_ID	[varchar](500) NULL,
CAMPAIGN_NAME	[varchar](500) NULL,
CHECKRUN_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DBI_EVENTS_COMPLETE_FLAG	[varchar](500) NULL,
DISCOUNT_AMOUNT_AVAILABLE	[varchar](500) NULL,
DISCOUNT_AMOUNT_REMAINING	[varchar](500) NULL,
DISCOUNT_DATE	[varchar](500) NULL,
DUE_DATE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
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
GROSS_AMOUNT	[varchar](500) NULL,
HELD_BY	[varchar](500) NULL,
HOLD_DATE	[varchar](500) NULL,
HOLD_FLAG	[varchar](500) NULL,
IBY_HOLD_REASON	[varchar](4000) NULL,
INVOICE_ID	[varchar](500) NULL,
INV_CURR_GROSS_AMOUNT	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PAYMENT_CROSS_RATE	[varchar](500) NULL,
PAYMENT_METHOD_CODE	[varchar](500) NULL,
PAYMENT_METHOD_LOOKUP_CODE	[varchar](500) NULL,
PAYMENT_NUM	[varchar](500) NULL,
PAYMENT_PRIORITY	[varchar](500) NULL,
PAYMENT_STATUS_FLAG	[varchar](500) NULL,
RELATIONSHIP_ID	[varchar](500) NULL,
REMITTANCE_MESSAGE1	[varchar](500) NULL,
REMITTANCE_MESSAGE2	[varchar](500) NULL,
REMITTANCE_MESSAGE3	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
SECOND_DISCOUNT_DATE	[varchar](500) NULL,
SECOND_DISC_AMT_AVAILABLE	[varchar](500) NULL,
THIRD_DISCOUNT_DATE	[varchar](500) NULL,
THIRD_DISC_AMT_AVAILABLE	[varchar](500) NULL,
VAT_BANK_ACCOUNT_ID	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Invoice_payment_schedules]
(

AMOUNT_REMAINING	[varchar](500) NULL,
APR_DISCOUNT_RATE	[varchar](500) NULL,
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
BATCH_ID	[varchar](500) NULL,
CAMPAIGN_NAME	[varchar](500) NULL,
CHECKRUN_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DBI_EVENTS_COMPLETE_FLAG	[varchar](500) NULL,
DISCOUNT_AMOUNT_AVAILABLE	[varchar](500) NULL,
DISCOUNT_AMOUNT_REMAINING	[varchar](500) NULL,
DISCOUNT_DATE	[varchar](500) NULL,
DUE_DATE	[varchar](500) NULL,
EXTERNAL_BANK_ACCOUNT_ID	[varchar](500) NULL,
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
GROSS_AMOUNT	[varchar](500) NULL,
HELD_BY	[varchar](500) NULL,
HOLD_DATE	[varchar](500) NULL,
HOLD_FLAG	[varchar](500) NULL,
IBY_HOLD_REASON	[varchar](4000) NULL,
INVOICE_ID	[varchar](500) NULL,
INV_CURR_GROSS_AMOUNT	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PAYMENT_CROSS_RATE	[varchar](500) NULL,
PAYMENT_METHOD_CODE	[varchar](500) NULL,
PAYMENT_METHOD_LOOKUP_CODE	[varchar](500) NULL,
PAYMENT_NUM	[varchar](500) NULL,
PAYMENT_PRIORITY	[varchar](500) NULL,
PAYMENT_STATUS_FLAG	[varchar](500) NULL,
RELATIONSHIP_ID	[varchar](500) NULL,
REMITTANCE_MESSAGE1	[varchar](500) NULL,
REMITTANCE_MESSAGE2	[varchar](500) NULL,
REMITTANCE_MESSAGE3	[varchar](500) NULL,
REMIT_TO_ADDRESS_ID	[varchar](500) NULL,
REMIT_TO_ADDRESS_NAME	[varchar](500) NULL,
REMIT_TO_SUPPLIER_ID	[varchar](500) NULL,
REMIT_TO_SUPPLIER_NAME	[varchar](500) NULL,
SECOND_DISCOUNT_DATE	[varchar](500) NULL,
SECOND_DISC_AMT_AVAILABLE	[varchar](500) NULL,
THIRD_DISCOUNT_DATE	[varchar](500) NULL,
THIRD_DISC_AMT_AVAILABLE	[varchar](500) NULL,
VAT_BANK_ACCOUNT_ID	[varchar](500) NULL,
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



Create View [rpy].[Invoice_payment_schedules_v] as
SELECT CAST([AMOUNT_REMAINING] as decimal(38, 10)) as [AMOUNT_REMAINING]
      ,[APR_DISCOUNT_RATE]
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
      ,[BATCH_ID]
      ,[CAMPAIGN_NAME]
      ,[CHECKRUN_ID]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[DBI_EVENTS_COMPLETE_FLAG]
      ,CAST([DISCOUNT_AMOUNT_AVAILABLE] as decimal(38, 10)) as [DISCOUNT_AMOUNT_AVAILABLE]
      ,CAST([DISCOUNT_AMOUNT_REMAINING] as decimal(38, 10)) as [DISCOUNT_AMOUNT_REMAINING]
      ,FORMAT(Cast([DISCOUNT_DATE] as date), 'MM-dd-yyyy') as [DISCOUNT_DATE]
      ,FORMAT(Cast([DUE_DATE] as date), 'MM-dd-yyyy') as [DUE_DATE]
      ,[EXTERNAL_BANK_ACCOUNT_ID]
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
      ,CAST([GROSS_AMOUNT] as decimal(38, 10)) as [GROSS_AMOUNT]
      ,[HELD_BY]
      ,FORMAT(Cast([HOLD_DATE] as date), 'MM-dd-yyyy') as [HOLD_DATE]
      ,[HOLD_FLAG]
      ,[IBY_HOLD_REASON]
      ,a.[INVOICE_ID]
      ,CAST([INV_CURR_GROSS_AMOUNT] as decimal(38, 10)) as [INV_CURR_GROSS_AMOUNT]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[OBJECT_VERSION_NUMBER]
      ,[ORG_ID]
      ,[PAYMENT_CROSS_RATE]
      ,[PAYMENT_METHOD_CODE]
      ,[PAYMENT_METHOD_LOOKUP_CODE]
      ,a.[PAYMENT_NUM]
      ,[PAYMENT_PRIORITY]
      ,[PAYMENT_STATUS_FLAG]
      ,[RELATIONSHIP_ID]
      ,[REMITTANCE_MESSAGE1]
      ,[REMITTANCE_MESSAGE2]
      ,[REMITTANCE_MESSAGE3]
      ,[REMIT_TO_ADDRESS_ID]
      ,[REMIT_TO_ADDRESS_NAME]
      ,[REMIT_TO_SUPPLIER_ID]
      ,[REMIT_TO_SUPPLIER_NAME]
      ,FORMAT(Cast([SECOND_DISCOUNT_DATE] as date), 'MM-dd-yyyy') as [SECOND_DISCOUNT_DATE]
      ,CAST([SECOND_DISC_AMT_AVAILABLE] as decimal(38, 10)) as [SECOND_DISC_AMT_AVAILABLE]
      ,FORMAT(Cast([THIRD_DISCOUNT_DATE] as date), 'MM-dd-yyyy') as [THIRD_DISCOUNT_DATE]
      ,CAST([THIRD_DISC_AMT_AVAILABLE] as decimal(38, 10)) as [THIRD_DISC_AMT_AVAILABLE]
      ,[VAT_BANK_ACCOUNT_ID]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Invoice_payment_schedules] a,
  (SELECT INVOICE_ID, PAYMENT_NUM, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_payment_schedules] GROUP BY INVOICE_ID, PAYMENT_NUM) b
WHERE a.INVOICE_ID = b.INVOICE_ID 
AND a.PAYMENT_NUM = b.PAYMENT_NUM 
AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO





CREATE NONCLUSTERED INDEX [idx_Invoice_payment_schedules_INVOICE_ID_PAYMENT_NUM_LAST_UPDATE_DATE] ON [rpy].[Invoice_payment_schedules]
(
	[INVOICE_ID], [PAYMENT_NUM], [LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO


