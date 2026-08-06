create table epr.Schedule_Nfs_Pl_Task_D7440_Stage
(
[Activity ID]   varchar(2000) NULL,
[Activity Status]   varchar(2000) NULL,
[WBS Code]   varchar(2000) NULL,
[Activity Name]   varchar(2000) NULL,
[Original Duration(d)]   varchar(2000) NULL,
[(*)Actual Duration(d)]   varchar(2000) NULL,
[(*)Start]   varchar(2000) NULL,
[(*)Finish]   varchar(2000) NULL,
[Actual Start]   varchar(2000) NULL,
[Actual Finish]   varchar(2000) NULL,
[(*)Total Float(d)]   varchar(2000) NULL,
[(*)WBS Path]   varchar(2000) NULL,
[INT. PHASE]   varchar(2000) NULL,
[INT. DISCIPLINE]   varchar(2000) NULL,
[INT. FACILITY]   varchar(2000) NULL,
[INT. ITEM]   varchar(2000) NULL,
[INT. GATES]   varchar(2000) NULL,
[CPY. PHASE]   varchar(2000) NULL,
[CPY. DISCIPLINE]   varchar(2000) NULL,
[CPY. FACILITY]   varchar(2000) NULL,
[CPY. ITEM]   varchar(2000) NULL,
[CPY. CURVE]   varchar(2000) NULL,
[GLOBAL - PHASE]   varchar(2000) NULL,
[GLOBAL - FUNCTION]   varchar(2000) NULL,
[GLOBAL - SUBPRIME (GCOA V15)]   varchar(2000) NULL,
[SMAT MR #]   varchar(2000) NULL,
[INT.CLASSIFICATION]   varchar(2000) NULL,
[Delete This Row]   varchar(2000) NULL,
[Schedule_type] varchar(2000) NULL,
[Schedule_version] varchar(2000) NULL,
[project_number] [varchar](200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO

create table epr.Schedule_Nfs_Pl_Task_D7440
(
[Activity ID]   varchar(2000) NULL,
[Activity Status]   varchar(2000) NULL,
[WBS Code]   varchar(2000) NULL,
[Activity Name]   varchar(2000) NULL,
[Original Duration(d)]   varchar(2000) NULL,
[(*)Actual Duration(d)]   varchar(2000) NULL,
[(*)Start]   varchar(2000) NULL,
[(*)Finish]   varchar(2000) NULL,
[Actual Start]   varchar(2000) NULL,
[Actual Finish]   varchar(2000) NULL,
[(*)Total Float(d)]   varchar(2000) NULL,
[(*)WBS Path]   varchar(2000) NULL,
[INT. PHASE]   varchar(2000) NULL,
[INT. DISCIPLINE]   varchar(2000) NULL,
[INT. FACILITY]   varchar(2000) NULL,
[INT. ITEM]   varchar(2000) NULL,
[INT. GATES]   varchar(2000) NULL,
[CPY. PHASE]   varchar(2000) NULL,
[CPY. DISCIPLINE]   varchar(2000) NULL,
[CPY. FACILITY]   varchar(2000) NULL,
[CPY. ITEM]   varchar(2000) NULL,
[CPY. CURVE]   varchar(2000) NULL,
[GLOBAL - PHASE]   varchar(2000) NULL,
[GLOBAL - FUNCTION]   varchar(2000) NULL,
[GLOBAL - SUBPRIME (GCOA V15)]   varchar(2000) NULL,
[SMAT MR #]   varchar(2000) NULL,
[INT.CLASSIFICATION]   varchar(2000) NULL,
[Delete This Row]   varchar(2000) NULL,
[Schedule_type] varchar(2000) NULL,
[Schedule_version] varchar(2000) NULL,
[project_number] [varchar](200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


create table epr.Schedule_Nfs_Pl_TaskPred_D7440_Stage
(
[Predecessor]   varchar(2000) NULL,
[Successor]   varchar(2000) NULL,
[Relationship Type]   varchar(4000) NULL,
[(*)Predecessor Activity Status]   varchar(2000) NULL,
[(*)Successor Activity Status]   varchar(2000) NULL,
[(*)Driving]   varchar(2000) NULL,
[(*)Predecessor Project]   varchar(2000) NULL,
[(*)Successor Project]   varchar(2000) NULL,
[(*)Predecessor WBS]   varchar(2000) NULL,
[(*)Successor WBS]   varchar(2000) NULL,
[(*)Predecessor Activity Name]   varchar(2000) NULL,
[(*)Successor Activity Name]   varchar(2000) NULL,
[Lag(d)]   varchar(2000) NULL,
[(*)Predecessor Primary Resource]   varchar(2000) NULL,
[(*)Successor Primary Resource]   varchar(4000) NULL,
[(*)Predecessor Start]   varchar(2000) NULL,
[(*)Predecessor Finish]   varchar(4000) NULL,
[(*)Successor Start]   varchar(2000) NULL,
[(*)Successor Finish]   varchar(2000) NULL,
[Delete This Row]   varchar(2000) NULL,
[Schedule_type] varchar(2000) NULL,
[Schedule_version] varchar(2000) NULL,
[project_number] [varchar](200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO

create table epr.Schedule_Nfs_Pl_TaskPred_D7440
(
[Predecessor]   varchar(2000) NULL,
[Successor]   varchar(2000) NULL,
[Relationship Type]   varchar(4000) NULL,
[(*)Predecessor Activity Status]   varchar(2000) NULL,
[(*)Successor Activity Status]   varchar(2000) NULL,
[(*)Driving]   varchar(2000) NULL,
[(*)Predecessor Project]   varchar(2000) NULL,
[(*)Successor Project]   varchar(2000) NULL,
[(*)Predecessor WBS]   varchar(2000) NULL,
[(*)Successor WBS]   varchar(2000) NULL,
[(*)Predecessor Activity Name]   varchar(2000) NULL,
[(*)Successor Activity Name]   varchar(2000) NULL,
[Lag(d)]   varchar(2000) NULL,
[(*)Predecessor Primary Resource]   varchar(2000) NULL,
[(*)Successor Primary Resource]   varchar(4000) NULL,
[(*)Predecessor Start]   varchar(2000) NULL,
[(*)Predecessor Finish]   varchar(4000) NULL,
[(*)Successor Start]   varchar(2000) NULL,
[(*)Successor Finish]   varchar(2000) NULL,
[Delete This Row]   varchar(2000) NULL,
[Schedule_type] varchar(2000) NULL,
[Schedule_version] varchar(2000) NULL,
[project_number] [varchar](200) NULL,
[CreatedDateTime] [varchar](200) NULL,
[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','range1','9','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','table_name1','10','table_name1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','sheetname','11','sheetname','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Schedule_Nfs_Pl_D7440','NetworkFolder','sheetname1','12','sheetname1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Schedule_Nfs_Pl_Task_D7440_Stage','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','08. D7440 NFS PL\02. Schedule','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7440','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsx','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name1','Schedule_Nfs_Pl_TaskPred_D7440_Stage','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A2:AB500000','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','A2:T500000','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname','TASK','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname1','TASKPRED','1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957','pl_Schedule_Nfs_Pl_D7440','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Schedule_Nfs_Pl_D7440','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-03-06 10:26:55.957',9)
