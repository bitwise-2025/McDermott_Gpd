update [plp_pipeline]
set pipeline_code='pl_Milestone_weight_All_Projects' where pipeline_code='pl_Milestone weight_Ruya11_D7507'

update [plp_pipeline_parameter]
set pipeline_code='pl_Milestone_weight_All_Projects' where pipeline_code='pl_Milestone_weight_Ruya11_D7507'

update plp_parameter_value
set pipeline_code='pl_Milestone_weight_All_Projects' where pipeline_code='pl_Milestone_weight_Ruya11_D7507'

update [plp_pipeline_parameter]
set pipeline_sub_code='D7507' where pipeline_code='pl_Milestone_weight_All_Projects'

update plp_parameter_value
set pipeline_sub_code='D7507' where pipeline_code='pl_Milestone_weight_All_Projects'

update plp_parameter_value
set parameter_value='Milestone_weight_All_Projects' where parameter_value='Milestone_weight_Ruya11_D7507'

select * into epr.Milestone_weight_All_Projects FROM epr.Milestone_weight_Ruya11_D7507

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','range','6','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Milestone_weight_All_Projects','D7650','project_number','8','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A1:C50000','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Milestone_weight_All_Projects','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06. D7650 - Umm Shaif\04. Procurement\01. ROC','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7650','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2024-12-16 11:23:20','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','Milestone weight.xlsx','1','sundararaju.batta@mcdermott.com','2025-02-19 06:20:46.697','pl_Milestone_weight_All_Projects','D7650')



