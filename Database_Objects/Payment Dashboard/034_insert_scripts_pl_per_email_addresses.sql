insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_per_email_addresses','NCSA','pl_per_email_addresses',NULL,'1','aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043',4)

GO

--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_email_addresses','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Per_Email_Addresses',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Per_Email_Addresses',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2019-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PER_EMAIL_ADDRESSES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_email_addresses','NetworkFolder')


GO


CREATE TABLE [rpy].[Per_Email_Addresses_stage]
(

EMAIL_ADDRESS_ID	[varchar](4000) NULL,
PERSON_ID	[varchar](4000) NULL,
BUSINESS_GROUP_ID	[varchar](4000) NULL,
EMAIL_TYPE	[varchar](4000) NULL,
DATE_FROM	datetime NULL,
DATE_TO	datetime NULL,
EMAIL_ADDRESS	[varchar](4000) NULL,
MASTERED_IN_LDAP_FLAG	[varchar](4000) NULL,
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
ATTRIBUTE21	[varchar](4000) NULL,
ATTRIBUTE22	[varchar](4000) NULL,
ATTRIBUTE23	[varchar](4000) NULL,
ATTRIBUTE24	[varchar](4000) NULL,
ATTRIBUTE25	[varchar](4000) NULL,
ATTRIBUTE26	[varchar](4000) NULL,
ATTRIBUTE27	[varchar](4000) NULL,
ATTRIBUTE28	[varchar](4000) NULL,
ATTRIBUTE29	[varchar](4000) NULL,
ATTRIBUTE30	[varchar](4000) NULL,
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
ATTRIBUTE_NUMBER11	[varchar](4000) NULL,
ATTRIBUTE_NUMBER12	[varchar](4000) NULL,
ATTRIBUTE_NUMBER13	[varchar](4000) NULL,
ATTRIBUTE_NUMBER14	[varchar](4000) NULL,
ATTRIBUTE_NUMBER15	[varchar](4000) NULL,
ATTRIBUTE_NUMBER16	[varchar](4000) NULL,
ATTRIBUTE_NUMBER17	[varchar](4000) NULL,
ATTRIBUTE_NUMBER18	[varchar](4000) NULL,
ATTRIBUTE_NUMBER19	[varchar](4000) NULL,
ATTRIBUTE_NUMBER20	[varchar](4000) NULL,
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
ATTRIBUTE_DATE11	datetime NULL,
ATTRIBUTE_DATE12	datetime NULL,
ATTRIBUTE_DATE13	datetime NULL,
ATTRIBUTE_DATE14	datetime NULL,
ATTRIBUTE_DATE15	datetime NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
CREATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Per_Email_Addresses]
(

EMAIL_ADDRESS_ID	[varchar](4000) NULL,
PERSON_ID	[varchar](4000) NULL,
BUSINESS_GROUP_ID	[varchar](4000) NULL,
EMAIL_TYPE	[varchar](4000) NULL,
DATE_FROM	datetime NULL,
DATE_TO	datetime NULL,
EMAIL_ADDRESS	[varchar](4000) NULL,
MASTERED_IN_LDAP_FLAG	[varchar](4000) NULL,
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
ATTRIBUTE21	[varchar](4000) NULL,
ATTRIBUTE22	[varchar](4000) NULL,
ATTRIBUTE23	[varchar](4000) NULL,
ATTRIBUTE24	[varchar](4000) NULL,
ATTRIBUTE25	[varchar](4000) NULL,
ATTRIBUTE26	[varchar](4000) NULL,
ATTRIBUTE27	[varchar](4000) NULL,
ATTRIBUTE28	[varchar](4000) NULL,
ATTRIBUTE29	[varchar](4000) NULL,
ATTRIBUTE30	[varchar](4000) NULL,
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
ATTRIBUTE_NUMBER11	[varchar](4000) NULL,
ATTRIBUTE_NUMBER12	[varchar](4000) NULL,
ATTRIBUTE_NUMBER13	[varchar](4000) NULL,
ATTRIBUTE_NUMBER14	[varchar](4000) NULL,
ATTRIBUTE_NUMBER15	[varchar](4000) NULL,
ATTRIBUTE_NUMBER16	[varchar](4000) NULL,
ATTRIBUTE_NUMBER17	[varchar](4000) NULL,
ATTRIBUTE_NUMBER18	[varchar](4000) NULL,
ATTRIBUTE_NUMBER19	[varchar](4000) NULL,
ATTRIBUTE_NUMBER20	[varchar](4000) NULL,
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
ATTRIBUTE_DATE11	datetime NULL,
ATTRIBUTE_DATE12	datetime NULL,
ATTRIBUTE_DATE13	datetime NULL,
ATTRIBUTE_DATE14	datetime NULL,
ATTRIBUTE_DATE15	datetime NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
CREATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
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



Create View [rpy].[Per_Email_Addresses_v] as
SELECT a.[EMAIL_ADDRESS_ID]
      ,[PERSON_ID]
      ,[BUSINESS_GROUP_ID]
      ,[EMAIL_TYPE]
      ,[DATE_FROM]
      ,[DATE_TO]
      ,[EMAIL_ADDRESS]
      ,[MASTERED_IN_LDAP_FLAG]
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
      ,[ATTRIBUTE21]
      ,[ATTRIBUTE22]
      ,[ATTRIBUTE23]
      ,[ATTRIBUTE24]
      ,[ATTRIBUTE25]
      ,[ATTRIBUTE26]
      ,[ATTRIBUTE27]
      ,[ATTRIBUTE28]
      ,[ATTRIBUTE29]
      ,[ATTRIBUTE30]
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
      ,[ATTRIBUTE_NUMBER11]
      ,[ATTRIBUTE_NUMBER12]
      ,[ATTRIBUTE_NUMBER13]
      ,[ATTRIBUTE_NUMBER14]
      ,[ATTRIBUTE_NUMBER15]
      ,[ATTRIBUTE_NUMBER16]
      ,[ATTRIBUTE_NUMBER17]
      ,[ATTRIBUTE_NUMBER18]
      ,[ATTRIBUTE_NUMBER19]
      ,[ATTRIBUTE_NUMBER20]
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
      ,[ATTRIBUTE_DATE11]
      ,[ATTRIBUTE_DATE12]
      ,[ATTRIBUTE_DATE13]
      ,[ATTRIBUTE_DATE14]
      ,[ATTRIBUTE_DATE15]
      ,[OBJECT_VERSION_NUMBER]
      ,[CREATED_BY]
      ,[CREATION_DATE]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LAST_UPDATED_BY]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Per_Email_Addresses] a,
  (SELECT EMAIL_ADDRESS_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Per_Email_Addresses] GROUP BY EMAIL_ADDRESS_ID) b
WHERE a.EMAIL_ADDRESS_ID = b.EMAIL_ADDRESS_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Per_Email_Addresses_EMAIL_ADDRESS_ID_LAST_UPDATE_DATE] ON [rpy].[Per_Email_Addresses]
(
	[EMAIL_ADDRESS_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




