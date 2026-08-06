insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_egp_categories_b','NCSA','pl_egp_categories_b',NULL,'1','aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_b','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Egp_Categories_B',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Egp_Categories_B',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2018-06-25 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/EGP_CATEGORIES_B.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_b','NetworkFolder')


GO


CREATE TABLE [rpy].[Egp_Categories_B_stage]
(

CATEGORY_ID	[varchar](4000) NULL,
STRUCTURE_ID	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
DISABLE_DATE	datetime NULL,
SEGMENT1	[varchar](4000) NULL,
SEGMENT_NUMBER1	[varchar](4000) NULL,
SEGMENT_NUMBER2	[varchar](4000) NULL,
SEGMENT_NUMBER3	[varchar](4000) NULL,
SEGMENT_NUMBER4	[varchar](4000) NULL,
SEGMENT_NUMBER5	[varchar](4000) NULL,
SEGMENT_NUMBER6	[varchar](4000) NULL,
SEGMENT_NUMBER7	[varchar](4000) NULL,
SEGMENT_NUMBER8	[varchar](4000) NULL,
SEGMENT_NUMBER9	[varchar](4000) NULL,
SEGMENT_NUMBER10	[varchar](4000) NULL,
SEGMENT_NUMBER11	[varchar](4000) NULL,
SEGMENT_NUMBER12	[varchar](4000) NULL,
SEGMENT_NUMBER13	[varchar](4000) NULL,
SEGMENT_NUMBER14	[varchar](4000) NULL,
SEGMENT_NUMBER15	[varchar](4000) NULL,
SEGMENT_NUMBER16	[varchar](4000) NULL,
SEGMENT_NUMBER17	[varchar](4000) NULL,
SEGMENT_NUMBER18	[varchar](4000) NULL,
SEGMENT_NUMBER19	[varchar](4000) NULL,
SEGMENT_NUMBER20	[varchar](4000) NULL,
SEGMENT2	[varchar](4000) NULL,
SEGMENT3	[varchar](4000) NULL,
SEGMENT4	[varchar](4000) NULL,
SEGMENT5	[varchar](4000) NULL,
SEGMENT6	[varchar](4000) NULL,
SEGMENT7	[varchar](4000) NULL,
SEGMENT8	[varchar](4000) NULL,
SEGMENT9	[varchar](4000) NULL,
SEGMENT10	[varchar](4000) NULL,
SEGMENT11	[varchar](4000) NULL,
SEGMENT12	[varchar](4000) NULL,
SEGMENT13	[varchar](4000) NULL,
SEGMENT14	[varchar](4000) NULL,
SEGMENT15	[varchar](4000) NULL,
SEGMENT16	[varchar](4000) NULL,
SEGMENT17	[varchar](4000) NULL,
SEGMENT18	[varchar](4000) NULL,
SEGMENT19	[varchar](4000) NULL,
SEGMENT20	[varchar](4000) NULL,
SUMMARY_FLAG	[varchar](4000) NULL,
ENABLED_FLAG	[varchar](4000) NULL,
START_DATE_ACTIVE	datetime NULL,
END_DATE_ACTIVE	datetime NULL,
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
REQUEST_ID	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
WH_UPDATE_DATE	datetime NULL,
TOTAL_PROD_ID	[varchar](4000) NULL,
WEB_STATUS	[varchar](4000) NULL,
SUPPLIER_ENABLED_FLAG	[varchar](4000) NULL,
CATEGORY_CONTENT_CODE	[varchar](4000) NULL,
CATEGORY_CODE	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
STRUCTURE_INSTANCE_NUMBER	[varchar](4000) NULL,
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
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
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






CREATE TABLE [rpy].[Egp_Categories_B]
(

CATEGORY_ID	[varchar](4000) NULL,
STRUCTURE_ID	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
DISABLE_DATE	datetime NULL,
SEGMENT1	[varchar](4000) NULL,
SEGMENT_NUMBER1	[varchar](4000) NULL,
SEGMENT_NUMBER2	[varchar](4000) NULL,
SEGMENT_NUMBER3	[varchar](4000) NULL,
SEGMENT_NUMBER4	[varchar](4000) NULL,
SEGMENT_NUMBER5	[varchar](4000) NULL,
SEGMENT_NUMBER6	[varchar](4000) NULL,
SEGMENT_NUMBER7	[varchar](4000) NULL,
SEGMENT_NUMBER8	[varchar](4000) NULL,
SEGMENT_NUMBER9	[varchar](4000) NULL,
SEGMENT_NUMBER10	[varchar](4000) NULL,
SEGMENT_NUMBER11	[varchar](4000) NULL,
SEGMENT_NUMBER12	[varchar](4000) NULL,
SEGMENT_NUMBER13	[varchar](4000) NULL,
SEGMENT_NUMBER14	[varchar](4000) NULL,
SEGMENT_NUMBER15	[varchar](4000) NULL,
SEGMENT_NUMBER16	[varchar](4000) NULL,
SEGMENT_NUMBER17	[varchar](4000) NULL,
SEGMENT_NUMBER18	[varchar](4000) NULL,
SEGMENT_NUMBER19	[varchar](4000) NULL,
SEGMENT_NUMBER20	[varchar](4000) NULL,
SEGMENT2	[varchar](4000) NULL,
SEGMENT3	[varchar](4000) NULL,
SEGMENT4	[varchar](4000) NULL,
SEGMENT5	[varchar](4000) NULL,
SEGMENT6	[varchar](4000) NULL,
SEGMENT7	[varchar](4000) NULL,
SEGMENT8	[varchar](4000) NULL,
SEGMENT9	[varchar](4000) NULL,
SEGMENT10	[varchar](4000) NULL,
SEGMENT11	[varchar](4000) NULL,
SEGMENT12	[varchar](4000) NULL,
SEGMENT13	[varchar](4000) NULL,
SEGMENT14	[varchar](4000) NULL,
SEGMENT15	[varchar](4000) NULL,
SEGMENT16	[varchar](4000) NULL,
SEGMENT17	[varchar](4000) NULL,
SEGMENT18	[varchar](4000) NULL,
SEGMENT19	[varchar](4000) NULL,
SEGMENT20	[varchar](4000) NULL,
SUMMARY_FLAG	[varchar](4000) NULL,
ENABLED_FLAG	[varchar](4000) NULL,
START_DATE_ACTIVE	datetime NULL,
END_DATE_ACTIVE	datetime NULL,
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
REQUEST_ID	[varchar](4000) NULL,
PROGRAM_NAME	[varchar](4000) NULL,
PROGRAM_APP_NAME	[varchar](4000) NULL,
WH_UPDATE_DATE	datetime NULL,
TOTAL_PROD_ID	[varchar](4000) NULL,
WEB_STATUS	[varchar](4000) NULL,
SUPPLIER_ENABLED_FLAG	[varchar](4000) NULL,
CATEGORY_CONTENT_CODE	[varchar](4000) NULL,
CATEGORY_CODE	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
STRUCTURE_INSTANCE_NUMBER	[varchar](4000) NULL,
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
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
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



Create View [rpy].[Egp_Categories_B_v] as
SELECT a.[CATEGORY_ID]
      ,[STRUCTURE_ID]
      ,[OBJECT_VERSION_NUMBER]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[LAST_UPDATE_LOGIN]
      ,[DESCRIPTION]
      ,[DISABLE_DATE]
      ,[SEGMENT1]
      ,[SEGMENT_NUMBER1]
      ,[SEGMENT_NUMBER2]
      ,[SEGMENT_NUMBER3]
      ,[SEGMENT_NUMBER4]
      ,[SEGMENT_NUMBER5]
      ,[SEGMENT_NUMBER6]
      ,[SEGMENT_NUMBER7]
      ,[SEGMENT_NUMBER8]
      ,[SEGMENT_NUMBER9]
      ,[SEGMENT_NUMBER10]
      ,[SEGMENT_NUMBER11]
      ,[SEGMENT_NUMBER12]
      ,[SEGMENT_NUMBER13]
      ,[SEGMENT_NUMBER14]
      ,[SEGMENT_NUMBER15]
      ,[SEGMENT_NUMBER16]
      ,[SEGMENT_NUMBER17]
      ,[SEGMENT_NUMBER18]
      ,[SEGMENT_NUMBER19]
      ,[SEGMENT_NUMBER20]
      ,[SEGMENT2]
      ,[SEGMENT3]
      ,[SEGMENT4]
      ,[SEGMENT5]
      ,[SEGMENT6]
      ,[SEGMENT7]
      ,[SEGMENT8]
      ,[SEGMENT9]
      ,[SEGMENT10]
      ,[SEGMENT11]
      ,[SEGMENT12]
      ,[SEGMENT13]
      ,[SEGMENT14]
      ,[SEGMENT15]
      ,[SEGMENT16]
      ,[SEGMENT17]
      ,[SEGMENT18]
      ,[SEGMENT19]
      ,[SEGMENT20]
      ,[SUMMARY_FLAG]
      ,[ENABLED_FLAG]
      ,[START_DATE_ACTIVE]
      ,[END_DATE_ACTIVE]
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
      ,[REQUEST_ID]
      ,[PROGRAM_NAME]
      ,[PROGRAM_APP_NAME]
      ,[WH_UPDATE_DATE]
      ,[TOTAL_PROD_ID]
      ,[WEB_STATUS]
      ,[SUPPLIER_ENABLED_FLAG]
      ,[CATEGORY_CONTENT_CODE]
      ,[CATEGORY_CODE]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[STRUCTURE_INSTANCE_NUMBER]
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
      ,[ATTRIBUTE_TIMESTAMP1]
      ,[ATTRIBUTE_TIMESTAMP2]
      ,[ATTRIBUTE_TIMESTAMP3]
      ,[ATTRIBUTE_TIMESTAMP4]
      ,[ATTRIBUTE_TIMESTAMP5]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Egp_Categories_B] a,
  (SELECT CATEGORY_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Egp_Categories_B] GROUP BY CATEGORY_ID) b
WHERE a.CATEGORY_ID = b.CATEGORY_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Egp_Categories_B_CATEGORY_ID_LAST_UPDATE_DATE] ON [rpy].[Egp_Categories_B]
(
	[CATEGORY_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




