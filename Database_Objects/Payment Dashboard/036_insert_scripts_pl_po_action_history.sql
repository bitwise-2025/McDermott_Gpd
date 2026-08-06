insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_action_history','NCSA','pl_po_action_history',NULL,'1','aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_action_history','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Action_History',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Action_History',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-08-15 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_ACTION_HISTORY.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','03',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_action_history','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Action_History_stage]
(

OBJECT_ID	[varchar](4000) NULL,
ASSIGNMENT_DATE	datetime NULL,
ESIGN_ENVELOPE_ID	[varchar](4000) NULL,
ESIGN_ENV_OWNER_EMAIL_ID	[varchar](4000) NULL,
CORRELATION_ID	[varchar](4000) NULL,
OBJECT_REVISION_NUM	[varchar](4000) NULL,
PO_VERSION_ID	[varchar](4000) NULL,
OBJECT_TYPE_CODE	[varchar](4000) NULL,
OBJECT_SUB_TYPE_CODE	[varchar](4000) NULL,
SEQUENCE_NUM	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
ACTION_CODE	[varchar](4000) NULL,
ACTION_DATE	datetime NULL,
NOTE_MESSAGE_CODE_FLAG	[varchar](4000) NULL,
NOTE	[varchar](4000) NULL,
OFFLINE_CODE	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
PROGRAM_DATE	datetime NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PERFORMER_ID	[varchar](4000) NULL,
ROLE_CODE	[varchar](4000) NULL,
IDENTIFICATION_KEY	[varchar](4000) NULL,
ACTION_LEVEL	[varchar](4000) NULL,
PARENT_VERSION_ID	[varchar](4000) NULL,
SUPPLIER_ACCESSIBLE_FLAG	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
EMAIL_MESSAGE_ID	[varchar](4000) NULL,
ERROR_CODE	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Po_Action_History]
(

OBJECT_ID	[varchar](4000) NULL,
ASSIGNMENT_DATE	datetime NULL,
ESIGN_ENVELOPE_ID	[varchar](4000) NULL,
ESIGN_ENV_OWNER_EMAIL_ID	[varchar](4000) NULL,
CORRELATION_ID	[varchar](4000) NULL,
OBJECT_REVISION_NUM	[varchar](4000) NULL,
PO_VERSION_ID	[varchar](4000) NULL,
OBJECT_TYPE_CODE	[varchar](4000) NULL,
OBJECT_SUB_TYPE_CODE	[varchar](4000) NULL,
SEQUENCE_NUM	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
ACTION_CODE	[varchar](4000) NULL,
ACTION_DATE	datetime NULL,
NOTE_MESSAGE_CODE_FLAG	[varchar](4000) NULL,
NOTE	[varchar](4000) NULL,
OFFLINE_CODE	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
PROGRAM_DATE	datetime NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
PERFORMER_ID	[varchar](4000) NULL,
ROLE_CODE	[varchar](4000) NULL,
IDENTIFICATION_KEY	[varchar](4000) NULL,
ACTION_LEVEL	[varchar](4000) NULL,
PARENT_VERSION_ID	[varchar](4000) NULL,
SUPPLIER_ACCESSIBLE_FLAG	[varchar](4000) NULL,
REQUEST_ID	[varchar](4000) NULL,
EMAIL_MESSAGE_ID	[varchar](4000) NULL,
ERROR_CODE	[varchar](4000) NULL,
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



Create View [rpy].[Po_Action_History_v] as
SELECT a.[OBJECT_ID]
      ,[ASSIGNMENT_DATE]
      ,[ESIGN_ENVELOPE_ID]
      ,[ESIGN_ENV_OWNER_EMAIL_ID]
      ,[CORRELATION_ID]
      ,[OBJECT_REVISION_NUM]
      ,[PO_VERSION_ID]
      ,a.[OBJECT_TYPE_CODE]
      ,a.[OBJECT_SUB_TYPE_CODE]
      ,a.[SEQUENCE_NUM]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,a.[ACTION_CODE]
      ,[ACTION_DATE]
      ,[NOTE_MESSAGE_CODE_FLAG]
      ,[NOTE]
      ,[OFFLINE_CODE]
      ,[LAST_UPDATE_LOGIN]
      ,[PROGRAM_DATE]
      ,[OBJECT_VERSION_NUMBER]
      ,[PERFORMER_ID]
      ,[ROLE_CODE]
      ,[IDENTIFICATION_KEY]
      ,[ACTION_LEVEL]
      ,[PARENT_VERSION_ID]
      ,[SUPPLIER_ACCESSIBLE_FLAG]
      ,[REQUEST_ID]
      ,[EMAIL_MESSAGE_ID]
      ,[ERROR_CODE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Action_History] a,
  (SELECT OBJECT_ID, OBJECT_TYPE_CODE, OBJECT_SUB_TYPE_CODE, SEQUENCE_NUM, ACTION_CODE, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Action_History] GROUP BY OBJECT_ID, OBJECT_TYPE_CODE, OBJECT_SUB_TYPE_CODE, SEQUENCE_NUM, ACTION_CODE) b
WHERE a.OBJECT_ID = b.OBJECT_ID 
AND a.OBJECT_TYPE_CODE = b.OBJECT_TYPE_CODE
AND a.OBJECT_SUB_TYPE_CODE = b.OBJECT_SUB_TYPE_CODE
AND a.SEQUENCE_NUM = b.SEQUENCE_NUM
AND a.ACTION_CODE = b.ACTION_CODE
AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE


GO



CREATE NONCLUSTERED INDEX [idx_Po_Action_History_OBJECT_ID_OBJECT_TYPE_CODE_OBJECT_SUB_TYPE_CODE_SEQUENCE_NUM_ACTION_CODE_LAST_UPDATE_DATE] ON [rpy].[Po_Action_History]
(
	[OBJECT_ID], [OBJECT_TYPE_CODE], [OBJECT_SUB_TYPE_CODE], [SEQUENCE_NUM], [ACTION_CODE],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




