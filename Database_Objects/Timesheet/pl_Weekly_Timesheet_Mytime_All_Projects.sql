CREATE TABLE [epr].[Weekly_Timesheet_Mytime_All_Projects_Stage]
(
[EMPL_NO]   varchar(200) NULL,
[EMPL_NAME]   varchar(200) NULL,
[EMPL_NO_LEGACY]   varchar(200) NULL,
[TIMEGROUP]   varchar(200) NULL,
[HOME_COST_CENTER]   varchar(200) NULL,
[JOB_FAMILY_NAME]   varchar(200) NULL,
[JOB_DISCIPLINE_NAME]   varchar(200) NULL,
[TIMESHEET_DATE]   varchar(200) NULL,
[TS_FIRST_IN]   varchar(200) NULL,
[TS_CONTRACT_NO]   varchar(200) NULL,
[TS_TASKCODE]   varchar(200) NULL,
[TS_HOURS]   varchar(200) NULL,
[TS_ENTTIY]   varchar(200) NULL,
[TS_JOB_OR_CC]   varchar(200) NULL,
[TS_COSTCODE]   varchar(200) NULL,
[TS_COST_TYPE]   varchar(200) NULL,
[TS_ACTIVITY_CODE]   varchar(200) NULL,
[TS_CTR]   varchar(200) NULL,
[TS_CUTOFF]   varchar(200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [epr].[Weekly_Timesheet_Mytime_All_Projects]
(
[EMPL_NO]   varchar(200) NULL,
[EMPL_NAME]   varchar(200) NULL,
[EMPL_NO_LEGACY]   varchar(200) NULL,
[TIMEGROUP]   varchar(200) NULL,
[HOME_COST_CENTER]   varchar(200) NULL,
[JOB_FAMILY_NAME]   varchar(200) NULL,
[JOB_DISCIPLINE_NAME]   varchar(200) NULL,
[TIMESHEET_DATE]   varchar(200) NULL,
[TS_FIRST_IN]   varchar(200) NULL,
[TS_CONTRACT_NO]   varchar(200) NULL,
[TS_TASKCODE]   varchar(200) NULL,
[TS_HOURS]   varchar(200) NULL,
[TS_ENTTIY]   varchar(200) NULL,
[TS_JOB_OR_CC]   varchar(200) NULL,
[TS_COSTCODE]   varchar(200) NULL,
[TS_COST_TYPE]   varchar(200) NULL,
[TS_ACTIVITY_CODE]   varchar(200) NULL,
[TS_CTR]   varchar(200) NULL,
[TS_CUTOFF]   varchar(200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE NONCLUSTERED INDEX [idx_EMPNO_LEGACYEMPNUM] ON [epr].[Weekly_Timesheet_Mytime_All_Projects]
(
	[SourceFileName] ASC,
	EMPL_NO ASC,
	EMPL_NO_LEGACY ASC,
	TIMESHEET_DATE ASC
)WITH (DROP_EXISTING = OFF)
GO

CREATE NONCLUSTERED INDEX [idx_TS_CONTRACT_NO_TS_ENTTIY] ON [epr].[Weekly_Timesheet_Mytime_All_Projects]
(
	TS_CONTRACT_NO ASC,
	TS_ENTTIY ASC,
	TS_JOB_OR_CC ASC

)WITH (DROP_EXISTING = OFF)
GO

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Weekly_Timesheet_Mytime_All_Projects_Stage','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','22A. MyTime Craft Files - 2025','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-07-01 23:30:21','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.TXT','1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560','pl_Weekly_Timesheet_Mytime_All_Projects','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Weekly_Timesheet_Mytime_All_Projects','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-06-24 05:31:52.560',9)
