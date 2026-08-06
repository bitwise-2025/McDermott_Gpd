CREATE TABLE [epr].[parameter_table_All_Projects_stage]
(
	[pipeline_code] [varchar](100) NULL,
	[parameter_code] [varchar](100) NULL,
	[parameter_value] [varchar](500) NULL,
	[CreatedDateTime] [varchar](100) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_parameter_table_All_Projects','NCSA','NULL','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','table_name','1','table_name','IN','table_name with schema e.g. gpd.scm_procurement','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','logicapp_url','2','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','file_name','3','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','range','4','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','source_directory','5','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','start_date','6','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_parameter_table_All_Projects','NetworkFolder','end_date','7','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','project code details.xlsx','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A1:C5000','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')
GO
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','parameter_table_All_Projects_stage','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','014. IT Data Lake Configuration Files','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-11-24 05:58:26.067','1','sundararaju.batta@mcdermott.com','2025-11-25 05:58:26.067','pl_parameter_table_All_Projects','NetworkFolder')


