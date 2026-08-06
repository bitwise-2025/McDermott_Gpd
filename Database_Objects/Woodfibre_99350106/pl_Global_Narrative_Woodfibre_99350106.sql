create table  epr.Global_Narrative_Woodfibre_99350106
(
[Date]   varchar(200) NULL,
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Phase]   varchar(200) NULL,
[Narrative Type]   varchar(200) NULL,
[PMR Slide Type]   varchar(200) NULL,
[Narrative]   varchar(1000) NULL,
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

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Global_Narrative_Woodfibre_99350106','NCSA','SMAT Hookup Progress Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','table_name','3','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','source_directory','5','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','range','6','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO





insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','sheetname','8','sheetname','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Global_Narrative_Woodfibre_99350106','NetworkFolder','project_number','9','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\011. Files for Data Lake Upload','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','Global Narrative Template - Cover Page.xlsx','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Global_Narrative_Woodfibre_99350106','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A1:G500','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-04-11 09:14:45.680','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname','Narrative','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Global_Narrative_Woodfibre_99350106','NetworkFolder')




