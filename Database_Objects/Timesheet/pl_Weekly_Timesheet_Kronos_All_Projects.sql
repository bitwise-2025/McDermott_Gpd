update plp_parameter_value
set parameter_value='2025-07-01 23:30:21' where parameter_code='start_date' and pipeline_code='pl_Weekly_Timesheet_Kronos_All_Projects'

CREATE TABLE [epr].[Weekly_Timesheet_Kronos_All_Projects]
(
	[EMPNO] [varchar](200) NULL,
	[LEGACYEMPNUM] [varchar](200) NULL,
	[TIMESHEET_DATE] [varchar](200) NULL,
	[PAYCODE] [varchar](200) NULL,
	[SPANID] [varchar](200) NULL,
	[CONTRACTNUM] [varchar](200) NULL,
	[COMPANY_CODE] [varchar](200) NULL,
	[JOB_PROJECT] [varchar](200) NULL,
	[SUBACCT_COSTCTR] [varchar](200) NULL,
	[CTR_OPCODE] [varchar](200) NULL,
	[WBS_CODE] [varchar](200) NULL,
	[LL1WORKED] [varchar](200) NULL,
	[LL2WORKED] [varchar](200) NULL,
	[LL3WORKED] [varchar](200) NULL,
	[LL4WORKED] [varchar](200) NULL,
	[LL6WORKED] [varchar](200) NULL,
	[HOURSAMT] [varchar](200) NULL,
	[ACTTRANTYPE] [varchar](200) NULL,
	[BILLOT] [varchar](200) NULL,
	[BILLOTRATE] [varchar](200) NULL,
	[DIFF_RATE] [varchar](200) NULL,
	[DIFF_OT_RATE] [varchar](200) NULL,
	[DIRECT_IND] [varchar](200) NULL,
	[EMP_BASE_RATE] [varchar](200) NULL,
	[EMP_OT_RATE] [varchar](200) NULL,
	[INTERFACEFLAG] [varchar](200) NULL,
	[VENDORCODE] [varchar](200) NULL,
	[PAYRULE] [varchar](200) NULL,
	[HOURSTYPE] [varchar](200) NULL,
	[EMP_ENGAGE_TYPE] [varchar](200) NULL,
	[CONTRACTOR_OT_RATE] [varchar](200) NULL,
	[LAST_MODIFIED] [varchar](200) NULL,
	[PROCESS_DATE] [varchar](200) NULL,
	[EQUIP_DEPTH] [varchar](200) NULL,
	[EQUIP_BLOCK] [varchar](200) NULL,
	[EQUIP_LOC] [varchar](200) NULL,
	[FULL_NAME] [varchar](200) NULL,
	[SHIFT] [varchar](200) NULL,
	[LL1HOME] [varchar](200) NULL,
	[LL2HOME] [varchar](200) NULL,
	[LL3HOME] [varchar](200) NULL,
	[CRAFT] [varchar](200) NULL,
	[JOBCODE] [varchar](200) NULL,
	[JOBCODEDESC] [varchar](200) NULL,
	[EXPORTFLAG] [varchar](200) NULL,
	[ESTIMATE] [varchar](200) NULL,
	[EQUIP_MODE] [varchar](200) NULL,
	[EQUIP_OPERATOR] [varchar](200) NULL,
	[JOB_FAMILY_NAME] [varchar](200) NULL,
	[JOB_DISCIPLINE_NAME] [varchar](200) NULL,
	[ACTIVITY_KEY] [varchar](200) NULL,
	[PAYCODE_MULTIPLIER] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


CREATE TABLE [epr].[Weekly_Timesheet_Kronos_All_Projects_Stage]
(
	[EMPNO] [varchar](200) NULL,
	[LEGACYEMPNUM] [varchar](200) NULL,
	[TIMESHEET_DATE] [varchar](200) NULL,
	[PAYCODE] [varchar](200) NULL,
	[SPANID] [varchar](200) NULL,
	[CONTRACTNUM] [varchar](200) NULL,
	[COMPANY_CODE] [varchar](200) NULL,
	[JOB_PROJECT] [varchar](200) NULL,
	[SUBACCT_COSTCTR] [varchar](200) NULL,
	[CTR_OPCODE] [varchar](200) NULL,
	[WBS_CODE] [varchar](200) NULL,
	[LL1WORKED] [varchar](200) NULL,
	[LL2WORKED] [varchar](200) NULL,
	[LL3WORKED] [varchar](200) NULL,
	[LL4WORKED] [varchar](200) NULL,
	[LL6WORKED] [varchar](200) NULL,
	[HOURSAMT] [varchar](200) NULL,
	[ACTTRANTYPE] [varchar](200) NULL,
	[BILLOT] [varchar](200) NULL,
	[BILLOTRATE] [varchar](200) NULL,
	[DIFF_RATE] [varchar](200) NULL,
	[DIFF_OT_RATE] [varchar](200) NULL,
	[DIRECT_IND] [varchar](200) NULL,
	[EMP_BASE_RATE] [varchar](200) NULL,
	[EMP_OT_RATE] [varchar](200) NULL,
	[INTERFACEFLAG] [varchar](200) NULL,
	[VENDORCODE] [varchar](200) NULL,
	[PAYRULE] [varchar](200) NULL,
	[HOURSTYPE] [varchar](200) NULL,
	[EMP_ENGAGE_TYPE] [varchar](200) NULL,
	[CONTRACTOR_OT_RATE] [varchar](200) NULL,
	[LAST_MODIFIED] [varchar](200) NULL,
	[PROCESS_DATE] [varchar](200) NULL,
	[EQUIP_DEPTH] [varchar](200) NULL,
	[EQUIP_BLOCK] [varchar](200) NULL,
	[EQUIP_LOC] [varchar](200) NULL,
	[FULL_NAME] [varchar](200) NULL,
	[SHIFT] [varchar](200) NULL,
	[LL1HOME] [varchar](200) NULL,
	[LL2HOME] [varchar](200) NULL,
	[LL3HOME] [varchar](200) NULL,
	[CRAFT] [varchar](200) NULL,
	[JOBCODE] [varchar](200) NULL,
	[JOBCODEDESC] [varchar](200) NULL,
	[EXPORTFLAG] [varchar](200) NULL,
	[ESTIMATE] [varchar](200) NULL,
	[EQUIP_MODE] [varchar](200) NULL,
	[EQUIP_OPERATOR] [varchar](200) NULL,
	[JOB_FAMILY_NAME] [varchar](200) NULL,
	[JOB_DISCIPLINE_NAME] [varchar](200) NULL,
	[ACTIVITY_KEY] [varchar](200) NULL,
	[PAYCODE_MULTIPLIER] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE NONCLUSTERED INDEX [idx_EMPNO_LEGACYEMPNUM] ON [epr].[Weekly_Timesheet_Kronos_All_Projects]
(
	[SourceFileName] ASC,
	EMPNO ASC,
	LEGACYEMPNUM ASC,
	TIMESHEET_DATE ASC
)WITH (DROP_EXISTING = OFF)
GO
CREATE NONCLUSTERED INDEX [idx_CONTRACTNUM_JOB_PROJECT] ON [epr].[Weekly_Timesheet_Kronos_All_Projects]
(
	CONTRACTNUM ASC,
	COMPANY_CODE ASC,
	JOB_PROJECT ASC,
	SUBACCT_COSTCTR ASC
)WITH (DROP_EXISTING = OFF)
GO


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','source_directory','3','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','table_name','4','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','logicapp_url','5','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) values ('pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder','file_name','6','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560')



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Weekly_Timesheet_Kronos_All_Projects_Stage','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06G. Kronos Files (2025)','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-06-13 11:23:20','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.tab','1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560','pl_Weekly_Timesheet_Kronos_All_Projects','NetworkFolder')


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Weekly_Timesheet_Kronos_All_Projects','NCSA','Manual Excel File Direct Source To Synapse',NULL,'1','sundararaju.batta@mcdermott.com','2025-06-19 05:31:52.560',9)
