insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_xle_entity_profiles','NCSA','pl_xle_entity_profiles',NULL,'1','aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_xle_entity_profiles','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Xle_Entity_Profiles',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Xle_Entity_Profiles',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2018-06-25 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/XLE_ENTITY_PROFILES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_xle_entity_profiles','NetworkFolder')


GO


CREATE TABLE [rpy].[Xle_Entity_Profiles_stage]
(

LEGAL_ENTITY_ID	[varchar](4000) NULL,
PARTY_ID	[varchar](4000) NULL,
LEGAL_ENTITY_IDENTIFIER	[varchar](4000) NULL,
NAME	[varchar](4000) NULL,
GEOGRAPHY_ID	[varchar](4000) NULL,
TRANSACTING_ENTITY_FLAG	[varchar](4000) NULL,
EFFECTIVE_FROM	datetime NULL,
EFFECTIVE_TO	datetime NULL,
LE_INFORMATION_CONTEXT	[varchar](4000) NULL,
LE_INFORMATION1	[varchar](4000) NULL,
LE_INFORMATION2	[varchar](4000) NULL,
LE_INFORMATION3	[varchar](4000) NULL,
LE_INFORMATION4	[varchar](4000) NULL,
LE_INFORMATION5	[varchar](4000) NULL,
LE_INFORMATION6	[varchar](4000) NULL,
LE_INFORMATION7	[varchar](4000) NULL,
LE_INFORMATION8	[varchar](4000) NULL,
LE_INFORMATION9	[varchar](4000) NULL,
LE_INFORMATION10	[varchar](4000) NULL,
LE_INFORMATION11	[varchar](4000) NULL,
LE_INFORMATION12	[varchar](4000) NULL,
LE_INFORMATION13	[varchar](4000) NULL,
LE_INFORMATION14	[varchar](4000) NULL,
LE_INFORMATION15	[varchar](4000) NULL,
LE_INFORMATION16	[varchar](4000) NULL,
LE_INFORMATION17	[varchar](4000) NULL,
LE_INFORMATION18	[varchar](4000) NULL,
LE_INFORMATION19	[varchar](4000) NULL,
LE_INFORMATION20	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
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
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ACTIVITY_CODE	[varchar](4000) NULL,
SUB_ACTIVITY_CODE	[varchar](4000) NULL,
TYPE_OF_COMPANY	[varchar](4000) NULL,
PSU_FLAG	[varchar](4000) NULL,
LEGAL_EMPLOYER_FLAG	[varchar](4000) NULL,
PARENT_PSU_ID	[varchar](4000) NULL,
ENTERPRISE_ID	[varchar](4000) NULL,
LE_INFORMATION_NUMBER1	[varchar](4000) NULL,
LE_INFORMATION_NUMBER2	[varchar](4000) NULL,
LE_INFORMATION_NUMBER3	[varchar](4000) NULL,
LE_INFORMATION_NUMBER4	[varchar](4000) NULL,
LE_INFORMATION_NUMBER5	[varchar](4000) NULL,
LE_INFORMATION_DATE1	datetime NULL,
LE_INFORMATION_DATE2	datetime NULL,
LE_INFORMATION_DATE3	datetime NULL,
LE_INFORMATION_DATE4	datetime NULL,
LE_INFORMATION_DATE5	datetime NULL,
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






CREATE TABLE [rpy].[Xle_Entity_Profiles]
(

LEGAL_ENTITY_ID	[varchar](4000) NULL,
PARTY_ID	[varchar](4000) NULL,
LEGAL_ENTITY_IDENTIFIER	[varchar](4000) NULL,
NAME	[varchar](4000) NULL,
GEOGRAPHY_ID	[varchar](4000) NULL,
TRANSACTING_ENTITY_FLAG	[varchar](4000) NULL,
EFFECTIVE_FROM	datetime NULL,
EFFECTIVE_TO	datetime NULL,
LE_INFORMATION_CONTEXT	[varchar](4000) NULL,
LE_INFORMATION1	[varchar](4000) NULL,
LE_INFORMATION2	[varchar](4000) NULL,
LE_INFORMATION3	[varchar](4000) NULL,
LE_INFORMATION4	[varchar](4000) NULL,
LE_INFORMATION5	[varchar](4000) NULL,
LE_INFORMATION6	[varchar](4000) NULL,
LE_INFORMATION7	[varchar](4000) NULL,
LE_INFORMATION8	[varchar](4000) NULL,
LE_INFORMATION9	[varchar](4000) NULL,
LE_INFORMATION10	[varchar](4000) NULL,
LE_INFORMATION11	[varchar](4000) NULL,
LE_INFORMATION12	[varchar](4000) NULL,
LE_INFORMATION13	[varchar](4000) NULL,
LE_INFORMATION14	[varchar](4000) NULL,
LE_INFORMATION15	[varchar](4000) NULL,
LE_INFORMATION16	[varchar](4000) NULL,
LE_INFORMATION17	[varchar](4000) NULL,
LE_INFORMATION18	[varchar](4000) NULL,
LE_INFORMATION19	[varchar](4000) NULL,
LE_INFORMATION20	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
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
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ACTIVITY_CODE	[varchar](4000) NULL,
SUB_ACTIVITY_CODE	[varchar](4000) NULL,
TYPE_OF_COMPANY	[varchar](4000) NULL,
PSU_FLAG	[varchar](4000) NULL,
LEGAL_EMPLOYER_FLAG	[varchar](4000) NULL,
PARENT_PSU_ID	[varchar](4000) NULL,
ENTERPRISE_ID	[varchar](4000) NULL,
LE_INFORMATION_NUMBER1	[varchar](4000) NULL,
LE_INFORMATION_NUMBER2	[varchar](4000) NULL,
LE_INFORMATION_NUMBER3	[varchar](4000) NULL,
LE_INFORMATION_NUMBER4	[varchar](4000) NULL,
LE_INFORMATION_NUMBER5	[varchar](4000) NULL,
LE_INFORMATION_DATE1	datetime NULL,
LE_INFORMATION_DATE2	datetime NULL,
LE_INFORMATION_DATE3	datetime NULL,
LE_INFORMATION_DATE4	datetime NULL,
LE_INFORMATION_DATE5	datetime NULL,
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



Create View [rpy].[Xle_Entity_Profiles_v] as
SELECT a.[LEGAL_ENTITY_ID]
      ,[PARTY_ID]
      ,[LEGAL_ENTITY_IDENTIFIER]
      ,[NAME]
      ,[GEOGRAPHY_ID]
      ,[TRANSACTING_ENTITY_FLAG]
      ,[EFFECTIVE_FROM]
      ,[EFFECTIVE_TO]
      ,[LE_INFORMATION_CONTEXT]
      ,[LE_INFORMATION1]
      ,[LE_INFORMATION2]
      ,[LE_INFORMATION3]
      ,[LE_INFORMATION4]
      ,[LE_INFORMATION5]
      ,[LE_INFORMATION6]
      ,[LE_INFORMATION7]
      ,[LE_INFORMATION8]
      ,[LE_INFORMATION9]
      ,[LE_INFORMATION10]
      ,[LE_INFORMATION11]
      ,[LE_INFORMATION12]
      ,[LE_INFORMATION13]
      ,[LE_INFORMATION14]
      ,[LE_INFORMATION15]
      ,[LE_INFORMATION16]
      ,[LE_INFORMATION17]
      ,[LE_INFORMATION18]
      ,[LE_INFORMATION19]
      ,[LE_INFORMATION20]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,a.[LAST_UPDATE_DATE]
      ,[CREATED_BY]
      ,[OBJECT_VERSION_NUMBER]
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
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,[ATTRIBUTE_DATE1]
      ,[ATTRIBUTE_DATE2]
      ,[ATTRIBUTE_DATE3]
      ,[ATTRIBUTE_DATE4]
      ,[ATTRIBUTE_DATE5]
      ,[ACTIVITY_CODE]
      ,[SUB_ACTIVITY_CODE]
      ,[TYPE_OF_COMPANY]
      ,[PSU_FLAG]
      ,[LEGAL_EMPLOYER_FLAG]
      ,[PARENT_PSU_ID]
      ,[ENTERPRISE_ID]
      ,[LE_INFORMATION_NUMBER1]
      ,[LE_INFORMATION_NUMBER2]
      ,[LE_INFORMATION_NUMBER3]
      ,[LE_INFORMATION_NUMBER4]
      ,[LE_INFORMATION_NUMBER5]
      ,[LE_INFORMATION_DATE1]
      ,[LE_INFORMATION_DATE2]
      ,[LE_INFORMATION_DATE3]
      ,[LE_INFORMATION_DATE4]
      ,[LE_INFORMATION_DATE5]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Xle_Entity_Profiles] a,
  (SELECT LEGAL_ENTITY_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Xle_Entity_Profiles] GROUP BY LEGAL_ENTITY_ID) b
WHERE a.LEGAL_ENTITY_ID = b.LEGAL_ENTITY_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Xle_Entity_Profiles_LEGAL_ENTITY_ID_LAST_UPDATE_DATE] ON [rpy].[Xle_Entity_Profiles]
(
	[LEGAL_ENTITY_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




