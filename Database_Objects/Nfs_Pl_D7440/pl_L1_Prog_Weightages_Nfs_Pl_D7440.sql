/****** Object:  Table [epr].[Cost_Milestone_Ummshaif_D7650]    Script Date: 3/12/2025 10:39:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE  epr.L1_Prog_Weightages_Nfs_Pl_D7440
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
	[Prop_14] [varchar](100) NULL,
	[Prop_15] [varchar](100) NULL,
	[Prop_16] [varchar](100) NULL,
	[Prop_17] [varchar](100) NULL,
	[Prop_18] [varchar](100) NULL,
	[Prop_19] [varchar](100) NULL,
	[Prop_20] [varchar](100) NULL,
	[project_number] [varchar](200) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[file_name] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  View [epr].[Cost_Milestone_Ummshaif_D7650_V]    Script Date: 3/12/2025 10:43:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [epr].[L1_Prog_Weightages_Nfs_Pl_D7440_V]
AS select
[S.No] = Prop_0,
	[Description] = Prop_1,
	[Overall W.F L-1] = Prop_2,
	[Overall W.F L-2] = Prop_3,
	[Overall W.F L-3] = Prop_4,
	[Previous period plan 20-Feb] = Prop_11,
	[Previous period Actual 20-Feb] = Prop_12,
	[Previous period var 20-Feb] = Prop_13,
	[Progress period plan 20-Feb] = Prop_14,
	[Progress period Actual 20-Feb] = Prop_15,
	[Progress period var 20-Feb] = Prop_16,
	[Cumulative plan] = Prop_17,
	[Cumulative Actual] = Prop_18,
	[Cumulative Var] = Prop_19,
	[Remarks / Variance Contributors] = Prop_20,
[project_number],
[file_name],
[CreatedDateTime]
from [epr].[L1_Prog_Weightages_Nfs_Pl_D7440];
GO


insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NCSA','Manual Excel File Direct Source To Synapse','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','table_name','3','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','project_number','5','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','source_directory','6','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','Sheetname','8','Sheetname','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder','range','9','range','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')







insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7440','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','L1_Prog_Weightages_Nfs_Pl_D7440','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','08. D7440 NFS PL\06. Other Project Data','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','L1 Prog -Weightages.xlsx','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-02-03 08:08:48.027','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
GO
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('Sheetname','Progress','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')
insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('range','B6:V500','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_L1_Prog_Weightages_Nfs_Pl_D7440','NetworkFolder')