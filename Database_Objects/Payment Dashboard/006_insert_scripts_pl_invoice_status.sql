insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_invoice_status','NCSA','pl_invoice_status',NULL,'1','aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-07 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_invoice_status','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Invoice_Status',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Invoice_Status',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/MDR_AP_INV_STATUS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','07',1,'aditya.anand2@mcdermott.com',@dd,'pl_invoice_status','NetworkFolder')


GO


CREATE TABLE [rpy].[Invoice_status_stage]
(

INVOICE_ID	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
VALIDATION_STATUS	[varchar](500) NULL,
ACCOUNTING_STATUS	[varchar](500) NULL,
APPROVAL_STATUS	[varchar](500) NULL,
PAYMENT_STATUS	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Invoice_status]
(

INVOICE_ID	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
VALIDATION_STATUS	[varchar](500) NULL,
ACCOUNTING_STATUS	[varchar](500) NULL,
APPROVAL_STATUS	[varchar](500) NULL,
PAYMENT_STATUS	[varchar](500) NULL,
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





Create View [rpy].[Invoice_status_v] as
SELECT a.[INVOICE_ID]
      ,a.[LAST_UPDATE_DATE]
      ,[VALIDATION_STATUS]
      ,[ACCOUNTING_STATUS]
      ,[APPROVAL_STATUS]
      ,[PAYMENT_STATUS]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Invoice_status] a,
  (SELECT INVOICE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Invoice_status] GROUP BY INVOICE_ID) b
WHERE a.INVOICE_ID = b.INVOICE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO

CREATE NONCLUSTERED INDEX [idx_Invoice_status_INVOICE_ID_LAST_UPDATE_DATE] ON [rpy].[Invoice_status]
(
	[INVOICE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO



 