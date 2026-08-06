insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_exchange_rates_data','NCSA','pl_exchange_rates_data',NULL,'1','aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_exchange_rates_data','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Exchange_Rates_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Exchange_Rates_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/GL_DAILY_RATES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','90',1,'aditya.anand2@mcdermott.com',@dd,'pl_exchange_rates_data','NetworkFolder')


GO


CREATE TABLE [rpy].[Exchange_Rates_Data_stage]
(

ID BIGINT Identity(1,1) NOT NULL,
ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_NUMBER1	[varchar](500) NULL,
ATTRIBUTE_NUMBER2	[varchar](500) NULL,
ATTRIBUTE_NUMBER3	[varchar](500) NULL,
ATTRIBUTE_NUMBER4	[varchar](500) NULL,
ATTRIBUTE_NUMBER5	[varchar](500) NULL,
CONVERSION_DATE	[varchar](500) NULL,
CONVERSION_RATE	[varchar](500) NULL,
CONVERSION_TYPE	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
ENTERPRISE_ID	[varchar](500) NULL,
FROM_CURRENCY	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[varchar](500) NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
RATE_SOURCE_CODE	[varchar](500) NULL,
STATUS_CODE	[varchar](500) NULL,
TO_CURRENCY	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Exchange_Rates_Data]
(

ATTRIBUTE1	[varchar](500) NULL,
ATTRIBUTE10	[varchar](500) NULL,
ATTRIBUTE11	[varchar](500) NULL,
ATTRIBUTE12	[varchar](500) NULL,
ATTRIBUTE13	[varchar](500) NULL,
ATTRIBUTE14	[varchar](500) NULL,
ATTRIBUTE15	[varchar](500) NULL,
ATTRIBUTE2	[varchar](500) NULL,
ATTRIBUTE3	[varchar](500) NULL,
ATTRIBUTE4	[varchar](500) NULL,
ATTRIBUTE5	[varchar](500) NULL,
ATTRIBUTE6	[varchar](500) NULL,
ATTRIBUTE7	[varchar](500) NULL,
ATTRIBUTE8	[varchar](500) NULL,
ATTRIBUTE9	[varchar](500) NULL,
ATTRIBUTE_CATEGORY	[varchar](500) NULL,
ATTRIBUTE_DATE1	[varchar](500) NULL,
ATTRIBUTE_DATE2	[varchar](500) NULL,
ATTRIBUTE_DATE3	[varchar](500) NULL,
ATTRIBUTE_DATE4	[varchar](500) NULL,
ATTRIBUTE_DATE5	[varchar](500) NULL,
ATTRIBUTE_NUMBER1	[varchar](500) NULL,
ATTRIBUTE_NUMBER2	[varchar](500) NULL,
ATTRIBUTE_NUMBER3	[varchar](500) NULL,
ATTRIBUTE_NUMBER4	[varchar](500) NULL,
ATTRIBUTE_NUMBER5	[varchar](500) NULL,
CONVERSION_DATE	[varchar](500) NULL,
CONVERSION_RATE	[varchar](500) NULL,
CONVERSION_TYPE	[varchar](500) NULL,
CREATED_BY	[varchar](500) NULL,
CREATION_DATE	[varchar](500) NULL,
ENTERPRISE_ID	[varchar](500) NULL,
FROM_CURRENCY	[varchar](500) NULL,
LAST_UPDATED_BY	[varchar](500) NULL,
LAST_UPDATE_DATE	[varchar](500) NULL,
LAST_UPDATE_LOGIN	[varchar](500) NULL,
OBJECT_VERSION_NUMBER	[varchar](500) NULL,
RATE_SOURCE_CODE	[varchar](500) NULL,
STATUS_CODE	[varchar](500) NULL,
TO_CURRENCY	[varchar](500) NULL,
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



Create View [rpy].[Exchange_Rates_Data_v] as
SELECT [ATTRIBUTE1]
      ,[ATTRIBUTE10]
      ,[ATTRIBUTE11]
      ,[ATTRIBUTE12]
      ,[ATTRIBUTE13]
      ,[ATTRIBUTE14]
      ,[ATTRIBUTE15]
      ,[ATTRIBUTE2]
      ,[ATTRIBUTE3]
      ,[ATTRIBUTE4]
      ,[ATTRIBUTE5]
      ,[ATTRIBUTE6]
      ,[ATTRIBUTE7]
      ,[ATTRIBUTE8]
      ,[ATTRIBUTE9]
      ,[ATTRIBUTE_CATEGORY]
      ,FORMAT(Cast([ATTRIBUTE_DATE1] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE1]
      ,FORMAT(Cast([ATTRIBUTE_DATE2] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE2]
      ,FORMAT(Cast([ATTRIBUTE_DATE3] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE3]
      ,FORMAT(Cast([ATTRIBUTE_DATE4] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE4]
      ,FORMAT(Cast([ATTRIBUTE_DATE5] as date), 'MM-dd-yyyy') as [ATTRIBUTE_DATE5]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,FORMAT(Cast(a.[CONVERSION_DATE] as date), 'MM-dd-yyyy') as [CONVERSION_DATE]
	    ,CAST(CAST([CONVERSION_RATE] AS float) AS DECIMAL(38,12)) as [CONVERSION_RATE]
      --,[CONVERSION_RATE]
      ,a.[CONVERSION_TYPE]
      ,[CREATED_BY]
      ,FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[ENTERPRISE_ID]
      ,a.[FROM_CURRENCY]
      ,[LAST_UPDATED_BY]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATE_LOGIN]
      ,[OBJECT_VERSION_NUMBER]
      ,[RATE_SOURCE_CODE]
      ,[STATUS_CODE]
      ,a.[TO_CURRENCY]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Exchange_Rates_Data] a,
  (SELECT [FROM_CURRENCY], [TO_CURRENCY], [CONVERSION_DATE], [CONVERSION_TYPE], max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Exchange_Rates_Data] GROUP BY [FROM_CURRENCY], [TO_CURRENCY], [CONVERSION_DATE], [CONVERSION_TYPE], [LAST_UPDATE_DATE]) b
WHERE a.FROM_CURRENCY = b.FROM_CURRENCY
and a.TO_CURRENCY = b.TO_CURRENCY
and a.CONVERSION_DATE = b.CONVERSION_DATE
and a.CONVERSION_TYPE = b.CONVERSION_TYPE
and a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE





GO



CREATE NONCLUSTERED INDEX [idx_Exchange_Rates_Data_FROM_CURRENCY_TO_CURRENCY_CONVERSION_DATE_CONVERSION_TYPE_LAST_UPDATE_DATE] ON [rpy].[Exchange_Rates_Data]
(
	[FROM_CURRENCY], [TO_CURRENCY], [CONVERSION_DATE], [CONVERSION_TYPE], [LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO


