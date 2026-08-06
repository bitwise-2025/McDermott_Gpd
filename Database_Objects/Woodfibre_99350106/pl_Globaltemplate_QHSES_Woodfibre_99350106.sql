CREATE table epr.Globaltemplate_QHSES_Work_Woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Project to Date]   varchar(200) NULL,
[Year to Date]   varchar(200) NULL,
[Month to Date]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

Create table epr.Globaltemplate_QHSES_Ind_Woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Indicators]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Value]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] varchar(200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NCSA','SMAT Hookup Progress Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','table_name1','3','table_name1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','source_directory','5','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','range1','6','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO




insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','range2','8','range2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','table_name2','9','table_name2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
GO



insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','sheetname1','10','sheetname1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder','sheetname2','11','sheetname2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name2','Globaltemplate_QHSES_Ind_Woodfibre_99350106','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\011. Files for Data Lake Upload','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range2','A1:F500','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','Global Template - QHSES - Woodfibre.xlsx','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')





GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name1','Globaltemplate_QHSES_Work_Woodfibre_99350106','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','A1:G500','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-04-11 09:14:45.680','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname1','WorkHours','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname2','Indicators','1','sundararaju.batta@mcdermott.com','2025-04-16 09:14:45.680','pl_Globaltemplate_QHSES_Woodfibre_99350106','NetworkFolder')


