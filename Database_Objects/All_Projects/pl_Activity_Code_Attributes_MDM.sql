drop view [epr].[Weekly_Timesheet_Mytime_All_Projects_v]


SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
CREATE VIEW [epr].[Weekly_Timesheet_Mytime_All_Projects_v]
AS select a.*,b.[Activity Code Description],b.[Area],b.[Discipline],b.[Phase Grouping],b.[Progress Grouping],b.[Structure] from 
(select 
EMPL_NO,EMPL_NAME,EMPL_NO_LEGACY,TIMEGROUP,HOME_COST_CENTER,JOB_FAMILY_NAME,JOB_DISCIPLINE_NAME,TIMESHEET_DATE,TS_FIRST_IN,TS_CONTRACT_NO,TS_TASKCODE,TS_HOURS,TS_ENTTIY,TS_JOB_OR_CC,TS_COSTCODE,TS_COST_TYPE,TS_ACTIVITY_CODE,TS_CTR,TS_CUTOFF,CreatedDateTime,SourceFileName,
'Mytime' as Source
from [epr].[Weekly_Timesheet_Mytime_All_Projects]
union all
select
EMPNO as EMPL_NO ,
FULL_NAME as EMPL_NAME, 
LEGACYEMPNUM as EMPL_NO_LEGACY ,
PAYRULE as TIMEGROUP ,
ltrim(rtrim(COMPANY_CODE)) + '-'  + ltrim(rtrim(JOB_PROJECT)) as HOME_COST_CENTER,
JOB_FAMILY_NAME,
JOB_DISCIPLINE_NAME,
TIMESHEET_DATE,
'' TS_FIRST_IN,
CONTRACTNUM as TS_CONTRACT_NO ,
ltrim(rtrim(LL1WORKED)) + '-' + ltrim(rtrim(LL2WORKED)) + '-' + ltrim(rtrim(LL3WORKED)) + '-' + ltrim(rtrim(LL4WORKED)) as TS_TASKCODE ,
HOURSAMT as TS_HOURS ,
LL1WORKED as TS_ENTTIY ,
LL3WORKED as TS_JOB_OR_CC ,
LL4WORKED as TS_COSTCODE ,
LL3WORKED as TS_COST_TYPE ,
SUBACCT_COSTCTR as TS_ACTIVITY_CODE ,
'' as TS_CTR ,
PROCESS_DATE as TS_CUTOFF ,
CreatedDateTime ,
SourceFileName,
'Kronos' as Source
from [epr].[Weekly_Timesheet_Kronos_All_Projects] ) a
Left outer join epr.Activity_Code_Attributes_MDM b
ON b.[Activity Code] = a.TS_ACTIVITY_CODE
;
GO


create view [epr].[Weekly_Timesheet_Mytime_All_Projects_v]
as
select a.*,b.[Activity Code Description],b.[Area],b.[Discipline],b.[Phase Grouping],b.[Progress Grouping],b.[Structure] from [epr].[Weekly_Timesheet_Mytime_All_Projects] a

Left outer join epr.Activity_Code_Attributes_MDM b

ON b.[Activity Code] = a.TS_ACTIVITY_CODE

Create table epr.Activity_Code_Attributes_MDM
(
"Activity Code"	varchar(200),
"Activity Code Description"	varchar(4000),
"Area"	varchar(200),
Discipline	varchar(200),
"Phase Grouping"	varchar(200),
"Progress Grouping"	varchar(200),
Structure varchar(200),
CreatedDateTime varchar(200),
"file_name" varchar(200)
)WITH(	DISTRIBUTION = ROUND_ROBIN,	CLUSTERED COLUMNSTORE INDEX)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','range','7','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Activity_Code_Attributes_MDM','NetworkFolder','sheetname','8','sheetname','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Activity_Code_Attributes_MDM','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','07. MDM','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-01-01 11:23:20','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','Activity Code Attributes From MDM.xlsx','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','A1:G50000','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname','Sheet1','1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257','pl_Activity_Code_Attributes_MDM','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Activity_Code_Attributes_MDM','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-09-22 09:14:53.257',9)
