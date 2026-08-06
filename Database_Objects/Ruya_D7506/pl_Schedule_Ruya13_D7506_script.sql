SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[Schedule_Ruya13_D7506_Stage]
(
	[Activity ID] [varchar](100) NULL,
	[Activity Status] [varchar](100) NULL,
	[WBS Code] [varchar](6000) NULL,
	[Activity Name] [varchar](6000) NULL,
	[Original Duration(d)] [varchar](100) NULL,
	[Remaining Duration(d)] [varchar](1000) NULL,
	[(*)Actual Duration(d)] [varchar](1000) NULL,
	[(*)BL Project Start] [varchar](1000) NULL,
	[(*)BL Project Finish] [varchar](1000) NULL,
	[(*)Start] [varchar](100) NULL,
	[(*)Finish] [varchar](100) NULL,
	[(*)Total Float(d)] [varchar](100) NULL,
	[(*)Budgeted Labor Units(h)] [varchar](6000) NULL,
	[Text 1] [varchar](1000) NULL,
	[(*)WBS Path] [varchar](100) NULL,
	[LEVEL-1 (WP)] [varchar](100) NULL,
	[LEVEL-2 (WU)] [varchar](100) NULL,
	[LEVEL-3 (SWU)] [varchar](100) NULL,
	[LEVEL-4 (SSWU)] [varchar](100) NULL,
	[Discipline / Function] [varchar](100) NULL,
	[PROGRESS GATE] [varchar](1000) NULL,
	[SourceFileName] [varchar](4000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[project_number] [varchar](100) NULL,
	[schedule_type] [varchar](100) NULL,
	[schedule_version] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [epr].[Schedule_Ruya13_D7506]
(
	[Activity ID] [varchar](100) NULL,
	[Activity Status] [varchar](100) NULL,
	[WBS Code] [varchar](6000) NULL,
	[Activity Name] [varchar](6000) NULL,
	[Original Duration(d)] [varchar](100) NULL,
	[Remaining Duration(d)] [varchar](1000) NULL,
	[(*)Actual Duration(d)] [varchar](1000) NULL,
	[(*)BL Project Start] [varchar](1000) NULL,
	[(*)BL Project Finish] [varchar](1000) NULL,
	[(*)Start] [varchar](100) NULL,
	[(*)Finish] [varchar](100) NULL,
	[(*)Total Float(d)] [varchar](100) NULL,
	[(*)Budgeted Labor Units(h)] [varchar](6000) NULL,
	[Text 1] [varchar](1000) NULL,
	[(*)WBS Path] [varchar](100) NULL,
	[LEVEL-1 (WP)] [varchar](100) NULL,
	[LEVEL-2 (WU)] [varchar](100) NULL,
	[LEVEL-3 (SWU)] [varchar](100) NULL,
	[LEVEL-4 (SSWU)] [varchar](100) NULL,
	[Discipline / Function] [varchar](100) NULL,
	[PROGRESS GATE] [varchar](1000) NULL,
	[SourceFileName] [varchar](4000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[project_number] [varchar](100) NULL,
	[schedule_type] [varchar](100) NULL,
	[schedule_version] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Ruya13_D7506','NetworkFolder','sheetname','9','sheetname','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Schedule_Ruya13_D7506_Stage','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','07. D7506 - RUYA 13\01. Schedule','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7506','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2024-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsx','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A2:U500000','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname','TASK','1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957','pl_Schedule_Ruya13_D7506','NetworkFolder')

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Schedule_Ruya13_D7506','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-03-10 10:26:55.957',9)
