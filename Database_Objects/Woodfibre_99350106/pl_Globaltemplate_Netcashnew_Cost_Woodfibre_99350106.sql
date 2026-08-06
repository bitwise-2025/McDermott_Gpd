create table epr.Collections_Netcashnew_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type 1]   varchar(200) NULL,
[Type 2]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Collections_Netcashnew_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type 1]   varchar(200) NULL,
[Type 2]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)


create table epr.Netcash_Netcashnew_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Netcash_Netcashnew_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Status_Netcashnew_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Balance]   varchar(200) NULL,
[Current / Not Due]   varchar(200) NULL,
[1-30 Past Due]   varchar(200) NULL,
[31-60 Past Due]   varchar(200) NULL,
[> 60 Past Due]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Status_Netcashnew_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Balance]   varchar(200) NULL,
[Current / Not Due]   varchar(200) NULL,
[1-30 Past Due]   varchar(200) NULL,
[31-60 Past Due]   varchar(200) NULL,
[> 60 Past Due]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Cashposition_Netcashnew_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Planned]   varchar(200) NULL,
[Actuals]   varchar(200) NULL,
[Delta]   varchar(200) NULL,
[Accruals]   varchar(200) NULL,
[Net]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Cashposition_Netcashnew_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Planned]   varchar(200) NULL,
[Actuals]   varchar(200) NULL,
[Delta]   varchar(200) NULL,
[Accruals]   varchar(200) NULL,
[Net]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Cashflow_Netcashnew_cost_woodfibre_99350106_Stage
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type 1]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

create table epr.Cashflow_Netcashnew_cost_woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(200) NULL,
[Month End Date]   varchar(200) NULL,
[Type 1]   varchar(200) NULL,
[Date]   varchar(200) NULL,
[Type]   varchar(200) NULL,
[Amount]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','table_name1','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','range1','7','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','range2','8','range2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','range3','9','range3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','table_name2','10','table_name2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','table_name3','11','table_name3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','sheetname1','12','sheetname1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','sheetname2','13','sheetname2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','sheetname3','14','sheetname3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','range4','15','range4','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','range5','16','range5','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','table_name4','17','table_name4','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','table_name5','18','table_name5','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','sheetname4','19','sheetname4','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder','sheetname5','20','sheetname5','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name1','Collections_Netcashnew_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','01. Woodfibre\07. Cost\09. Net Cash New','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsx','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','A1:G5000','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range2','A1:F5000','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range3','A1:I5000','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name2','Netcash_Netcashnew_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name3','Status_Netcashnew_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname1','Collections','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname2','Net Cash','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname3','Status','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range4','A1:I5000','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range5','A1:G5000','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name4','Cashposition_Netcashnew_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name5','Cashflow_Netcashnew_cost_woodfibre_99350106_Stage','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname4','Cash Position','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname5','Cash Flow','1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343','pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Globaltemplate_Netcashnew_Cost_Woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-05-26 05:36:41.343',9)

insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values ('sheetname5','PIPELINE','sheetname5','T','1','250','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 05:36:41.343')
insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values ('sheetname4','PIPELINE','sheetname4','T','1','250','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 05:36:41.343')
insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values ('range5','PIPELINE','range5','T','1','250','NULL','1','sundararaju.batta@mcdermott.com','2025-05-27 05:36:41.343')
