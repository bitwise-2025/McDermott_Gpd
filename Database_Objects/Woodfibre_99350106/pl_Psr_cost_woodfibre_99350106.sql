create table epr.Psr_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Business Unit]   varchar(200) NULL,
[Cost Code]   varchar(200) NULL,
[Cost Type]   varchar(200) NULL,
[Description]   varchar(200) NULL,
[PSR Header]   varchar(200) NULL,
[PSR Header Description]   varchar(200) NULL,
[PSR Level 1 Header]   varchar(200) NULL,
[PSR Level 1 Header Description]   varchar(200) NULL,
[Budget Units]   varchar(200) NULL,
[Budget Amount]   varchar(200) NULL,
[Org Bud Units]   varchar(200) NULL,
[Org Bud Amount]   varchar(200) NULL,
[Act JTD Units]   varchar(200) NULL,
[Act JTD Amount]   varchar(200) NULL,
[Act MTH Units]   varchar(200) NULL,
[Act MTH Amount]   varchar(200) NULL,
[Proj Units]   varchar(200) NULL,
[Proj Amount]   varchar(200) NULL,
[Committed Amount]   varchar(200) NULL,
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

create table epr.Psr_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Business Unit]   varchar(200) NULL,
[Cost Code]   varchar(200) NULL,
[Cost Type]   varchar(200) NULL,
[Description]   varchar(200) NULL,
[PSR Header]   varchar(200) NULL,
[PSR Header Description]   varchar(200) NULL,
[PSR Level 1 Header]   varchar(200) NULL,
[PSR Level 1 Header Description]   varchar(200) NULL,
[Budget Units]   varchar(200) NULL,
[Budget Amount]   varchar(200) NULL,
[Org Bud Units]   varchar(200) NULL,
[Org Bud Amount]   varchar(200) NULL,
[Act JTD Units]   varchar(200) NULL,
[Act JTD Amount]   varchar(200) NULL,
[Act MTH Units]   varchar(200) NULL,
[Act MTH Amount]   varchar(200) NULL,
[Proj Units]   varchar(200) NULL,
[Proj Amount]   varchar(200) NULL,
[Committed Amount]   varchar(200) NULL,
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

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Psr_cost_woodfibre_99350106','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Psr_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\07. Cost\08. PSR','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.csv','1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427','pl_Psr_cost_woodfibre_99350106','NetworkFolder')



insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Psr_cost_woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-05-27 11:22:46.427',9)

