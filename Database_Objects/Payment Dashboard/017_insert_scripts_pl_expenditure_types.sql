insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_expenditure_types','NCSA','pl_expenditure_types',NULL,'1','aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_expenditure_types','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-14 06:42:19.043')


GO 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Expenditure_Types',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Expenditure_Types',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/PJF_EXP_TYPES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_expenditure_types','NetworkFolder')


GO


CREATE TABLE [rpy].[Expenditure_Types_stage]
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
COST_RATE_FLAG	[varchar](500) NULL,
DESCRIPTION	[varchar](4000) NULL,
END_DATE_ACTIVE	[varchar](500) NULL,
EXPENDITURE_CATEGORY_ID	[varchar](500) NULL,
EXPENDITURE_TYPE_ID	[varchar](500) NULL,
EXPENDITURE_TYPE_NAME	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
PROCEEDS_FLAG	[varchar](500) NULL,
REVENUE_CATEGORY_CODE	[varchar](500) NULL,
START_DATE_ACTIVE	[varchar](500) NULL,
UNIT_OF_MEASURE	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Expenditure_Types]
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
COST_RATE_FLAG	[varchar](500) NULL,
DESCRIPTION	[varchar](4000) NULL,
END_DATE_ACTIVE	[varchar](500) NULL,
EXPENDITURE_CATEGORY_ID	[varchar](500) NULL,
EXPENDITURE_TYPE_ID	[varchar](500) NULL,
EXPENDITURE_TYPE_NAME	[varchar](500) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
PROCEEDS_FLAG	[varchar](500) NULL,
REVENUE_CATEGORY_CODE	[varchar](500) NULL,
START_DATE_ACTIVE	[varchar](500) NULL,
UNIT_OF_MEASURE	[varchar](500) NULL,
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



Create View [rpy].[Expenditure_Types_v] as
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
      ,[COST_RATE_FLAG]
      ,[DESCRIPTION]
      ,FORMAT(Cast([END_DATE_ACTIVE] as date), 'MM-dd-yyyy') as [END_DATE_ACTIVE]
      ,[EXPENDITURE_CATEGORY_ID]
      ,a.[EXPENDITURE_TYPE_ID]
      ,[EXPENDITURE_TYPE_NAME]
      ,a.[LAST_UPDATE_DATE]
      ,[PROCEEDS_FLAG]
      ,[REVENUE_CATEGORY_CODE]
      ,FORMAT(Cast([START_DATE_ACTIVE] as date), 'MM-dd-yyyy') as [START_DATE_ACTIVE]
      ,[UNIT_OF_MEASURE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Expenditure_Types] a,
  (SELECT EXPENDITURE_TYPE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Expenditure_Types] GROUP BY EXPENDITURE_TYPE_ID) b
WHERE a.EXPENDITURE_TYPE_ID = b.EXPENDITURE_TYPE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE


GO


CREATE NONCLUSTERED INDEX [idx_Expenditure_Types_EXPENDITURE_TYPE_ID_LAST_UPDATE_DATE] ON [rpy].[Expenditure_Types]
(
	[EXPENDITURE_TYPE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO






