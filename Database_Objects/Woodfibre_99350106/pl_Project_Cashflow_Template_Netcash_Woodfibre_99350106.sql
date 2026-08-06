create view epr.Project_Cashflow_Template_Netcash_Woodfibre_99350106_V 
as select 
[Month-Year],
[Year],
[Month],
[Milestone Payments],
[Progress Payments],
[Cash In - Plan Inc],
[Cash In - Act Inc],
[Cash In -Fcst Inc],
[Cash Out - Plan Inc],
[Cash Out Inc],
[Cash Out - Fcst Inc],
[Cash In - Plan Cum],
[Cash In - Actual Cum],
[Cash In - Fcst Cum],
[Cash Out - Plan Cum],
[Cash Out - Actual Cum],
[Cash Out - Fcst Cum],
[Net CFOA - Plan],
[Net CFOA - Actual],
[Net CFOA - Fcst],
[SourceFileName],
[project_number],
[CreatedDateTime]

from epr.Project_Cashflow_Template_Netcash_Woodfibre_99350106

CREATE TABLE [epr].[Project_Cashflow_Template_Netcash_Woodfibre_99350106]
(
	[Month-Year] [varchar](200) NULL,
	[Year] [varchar](200) NULL,
	[Month] [varchar](200) NULL,
	[Milestone Payments] [varchar](200) NULL,
	[Progress Payments] [varchar](200) NULL,
	[Cash In - Plan Inc] [varchar](200) NULL,
	[Cash In - Act Inc] [varchar](200) NULL,
	[Cash In -Fcst Inc] [varchar](200) NULL,
	[Cash Out - Plan Inc] [varchar](200) NULL,
	[Cash Out Inc] [varchar](200) NULL,
	[Cash Out - Fcst Inc] [varchar](200) NULL,
	[Cash In - Plan Cum] [varchar](200) NULL,
	[Cash In - Actual Cum] [varchar](200) NULL,
	[Cash In - Fcst Cum] [varchar](200) NULL,
	[Cash Out - Plan Cum] [varchar](200) NULL,
	[Cash Out - Actual Cum] [varchar](200) NULL,
	[Cash Out - Fcst Cum] [varchar](200) NULL,
	[Net CFOA - Plan] [varchar](200) NULL,
	[Net CFOA - Actual] [varchar](200) NULL,
	[Net CFOA - Fcst] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL,
	[project_number] [varchar](200) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','project_number','7','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder','range','8','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Project_Cashflow_Template_Netcash_Woodfibre_99350106','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\07. Cost\07. NetCash','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','99350106','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','17_99350106_Project Cashflow Template_OCT 2025 - UPDATED - FINANCE rev1.xlsx','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A5:T50000','1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370','pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Project_Cashflow_Template_Netcash_Woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-12-23 10:38:25.370',9)
