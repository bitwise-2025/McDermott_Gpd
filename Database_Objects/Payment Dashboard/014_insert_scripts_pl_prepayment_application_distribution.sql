insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_prepayment_application_distribution','NCSA','pl_prepayment_application_distribution',NULL,'1','aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_prepayment_application_distribution','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-12 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Prepayment_Application_Distribution',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Prepayment_Application_Distribution',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/AP_PREPAY_APP_DISTS.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_prepayment_application_distribution','NetworkFolder')


GO


CREATE TABLE [rpy].[Prepayment_Application_Distribution_stage]
(

ACCOUNTING_EVENT_ID	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_VARIANCE	[varchar](500) NULL,
AWT_RELATED_ID	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_CLR_XRATE	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_XRATE	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
INVOICE_BASE_AMT_VARIANCE	[varchar](500) NULL,
INVOICE_BASE_QTY_VARIANCE	[varchar](500) NULL,
INVOICE_DISTRIBUTION_ID	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
PA_ADDITION_FLAG	[varchar](500) NULL,
PREPAY_APP_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_APP_DIST_ID	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PREPAY_DIST_LOOKUP_CODE	[varchar](500) NULL,
PREPAY_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PREPAY_HISTORY_ID	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
QUANTITY_VARIANCE	[varchar](500) NULL,
RELEASE_INV_DIST_DERIVED_FROM	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
REVERSED_PREPAY_APP_DIST_ID	[varchar](500) NULL,
ROUNDING_AMT	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_CLR_XRATE	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_XRATE	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Prepayment_Application_Distribution]
(

ACCOUNTING_EVENT_ID	[varchar](500) NULL,
AMOUNT	[varchar](500) NULL,
AMOUNT_VARIANCE	[varchar](500) NULL,
AWT_RELATED_ID	[varchar](500) NULL,
BASE_AMOUNT	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_CLR_XRATE	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
BASE_AMT_AT_PREPAY_XRATE	[varchar](500) NULL,
BC_EVENT_ID	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
INVOICE_BASE_AMT_VARIANCE	[varchar](500) NULL,
INVOICE_BASE_QTY_VARIANCE	[varchar](500) NULL,
INVOICE_DISTRIBUTION_ID	[varchar](500) NULL,
JOB_DEFINITION_NAME	[varchar](500) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
PA_ADDITION_FLAG	[varchar](500) NULL,
PREPAY_APP_DISTRIBUTION_ID	[varchar](500) NULL,
PREPAY_APP_DIST_ID	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_CLR_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PREPAY_DIST_LOOKUP_CODE	[varchar](500) NULL,
PREPAY_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PREPAY_HISTORY_ID	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_DATE	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_RATE	[varchar](500) NULL,
PREPAY_PAY_EXCHANGE_RATE_TYPE	[varchar](500) NULL,
PROGRAM_APPLICATION_ID	[varchar](500) NULL,
PROGRAM_ID	[varchar](500) NULL,
PROGRAM_UPDATE_DATE	[varchar](500) NULL,
QUANTITY_VARIANCE	[varchar](500) NULL,
RELEASE_INV_DIST_DERIVED_FROM	[varchar](500) NULL,
REQUEST_ID	[varchar](500) NULL,
REVERSED_PREPAY_APP_DIST_ID	[varchar](500) NULL,
ROUNDING_AMT	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_CLR_XRATE	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_PAY_XRATE	[varchar](500) NULL,
ROUND_AMT_AT_PREPAY_XRATE	[varchar](500) NULL,
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



Create View [rpy].[Prepayment_Application_Distribution_v] as
SELECT [ACCOUNTING_EVENT_ID]
      ,CAST([AMOUNT] as decimal(38, 10)) as [AMOUNT]
      ,CAST([AMOUNT_VARIANCE] as decimal(38, 10)) as [AMOUNT_VARIANCE]
      ,[AWT_RELATED_ID]
      ,CAST([BASE_AMOUNT] as decimal(38, 10)) as [BASE_AMOUNT]
      ,CAST([BASE_AMT_AT_PREPAY_CLR_XRATE] as decimal(38, 10)) as [BASE_AMT_AT_PREPAY_CLR_XRATE]
      ,CAST([BASE_AMT_AT_PREPAY_PAY_XRATE] as decimal(38, 10)) as [BASE_AMT_AT_PREPAY_PAY_XRATE]
      ,CAST([BASE_AMT_AT_PREPAY_XRATE] as decimal(38, 10)) as [BASE_AMT_AT_PREPAY_XRATE]
      ,[BC_EVENT_ID]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,CAST([INVOICE_BASE_AMT_VARIANCE] as decimal(38, 10)) as [INVOICE_BASE_AMT_VARIANCE]
      ,[INVOICE_BASE_QTY_VARIANCE]
      ,[INVOICE_DISTRIBUTION_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[OBJECT_VERSION_NUMBER]
      ,[PA_ADDITION_FLAG]
      ,[PREPAY_APP_DISTRIBUTION_ID]
      ,a.[PREPAY_APP_DIST_ID]
      ,FORMAT(Cast([PREPAY_CLR_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [PREPAY_CLR_EXCHANGE_DATE]
      ,[PREPAY_CLR_EXCHANGE_RATE]
      ,[PREPAY_CLR_EXCHANGE_RATE_TYPE]
      ,[PREPAY_DIST_LOOKUP_CODE]
      ,FORMAT(Cast([PREPAY_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [PREPAY_EXCHANGE_DATE]
      ,[PREPAY_EXCHANGE_RATE]
      ,[PREPAY_EXCHANGE_RATE_TYPE]
      ,[PREPAY_HISTORY_ID]
      ,FORMAT(Cast([PREPAY_PAY_EXCHANGE_DATE] as date), 'MM-dd-yyyy') as [PREPAY_PAY_EXCHANGE_DATE]
      ,[PREPAY_PAY_EXCHANGE_RATE]
      ,[PREPAY_PAY_EXCHANGE_RATE_TYPE]
      ,[PROGRAM_APPLICATION_ID]
      ,[PROGRAM_ID]
      ,FORMAT(Cast([PROGRAM_UPDATE_DATE] as date), 'MM-dd-yyyy') as [PROGRAM_UPDATE_DATE]
      ,[QUANTITY_VARIANCE]
      ,[RELEASE_INV_DIST_DERIVED_FROM]
      ,[REQUEST_ID]
      ,[REVERSED_PREPAY_APP_DIST_ID]
      ,CAST([ROUNDING_AMT] as decimal(38, 10)) as [ROUNDING_AMT]
      ,CAST([ROUND_AMT_AT_PREPAY_CLR_XRATE] as decimal(38, 10)) as [ROUND_AMT_AT_PREPAY_CLR_XRATE]
      ,CAST([ROUND_AMT_AT_PREPAY_PAY_XRATE] as decimal(38, 10)) as [ROUND_AMT_AT_PREPAY_PAY_XRATE]
      ,CAST([ROUND_AMT_AT_PREPAY_XRATE] as decimal(38, 10)) as [ROUND_AMT_AT_PREPAY_XRATE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Prepayment_Application_Distribution] a,
  (SELECT PREPAY_APP_DIST_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Prepayment_Application_Distribution] GROUP BY PREPAY_APP_DIST_ID) b
WHERE a.PREPAY_APP_DIST_ID = b.PREPAY_APP_DIST_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE




GO





CREATE NONCLUSTERED INDEX [idx_Prepayment_Application_Distribution_PREPAY_APP_DIST_ID_LAST_UPDATE_DATE] ON [rpy].[Prepayment_Application_Distribution]
(
	[PREPAY_APP_DIST_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO



