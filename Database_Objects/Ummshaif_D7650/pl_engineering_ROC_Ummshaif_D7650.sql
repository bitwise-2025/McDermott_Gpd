Create table epr.engineering_ROC_Ummshaif_D7650
(
Milestone varchar(200),
Class varchar(200),
ROC varchar(200),
Type varchar(200),
project_number varchar(200),
CreatedDateTime varchar(200),
file_name varchar(200)
)WITH(	DISTRIBUTION = ROUND_ROBIN,	CLUSTERED COLUMNSTORE INDEX)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','range1','6','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','project_number','8','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_engineering_ROC_Ummshaif_D7650','NetworkFolder','range2','9','range2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','A2:C500','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','engineering_ROC_Ummshaif_D7650','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06. D7650 - Umm Shaif\02. Engineering\02. Master Files','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7650','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-02-12 11:23:20','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','ROC (Internal_External).xlsx','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range2','G2:I500','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_engineering_ROC_Ummshaif_D7650','NetworkFolder')

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_engineering_ROC_Ummshaif_D7650','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697',9)


