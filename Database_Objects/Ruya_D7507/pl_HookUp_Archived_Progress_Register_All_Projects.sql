delete from [epr].[04_Progress_Files]
where SourceFileName IN ('D7068 - HookUp Progress Register (TP) 09-Apr-25.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 09-Apr-25.xlsm','D7068 - HookUp Progress Register v3 (4. PP+B3+BSP1+B2) 09-Apr-25.xlsm','D7068 - HookUp Progress Register v3 (5. AUX) 09-Apr-25.xlsm','D7068 - HookUp Progress Register v3 (6. ACC+B1) 09-Apr-25.xlsm','D7068 - HookUp Progress Register v3 (EDP+B7+B4+B5) 09-Apr-25.xlsm')

delete from [epr].[04_Progress_Files]
where SourceFileName IN ('D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 01-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 02-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 03-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 28-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 29-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 30-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 31-Mar-26.xlsm')

delete from [epr].[05_POB_Hourse_per_Day]
where SourceFileName IN ('D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 01-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 02-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 03-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 28-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 29-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 30-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 31-Mar-26.xlsm')

delete from [epr].[Actual_Booking]
where SourceFileName IN ('D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 01-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 02-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 03-Apr-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 28-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 29-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 30-Mar-26.xlsm','D7068 - HookUp Progress Register v3 (3. GCP+BSP2+B6) 31-Mar-26.xlsm')



/****** Object:  Table [epr].[Actual_Booking]    Script Date: 4/10/2025 10:51:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[Actual_Booking]
(
	[JobCardMainID] [varchar](500) NULL,
	[Activity Code] [varchar](500) NULL,
	[WorkPack] [varchar](500) NULL,
	[PlatForm] [varchar](500) NULL,
	[Scope Category] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](500) NULL,
	[Tasksheet_No] [varchar](500) NULL,
	[Task Name] [varchar](3000) NULL,
	[ScopeClassification] [varchar](500) NULL,
	[Estimated Mhrs] [varchar](500) NULL,
	[ProgressDate] [varchar](500) NULL,
	[Cumm Actual Booking (Mhrs)] [varchar](500) NULL,
	[Daily Actual Booking (Mhrs)] [varchar](500) NULL,
	[Today's Progress %] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[CreatedDateTime] [varchar](500) NULL,
	[SourceFileName] [varchar](2000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


/****** Object:  Table [epr].[Actual_Booking]    Script Date: 4/10/2025 10:51:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[Actual_Booking_Stage]
(
	[JobCardMainID] [varchar](500) NULL,
	[Activity Code] [varchar](500) NULL,
	[WorkPack] [varchar](500) NULL,
	[PlatForm] [varchar](500) NULL,
	[Scope Category] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](500) NULL,
	[Tasksheet_No] [varchar](500) NULL,
	[Task Name] [varchar](3000) NULL,
	[ScopeClassification] [varchar](500) NULL,
	[Estimated Mhrs] [varchar](500) NULL,
	[ProgressDate] [varchar](500) NULL,
	[Cumm Actual Booking (Mhrs)] [varchar](500) NULL,
	[Daily Actual Booking (Mhrs)] [varchar](500) NULL,
	[Today's Progress %] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[CreatedDateTime] [varchar](500) NULL,
	[SourceFileName] [varchar](2000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO

/****** Object:  Table [epr].[05_POB_Hourse_per_Day]    Script Date: 4/10/2025 10:53:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[05_POB_Hourse_per_Day]
(
	[Campaign] [varchar](200) NULL,
	[POB] [varchar](200) NULL,
	[Hours per day] [varchar](200) NULL,
	[project_number] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


/****** Object:  Table [epr].[05_POB_Hourse_per_Day]    Script Date: 4/10/2025 10:53:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[05_POB_Hourse_per_Day_Stage]
(
	[Campaign] [varchar](200) NULL,
	[POB] [varchar](200) NULL,
	[Hours per day] [varchar](200) NULL,
	[project_number] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[SourceFileName] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


/****** Object:  Table [epr].[04_Progress_Files]    Script Date: 4/10/2025 10:56:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[04_Progress_Files]
(
	[ContractNo] [varchar](500) NULL,
	[WID] [varchar](500) NULL,
	[SFN] [varchar](500) NULL,
	[Activity_Id] [varchar](500) NULL,
	[Campaign] [varchar](500) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](500) NULL,
	[Commissioning_System] [varchar](500) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Type] [varchar](500) NULL,
	[Work_Description_ID] [varchar](500) NULL,
	[ContractID] [varchar](500) NULL,
	[Job No.] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Discipline] [varchar](500) NULL,
	[ScopeClassification] [varchar](500) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](4000) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Manhours] [varchar](500) NULL,
	[ItemQty] [varchar](500) NULL,
	[ItemQty_UOM] [varchar](500) NULL,
	[Gate 1] [varchar](500) NULL,
	[Gate 1 Actual Qty] [varchar](500) NULL,
	[Gate 2] [varchar](500) NULL,
	[Gate 2 Actual Qty] [varchar](500) NULL,
	[Gate 3] [varchar](500) NULL,
	[Gate 3 Actual Qty] [varchar](500) NULL,
	[Gate 4] [varchar](500) NULL,
	[Gate 4 Actual Qty] [varchar](500) NULL,
	[Gate 5] [varchar](500) NULL,
	[Gate 5 Actual Qty] [varchar](500) NULL,
	[Gate 6] [varchar](500) NULL,
	[Gate 6 Actual Qty] [varchar](500) NULL,
	[JobCardMainID] [varchar](500) NULL,
	[WorkTypeID] [varchar](500) NULL,
	[Wt1] [varchar](500) NULL,
	[Wt2] [varchar](500) NULL,
	[Wt3] [varchar](500) NULL,
	[Wt4] [varchar](500) NULL,
	[Wt5] [varchar](500) NULL,
	[Wt6] [varchar](500) NULL,
	[Progress Date] [varchar](500) NULL,
	[Prev Cum Earned] [varchar](500) NULL,
	[Previous Progress] [varchar](500) NULL,
	[ActualStart] [varchar](500) NULL,
	[ActualFinish] [varchar](500) NULL,
	[Progress Current] [varchar](500) NULL,
	[Daily Earned] [varchar](500) NULL,
	[Daily Progress] [varchar](500) NULL,
	[Cum Earned] [varchar](500) NULL,
	[Baseline Revision] [varchar](500) NULL,
	[True Qty] [varchar](500) NULL,
	[Baseline Qty] [varchar](500) NULL,
	[AFC Hrs] [varchar](500) NULL,
	[AFC Qty] [varchar](500) NULL,
	[Is Quantifiable (Yes/No)] [varchar](500) NULL,
	[Stage #1 PC] [varchar](500) NULL,
	[Stage #2 PC] [varchar](500) NULL,
	[Stage #3 PC] [varchar](500) NULL,
	[Stage #4 PC] [varchar](500) NULL,
	[Stage #5 PC] [varchar](500) NULL,
	[Stage #6 PC] [varchar](500) NULL,
	[Progress_Previous] [varchar](500) NULL,
	[Progress_Current] [varchar](500) NULL,
	[QTY Complete Previous] [varchar](500) NULL,
	[QTY Complete Current] [varchar](500) NULL,
	[Progress_Date] [varchar](500) NULL,
	[Actual_Start] [varchar](500) NULL,
	[Actual_Finish] [varchar](500) NULL,
	[Rollover Check] [varchar](500) NULL,
	[Cum_Earned] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[CreatedDateTime] [varchar](500) NULL,
	[SourceFileName] [varchar](2000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


/****** Object:  Table [epr].[04_Progress_Files]    Script Date: 4/10/2025 10:56:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[04_Progress_Files_Stage]
(
	[ContractNo] [varchar](500) NULL,
	[WID] [varchar](500) NULL,
	[SFN] [varchar](500) NULL,
	[Activity_Id] [varchar](500) NULL,
	[Campaign] [varchar](500) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](500) NULL,
	[Commissioning_System] [varchar](500) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Type] [varchar](500) NULL,
	[Work_Description_ID] [varchar](500) NULL,
	[ContractID] [varchar](500) NULL,
	[Job No.] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Discipline] [varchar](500) NULL,
	[ScopeClassification] [varchar](500) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](4000) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Manhours] [varchar](500) NULL,
	[ItemQty] [varchar](500) NULL,
	[ItemQty_UOM] [varchar](500) NULL,
	[Gate 1] [varchar](500) NULL,
	[Gate 1 Actual Qty] [varchar](500) NULL,
	[Gate 2] [varchar](500) NULL,
	[Gate 2 Actual Qty] [varchar](500) NULL,
	[Gate 3] [varchar](500) NULL,
	[Gate 3 Actual Qty] [varchar](500) NULL,
	[Gate 4] [varchar](500) NULL,
	[Gate 4 Actual Qty] [varchar](500) NULL,
	[Gate 5] [varchar](500) NULL,
	[Gate 5 Actual Qty] [varchar](500) NULL,
	[Gate 6] [varchar](500) NULL,
	[Gate 6 Actual Qty] [varchar](500) NULL,
	[JobCardMainID] [varchar](500) NULL,
	[WorkTypeID] [varchar](500) NULL,
	[Wt1] [varchar](500) NULL,
	[Wt2] [varchar](500) NULL,
	[Wt3] [varchar](500) NULL,
	[Wt4] [varchar](500) NULL,
	[Wt5] [varchar](500) NULL,
	[Wt6] [varchar](500) NULL,
	[Progress Date] [varchar](500) NULL,
	[Prev Cum Earned] [varchar](500) NULL,
	[Previous Progress] [varchar](500) NULL,
	[ActualStart] [varchar](500) NULL,
	[ActualFinish] [varchar](500) NULL,
	[Progress Current] [varchar](500) NULL,
	[Daily Earned] [varchar](500) NULL,
	[Daily Progress] [varchar](500) NULL,
	[Cum Earned] [varchar](500) NULL,
	[Baseline Revision] [varchar](500) NULL,
	[True Qty] [varchar](500) NULL,
	[Baseline Qty] [varchar](500) NULL,
	[AFC Hrs] [varchar](500) NULL,
	[AFC Qty] [varchar](500) NULL,
	[Is Quantifiable (Yes/No)] [varchar](500) NULL,
	[Stage #1 PC] [varchar](500) NULL,
	[Stage #2 PC] [varchar](500) NULL,
	[Stage #3 PC] [varchar](500) NULL,
	[Stage #4 PC] [varchar](500) NULL,
	[Stage #5 PC] [varchar](500) NULL,
	[Stage #6 PC] [varchar](500) NULL,
	[Progress_Previous] [varchar](500) NULL,
	[Progress_Current] [varchar](500) NULL,
	[QTY Complete Previous] [varchar](500) NULL,
	[QTY Complete Current] [varchar](500) NULL,
	[Progress_Date] [varchar](500) NULL,
	[Actual_Start] [varchar](500) NULL,
	[Actual_Finish] [varchar](500) NULL,
	[Rollover Check] [varchar](500) NULL,
	[Cum_Earned] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[CreatedDateTime] [varchar](500) NULL,
	[SourceFileName] [varchar](2000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO

CREATE NONCLUSTERED INDEX [idx_Filename_Progress_Files] ON [epr].[04_Progress_Files]
(
	[SourceFileName] ASC
)WITH (DROP_EXISTING = OFF)
GO
 
CREATE NONCLUSTERED INDEX [idx_Filename_POB_Hourse_per_Day] ON [epr].[05_POB_Hourse_per_Day]
(
	[SourceFileName] ASC
)WITH (DROP_EXISTING = OFF)
GO
 
CREATE NONCLUSTERED INDEX [idx_Filename_Actual_Booking] ON [epr].[Actual_Booking]
(
	[SourceFileName] ASC
)WITH (DROP_EXISTING = OFF)
GO



insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NCSA','SMAT Hookup Progress Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','table_name1','3','table_name1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','project_number','5','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','source_directory','6','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','range1','7','range1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','file_name','8','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO




insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','range2','9','range2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','table_name2','10','table_name2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO




insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','range3','11','range3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','table_name3','12','table_name3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','sheetname1','13','sheetname1','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','sheetname2','14','sheetname2','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder','sheetname3','15','sheetname3','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7068','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name2','04_Progress_Files_Stage','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','09. D7068 - MIP-1\01. HDMS V3.0\04A. Archived Progress Files\25 - 04-Apr-25 to 10-Apr-25','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range2','A1:BT500000','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','D7068 - HookUp Progress Register*.xlsm','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name3','Actual_Booking_Stage','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name1','05_POB_Hourse_per_Day_Stage','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range3','A1:O500000','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range1','H1:J2','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2023-01-24 09:14:45.680','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname1','Options','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname2','HUP_Progress','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('sheetname3','HUC Actual_Booking','1','sundararaju.batta@mcdermott.com','2025-01-27 09:14:45.680','pl_HookUp_Archived_Progress_Register_All_Projects','NetworkFolder')



