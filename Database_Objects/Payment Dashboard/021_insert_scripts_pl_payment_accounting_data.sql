insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_payment_accounting_data','NCSA','pl_payment_accounting_data',NULL,'1','aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043',4)

GO

--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_payment_accounting_data','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-05-14 06:42:19.043')


GO


--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Payment_Accounting_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Payment_Accounting_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/MDR_AP_PAYM_ACCTG_REPORT.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','90',1,'aditya.anand2@mcdermott.com',@dd,'pl_payment_accounting_data','NetworkFolder')



GO



CREATE TABLE [rpy].[Payment_Accounting_Data_stage]
(

ACCOUNT	[varchar](500) NULL,
ACCOUNTED_CREDIT_INV_CURR	[varchar](500) NULL,
ACCOUNTED_DEBIT_INV_CURR	[varchar](500) NULL,
ACCOUNTING_PERIOD	[varchar](500) NULL,
ACCOUNTING_SEQUENCE_NAME	[varchar](500) NULL,
ACCOUNTING_SEQUENCE_NUMBER	[varchar](500) NULL,
ACC_CLASS	[varchar](500) NULL,
ACC_DATE	[varchar](500) NULL,
BAL_TYPE	[varchar](500) NULL,
ENTERED_CREDIT_USD	[varchar](500) NULL,
ENTERED_DEBIT_USD	[varchar](500) NULL,
EVENT	[varchar](500) NULL,
EVENT_DATE	[datetime] NULL,
EVENT_ID	[varchar](500) NULL,
GL_TRANSFER_DATE	[varchar](500) NULL,
JOURNAL_BATCH	[varchar](500) NULL,
JOURNAL_ENTRY	[varchar](500) NULL,
JOURNAL_LINE_NUMBER	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
LEGAL_ENTITY_NAME	[varchar](500) NULL,
LINE	[varchar](500) NULL,
LINE_DESCRIPTION	[varchar](500) NULL,
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





CREATE TABLE [rpy].[Payment_Accounting_Data]
(

ACCOUNT	[varchar](500) NULL,
ACCOUNTED_CREDIT_INV_CURR	[varchar](500) NULL,
ACCOUNTED_DEBIT_INV_CURR	[varchar](500) NULL,
ACCOUNTING_PERIOD	[varchar](500) NULL,
ACCOUNTING_SEQUENCE_NAME	[varchar](500) NULL,
ACCOUNTING_SEQUENCE_NUMBER	[varchar](500) NULL,
ACC_CLASS	[varchar](500) NULL,
ACC_DATE	[varchar](500) NULL,
BAL_TYPE	[varchar](500) NULL,
ENTERED_CREDIT_USD	[varchar](500) NULL,
ENTERED_DEBIT_USD	[varchar](500) NULL,
EVENT	[varchar](500) NULL,
EVENT_DATE	[datetime] NULL,
EVENT_ID	[varchar](500) NULL,
GL_TRANSFER_DATE	[varchar](500) NULL,
JOURNAL_BATCH	[varchar](500) NULL,
JOURNAL_ENTRY	[varchar](500) NULL,
JOURNAL_LINE_NUMBER	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
LEGAL_ENTITY_NAME	[varchar](500) NULL,
LINE	[varchar](500) NULL,
LINE_DESCRIPTION	[varchar](500) NULL,
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




Create View [rpy].[Payment_Accounting_Data_v] as
SELECT a.[ACCOUNT]
      ,[ACCOUNTED_CREDIT_INV_CURR]
      ,[ACCOUNTED_DEBIT_INV_CURR]
      ,[ACCOUNTING_PERIOD]
      ,[ACCOUNTING_SEQUENCE_NAME]
      ,[ACCOUNTING_SEQUENCE_NUMBER]
      ,[ACC_CLASS]
      ,[ACC_DATE]
      ,[BAL_TYPE]
      ,[ENTERED_CREDIT_USD]
      ,[ENTERED_DEBIT_USD]
      ,[EVENT]
      ,a.[EVENT_DATE]
      ,a.[EVENT_ID]
      ,[GL_TRANSFER_DATE]
      ,[JOURNAL_BATCH]
      ,[JOURNAL_ENTRY]
      ,a.[JOURNAL_LINE_NUMBER]
      ,[LEGAL_ENTITY_ID]
      ,[LEGAL_ENTITY_NAME]
      ,a.[LINE]
      ,[LINE_DESCRIPTION]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
FROM [rpy].[Payment_Accounting_Data] a,
(SELECT ACCOUNT, EVENT_ID, LINE, JOURNAL_LINE_NUMBER, max(EVENT_DATE) as EVENT_DATE from [rpy].[Payment_Accounting_Data] 
GROUP BY ACCOUNT, EVENT_ID, LINE, JOURNAL_LINE_NUMBER, EVENT_DATE) b
WHERE a.ACCOUNT = b.ACCOUNT 
AND a.EVENT_ID = b.EVENT_ID 
AND a.LINE = b.LINE 
AND a.JOURNAL_LINE_NUMBER = b.JOURNAL_LINE_NUMBER
AND a.EVENT_DATE = b.EVENT_DATE 

GO





CREATE NONCLUSTERED INDEX [idx_Payment_Accounting_Data_ACCOUNT_EVENT_ID_LINE_JOURNAL_LINE_NUMBER_EVENT_DATE] ON [rpy].[Payment_Accounting_Data]
(
	[ACCOUNT], [EVENT_ID], [LINE], [JOURNAL_LINE_NUMBER], [EVENT_DATE] ASC
)WITH (DROP_EXISTING = OFF)

GO



