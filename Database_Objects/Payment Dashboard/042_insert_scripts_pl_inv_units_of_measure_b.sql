insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_inv_units_of_measure_b','NCSA','pl_inv_units_of_measure_b',NULL,'1','aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inv_units_of_measure_b','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Inv_Units_Of_Measure_B',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Inv_Units_Of_Measure_B',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/INV_UNITS_OF_MEASURE_B.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_inv_units_of_measure_b','NetworkFolder')


GO


CREATE TABLE [rpy].[Inv_Units_Of_Measure_B_stage]
(

UNIT_OF_MEASURE_ID	[varchar](4000) NULL,
DERIVED_UNIT_PARENT_CODE	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
UOM_CLASS	[varchar](4000) NULL,
BASE_UOM_FLAG	[varchar](4000) NULL,
STANDARD_PACK_FLAG	[varchar](4000) NULL,
DISABLE_DATE	datetime NULL,
HAS_GENERATED_CODE	[varchar](4000) NULL,
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
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE6	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE7	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE8	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE9	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE10	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE11	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE12	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE13	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE14	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE15	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE16	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE17	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE18	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE19	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE20	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_DATE1	datetime NULL,
GLOBAL_ATTRIBUTE_DATE2	datetime NULL,
GLOBAL_ATTRIBUTE_DATE3	datetime NULL,
GLOBAL_ATTRIBUTE_DATE4	datetime NULL,
GLOBAL_ATTRIBUTE_DATE5	datetime NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Inv_Units_Of_Measure_B]
(

UNIT_OF_MEASURE_ID	[varchar](4000) NULL,
DERIVED_UNIT_PARENT_CODE	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
UOM_CLASS	[varchar](4000) NULL,
BASE_UOM_FLAG	[varchar](4000) NULL,
STANDARD_PACK_FLAG	[varchar](4000) NULL,
DISABLE_DATE	datetime NULL,
HAS_GENERATED_CODE	[varchar](4000) NULL,
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
GLOBAL_ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE6	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE7	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE8	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE9	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE10	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE11	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE12	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE13	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE14	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE15	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE16	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE17	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE18	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE19	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE20	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
GLOBAL_ATTRIBUTE_DATE1	datetime NULL,
GLOBAL_ATTRIBUTE_DATE2	datetime NULL,
GLOBAL_ATTRIBUTE_DATE3	datetime NULL,
GLOBAL_ATTRIBUTE_DATE4	datetime NULL,
GLOBAL_ATTRIBUTE_DATE5	datetime NULL,
REQUEST_ID	[varchar](4000) NULL,
JOB_DEFINITION_NAME	[varchar](4000) NULL,
JOB_DEFINITION_PACKAGE	[varchar](4000) NULL,
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



Create View [rpy].[Inv_Units_Of_Measure_B_v] as
SELECT a.[UNIT_OF_MEASURE_ID]
      ,[DERIVED_UNIT_PARENT_CODE]
      ,[UOM_CODE]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[CREATED_BY]
      ,[CREATION_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[OBJECT_VERSION_NUMBER]
      ,[UOM_CLASS]
      ,[BASE_UOM_FLAG]
      ,[STANDARD_PACK_FLAG]
      ,[DISABLE_DATE]
      ,[HAS_GENERATED_CODE]
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
      ,[GLOBAL_ATTRIBUTE_CATEGORY]
      ,[GLOBAL_ATTRIBUTE1]
      ,[GLOBAL_ATTRIBUTE2]
      ,[GLOBAL_ATTRIBUTE3]
      ,[GLOBAL_ATTRIBUTE4]
      ,[GLOBAL_ATTRIBUTE5]
      ,[GLOBAL_ATTRIBUTE6]
      ,[GLOBAL_ATTRIBUTE7]
      ,[GLOBAL_ATTRIBUTE8]
      ,[GLOBAL_ATTRIBUTE9]
      ,[GLOBAL_ATTRIBUTE10]
      ,[GLOBAL_ATTRIBUTE11]
      ,[GLOBAL_ATTRIBUTE12]
      ,[GLOBAL_ATTRIBUTE13]
      ,[GLOBAL_ATTRIBUTE14]
      ,[GLOBAL_ATTRIBUTE15]
      ,[GLOBAL_ATTRIBUTE16]
      ,[GLOBAL_ATTRIBUTE17]
      ,[GLOBAL_ATTRIBUTE18]
      ,[GLOBAL_ATTRIBUTE19]
      ,[GLOBAL_ATTRIBUTE20]
      ,[GLOBAL_ATTRIBUTE_NUMBER1]
      ,[GLOBAL_ATTRIBUTE_NUMBER2]
      ,[GLOBAL_ATTRIBUTE_NUMBER3]
      ,[GLOBAL_ATTRIBUTE_NUMBER4]
      ,[GLOBAL_ATTRIBUTE_NUMBER5]
      ,[GLOBAL_ATTRIBUTE_DATE1]
      ,[GLOBAL_ATTRIBUTE_DATE2]
      ,[GLOBAL_ATTRIBUTE_DATE3]
      ,[GLOBAL_ATTRIBUTE_DATE4]
      ,[GLOBAL_ATTRIBUTE_DATE5]
      ,[REQUEST_ID]
      ,[JOB_DEFINITION_NAME]
      ,[JOB_DEFINITION_PACKAGE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Inv_Units_Of_Measure_B] a,
  (SELECT UNIT_OF_MEASURE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Inv_Units_Of_Measure_B] GROUP BY UNIT_OF_MEASURE_ID) b
WHERE a.UNIT_OF_MEASURE_ID = b.UNIT_OF_MEASURE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE



GO



CREATE NONCLUSTERED INDEX [idx_Inv_Units_Of_Measure_B_UNIT_OF_MEASURE_ID_LAST_UPDATE_DATE] ON [rpy].[Inv_Units_Of_Measure_B]
(
	[UNIT_OF_MEASURE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




