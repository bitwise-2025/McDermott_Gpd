insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_oracle_data_count_summary_report','NCSA','pl_oracle_data_count_summary_report',NULL,'1','aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043',4)

GO

--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_oracle_data_count_summary_report','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-25 06:42:19.043')


GO


--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Oracle_Data_Count_Summary_Report',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Oracle_Data_Count_Summary_Report',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2015-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/MDR_ORACLE_DATA_COUNT_SUMMARY_REPORT.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_oracle_data_count_summary_report','NetworkFolder')



GO


CREATE TABLE [rpy].[Oracle_Data_Count_Summary_Report_stage]
(
	[LAST_UPDATE_DATE] [datetime] NULL,
	[TABLE_NAME] [varchar](100) NULL,
	[SOURCE] [varchar](100) NULL,
	[LAST_UPDATE_DATE_DD] [varchar](100) NULL,
	[LAST_UPDATE_DATE_MM] [varchar](100) NULL,
	[LAST_UPDATE_DATE_YYYY] [varchar](100) NULL,
	[DATA_COUNT] [int] NULL,
	[P_FROM_DATE] [datetime] NULL,
	[P_TO_DATE] [datetime] NULL,
	[source_name] [varchar](500) NULL,
	[sub_source_name] [varchar](500) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



CREATE TABLE [rpy].[Oracle_Data_Count_Summary_Report]
(
	[LAST_UPDATE_DATE] [datetime] NULL,
	[TABLE_NAME] [varchar](100) NULL,
	[SOURCE] [varchar](100) NULL,
	[LAST_UPDATE_DATE_DD] [varchar](100) NULL,
	[LAST_UPDATE_DATE_MM] [varchar](100) NULL,
	[LAST_UPDATE_DATE_YYYY] [varchar](100) NULL,
	[DATA_COUNT] [int] NULL,
	[P_FROM_DATE] [datetime] NULL,
	[P_TO_DATE] [datetime] NULL,
	[source_name] [varchar](500) NULL,
	[sub_source_name] [varchar](500) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




CREATE VIEW [rpy].[Oracle_Data_Count_Summary_Report_v] AS SELECT a.[LAST_UPDATE_DATE]
	  ,a.[TABLE_NAME]
	  ,[SOURCE]
      ,[LAST_UPDATE_DATE_DD] as [Day]
      ,[LAST_UPDATE_DATE_MM] as [Month]
      ,[LAST_UPDATE_DATE_YYYY] as [Year]
      ,[DATA_COUNT] as [Count]
	  ,[P_FROM_DATE]
	  ,[P_TO_DATE]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Oracle_Data_Count_Summary_Report] a,
(SELECT TABLE_NAME, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Oracle_Data_Count_Summary_Report] 
GROUP BY TABLE_NAME) b
WHERE a.TABLE_NAME = b.TABLE_NAME;
--AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE 
GO




CREATE NONCLUSTERED INDEX [idx_Oracle_Data_Count_Summary_Report_TABLE_NAME_LAST_UPDATE_DATE] ON [rpy].[Oracle_Data_Count_Summary_Report]
(
	[TABLE_NAME], [LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)

GO







