insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_versions','NCSA','pl_po_versions',NULL,'1','aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-23 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_versions','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Versions',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Versions',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-08-15 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_VERSIONS.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','07',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_versions','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Versions_stage]
(

CREATED_BY	[varchar](4000) NULL,
CHECKLIST_ID	[varchar](4000) NULL,
RELATED_RCO_VERSION_ID	[varchar](4000) NULL,
REQUESTER_PROPOSAL_FLAG	[varchar](4000) NULL,
OVERRIDE_USER_ID	[varchar](4000) NULL,
BASE_VERSION_ID	[varchar](4000) NULL,
ESIGN_ENV_OWNER_EMAIL_ID	[varchar](4000) NULL,
ESIGN_ENVELOPE_STATUS	[varchar](4000) NULL,
ESIGN_ENVELOPE_OWNER	[varchar](4000) NULL,
ESIGN_ENVELOPE_ID	[varchar](4000) NULL,
APPROVAL_INSTANCE_ID	[varchar](4000) NULL,
ACCEPTED_DATE	datetime NULL,
SUBMITTED_DATE	datetime NULL,
APPROVED_DATE	datetime NULL,
COMMUNICATED_DATE	datetime NULL,
COMMUNICATED_TO_SUPPLIER	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
VERSION_ID	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
CO_SEQUENCE	[varchar](4000) NULL,
CO_NUM	[varchar](4000) NULL,
REVISION_NUM	[varchar](4000) NULL,
CHANGE_ORDER_DESC	[varchar](4000) NULL,
CHANGE_ORDER_TYPE	[varchar](4000) NULL,
CHANGE_ORDER_STATUS	[varchar](4000) NULL,
ONLINE_REPORT_ID	[varchar](4000) NULL,
MODIFIED_FLAG	[varchar](4000) NULL,
REJECTED_FLAG	[varchar](4000) NULL,
WITHDRAWN_FLAG	[varchar](4000) NULL,
EXTERNAL_SYSTEM_FLAG	[varchar](4000) NULL,
ORIGINATOR_ID	[varchar](4000) NULL,
ORIGINATOR_ROLE	[varchar](4000) NULL,
CO_CANCELED_FLAG	[varchar](4000) NULL,
CANCEL_BACKING_REQ_FLAG	[varchar](4000) NULL,
CO_CANCELED_BY_ROLE	[varchar](4000) NULL,
CO_CANCELED_BY_USER_ID	[varchar](4000) NULL,
REQUEST_DATE	datetime NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
CANCEL_DOC_FLAG	[varchar](4000) NULL,
PROCESSED_DATE	datetime NULL,
PENDING_RESPONSE_ROLE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
CREATED_BY_PROGRAM_NAME	[varchar](4000) NULL,
DOCUMENT_DATE	datetime NULL,
B2B_MESSAGE_ID	[varchar](4000) NULL,
LAST_SUBMITTER_ID	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
COUNTERPROPOSAL_FLAG	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Po_Versions]
(

CREATED_BY	[varchar](4000) NULL,
CHECKLIST_ID	[varchar](4000) NULL,
RELATED_RCO_VERSION_ID	[varchar](4000) NULL,
REQUESTER_PROPOSAL_FLAG	[varchar](4000) NULL,
OVERRIDE_USER_ID	[varchar](4000) NULL,
BASE_VERSION_ID	[varchar](4000) NULL,
ESIGN_ENV_OWNER_EMAIL_ID	[varchar](4000) NULL,
ESIGN_ENVELOPE_STATUS	[varchar](4000) NULL,
ESIGN_ENVELOPE_OWNER	[varchar](4000) NULL,
ESIGN_ENVELOPE_ID	[varchar](4000) NULL,
APPROVAL_INSTANCE_ID	[varchar](4000) NULL,
ACCEPTED_DATE	datetime NULL,
SUBMITTED_DATE	datetime NULL,
APPROVED_DATE	datetime NULL,
COMMUNICATED_DATE	datetime NULL,
COMMUNICATED_TO_SUPPLIER	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
VERSION_ID	[varchar](4000) NULL,
PO_HEADER_ID	[varchar](4000) NULL,
CO_SEQUENCE	[varchar](4000) NULL,
CO_NUM	[varchar](4000) NULL,
REVISION_NUM	[varchar](4000) NULL,
CHANGE_ORDER_DESC	[varchar](4000) NULL,
CHANGE_ORDER_TYPE	[varchar](4000) NULL,
CHANGE_ORDER_STATUS	[varchar](4000) NULL,
ONLINE_REPORT_ID	[varchar](4000) NULL,
MODIFIED_FLAG	[varchar](4000) NULL,
REJECTED_FLAG	[varchar](4000) NULL,
WITHDRAWN_FLAG	[varchar](4000) NULL,
EXTERNAL_SYSTEM_FLAG	[varchar](4000) NULL,
ORIGINATOR_ID	[varchar](4000) NULL,
ORIGINATOR_ROLE	[varchar](4000) NULL,
CO_CANCELED_FLAG	[varchar](4000) NULL,
CANCEL_BACKING_REQ_FLAG	[varchar](4000) NULL,
CO_CANCELED_BY_ROLE	[varchar](4000) NULL,
CO_CANCELED_BY_USER_ID	[varchar](4000) NULL,
REQUEST_DATE	datetime NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
CANCEL_DOC_FLAG	[varchar](4000) NULL,
PROCESSED_DATE	datetime NULL,
PENDING_RESPONSE_ROLE	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
CREATED_BY_PROGRAM_NAME	[varchar](4000) NULL,
DOCUMENT_DATE	datetime NULL,
B2B_MESSAGE_ID	[varchar](4000) NULL,
LAST_SUBMITTER_ID	[varchar](4000) NULL,
FUNDS_STATUS	[varchar](4000) NULL,
COUNTERPROPOSAL_FLAG	[varchar](4000) NULL,
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



Create View [rpy].[Po_Versions_v] as
SELECT [CREATED_BY]
      ,[CHECKLIST_ID]
      ,[RELATED_RCO_VERSION_ID]
      ,[REQUESTER_PROPOSAL_FLAG]
      ,[OVERRIDE_USER_ID]
      ,[BASE_VERSION_ID]
      ,[ESIGN_ENV_OWNER_EMAIL_ID]
      ,[ESIGN_ENVELOPE_STATUS]
      ,[ESIGN_ENVELOPE_OWNER]
      ,[ESIGN_ENVELOPE_ID]
      ,[APPROVAL_INSTANCE_ID]
      ,[ACCEPTED_DATE]
      ,[SUBMITTED_DATE]
      ,[APPROVED_DATE]
      ,[COMMUNICATED_DATE]
      ,[COMMUNICATED_TO_SUPPLIER]
      ,[CREATION_DATE]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,a.[VERSION_ID]
      ,[PO_HEADER_ID]
      ,[CO_SEQUENCE]
      ,[CO_NUM]
      ,[REVISION_NUM]
      ,[CHANGE_ORDER_DESC]
      ,[CHANGE_ORDER_TYPE]
      ,[CHANGE_ORDER_STATUS]
      ,[ONLINE_REPORT_ID]
      ,[MODIFIED_FLAG]
      ,[REJECTED_FLAG]
      ,[WITHDRAWN_FLAG]
      ,[EXTERNAL_SYSTEM_FLAG]
      ,[ORIGINATOR_ID]
      ,[ORIGINATOR_ROLE]
      ,[CO_CANCELED_FLAG]
      ,[CANCEL_BACKING_REQ_FLAG]
      ,[CO_CANCELED_BY_ROLE]
      ,[CO_CANCELED_BY_USER_ID]
      ,[REQUEST_DATE]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[CANCEL_DOC_FLAG]
      ,[PROCESSED_DATE]
      ,[PENDING_RESPONSE_ROLE]
      ,[OBJECT_VERSION_NUMBER]
      ,[CREATED_BY_PROGRAM_NAME]
      ,[DOCUMENT_DATE]
      ,[B2B_MESSAGE_ID]
      ,[LAST_SUBMITTER_ID]
      ,[FUNDS_STATUS]
      ,[COUNTERPROPOSAL_FLAG]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Versions] a,
  (SELECT VERSION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Versions] GROUP BY VERSION_ID) b
WHERE a.VERSION_ID = b.VERSION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE


GO



CREATE NONCLUSTERED INDEX [idx_Po_Versions_VERSION_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Versions]
(
	[VERSION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




