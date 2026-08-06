create view epr.Change_Management_Woodfibre_99350106_V
as select 
Column1,
Column2,
CO#,
[Variance Name],
[Date Submitted],
[Cost Expected],
[Cost in EAC],
[Cost Delta],
[Revenue Submitted],
[Revenue Expected (Low)],
[Revenue Expected (Medium)],
[Revenue Expected (High)],
[Revenue in EAC],
[Gross Profit Potential],
Comments,
project_number,
[SourceFileName],
[CreatedDateTime] 

from epr.Change_Management_Woodfibre_99350106


CREATE TABLE epr.Change_Management_Woodfibre_99350106
(
    Column1                     VARCHAR(200) NULL,
    Column2                     VARCHAR(200) NULL,
    CO#                         VARCHAR(200) NULL,
    [Variance Name]             VARCHAR(1000) NULL,
    [Date Submitted]            VARCHAR(200) NULL,
    [Cost Expected]             VARCHAR(200) NULL,
    [Cost in EAC]               VARCHAR(200) NULL,
    [Cost Delta]                VARCHAR(200) NULL,
    [Revenue Submitted]         VARCHAR(200) NULL,
    [Revenue Expected (Low)]    VARCHAR(200) NULL,
    [Revenue Expected (Medium)] VARCHAR(200) NULL,
    [Revenue Expected (High)]   VARCHAR(200) NULL,
    [Revenue in EAC]            VARCHAR(200) NULL,
    [Gross Profit Potential]    VARCHAR(200) NULL,
    Comments                    VARCHAR(200) NULL,
    project_number              VARCHAR(200) NULL,
    [SourceFileName]            VARCHAR(200) NULL,
    [CreatedDateTime]           DATETIME NULL
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Change_Management_Woodfibre_99350106','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Change_Management_Woodfibre_99350106','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\07. Cost\11. Change Management','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','Change Management.xlsx','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A3:O50000','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Change_Management_Woodfibre_99350106','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Change_Management_Woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370',9)
