alter table epr.Receipt_Quantity_All_Projects
alter column "Ident Description" varchar(5000)
truncate table epr.milestone_plan_woodfibre_99350106
truncate table epr.milestone_plan_woodfibre_99350106_Stage
alter table epr.milestone_plan_woodfibre_99350106
add "(*)WBS Path" varchar(200),"Actual Start" varchar(200),"Actual Finish" varchar(200)
alter table epr.milestone_plan_woodfibre_99350106_Stage
add "(*)WBS Path" varchar(200),"Actual Start" varchar(200),"Actual Finish" varchar(200)

update plp_parameter_value
set parameter_value='A2:N50000' where parameter_code='range' and pipeline_Code='pl_milestone_plan_woodfibre_99350106'


create table epr.milestone_plan_woodfibre_99350106
(
[Activity ID]   varchar(200) NULL,
[Activity Status]   varchar(200) NULL,
[WBS Code]   varchar(1000) NULL,
[GLOBAL - EPMR]   varchar(200) NULL,
[Activity Name]   varchar(1000) NULL,
[(*)Start]   varchar(200) NULL,
[(*)Finish]   varchar(200) NULL,
[(*)BL1 Start]   varchar(200) NULL,
[(*)BL1 Finish]   varchar(200) NULL,
[(*)Total Float(d)]   varchar(200) NULL,
[Delete This Row]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL,
[project_number] varchar(200) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

create table epr.milestone_plan_woodfibre_99350106_Stage
(
[Activity ID]   varchar(200) NULL,
[Activity Status]   varchar(200) NULL,
[WBS Code]   varchar(1000) NULL,
[GLOBAL - EPMR]   varchar(200) NULL,
[Activity Name]   varchar(1000) NULL,
[(*)Start]   varchar(200) NULL,
[(*)Finish]   varchar(200) NULL,
[(*)BL1 Start]   varchar(200) NULL,
[(*)BL1 Finish]   varchar(200) NULL,
[(*)Total Float(d)]   varchar(200) NULL,
[Delete This Row]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL,
[project_number] varchar(200) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_milestone_plan_woodfibre_99350106','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','milestone_plan_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\017. Milestone Plan','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsx','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A2:K50000','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname','TASK','1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427','pl_milestone_plan_woodfibre_99350106','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_milestone_plan_woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-05-22 11:22:46.427',9)

