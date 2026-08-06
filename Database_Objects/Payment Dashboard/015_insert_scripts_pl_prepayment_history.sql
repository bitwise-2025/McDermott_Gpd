insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_prepayment_history','NCSA','pl_prepayment_history',NULL,'1','aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_history','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Prepayment_History',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Prepayment_History',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_PREPAY_HISTORY_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_history','NetworkFolder')


GO


CREATE TABLE [rpy].[Prepayment_History_stage]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
GAIN_LOSS_INDICATOR	[varchar](500) NULL,
HISTORICAL_FLAG	[varchar](500) NULL,
INVOICE_ADJUSTMENT_EVENT_ID	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_LINE_NUMBER	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
PREPAY_HISTORY_ID	[varchar](500) NULL,
PREPAY_INVOICE_ID	[varchar](500) NULL,
PREPAY_LINE_NUM	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
RELATED_PREPAY_APP_EVENT_ID	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
TRANSACTION_TYPE	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Prepayment_History]
(

ACCOUNTING_DATE	[varchar](500) NULL,
ACCOUNTING_EVENT_ID	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
GAIN_LOSS_INDICATOR	[varchar](500) NULL,
HISTORICAL_FLAG	[varchar](500) NULL,
INVOICE_ADJUSTMENT_EVENT_ID	[varchar](500) NULL,
INVOICE_ID	[varchar](500) NULL,
INVOICE_LINE_NUMBER	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
POSTED_FLAG	[varchar](500) NULL,
PREPAY_HISTORY_ID	[varchar](500) NULL,
PREPAY_INVOICE_ID	[varchar](500) NULL,
PREPAY_LINE_NUM	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
RELATED_PREPAY_APP_EVENT_ID	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
TRANSACTION_TYPE	[varchar](500) NULL,
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



Create View [rpy].[Prepayment_History_v] as
SELECT FORMAT(Cast([ACCOUNTING_DATE] as date), 'MM-dd-yyyy') as [ACCOUNTING_DATE]
      ,[ACCOUNTING_EVENT_ID]
      ,[BC_EVENT_ID]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[GAIN_LOSS_INDICATOR]
      ,[HISTORICAL_FLAG]
      ,[INVOICE_ADJUSTMENT_EVENT_ID]
      ,[INVOICE_ID]
      ,[INVOICE_LINE_NUMBER]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[OBJECT_VERSION_NUMBER]
      ,[ORG_ID]
      ,[POSTED_FLAG]
      ,a.[PREPAY_HISTORY_ID]
      ,[PREPAY_INVOICE_ID]
      ,[PREPAY_LINE_NUM]
      ,[PROGRAM_APPLICATION_ID]
      ,[PROGRAM_ID]
      ,FORMAT(Cast([PROGRAM_UPDATE_DATE] as date), 'MM-dd-yyyy') as [PROGRAM_UPDATE_DATE]
      ,[RELATED_PREPAY_APP_EVENT_ID]
      ,[REQUEST_ID]
      ,[TRANSACTION_TYPE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Prepayment_History] a,
  (SELECT PREPAY_HISTORY_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Prepayment_History] GROUP BY PREPAY_HISTORY_ID) b
WHERE a.PREPAY_HISTORY_ID = b.PREPAY_HISTORY_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO





CREATE NONCLUSTERED INDEX [idx_Prepayment_History_PREPAY_HISTORY_ID_LAST_UPDATE_DATE] ON [rpy].[Prepayment_History]
(
	[PREPAY_HISTORY_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO


