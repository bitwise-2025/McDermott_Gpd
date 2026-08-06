insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_supplier_data','NCSA','pl_supplier_data',NULL,'1','aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_supplier_data','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Supplier_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Supplier_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/HZ_PARTIES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_supplier_data','NetworkFolder')


GO


CREATE TABLE [rpy].[Supplier_Data_stage]
(

ADDRESS1	[varchar](500) NULL,
ADDRESS2	[varchar](500) NULL,
ADDRESS3	[varchar](500) NULL,
ADDRESS4	[varchar](500) NULL,
CITY	[varchar](500) NULL,
COUNTRY	[varchar](500) NULL,
COUNTY	[varchar](500) NULL,
EMAIL_ADDRESS	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
PARTY_ID	[varchar](500) NULL,
PARTY_NAME	[varchar](500) NULL,
PARTY_NUMBER	[varchar](500) NULL,
PARTY_TYPE	[varchar](500) NULL,
POSTAL_CODE	[varchar](500) NULL,
PRIMARY_PHONE_AREA_CODE	[varchar](500) NULL,
PRIMARY_PHONE_COUNTRY_CODE	[varchar](500) NULL,
PRIMARY_PHONE_NUMBER	[varchar](500) NULL,
PROVINCE	[varchar](500) NULL,
STATE	[varchar](500) NULL,
STATUS	[varchar](500) NULL,
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




CREATE TABLE [rpy].[Supplier_Data]
(

ADDRESS1	[varchar](500) NULL,
ADDRESS2	[varchar](500) NULL,
ADDRESS3	[varchar](500) NULL,
ADDRESS4	[varchar](500) NULL,
CITY	[varchar](500) NULL,
COUNTRY	[varchar](500) NULL,
COUNTY	[varchar](500) NULL,
EMAIL_ADDRESS	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
PARTY_ID	[varchar](500) NULL,
PARTY_NAME	[varchar](500) NULL,
PARTY_NUMBER	[varchar](500) NULL,
PARTY_TYPE	[varchar](500) NULL,
POSTAL_CODE	[varchar](500) NULL,
PRIMARY_PHONE_AREA_CODE	[varchar](500) NULL,
PRIMARY_PHONE_COUNTRY_CODE	[varchar](500) NULL,
PRIMARY_PHONE_NUMBER	[varchar](500) NULL,
PROVINCE	[varchar](500) NULL,
STATE	[varchar](500) NULL,
STATUS	[varchar](500) NULL,
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





Create View [rpy].[Supplier_Data_v] as
SELECT [ADDRESS1]
      ,[ADDRESS2]
      ,[ADDRESS3]
      ,[ADDRESS4]
      ,[CITY]
      ,[COUNTRY]
      ,[COUNTY]
      ,[EMAIL_ADDRESS]
      ,a.[LAST_UPDATE_DATE]
      ,a.[PARTY_ID]
      ,[PARTY_NAME]
      ,[PARTY_NUMBER]
      ,[PARTY_TYPE]
      ,[POSTAL_CODE]
      ,[PRIMARY_PHONE_AREA_CODE]
      ,[PRIMARY_PHONE_COUNTRY_CODE]
      ,[PRIMARY_PHONE_NUMBER]
      ,[PROVINCE]
      ,[STATE]
      ,[STATUS]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Supplier_Data] a,
  (SELECT PARTY_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Supplier_Data] GROUP BY PARTY_ID) b
WHERE a.PARTY_ID = b.PARTY_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO

CREATE NONCLUSTERED INDEX [idx_Supplier_Data_PARTY_ID_LAST_UPDATE_DATE] ON [rpy].[Supplier_Data]
(
	[PARTY_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO



