truncate table epr.Schedule_Ummshaif_Task_D7650

alter table epr.Schedule_Ummshaif_Task_D7650_Stage
add "Material code" varchar(200)

alter table epr.Schedule_Ummshaif_Task_D7650
add "Material code" varchar(200)

update plp_parameter_value 
set parameter_value='A2:Z500000' where parameter_code='range1' and pipeline_code='pl_Schedule_Ummshaif_D7650'

exec sp_rename
'epr.Schedule_Ummshaif_Task_D7650.CreaedDateTime','CreatedDateTime','column'
exec sp_rename
'epr.Schedule_Ummshaif_Task_D7650_Stage.CreaedDateTime','CreatedDateTime','column'

truncate table epr.Schedule_Ummshaif_Task_D7650
update plp_parameter_value
set parameter_value='A2:Y500000' where parameter_code='range1' and pipeline_code='pl_Schedule_Ummshaif_D7650'
alter table [epr].[Schedule_Ummshaif_Task_D7650_Stage]
add "MTO CWP" varchar(500),"MDR CWP" varchar(500)
alter table [epr].[Schedule_Ummshaif_Task_D7650]
add "MTO CWP" varchar(500),"MDR CWP" varchar(500)


alter table [epr].[Schedule_Ummshaif_Task_D7650_Stage]
add "GLOBAL - SUPPLY CHAIN" varchar(500)
alter table [epr].[Schedule_Ummshaif_Task_D7650_Stage]
add "Work Pack Prep Time" varchar(500)
alter table [epr].[Schedule_Ummshaif_Task_D7650]
add "GLOBAL - SUPPLY CHAIN" varchar(500)
alter table [epr].[Schedule_Ummshaif_Task_D7650]
add "Work Pack Prep Time" varchar(500)
update plp_parameter_value
set parameter_value='A2:W500000' where parameter_code='range1' and pipeline_code='pl_Schedule_Ummshaif_D7650'


drop table epr.Schedule_Ummshaif_Task_D7650
drop table epr.Schedule_Ummshaif_Task_D7650_Stage

update plp_parameter_value
set parameter_value='A2:U500000' where parameter_code='range1' and pipeline_code='pl_Schedule_Ummshaif_D7650'

CREATE TABLE [epr].[Schedule_Ummshaif_Task_D7650_Stage]
(
	[Activity ID] [varchar](500) NULL,
	[Activity Status] [varchar](500) NULL,
	[WBS Code] [varchar](500) NULL,
	[Activity Name] [varchar](500) NULL,
	[Original Duration(d)] [varchar](500) NULL,
	[(*)Actual Duration(d)] [varchar](500) NULL,
	[(*)Start] [varchar](500) NULL,
	[(*)Finish] [varchar](500) NULL,
	[(*)Total Float(d)] [varchar](500) NULL,
	[(*)WBS Path] [varchar](500) NULL,
	[COMMON - F4 Area Code (JAY NEW)] [varchar](500) NULL,
	[F1 Phase (Eng Proc Fab T&I HUC)] [varchar](500) NULL,
	[GLOBAL - PHASE] [varchar](500) NULL,
	[SMAT MR] [varchar](500) NULL,
	[Construction WP No] [varchar](500) NULL,
	[user_text_9] [varchar](500) NULL,
	[(*)BL Project Start] [varchar](500) NULL,
	[(*)BL Project Finish] [varchar](500) NULL,
	[Delete This Row] [varchar](500) NULL,
	[Actual Start] [varchar](500) NULL,
	[Actual Finish] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[CreaedDateTime] [varchar](500) NULL,
	[SourceFileName] [varchar](500) NULL,
	[schedule_type] [varchar](100) NULL,
	[schedule_version] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

select * into [epr].[Schedule_Ummshaif_Task_D7650] from [epr].[Schedule_Ummshaif_Task_D7650_stage]



create table [epr].[Schedule_Ummshaif_TaskPred_D7650_stage]
(
Predecessor [varchar](500) NULL,
Successor [varchar](500) NULL,
"Relationship Type" [varchar](500) NULL,
"(*)Predecessor Activity Status" [varchar](500) NULL,
"(*)Successor Activity Status" [varchar](500) NULL,
"(*)Driving" [varchar](500) NULL,
"(*)Predecessor Project" [varchar](500) NULL,
"(*)Successor Project" [varchar](500) NULL,
"(*)Predecessor WBS" [varchar](500) NULL,
"(*)Successor WBS" [varchar](500) NULL,
"(*)Predecessor Activity Name" [varchar](500) NULL,
"(*)Successor Activity Name" [varchar](500) NULL,
"Lag(d)" [varchar](500) NULL,
"(*)Predecessor Primary Resource" [varchar](500) NULL,
"(*)Successor Primary Resource" [varchar](500) NULL,
"(*)Predecessor Start" [varchar](500) NULL,
"(*)Predecessor Finish" [varchar](500) NULL,
"(*)Successor Start" [varchar](500) NULL,
"(*)Successor Finish" [varchar](500) NULL, 
"Delete This Row" [varchar](500) NULL,
project_number [varchar](500) NULL,
CreaedDateTime [varchar](500) NULL,
SourceFileName [varchar](500) NULL,
schedule_type [varchar](100) NULL,
schedule_version [varchar](100) NULL
)

select * into [epr].[Schedule_Ummshaif_TaskPred_D7650] from [epr].[Schedule_Ummshaif_TaskPred_D7650_stage]





insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Schedule_Ummshaif_D7650','NCSA','Manual Excel File Direct Source To Synapse','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','table_name1','3','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','project_number','5','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','source_directory','6','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','table_name2','8','table_name2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','range1','9','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Schedule_Ummshaif_D7650','NetworkFolder','range2','10','range2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO






insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7650','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name1','Schedule_Ummshaif_Task_D7650_stage','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06. D7650 - Umm Shaif\01. Schedule','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*7650*.xlsx','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-29 08:08:48.027','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
GO
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name2','Schedule_Ummshaif_TaskPred_D7650_stage','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','A2:AC500000','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range2','A2:T500000','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_Schedule_Ummshaif_D7650','NetworkFolder')




