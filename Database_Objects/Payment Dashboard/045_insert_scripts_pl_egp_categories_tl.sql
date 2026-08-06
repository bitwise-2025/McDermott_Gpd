insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_egp_categories_tl','NCSA','pl_egp_categories_tl',NULL,'1','aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2026-01-29 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_egp_categories_tl','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Egp_Categories_Tl',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Egp_Categories_Tl',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2016-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/EGP_CATEGORIES_TL.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-ID?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','https://MDR-DEV-EntAnalytx-KV01.vault.azure.net/secrets/ORACLE-DEV2-CLIENT-SECRET?api-version=7.3',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_egp_categories_tl','NetworkFolder')


GO


CREATE TABLE [rpy].[Egp_Categories_Tl_stage]
(

CATEGORY_ID	[varchar](4000) NULL,
LANGUAGE	[varchar](4000) NULL,
SOURCE_LANG	[varchar](4000) NULL,
CATEGORY_NAME	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Egp_Categories_Tl]
(

CATEGORY_ID	[varchar](4000) NULL,
LANGUAGE	[varchar](4000) NULL,
SOURCE_LANG	[varchar](4000) NULL,
CATEGORY_NAME	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
OBJECT_VERSION_NUMBER	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
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



Create View [rpy].[Egp_Categories_Tl_v] as
SELECT a.[CATEGORY_ID]
      ,a.[LANGUAGE]
      ,[SOURCE_LANG]
      ,[CATEGORY_NAME]
      ,[DESCRIPTION]
      ,[OBJECT_VERSION_NUMBER]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[LAST_UPDATE_LOGIN]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Egp_Categories_Tl] a,
  (SELECT CATEGORY_ID, LANGUAGE, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Egp_Categories_Tl] GROUP BY CATEGORY_ID, LANGUAGE) b
WHERE a.CATEGORY_ID = b.CATEGORY_ID 
AND a.LANGUAGE = b.LANGUAGE
AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE




GO



CREATE NONCLUSTERED INDEX [idx_Egp_Categories_Tl_CATEGORY_ID_LANGUAGE_LAST_UPDATE_DATE] ON [rpy].[Egp_Categories_Tl]
(
	[CATEGORY_ID],[LANGUAGE],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




