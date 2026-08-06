CREATE TABLE [epr].[Cost_Milestone_Ummshaif_D7650]
(
	[serial_no] [int] IDENTITY(1,1) NOT NULL,
	[Prop_0] [varchar](1000) NULL,
	[Prop_1] [varchar](1000) NULL,
	[Prop_2] [varchar](1000) NULL,
	[Prop_3] [varchar](1000) NULL,
	[Prop_4] [varchar](1000) NULL,
	[Prop_5] [varchar](1000) NULL,
	[Prop_6] [varchar](1000) NULL,
	[Prop_7] [varchar](100) NULL,
	[Prop_8] [varchar](100) NULL,
	[Prop_9] [varchar](100) NULL,
	[Prop_10] [varchar](100) NULL,
	[Prop_11] [varchar](100) NULL,
	[Prop_12] [varchar](100) NULL,
	[Prop_13] [varchar](100) NULL,
	[project_number] varchar(200) NULL,
	[CreatedDateTime] varchar(200) NULL,
    [file_name] varchar(200) Null
	)WITH(	DISTRIBUTION = ROUND_ROBIN,	CLUSTERED COLUMNSTORE INDEX)


CREATE VIEW [epr].[Cost_Milestone_Ummshaif_D7650_V]
AS select
[Prop_0] as [P6 Activity ID],
[Prop_1] as [Item],
[Prop_2] as [Description],
[Prop_3] as [Total Milestone value],
[Prop_4] as [MilestoneNo],
[Prop_5] as [Contract Dates],
[Prop_6] as [Total Percentage],
[Prop_7] as [Milestone Percentage],
[Prop_8] as [IAD],
[Prop_9] as [OOAD],
[Prop_10] as [MDRUSD],
[Prop_11] as [Payment percentage] ,
[Prop_12] as [USD],
[Prop_13] as [Actuals /Forecast],
[project_number],
[file_name],
[CreatedDateTime]
from [epr].[Cost_Milestone_Ummshaif_D7650];
GO


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','range','6','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder','project_number','8','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A9:N30','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Cost_Milestone_Ummshaif_D7650','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06. D7650 - Umm Shaif\05. Cost','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7650','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','US2.0 Milestone File.xlsx','1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697','pl_Cost_Milestone_Ummshaif_D7650','NetworkFolder')

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Cost_Milestone_Ummshaif_D7650','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-02-24 06:20:46.697',9)
