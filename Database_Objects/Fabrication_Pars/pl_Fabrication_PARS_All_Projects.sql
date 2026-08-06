CREATE TABLE [epr].[Fabrication_PARS_All_Projects]
(
	[Category] [varchar](200) NULL,
	[Parent Transaction Type] [varchar](200) NULL,
	[Transaction Type] [varchar](200) NULL,
	[Metrics] [varchar](200) NULL,
	[Physical Location] [varchar](200) NULL,
	[Username] [varchar](200) NULL,
	[Contract] [varchar](200) NULL,
	[Entity] [varchar](200) NULL,
	[Job Number] [varchar](200) NULL,
	[Sub-function] [varchar](200) NULL,
	[Activity Code] [varchar](200) NULL,
	[Unit] [varchar](200) NULL,
	[Quantity] [varchar](200) NULL,
	[Man Hours] [varchar](200) NULL,
	[Percentage] [varchar](200) NULL,
	[Effective Year] [varchar](200) NULL,
	[Effective Month] [varchar](200) NULL,
	[Effective Date] [varchar](200) NULL,
	[Revision] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [epr].[Fabrication_PARS_All_Projects_Stage]
(
	[Category] [varchar](200) NULL,
	[Parent Transaction Type] [varchar](200) NULL,
	[Transaction Type] [varchar](200) NULL,
	[Metrics] [varchar](200) NULL,
	[Physical Location] [varchar](200) NULL,
	[Username] [varchar](200) NULL,
	[Contract] [varchar](200) NULL,
	[Entity] [varchar](200) NULL,
	[Job Number] [varchar](200) NULL,
	[Sub-function] [varchar](200) NULL,
	[Activity Code] [varchar](200) NULL,
	[Unit] [varchar](200) NULL,
	[Quantity] [varchar](200) NULL,
	[Man Hours] [varchar](200) NULL,
	[Percentage] [varchar](200) NULL,
	[Effective Year] [varchar](200) NULL,
	[Effective Month] [varchar](200) NULL,
	[Effective Date] [varchar](200) NULL,
	[Revision] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Fabrication_PARS_All_Projects','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Fabrication_PARS_All_Projects_Stage','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','PARS Files','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-08-08 11:23:20','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.csv','1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987','pl_Fabrication_PARS_All_Projects','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Fabrication_PARS_All_Projects','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-07-26 10:17:22.987',9)
