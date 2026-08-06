insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_dashboard_data_security','NCSA','pl_dashboard_data_security',NULL,'1','aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_dashboard_data_security','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-14 06:42:19.043')


GO

 

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Dashboard_Data_Security',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Dashboard_Data_Security',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/MDR_DATA_SECURITY_REPORT.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_dashboard_data_security','NetworkFolder')


GO


CREATE TABLE [rpy].[Dashboard_Data_Security_stage]
(

ID BIGINT Identity(1,1) NOT NULL,
CREATION_DATE	[varchar](500) NULL,
EMAIL_ADDRESS	[varchar](500) NULL,
IS_DATA_ACCESS_ACTIVE	[varchar](500) NULL,
JOB_ROLE_NAME	[varchar](4000) NULL,
LAST_UPDATE_DATE	[varchar](500) NULL,
SECURITY_CONTEXT	[varchar](500) NULL,
SECURITY_CONTEXT_VALUE	[varchar](500) NULL,
USERNAME	[varchar](500) NULL,
USER_ROLE_DATA_ASSIGNMENT_ID	[varchar](500) NULL,
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






CREATE TABLE [rpy].[Dashboard_Data_Security]
(

CREATION_DATE	[varchar](500) NULL,
EMAIL_ADDRESS	[varchar](500) NULL,
IS_DATA_ACCESS_ACTIVE	[varchar](500) NULL,
JOB_ROLE_NAME	[varchar](4000) NULL,
LAST_UPDATE_DATE	[varchar](500) NULL,
SECURITY_CONTEXT	[varchar](500) NULL,
SECURITY_CONTEXT_VALUE	[varchar](500) NULL,
USERNAME	[varchar](500) NULL,
USER_ROLE_DATA_ASSIGNMENT_ID	[varchar](500) NULL,
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

Create View [rpy].[Dashboard_Data_Security_v] as
SELECT FORMAT(Cast([CREATION_DATE] as date), 'MM-dd-yyyy') as [CREATION_DATE]
      ,[EMAIL_ADDRESS]
      ,[IS_DATA_ACCESS_ACTIVE]
      ,[JOB_ROLE_NAME]
      ,a.[LAST_UPDATE_DATE]
      ,[SECURITY_CONTEXT]
      ,[SECURITY_CONTEXT_VALUE]
      ,[USERNAME]
      ,a.[USER_ROLE_DATA_ASSIGNMENT_ID]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Dashboard_Data_Security] a,
  (SELECT USER_ROLE_DATA_ASSIGNMENT_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Dashboard_Data_Security] GROUP BY USER_ROLE_DATA_ASSIGNMENT_ID) b
WHERE a.USER_ROLE_DATA_ASSIGNMENT_ID = b.USER_ROLE_DATA_ASSIGNMENT_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE




GO



CREATE NONCLUSTERED INDEX [idx_Dashboard_Data_Security_USER_ROLE_DATA_ASSIGNMENT_ID_LAST_UPDATE_DATE] ON [rpy].[Dashboard_Data_Security]
(
	[USER_ROLE_DATA_ASSIGNMENT_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




