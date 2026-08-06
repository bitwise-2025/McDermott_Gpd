insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_projects_data','NCSA','pl_projects_data',NULL,'1','aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_projects_data','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Projects_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Projects_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/PJF_PROJECTS_ALL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_projects_data','NetworkFolder')


GO


CREATE TABLE [rpy].[Projects_Data_stage]
(

ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE10_DATE	[varchar](500) NULL,
ATTRIBUTE10_NUMBER	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE11_DATE	[varchar](500) NULL,
ATTRIBUTE11_NUMBER	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE12_DATE	[varchar](500) NULL,
ATTRIBUTE12_NUMBER	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE13_DATE	[varchar](500) NULL,
ATTRIBUTE13_NUMBER	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE14_DATE	[varchar](500) NULL,
ATTRIBUTE14_NUMBER	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE15_DATE	[varchar](500) NULL,
ATTRIBUTE15_NUMBER	[varchar](500) NULL,
ATTRIBUTE16	[varchar](500) NULL,
ATTRIBUTE17	[varchar](500) NULL,
ATTRIBUTE18	[varchar](500) NULL,
ATTRIBUTE19	[varchar](500) NULL,
ATTRIBUTE1_DATE	[varchar](500) NULL,
ATTRIBUTE1_NUMBER	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE20	[varchar](500) NULL,
ATTRIBUTE21	[varchar](500) NULL,
ATTRIBUTE22	[varchar](500) NULL,
ATTRIBUTE23	[varchar](500) NULL,
ATTRIBUTE24	[varchar](500) NULL,
ATTRIBUTE25	[varchar](500) NULL,
ATTRIBUTE26	[varchar](500) NULL,
ATTRIBUTE27	[varchar](500) NULL,
ATTRIBUTE28	[varchar](500) NULL,
ATTRIBUTE29	[varchar](500) NULL,
ATTRIBUTE2_DATE	[varchar](500) NULL,
ATTRIBUTE2_NUMBER	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE30	[varchar](500) NULL,
ATTRIBUTE31	[varchar](500) NULL,
ATTRIBUTE32	[varchar](500) NULL,
ATTRIBUTE33	[varchar](500) NULL,
ATTRIBUTE34	[varchar](500) NULL,
ATTRIBUTE35	[varchar](500) NULL,
ATTRIBUTE36	[varchar](500) NULL,
ATTRIBUTE37	[varchar](500) NULL,
ATTRIBUTE38	[varchar](500) NULL,
ATTRIBUTE39	[varchar](500) NULL,
ATTRIBUTE3_DATE	[varchar](500) NULL,
ATTRIBUTE3_NUMBER	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE40	[varchar](500) NULL,
ATTRIBUTE41	[varchar](500) NULL,
ATTRIBUTE42	[varchar](500) NULL,
ATTRIBUTE43	[varchar](500) NULL,
ATTRIBUTE44	[varchar](500) NULL,
ATTRIBUTE45	[varchar](500) NULL,
ATTRIBUTE46	[varchar](500) NULL,
ATTRIBUTE47	[varchar](500) NULL,
ATTRIBUTE48	[varchar](500) NULL,
ATTRIBUTE49	[varchar](500) NULL,
ATTRIBUTE4_DATE	[varchar](500) NULL,
ATTRIBUTE4_NUMBER	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE50	[varchar](500) NULL,
ATTRIBUTE5_DATE	[varchar](500) NULL,
ATTRIBUTE5_NUMBER	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE6_DATE	[varchar](500) NULL,
ATTRIBUTE6_NUMBER	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE7_DATE	[varchar](500) NULL,
ATTRIBUTE7_NUMBER	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE8_DATE	[varchar](500) NULL,
ATTRIBUTE8_NUMBER	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE9_DATE	[varchar](500) NULL,
ATTRIBUTE9_NUMBER	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
CARRYING_OUT_ORGANIZATION_ID	[varchar](500) NULL,
CLOSED_DATE	[varchar](500) NULL,
COMPLETION_DATE	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATED_FROM_PROJECT_ID	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DESCRIPTION	[varchar](4000) NULL,
LANGUAGE	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
NAME	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PROJECT_CURRENCY_CODE	[varchar](500) NULL,
PROJECT_ID	[varchar](500) NULL,
PROJECT_STATUS_CODE	[varchar](500) NULL,
PROJECT_TYPE	[varchar](500) NULL,
PROJECT_TYPE_ID	[varchar](500) NULL,
PROJECT_UNIT_ID	[varchar](500) NULL,
SEGMENT1	[varchar](500) NULL,
START_DATE	[varchar](500) NULL,
TEMPLATE_END_DATE_ACTIVE	[varchar](500) NULL,
TEMPLATE_FLAG	[varchar](500) NULL,
TEMPLATE_START_DATE_ACTIVE	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Projects_Data]
(

ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE10_DATE	[varchar](500) NULL,
ATTRIBUTE10_NUMBER	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE11_DATE	[varchar](500) NULL,
ATTRIBUTE11_NUMBER	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE12_DATE	[varchar](500) NULL,
ATTRIBUTE12_NUMBER	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE13_DATE	[varchar](500) NULL,
ATTRIBUTE13_NUMBER	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE14_DATE	[varchar](500) NULL,
ATTRIBUTE14_NUMBER	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE15_DATE	[varchar](500) NULL,
ATTRIBUTE15_NUMBER	[varchar](500) NULL,
ATTRIBUTE16	[varchar](500) NULL,
ATTRIBUTE17	[varchar](500) NULL,
ATTRIBUTE18	[varchar](500) NULL,
ATTRIBUTE19	[varchar](500) NULL,
ATTRIBUTE1_DATE	[varchar](500) NULL,
ATTRIBUTE1_NUMBER	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE20	[varchar](500) NULL,
ATTRIBUTE21	[varchar](500) NULL,
ATTRIBUTE22	[varchar](500) NULL,
ATTRIBUTE23	[varchar](500) NULL,
ATTRIBUTE24	[varchar](500) NULL,
ATTRIBUTE25	[varchar](500) NULL,
ATTRIBUTE26	[varchar](500) NULL,
ATTRIBUTE27	[varchar](500) NULL,
ATTRIBUTE28	[varchar](500) NULL,
ATTRIBUTE29	[varchar](500) NULL,
ATTRIBUTE2_DATE	[varchar](500) NULL,
ATTRIBUTE2_NUMBER	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE30	[varchar](500) NULL,
ATTRIBUTE31	[varchar](500) NULL,
ATTRIBUTE32	[varchar](500) NULL,
ATTRIBUTE33	[varchar](500) NULL,
ATTRIBUTE34	[varchar](500) NULL,
ATTRIBUTE35	[varchar](500) NULL,
ATTRIBUTE36	[varchar](500) NULL,
ATTRIBUTE37	[varchar](500) NULL,
ATTRIBUTE38	[varchar](500) NULL,
ATTRIBUTE39	[varchar](500) NULL,
ATTRIBUTE3_DATE	[varchar](500) NULL,
ATTRIBUTE3_NUMBER	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE40	[varchar](500) NULL,
ATTRIBUTE41	[varchar](500) NULL,
ATTRIBUTE42	[varchar](500) NULL,
ATTRIBUTE43	[varchar](500) NULL,
ATTRIBUTE44	[varchar](500) NULL,
ATTRIBUTE45	[varchar](500) NULL,
ATTRIBUTE46	[varchar](500) NULL,
ATTRIBUTE47	[varchar](500) NULL,
ATTRIBUTE48	[varchar](500) NULL,
ATTRIBUTE49	[varchar](500) NULL,
ATTRIBUTE4_DATE	[varchar](500) NULL,
ATTRIBUTE4_NUMBER	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE50	[varchar](500) NULL,
ATTRIBUTE5_DATE	[varchar](500) NULL,
ATTRIBUTE5_NUMBER	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE6_DATE	[varchar](500) NULL,
ATTRIBUTE6_NUMBER	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE7_DATE	[varchar](500) NULL,
ATTRIBUTE7_NUMBER	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE8_DATE	[varchar](500) NULL,
ATTRIBUTE8_NUMBER	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE9_DATE	[varchar](500) NULL,
ATTRIBUTE9_NUMBER	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
CARRYING_OUT_ORGANIZATION_ID	[varchar](500) NULL,
CLOSED_DATE	[varchar](500) NULL,
COMPLETION_DATE	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATED_FROM_PROJECT_ID	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
DESCRIPTION	[varchar](4000) NULL,
LANGUAGE	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
LEGAL_ENTITY_ID	[varchar](500) NULL,
NAME	[varchar](500) NULL,
ORG_ID	[varchar](500) NULL,
PROJECT_CURRENCY_CODE	[varchar](500) NULL,
PROJECT_ID	[varchar](500) NULL,
PROJECT_STATUS_CODE	[varchar](500) NULL,
PROJECT_TYPE	[varchar](500) NULL,
PROJECT_TYPE_ID	[varchar](500) NULL,
PROJECT_UNIT_ID	[varchar](500) NULL,
SEGMENT1	[varchar](500) NULL,
START_DATE	[varchar](500) NULL,
TEMPLATE_END_DATE_ACTIVE	[varchar](500) NULL,
TEMPLATE_FLAG	[varchar](500) NULL,
TEMPLATE_START_DATE_ACTIVE	[varchar](500) NULL,
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



Create View [rpy].[Projects_Data_v] as
SELECT [ATTRIBUTE1]
      ,[ATTRIBUTE10]
      ,FORMAT(Cast([ATTRIBUTE10_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE10_DATE]
      ,[ATTRIBUTE10_NUMBER]
      ,[ATTRIBUTE11]
      ,FORMAT(Cast([ATTRIBUTE11_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE11_DATE]
      ,[ATTRIBUTE11_NUMBER]
      ,[ATTRIBUTE12]
      ,FORMAT(Cast([ATTRIBUTE12_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE12_DATE]
      ,[ATTRIBUTE12_NUMBER]
      ,[ATTRIBUTE13]
      ,FORMAT(Cast([ATTRIBUTE13_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE13_DATE]
      ,[ATTRIBUTE13_NUMBER]
      ,[ATTRIBUTE14]
      ,FORMAT(Cast([ATTRIBUTE14_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE14_DATE]
      ,[ATTRIBUTE14_NUMBER]
      ,[ATTRIBUTE15]
      ,FORMAT(Cast([ATTRIBUTE15_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE15_DATE]
      ,[ATTRIBUTE15_NUMBER]
      ,[ATTRIBUTE16]
      ,[ATTRIBUTE17]
      ,[ATTRIBUTE18]
      ,[ATTRIBUTE19]
      ,FORMAT(Cast([ATTRIBUTE1_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE1_DATE]
      ,[ATTRIBUTE1_NUMBER]
      ,[ATTRIBUTE2]
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
      ,FORMAT(Cast([ATTRIBUTE2_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE2_DATE]
      ,[ATTRIBUTE2_NUMBER]
      ,[ATTRIBUTE3]
      ,[ATTRIBUTE30]
      ,[ATTRIBUTE31]
      ,[ATTRIBUTE32]
      ,[ATTRIBUTE33]
      ,[ATTRIBUTE34]
      ,[ATTRIBUTE35]
      ,[ATTRIBUTE36]
      ,[ATTRIBUTE37]
      ,[ATTRIBUTE38]
      ,[ATTRIBUTE39]
      ,FORMAT(Cast([ATTRIBUTE3_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE3_DATE]
      ,[ATTRIBUTE3_NUMBER]
      ,[ATTRIBUTE4]
      ,[ATTRIBUTE40]
      ,[ATTRIBUTE41]
      ,[ATTRIBUTE42]
      ,[ATTRIBUTE43]
      ,[ATTRIBUTE44]
      ,[ATTRIBUTE45]
      ,[ATTRIBUTE46]
      ,[ATTRIBUTE47]
      ,[ATTRIBUTE48]
      ,[ATTRIBUTE49]
      ,FORMAT(Cast([ATTRIBUTE4_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE4_DATE]
      ,[ATTRIBUTE4_NUMBER]
      ,[ATTRIBUTE5]
      ,[ATTRIBUTE50]
      ,FORMAT(Cast([ATTRIBUTE5_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE5_DATE]
      ,[ATTRIBUTE5_NUMBER]
      ,[ATTRIBUTE6]
      ,FORMAT(Cast([ATTRIBUTE6_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE6_DATE]
      ,[ATTRIBUTE6_NUMBER]
      ,[ATTRIBUTE7]
      ,FORMAT(Cast([ATTRIBUTE7_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE7_DATE]
      ,[ATTRIBUTE7_NUMBER]
      ,[ATTRIBUTE8]
      ,FORMAT(Cast([ATTRIBUTE8_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE8_DATE]
      ,[ATTRIBUTE8_NUMBER]
      ,[ATTRIBUTE9]
      ,FORMAT(Cast([ATTRIBUTE9_DATE] as date), 'MM-dd-yyyy') as [ATTRIBUTE9_DATE]
      ,[ATTRIBUTE9_NUMBER]
      ,[ATTRIBUTE_CATEGORY]
      ,[CARRYING_OUT_ORGANIZATION_ID]
      ,FORMAT(Cast([CLOSED_DATE] as date), 'MM-dd-yyyy') as [CLOSED_DATE]
      ,FORMAT(Cast([COMPLETION_DATE] as date), 'MM-dd-yyyy') as [COMPLETION_DATE]
      ,[CREATED_BY]
      ,[CREATED_FROM_PROJECT_ID]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[DESCRIPTION]
      ,[LANGUAGE]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[LEGAL_ENTITY_ID]
      ,[NAME]
      ,[ORG_ID]
      ,[PROJECT_CURRENCY_CODE]
      ,a.[PROJECT_ID]
      ,[PROJECT_STATUS_CODE]
      ,[PROJECT_TYPE]
      ,[PROJECT_TYPE_ID]
      ,[PROJECT_UNIT_ID]
      ,[SEGMENT1]
      ,FORMAT(Cast([START_DATE] as date), 'MM-dd-yyyy') as [START_DATE]
      ,FORMAT(Cast([TEMPLATE_END_DATE_ACTIVE] as date), 'MM-dd-yyyy') as [TEMPLATE_END_DATE_ACTIVE]
      ,[TEMPLATE_FLAG]
      ,FORMAT(Cast([TEMPLATE_START_DATE_ACTIVE] as date), 'MM-dd-yyyy') as [TEMPLATE_START_DATE_ACTIVE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Projects_Data] a,
  (SELECT PROJECT_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Projects_Data] GROUP BY PROJECT_ID) b
WHERE a.PROJECT_ID = b.PROJECT_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO





CREATE NONCLUSTERED INDEX [idx_Projects_Data_PROJECT_ID_LAST_UPDATE_DATE] ON [rpy].[Projects_Data]
(
	[PROJECT_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO


