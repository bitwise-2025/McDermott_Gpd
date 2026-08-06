create view epr.Eac_variance_cost_woodfibre_99350106_V
as select 
Prop_0,
Prop_1,
Prop_2,
Prop_3,
Prop_4,
Prop_5,
Prop_6,
Prop_7,
CreatedDateTime,
SourceFileName,
project_number

from epr.Eac_variance_cost_woodfibre_99350106

update plp_parameter_value 
set parameter_value='A1:H50000' where parameter_code='range' and pipeline_code='pl_Eac_variance_cost_woodfibre_99350106'

create table epr.Eac_variance_cost_woodfibre_99350106
(
Prop_0	varchar(200) NULL,
Prop_1 varchar(200) NULL,
Prop_2 varchar(200) NULL,
Prop_3 varchar(200) NULL,
Prop_4 varchar(200) NULL,
Prop_5 varchar(200) NULL,
Prop_6 varchar(200) NULL,
Prop_7 varchar(200) NULL,
CreatedDateTime varchar(200) NULL,
SourceFileName varchar(200) NULL,
project_number varchar(200) NULL
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)

create table epr.Eac_variance_cost_woodfibre_99350106_stage
(
Prop_0	varchar(200) NULL,
Prop_1 varchar(200) NULL,
Prop_2 varchar(200) NULL,
Prop_3 varchar(200) NULL,
Prop_4 varchar(200) NULL,
Prop_5 varchar(200) NULL,
Prop_6 varchar(200) NULL,
Prop_7 varchar(200) NULL,
CreatedDateTime varchar(200) NULL,
SourceFileName varchar(200) NULL,
project_number varchar(200) NULL
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)




INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Eac_variance_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\07. Cost\10. EAC Variance','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsx','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A1:H50000','1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343','pl_Eac_variance_cost_woodfibre_99350106','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Eac_variance_cost_woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-05-23 05:36:41.343',9)
