/****** Object:  Table [dbo].[dim_ent_campaign]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_campaign]
(
	[dim_ent_campaign_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_campaign_nk] [bigint] NOT NULL,
	[campaign_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[campaign_description] [varchar](8000) NULL,
	[campaign_type] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_campaignpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_campaign_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_miscellaneous_progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_miscellaneous_progress]
(
	[dim_ent_miscellaneous_progress_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_miscellaneous_progress_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[miscellaneous_progress_code] [varchar](1000) NULL,
	[ActID] [varchar](100) NULL,
	[UpdateHistoryID] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[SFN] [varchar](200) NULL,
	[Activity_Id] [varchar](300) NULL,
	[Work_Description_ID] [varchar](300) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Activities] [varchar](8000) NULL,
	[Scope] [varchar](500) NULL,
	[Jobno] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](8000) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](8000) NULL,
	[ScopeCategory] [varchar](8000) NULL,
	[Progress_Date] [varchar](200) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](8000) NULL,
	[Work_Type] [varchar](500) NULL,
	[Progress] [varchar](500) NULL,
	[CumEarned] [varchar](100) NULL,
	[Manhours] [varchar](100) NULL,
	[Previous_Progress] [varchar](100) NULL,
	[Progress_Grouping] [varchar](200) NULL,
	[Label1] [varchar](200) NULL,
	[Label2] [varchar](200) NULL,
	[Label3] [varchar](200) NULL,
	[Label4] [varchar](200) NULL,
	[Label5] [varchar](200) NULL,
	[Label6] [varchar](200) NULL,
	[Gate1] [varchar](200) NULL,
	[Gate2] [varchar](200) NULL,
	[Gate3] [varchar](200) NULL,
	[Gate4] [varchar](200) NULL,
	[Gate5] [varchar](200) NULL,
	[Gate6] [varchar](200) NULL,
	[QtyG1] [varchar](200) NULL,
	[QtyG2] [varchar](200) NULL,
	[QtyG3] [varchar](200) NULL,
	[QtyG4] [varchar](200) NULL,
	[QtyG5] [varchar](200) NULL,
	[QtyG6] [varchar](200) NULL,
	[ContractID] [varchar](200) NULL,
	[ItemQty] [varchar](200) NULL,
	[WorkTypeID] [varchar](200) NULL,
	[source_code] [varchar](200) NULL,
	[sub_source_code] [varchar](200) NULL,
	[function_code] [varchar](200) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[project_number] [varchar](100) NULL,
	[data_class_hours_code] [varchar](200) NULL,
	[hdms_progress_percentage_code] [varchar](200) NULL,
	[hdms_cumulative_earned_hours_code] [varchar](200) NULL,
	[hdms_previous_progress_percentage_code] [varchar](200) NULL,
	[hdms_man_hours_code] [varchar](200) NULL,
	[dim_ent_progress_percentage_sk] [int] NULL,
	[dim_ent_progress_percentage_nk] [int] NULL,
	[dim_ent_cumulative_earned_hours_sk] [int] NULL,
	[dim_ent_cumulative_earned_hours_nk] [int] NULL,
	[dim_ent_previous_progress_percentage_sk] [int] NULL,
	[dim_ent_previous_progress_percentage_nk] [int] NULL,
	[dim_ent_man_hours_sk] [int] NULL,
	[dim_ent_man_hours_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[data_class_percentage_code] [varchar](200) NULL,
 CONSTRAINT [Cnstr_miscellaneous_progrespk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_miscellaneous_progress_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_subsystem]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_subsystem]
(
	[dim_ent_subsystem_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_subsystem_nk] [bigint] NOT NULL,
	[subsystem_code] [varchar](200) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[subsystem_description] [varchar](4000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_subsystempk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_subsystem_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_system]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_system]
(
	[dim_ent_system_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_system_nk] [bigint] NOT NULL,
	[system_code] [varchar](200) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[system_description] [varchar](4000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_systempk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_system_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_task]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_task]
(
	[dim_ent_task_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_task_nk] [bigint] NOT NULL,
	[tasksheet_no] [varchar](200) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[task_name] [varchar](8000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_taskpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_task_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[fact_ops_hdms_progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_ops_hdms_progress]
(
	[fact_entp_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[dim_ent_miscellaneous_progress_sk] [int] NULL,
	[dim_ent_miscellaneous_progress_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_sub_class_sk] [int] NULL,
	[dim_ent_data_sub_class_nk] [int] NULL,
	[progress_date] [date] NULL,
	[transaction_quantity] [decimal](30, 5) NULL,
	[created_date_time] [datetime] NULL,
	[temp_hash_code] [varchar](120) NULL,
	[temp_panned] [decimal](15, 5) NULL,
 CONSTRAINT [Cnstr_fact_ops_hdms_progress_pk] PRIMARY KEY NONCLUSTERED 
	(
		[fact_entp_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = HASH ( [dim_ent_function_sk] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_Campaign]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_Campaign]
(
	[stage_hdms_campaign_id] [bigint] IDENTITY(1,1) NOT NULL,
	[campaign_code] [varchar](100) NULL,
	[campaign_description] [varchar](8000) NULL,
	[campaign_type] [varchar](100) NULL,
	[project_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_miscellaneous_progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_miscellaneous_progress]
(
	[stage_ncsa_hdms_miscellaneous_progress_id] [int] IDENTITY(1,1) NOT NULL,
	[miscellaneous_progress_code] [varchar](1000) NULL,
	[ActID] [varchar](100) NULL,
	[UpdateHistoryID] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[SFN] [varchar](200) NULL,
	[Activity_Id] [varchar](300) NULL,
	[Work_Description_ID] [varchar](300) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Activities] [varchar](8000) NULL,
	[Scope] [varchar](500) NULL,
	[Jobno] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](8000) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](8000) NULL,
	[ScopeCategory] [varchar](8000) NULL,
	[Progress_Date] [varchar](200) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](8000) NULL,
	[Work_Type] [varchar](500) NULL,
	[Progress] [varchar](500) NULL,
	[CumEarned] [varchar](100) NULL,
	[Manhours] [varchar](100) NULL,
	[Previous_Progress] [varchar](100) NULL,
	[Progress_Grouping] [varchar](200) NULL,
	[Label1] [varchar](200) NULL,
	[Label2] [varchar](200) NULL,
	[Label3] [varchar](200) NULL,
	[Label4] [varchar](200) NULL,
	[Label5] [varchar](200) NULL,
	[Label6] [varchar](200) NULL,
	[Gate1] [varchar](200) NULL,
	[Gate2] [varchar](200) NULL,
	[Gate3] [varchar](200) NULL,
	[Gate4] [varchar](200) NULL,
	[Gate5] [varchar](200) NULL,
	[Gate6] [varchar](200) NULL,
	[QtyG1] [varchar](200) NULL,
	[QtyG2] [varchar](200) NULL,
	[QtyG3] [varchar](200) NULL,
	[QtyG4] [varchar](200) NULL,
	[QtyG5] [varchar](200) NULL,
	[QtyG6] [varchar](200) NULL,
	[ContractID] [varchar](200) NULL,
	[ItemQty] [varchar](200) NULL,
	[WorkTypeID] [varchar](200) NULL,
	[source_code] [varchar](200) NULL,
	[sub_source_code] [varchar](200) NULL,
	[function_code] [varchar](200) NULL,
	[project_id] [varchar](200) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[data_class_hours_code] [varchar](200) NULL,
	[hdms_progress_percentage_code] [varchar](200) NULL,
	[hdms_cumulative_earned_hours_code] [varchar](200) NULL,
	[hdms_previous_progress_percentage_code] [varchar](200) NULL,
	[hdms_man_hours_code] [varchar](200) NULL,
	[dim_ent_progress_percentage_sk] [int] NULL,
	[dim_ent_progress_percentage_nk] [int] NULL,
	[dim_ent_cumulative_earned_hours_sk] [int] NULL,
	[dim_ent_cumulative_earned_hours_nk] [int] NULL,
	[dim_ent_previous_progress_percentage_sk] [int] NULL,
	[dim_ent_previous_progress_percentage_nk] [int] NULL,
	[dim_ent_man_hours_sk] [int] NULL,
	[dim_ent_man_hours_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[data_class_percentage_code] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_Progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_Progress]
(
	[stage_ncsa_hdms_progress_id] [int] IDENTITY(1,1) NOT NULL,
	[ActID] [varchar](100) NULL,
	[UpdateHistoryID] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[SFN] [varchar](200) NULL,
	[Activity_Id] [varchar](300) NULL,
	[Work_Description_ID] [varchar](300) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Activities] [varchar](8000) NULL,
	[Scope] [varchar](500) NULL,
	[Jobno] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](8000) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](8000) NULL,
	[ScopeCategory] [varchar](8000) NULL,
	[Progress_Date] [varchar](200) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](8000) NULL,
	[Work_Type] [varchar](500) NULL,
	[Progress] [varchar](500) NULL,
	[CumEarned] [varchar](100) NULL,
	[Manhours] [varchar](100) NULL,
	[Previous_Progress] [varchar](100) NULL,
	[Progress_Grouping] [varchar](200) NULL,
	[Label1] [varchar](200) NULL,
	[Label2] [varchar](200) NULL,
	[Label3] [varchar](200) NULL,
	[Label4] [varchar](200) NULL,
	[Label5] [varchar](200) NULL,
	[Label6] [varchar](200) NULL,
	[Gate1] [varchar](200) NULL,
	[Gate2] [varchar](200) NULL,
	[Gate3] [varchar](200) NULL,
	[Gate4] [varchar](200) NULL,
	[Gate5] [varchar](200) NULL,
	[Gate6] [varchar](200) NULL,
	[QtyG1] [varchar](200) NULL,
	[QtyG2] [varchar](200) NULL,
	[QtyG3] [varchar](200) NULL,
	[QtyG4] [varchar](200) NULL,
	[QtyG5] [varchar](200) NULL,
	[QtyG6] [varchar](200) NULL,
	[ContractID] [varchar](200) NULL,
	[ItemQty] [varchar](200) NULL,
	[WorkTypeID] [varchar](200) NULL,
	[source_code] [varchar](200) NULL,
	[sub_source_code] [varchar](200) NULL,
	[function_code] [varchar](200) NULL,
	[project_id] [varchar](200) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[dim_ent_miscellaneous_progress_sk] [int] NULL,
	[dim_ent_miscellaneous_progress_nk] [int] NULL,
	[miscellaneous_progress_code] [varchar](1000) NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[hdms_progress_percentage_code] [varchar](300) NULL,
	[hdms_cumulative_earned_hours_code] [varchar](300) NULL,
	[hdms_previous_progress_percentage_code] [varchar](300) NULL,
	[hdms_man_hours_code] [varchar](300) NULL,
	[dim_ent_progress_percentage_sk] [int] NULL,
	[dim_ent_progress_percentage_nk] [int] NULL,
	[dim_ent_cumulative_earned_hours_sk] [int] NULL,
	[dim_ent_cumulative_earned_hours_nk] [int] NULL,
	[dim_ent_previous_progress_percentage_sk] [int] NULL,
	[dim_ent_previous_progress_percentage_nk] [int] NULL,
	[dim_ent_man_hours_sk] [int] NULL,
	[dim_ent_man_hours_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[data_class_percentage_code] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_SubSystem]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_SubSystem]
(
	[stage_hdms_subsystem_id] [bigint] IDENTITY(1,1) NOT NULL,
	[subsystem_code] [varchar](200) NULL,
	[subsystem_description] [varchar](4000) NULL,
	[project_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_System]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_System]
(
	[stage_hdms_system_id] [bigint] IDENTITY(1,1) NOT NULL,
	[system_code] [varchar](200) NULL,
	[system_description] [varchar](4000) NULL,
	[project_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_Task]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_Task]
(
	[stage_hdms_task_id] [bigint] IDENTITY(1,1) NOT NULL,
	[tasksheet_no] [varchar](500) NULL,
	[task_name] [varchar](8000) NULL,
	[project_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_campaign]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_campaign]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[campaign_code] [varchar](100) NULL,
	[campaign_description] [varchar](8000) NULL,
	[campaign_type] [varchar](100) NULL,
	[project_id] [varchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_miscellaneous_progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_miscellaneous_progress]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[miscellaneous_progress_code] [varchar](1000) NULL,
	[ActID] [varchar](100) NULL,
	[UpdateHistoryID] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[SFN] [varchar](200) NULL,
	[Activity_Id] [varchar](300) NULL,
	[Work_Description_ID] [varchar](300) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Activities] [varchar](8000) NULL,
	[Scope] [varchar](500) NULL,
	[Jobno] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](8000) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](8000) NULL,
	[ScopeCategory] [varchar](8000) NULL,
	[Progress_Date] [varchar](200) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](8000) NULL,
	[Work_Type] [varchar](500) NULL,
	[Progress] [varchar](500) NULL,
	[CumEarned] [varchar](100) NULL,
	[Manhours] [varchar](100) NULL,
	[Previous_Progress] [varchar](100) NULL,
	[Progress_Grouping] [varchar](200) NULL,
	[Label1] [varchar](200) NULL,
	[Label2] [varchar](200) NULL,
	[Label3] [varchar](200) NULL,
	[Label4] [varchar](200) NULL,
	[Label5] [varchar](200) NULL,
	[Label6] [varchar](200) NULL,
	[Gate1] [varchar](200) NULL,
	[Gate2] [varchar](200) NULL,
	[Gate3] [varchar](200) NULL,
	[Gate4] [varchar](200) NULL,
	[Gate5] [varchar](200) NULL,
	[Gate6] [varchar](200) NULL,
	[QtyG1] [varchar](200) NULL,
	[QtyG2] [varchar](200) NULL,
	[QtyG3] [varchar](200) NULL,
	[QtyG4] [varchar](200) NULL,
	[QtyG5] [varchar](200) NULL,
	[QtyG6] [varchar](200) NULL,
	[ContractID] [varchar](200) NULL,
	[ItemQty] [varchar](200) NULL,
	[WorkTypeID] [varchar](200) NULL,
	[source_code] [varchar](200) NULL,
	[sub_source_code] [varchar](200) NULL,
	[function_code] [varchar](200) NULL,
	[project_id] [varchar](200) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[data_class_hours_code] [varchar](200) NULL,
	[hdms_progress_percentage_code] [varchar](200) NULL,
	[hdms_cumulative_earned_hours_code] [varchar](200) NULL,
	[hdms_previous_progress_percentage_code] [varchar](200) NULL,
	[hdms_man_hours_code] [varchar](200) NULL,
	[dim_ent_progress_percentage_sk] [int] NULL,
	[dim_ent_progress_percentage_nk] [int] NULL,
	[dim_ent_cumulative_earned_hours_sk] [int] NULL,
	[dim_ent_cumulative_earned_hours_nk] [int] NULL,
	[dim_ent_previous_progress_percentage_sk] [int] NULL,
	[dim_ent_previous_progress_percentage_nk] [int] NULL,
	[dim_ent_man_hours_sk] [int] NULL,
	[dim_ent_man_hours_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[data_class_percentage_code] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_subsystem]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_subsystem]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[subsystem_code] [varchar](200) NULL,
	[subsystem_description] [varchar](4000) NULL,
	[project_id] [varchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_system]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_system]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[system_code] [varchar](200) NULL,
	[system_description] [varchar](4000) NULL,
	[project_id] [varchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_task]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_task]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[tasksheet_no] [varchar](500) NULL,
	[task_name] [varchar](8000) NULL,
	[project_id] [varchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_NCSA_HDMS_Progress]    Script Date: 2/17/2023 11:03:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_NCSA_HDMS_Progress]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[ActID] [varchar](100) NULL,
	[UpdateHistoryID] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[SFN] [varchar](200) NULL,
	[Activity_Id] [varchar](300) NULL,
	[Work_Description_ID] [varchar](300) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](500) NULL,
	[Work_Description] [varchar](8000) NULL,
	[Activities] [varchar](8000) NULL,
	[Scope] [varchar](500) NULL,
	[Jobno] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](500) NULL,
	[Task_Name] [varchar](8000) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](8000) NULL,
	[ScopeCategory] [varchar](8000) NULL,
	[Progress_Date] [varchar](200) NULL,
	[Deck] [varchar](500) NULL,
	[Period] [varchar](8000) NULL,
	[Work_Type] [varchar](500) NULL,
	[Progress] [varchar](500) NULL,
	[CumEarned] [varchar](100) NULL,
	[Manhours] [varchar](100) NULL,
	[Previous_Progress] [varchar](100) NULL,
	[Progress_Grouping] [varchar](200) NULL,
	[Label1] [varchar](200) NULL,
	[Label2] [varchar](200) NULL,
	[Label3] [varchar](200) NULL,
	[Label4] [varchar](200) NULL,
	[Label5] [varchar](200) NULL,
	[Label6] [varchar](200) NULL,
	[Gate1] [varchar](200) NULL,
	[Gate2] [varchar](200) NULL,
	[Gate3] [varchar](200) NULL,
	[Gate4] [varchar](200) NULL,
	[Gate5] [varchar](200) NULL,
	[Gate6] [varchar](200) NULL,
	[QtyG1] [varchar](200) NULL,
	[QtyG2] [varchar](200) NULL,
	[QtyG3] [varchar](200) NULL,
	[QtyG4] [varchar](200) NULL,
	[QtyG5] [varchar](200) NULL,
	[QtyG6] [varchar](200) NULL,
	[ContractID] [varchar](200) NULL,
	[ItemQty] [varchar](200) NULL,
	[WorkTypeID] [varchar](200) NULL,
	[source_code] [varchar](200) NULL,
	[sub_source_code] [varchar](200) NULL,
	[function_code] [varchar](200) NULL,
	[project_id] [varchar](200) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_system_sk] [int] NULL,
	[dim_ent_system_nk] [int] NULL,
	[dim_ent_subsystem_sk] [int] NULL,
	[dim_ent_subsystem_nk] [int] NULL,
	[dim_ent_task_sk] [int] NULL,
	[dim_ent_task_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[dim_ent_miscellaneous_progress_sk] [int] NULL,
	[dim_ent_miscellaneous_progress_nk] [int] NULL,
	[parent_rssk] [int] NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[miscellaneous_progress_code] [varchar](1000) NULL,
	[data_class_hours_code] [varchar](200) NULL,
	[hdms_progress_percentage_code] [varchar](200) NULL,
	[hdms_cumulative_earned_hours_code] [varchar](200) NULL,
	[hdms_previous_progress_percentage_code] [varchar](200) NULL,
	[hdms_man_hours_code] [varchar](200) NULL,
	[dim_ent_progress_percentage_sk] [int] NULL,
	[dim_ent_progress_percentage_nk] [int] NULL,
	[dim_ent_cumulative_earned_hours_sk] [int] NULL,
	[dim_ent_cumulative_earned_hours_nk] [int] NULL,
	[dim_ent_previous_progress_percentage_sk] [int] NULL,
	[dim_ent_previous_progress_percentage_nk] [int] NULL,
	[dim_ent_man_hours_sk] [int] NULL,
	[dim_ent_man_hours_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[data_class_percentage_code] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
