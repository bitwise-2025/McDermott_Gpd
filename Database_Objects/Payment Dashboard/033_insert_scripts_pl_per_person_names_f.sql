insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_per_person_names_f','NCSA','pl_per_person_names_f',NULL,'1','aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_per_person_names_f','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Per_Person_Names_F',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Per_Person_Names_F',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2019-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PER_PERSON_NAMES_F.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_per_person_names_f','NetworkFolder')


GO


CREATE TABLE [rpy].[Per_Person_Names_F_stage]
(

PERSON_NAME_ID	[varchar](4000) NULL,
EFFECTIVE_START_DATE	datetime NULL,
EFFECTIVE_END_DATE	datetime NULL,
PERSON_ID	[varchar](4000) NULL,
BUSINESS_GROUP_ID	[varchar](4000) NULL,
LEGISLATION_CODE	[varchar](4000) NULL,
NAME_TYPE	[varchar](4000) NULL,
LAST_NAME	[varchar](4000) NULL,
FIRST_NAME	[varchar](4000) NULL,
MIDDLE_NAMES	[varchar](4000) NULL,
TITLE	[varchar](4000) NULL,
PRE_NAME_ADJUNCT	[varchar](4000) NULL,
SUFFIX	[varchar](4000) NULL,
KNOWN_AS	[varchar](4000) NULL,
PREVIOUS_LAST_NAME	[varchar](4000) NULL,
HONORS	[varchar](4000) NULL,
MILITARY_RANK	[varchar](4000) NULL,
DISPLAY_NAME	[varchar](4000) NULL,
FULL_NAME	[varchar](4000) NULL,
LIST_NAME	[varchar](4000) NULL,
ORDER_NAME	[varchar](4000) NULL,
NAM_INFORMATION_CATEGORY	[varchar](4000) NULL,
NAM_INFORMATION1	[varchar](4000) NULL,
NAM_INFORMATION2	[varchar](4000) NULL,
NAM_INFORMATION3	[varchar](4000) NULL,
NAM_INFORMATION4	[varchar](4000) NULL,
NAM_INFORMATION5	[varchar](4000) NULL,
NAM_INFORMATION6	[varchar](4000) NULL,
NAM_INFORMATION7	[varchar](4000) NULL,
NAM_INFORMATION8	[varchar](4000) NULL,
NAM_INFORMATION9	[varchar](4000) NULL,
NAM_INFORMATION10	[varchar](4000) NULL,
NAM_INFORMATION11	[varchar](4000) NULL,
NAM_INFORMATION12	[varchar](4000) NULL,
NAM_INFORMATION13	[varchar](4000) NULL,
NAM_INFORMATION14	[varchar](4000) NULL,
NAM_INFORMATION15	[varchar](4000) NULL,
NAM_INFORMATION16	[varchar](4000) NULL,
NAM_INFORMATION17	[varchar](4000) NULL,
NAM_INFORMATION18	[varchar](4000) NULL,
NAM_INFORMATION19	[varchar](4000) NULL,
NAM_INFORMATION20	[varchar](4000) NULL,
NAM_INFORMATION21	[varchar](4000) NULL,
NAM_INFORMATION22	[varchar](4000) NULL,
NAM_INFORMATION23	[varchar](4000) NULL,
NAM_INFORMATION24	[varchar](4000) NULL,
NAM_INFORMATION25	[varchar](4000) NULL,
NAM_INFORMATION26	[varchar](4000) NULL,
NAM_INFORMATION27	[varchar](4000) NULL,
NAM_INFORMATION28	[varchar](4000) NULL,
NAM_INFORMATION29	[varchar](4000) NULL,
NAM_INFORMATION30	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER1	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER2	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER3	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER4	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER5	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER6	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER7	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER8	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER9	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER10	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER11	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER12	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER13	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER14	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER15	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER16	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER17	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER18	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER19	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER20	[varchar](4000) NULL,
NAM_INFORMATION_DATE1	datetime NULL,
NAM_INFORMATION_DATE2	datetime NULL,
NAM_INFORMATION_DATE3	datetime NULL,
NAM_INFORMATION_DATE4	datetime NULL,
NAM_INFORMATION_DATE5	datetime NULL,
NAM_INFORMATION_DATE6	datetime NULL,
NAM_INFORMATION_DATE7	datetime NULL,
NAM_INFORMATION_DATE8	datetime NULL,
NAM_INFORMATION_DATE9	datetime NULL,
NAM_INFORMATION_DATE10	datetime NULL,
NAM_INFORMATION_DATE11	datetime NULL,
NAM_INFORMATION_DATE12	datetime NULL,
NAM_INFORMATION_DATE13	datetime NULL,
NAM_INFORMATION_DATE14	datetime NULL,
NAM_INFORMATION_DATE15	datetime NULL,
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
CHAR_SET_CONTEXT	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Per_Person_Names_F]
(

PERSON_NAME_ID	[varchar](4000) NULL,
EFFECTIVE_START_DATE	datetime NULL,
EFFECTIVE_END_DATE	datetime NULL,
PERSON_ID	[varchar](4000) NULL,
BUSINESS_GROUP_ID	[varchar](4000) NULL,
LEGISLATION_CODE	[varchar](4000) NULL,
NAME_TYPE	[varchar](4000) NULL,
LAST_NAME	[varchar](4000) NULL,
FIRST_NAME	[varchar](4000) NULL,
MIDDLE_NAMES	[varchar](4000) NULL,
TITLE	[varchar](4000) NULL,
PRE_NAME_ADJUNCT	[varchar](4000) NULL,
SUFFIX	[varchar](4000) NULL,
KNOWN_AS	[varchar](4000) NULL,
PREVIOUS_LAST_NAME	[varchar](4000) NULL,
HONORS	[varchar](4000) NULL,
MILITARY_RANK	[varchar](4000) NULL,
DISPLAY_NAME	[varchar](4000) NULL,
FULL_NAME	[varchar](4000) NULL,
LIST_NAME	[varchar](4000) NULL,
ORDER_NAME	[varchar](4000) NULL,
NAM_INFORMATION_CATEGORY	[varchar](4000) NULL,
NAM_INFORMATION1	[varchar](4000) NULL,
NAM_INFORMATION2	[varchar](4000) NULL,
NAM_INFORMATION3	[varchar](4000) NULL,
NAM_INFORMATION4	[varchar](4000) NULL,
NAM_INFORMATION5	[varchar](4000) NULL,
NAM_INFORMATION6	[varchar](4000) NULL,
NAM_INFORMATION7	[varchar](4000) NULL,
NAM_INFORMATION8	[varchar](4000) NULL,
NAM_INFORMATION9	[varchar](4000) NULL,
NAM_INFORMATION10	[varchar](4000) NULL,
NAM_INFORMATION11	[varchar](4000) NULL,
NAM_INFORMATION12	[varchar](4000) NULL,
NAM_INFORMATION13	[varchar](4000) NULL,
NAM_INFORMATION14	[varchar](4000) NULL,
NAM_INFORMATION15	[varchar](4000) NULL,
NAM_INFORMATION16	[varchar](4000) NULL,
NAM_INFORMATION17	[varchar](4000) NULL,
NAM_INFORMATION18	[varchar](4000) NULL,
NAM_INFORMATION19	[varchar](4000) NULL,
NAM_INFORMATION20	[varchar](4000) NULL,
NAM_INFORMATION21	[varchar](4000) NULL,
NAM_INFORMATION22	[varchar](4000) NULL,
NAM_INFORMATION23	[varchar](4000) NULL,
NAM_INFORMATION24	[varchar](4000) NULL,
NAM_INFORMATION25	[varchar](4000) NULL,
NAM_INFORMATION26	[varchar](4000) NULL,
NAM_INFORMATION27	[varchar](4000) NULL,
NAM_INFORMATION28	[varchar](4000) NULL,
NAM_INFORMATION29	[varchar](4000) NULL,
NAM_INFORMATION30	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER1	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER2	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER3	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER4	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER5	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER6	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER7	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER8	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER9	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER10	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER11	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER12	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER13	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER14	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER15	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER16	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER17	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER18	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER19	[varchar](4000) NULL,
NAM_INFORMATION_NUMBER20	[varchar](4000) NULL,
NAM_INFORMATION_DATE1	datetime NULL,
NAM_INFORMATION_DATE2	datetime NULL,
NAM_INFORMATION_DATE3	datetime NULL,
NAM_INFORMATION_DATE4	datetime NULL,
NAM_INFORMATION_DATE5	datetime NULL,
NAM_INFORMATION_DATE6	datetime NULL,
NAM_INFORMATION_DATE7	datetime NULL,
NAM_INFORMATION_DATE8	datetime NULL,
NAM_INFORMATION_DATE9	datetime NULL,
NAM_INFORMATION_DATE10	datetime NULL,
NAM_INFORMATION_DATE11	datetime NULL,
NAM_INFORMATION_DATE12	datetime NULL,
NAM_INFORMATION_DATE13	datetime NULL,
NAM_INFORMATION_DATE14	datetime NULL,
NAM_INFORMATION_DATE15	datetime NULL,
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
CHAR_SET_CONTEXT	[varchar](4000) NULL,
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



Create View [rpy].[Per_Person_Names_F_v] as
SELECT a.[PERSON_NAME_ID]
      ,a.[EFFECTIVE_START_DATE]
      ,a.[EFFECTIVE_END_DATE]
      ,[PERSON_ID]
      ,[BUSINESS_GROUP_ID]
      ,[LEGISLATION_CODE]
      ,[NAME_TYPE]
      ,[LAST_NAME]
      ,[FIRST_NAME]
      ,[MIDDLE_NAMES]
      ,[TITLE]
      ,[PRE_NAME_ADJUNCT]
      ,[SUFFIX]
      ,[KNOWN_AS]
      ,[PREVIOUS_LAST_NAME]
      ,[HONORS]
      ,[MILITARY_RANK]
      ,[DISPLAY_NAME]
      ,[FULL_NAME]
      ,[LIST_NAME]
      ,[ORDER_NAME]
      ,[NAM_INFORMATION_CATEGORY]
      ,[NAM_INFORMATION1]
      ,[NAM_INFORMATION2]
      ,[NAM_INFORMATION3]
      ,[NAM_INFORMATION4]
      ,[NAM_INFORMATION5]
      ,[NAM_INFORMATION6]
      ,[NAM_INFORMATION7]
      ,[NAM_INFORMATION8]
      ,[NAM_INFORMATION9]
      ,[NAM_INFORMATION10]
      ,[NAM_INFORMATION11]
      ,[NAM_INFORMATION12]
      ,[NAM_INFORMATION13]
      ,[NAM_INFORMATION14]
      ,[NAM_INFORMATION15]
      ,[NAM_INFORMATION16]
      ,[NAM_INFORMATION17]
      ,[NAM_INFORMATION18]
      ,[NAM_INFORMATION19]
      ,[NAM_INFORMATION20]
      ,[NAM_INFORMATION21]
      ,[NAM_INFORMATION22]
      ,[NAM_INFORMATION23]
      ,[NAM_INFORMATION24]
      ,[NAM_INFORMATION25]
      ,[NAM_INFORMATION26]
      ,[NAM_INFORMATION27]
      ,[NAM_INFORMATION28]
      ,[NAM_INFORMATION29]
      ,[NAM_INFORMATION30]
      ,[NAM_INFORMATION_NUMBER1]
      ,[NAM_INFORMATION_NUMBER2]
      ,[NAM_INFORMATION_NUMBER3]
      ,[NAM_INFORMATION_NUMBER4]
      ,[NAM_INFORMATION_NUMBER5]
      ,[NAM_INFORMATION_NUMBER6]
      ,[NAM_INFORMATION_NUMBER7]
      ,[NAM_INFORMATION_NUMBER8]
      ,[NAM_INFORMATION_NUMBER9]
      ,[NAM_INFORMATION_NUMBER10]
      ,[NAM_INFORMATION_NUMBER11]
      ,[NAM_INFORMATION_NUMBER12]
      ,[NAM_INFORMATION_NUMBER13]
      ,[NAM_INFORMATION_NUMBER14]
      ,[NAM_INFORMATION_NUMBER15]
      ,[NAM_INFORMATION_NUMBER16]
      ,[NAM_INFORMATION_NUMBER17]
      ,[NAM_INFORMATION_NUMBER18]
      ,[NAM_INFORMATION_NUMBER19]
      ,[NAM_INFORMATION_NUMBER20]
      ,[NAM_INFORMATION_DATE1]
      ,[NAM_INFORMATION_DATE2]
      ,[NAM_INFORMATION_DATE3]
      ,[NAM_INFORMATION_DATE4]
      ,[NAM_INFORMATION_DATE5]
      ,[NAM_INFORMATION_DATE6]
      ,[NAM_INFORMATION_DATE7]
      ,[NAM_INFORMATION_DATE8]
      ,[NAM_INFORMATION_DATE9]
      ,[NAM_INFORMATION_DATE10]
      ,[NAM_INFORMATION_DATE11]
      ,[NAM_INFORMATION_DATE12]
      ,[NAM_INFORMATION_DATE13]
      ,[NAM_INFORMATION_DATE14]
      ,[NAM_INFORMATION_DATE15]
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
      ,[CHAR_SET_CONTEXT]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Per_Person_Names_F] a,
  (SELECT PERSON_NAME_ID, EFFECTIVE_START_DATE, EFFECTIVE_END_DATE, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Per_Person_Names_F] GROUP BY PERSON_NAME_ID, EFFECTIVE_START_DATE, EFFECTIVE_END_DATE) b
WHERE a.PERSON_NAME_ID = b.PERSON_NAME_ID 
AND a.EFFECTIVE_START_DATE = b.EFFECTIVE_START_DATE
AND a.EFFECTIVE_END_DATE = b.EFFECTIVE_END_DATE
AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Per_Person_Names_F_PERSON_NAME_ID_EFFECTIVE_START_DATE_EFFECTIVE_END_DATE_LAST_UPDATE_DATE] ON [rpy].[Per_Person_Names_F]
(
	[PERSON_NAME_ID], [EFFECTIVE_START_DATE], [EFFECTIVE_END_DATE], [LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




