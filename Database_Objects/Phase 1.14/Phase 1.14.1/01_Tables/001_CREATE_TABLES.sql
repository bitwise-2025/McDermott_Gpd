/****** Object:  Table [dbo].[dim_ent_miscellaneous_booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_miscellaneous_booking]
(
	[dim_ent_miscellaneous_booking_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_miscellaneous_booking_nk] [bigint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[miscellaneous_booking_code] [varchar](1000) NULL,
	[ContractNo] [varchar](100) NULL,
	[JobCardMainID] [varchar](200) NULL,
	[ActivityCode] [varchar](200) NULL,
	[WorkpackCode] [varchar](200) NULL,
	[WorkPack] [varchar](8000) NULL,
	[PlatForm] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](100) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](200) NULL,
	[SubDiscipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](200) NULL,
	[TaskName] [varchar](8000) NULL,
	[IsTTA] [varchar](100) NULL,
	[Scope] [varchar](200) NULL,
	[ScopeCategory] [varchar](200) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](200) NULL,
	[ActualId] [varchar](100) NULL,
	[EstimatedMhrs] [varchar](200) NULL,
	[ProgressDate] [varchar](200) NULL,
	[Cumm_Actual_Booking_Mhrs] [varchar](200) NULL,
	[Daily_Actual_Booking_Mhrs] [varchar](200) NULL,
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
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
	[hdms_estimated_booking_mhours_code] [varchar](300) NULL,
	[hdms_cummulative_booking_mhours_code] [varchar](300) NULL,
	[hdms_daily_actual_booking_mhours_code] [varchar](300) NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_estimated_booking_mhours_sk] [int] NULL,
	[dim_ent_estimated_booking_mhours_nk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_sk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_nk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_sk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_nk] [int] NULL,
 CONSTRAINT [Cnstr_miscellaneous_booking_pk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_miscellaneous_booking_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_ent_workpack]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_workpack]
(
	[dim_ent_workpack_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_workpack_nk] [bigint] NOT NULL,
	[workpack_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[workpack_description] [varchar](8000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_workpackpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_workpack_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[fact_ops_hdms_booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_ops_hdms_booking]
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
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[dim_ent_campaign_sk] [int] NULL,
	[dim_ent_campaign_nk] [int] NULL,
	[dim_ent_miscellaneous_booking_sk] [int] NULL,
	[dim_ent_miscellaneous_booking_nk] [int] NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_data_sub_class_sk] [int] NULL,
	[dim_ent_data_sub_class_nk] [int] NULL,
	[progress_date] [date] NULL,
	[transaction_quantity] [decimal](30, 5) NULL,
	[created_date_time] [datetime] NULL,
	[temp_hash_code] [varchar](120) NULL,
	[temp_panned] [decimal](15, 5) NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
 CONSTRAINT [Cnstr_fact_ops_hdms_booking_pk] PRIMARY KEY NONCLUSTERED 
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
/****** Object:  Table [gpd].[NCSA_HDMS_Booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_Booking]
(
	[stage_ncsa_hdms_booking_id] [int] IDENTITY(1,1) NOT NULL,
	[ContractNo] [varchar](100) NULL,
	[JobCardMainID] [varchar](200) NULL,
	[Activity Code] [varchar](200) NULL,
	[WorkpackCode] [varchar](200) NULL,
	[WorkPack] [varchar](8000) NULL,
	[PlatForm] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](100) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](200) NULL,
	[SubDiscipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](200) NULL,
	[Task Name] [varchar](8000) NULL,
	[IsTTA] [varchar](100) NULL,
	[Scope] [varchar](200) NULL,
	[ScopeCategory] [varchar](200) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](200) NULL,
	[ActualId] [varchar](100) NULL,
	[Estimated Mhrs] [varchar](200) NULL,
	[ProgressDate] [varchar](200) NULL,
	[Cumm_Actual_Booking_Mhrs] [varchar](200) NULL,
	[Daily_Actual_Booking_Mhrs] [varchar](200) NULL,
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
	[dim_ent_miscellaneous_booking_sk] [int] NULL,
	[dim_ent_miscellaneous_booking_nk] [int] NULL,
	[miscellaneous_booking_code] [varchar](1000) NULL,
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
	[hdms_estimated_booking_mhours_code] [varchar](300) NULL,
	[hdms_cummulative_booking_mhours_code] [varchar](300) NULL,
	[hdms_daily_actual_booking_mhours_code] [varchar](300) NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_estimated_booking_mhours_sk] [int] NULL,
	[dim_ent_estimated_booking_mhours_nk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_sk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_nk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_sk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_miscellaneous_booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_miscellaneous_booking]
(
	[stage_ncsa_hdms_miscellaneous_booking_id] [int] IDENTITY(1,1) NOT NULL,
	[miscellaneous_booking_code] [varchar](1000) NULL,
	[ContractNo] [varchar](100) NULL,
	[JobCardMainID] [varchar](200) NULL,
	[ActivityCode] [varchar](200) NULL,
	[WorkpackCode] [varchar](200) NULL,
	[WorkPack] [varchar](8000) NULL,
	[PlatForm] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](100) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](200) NULL,
	[SubDiscipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](200) NULL,
	[TaskName] [varchar](8000) NULL,
	[IsTTA] [varchar](100) NULL,
	[Scope] [varchar](200) NULL,
	[ScopeCategory] [varchar](200) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](200) NULL,
	[ActualId] [varchar](100) NULL,
	[EstimatedMhrs] [varchar](200) NULL,
	[ProgressDate] [varchar](200) NULL,
	[Cumm_Actual_Booking_Mhrs] [varchar](200) NULL,
	[Daily_Actual_Booking_Mhrs] [varchar](200) NULL,
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
	[dim_ent_miscellaneous_booking_sk] [int] NULL,
	[dim_ent_miscellaneous_booking_nk] [int] NULL,
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
	[hdms_estimated_booking_mhours_code] [varchar](300) NULL,
	[hdms_cummulative_booking_mhours_code] [varchar](300) NULL,
	[hdms_daily_actual_booking_mhours_code] [varchar](300) NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_estimated_booking_mhours_sk] [int] NULL,
	[dim_ent_estimated_booking_mhours_nk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_sk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_nk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_sk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_HDMS_Workpack]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_HDMS_Workpack]
(
	[stage_hdms_workpack_id] [bigint] IDENTITY(1,1) NOT NULL,
	[workpack_code] [varchar](100) NULL,
	[workpack_description] [varchar](8000) NULL,
	[project_id] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_miscellaneous_booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_miscellaneous_booking]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[miscellaneous_booking_code] [varchar](1000) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[ContractNo] [varchar](100) NULL,
	[JobCardMainID] [varchar](200) NULL,
	[ActivityCode] [varchar](200) NULL,
	[WorkpackCode] [varchar](200) NULL,
	[WorkPack] [varchar](8000) NULL,
	[PlatForm] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](100) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](200) NULL,
	[SubDiscipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](200) NULL,
	[TaskName] [varchar](8000) NULL,
	[IsTTA] [varchar](100) NULL,
	[Scope] [varchar](200) NULL,
	[ScopeCategory] [varchar](200) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](200) NULL,
	[ActualId] [varchar](100) NULL,
	[EstimatedMhrs] [varchar](200) NULL,
	[ProgressDate] [varchar](200) NULL,
	[Cumm_Actual_Booking_Mhrs] [varchar](200) NULL,
	[Daily_Actual_Booking_Mhrs] [varchar](200) NULL,
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
	[dim_ent_miscellaneous_booking_sk] [int] NULL,
	[dim_ent_miscellaneous_booking_nk] [int] NULL,
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
	[hdms_estimated_booking_mhours_code] [varchar](300) NULL,
	[hdms_cummulative_booking_mhours_code] [varchar](300) NULL,
	[hdms_daily_actual_booking_mhours_code] [varchar](300) NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_estimated_booking_mhours_sk] [int] NULL,
	[dim_ent_estimated_booking_mhours_nk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_sk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_nk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_sk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_workpack]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_workpack]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[workpack_code] [varchar](100) NULL,
	[workpack_description] [varchar](8000) NULL,
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
/****** Object:  Table [gpd].[reprocess_NCSA_HDMS_Booking]    Script Date: 3/14/2023 4:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_NCSA_HDMS_Booking]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[ContractNo] [varchar](100) NULL,
	[JobCardMainID] [varchar](200) NULL,
	[Activity Code] [varchar](200) NULL,
	[WorkpackCode] [varchar](200) NULL,
	[WorkPack] [varchar](8000) NULL,
	[PlatForm] [varchar](500) NULL,
	[Progress_Grouping] [varchar](500) NULL,
	[Vessel] [varchar](500) NULL,
	[Discipline] [varchar](100) NULL,
	[SystemCode] [varchar](200) NULL,
	[System] [varchar](200) NULL,
	[SubSystemCode] [varchar](200) NULL,
	[SubSystem] [varchar](200) NULL,
	[SubDiscipline] [varchar](200) NULL,
	[TaskSheet_No] [varchar](200) NULL,
	[Task Name] [varchar](8000) NULL,
	[IsTTA] [varchar](100) NULL,
	[Scope] [varchar](200) NULL,
	[ScopeCategory] [varchar](200) NULL,
	[CampaignCode] [varchar](100) NULL,
	[Campaign] [varchar](200) NULL,
	[ActualId] [varchar](100) NULL,
	[Estimated Mhrs] [varchar](200) NULL,
	[ProgressDate] [varchar](200) NULL,
	[Cumm_Actual_Booking_Mhrs] [varchar](200) NULL,
	[Daily_Actual_Booking_Mhrs] [varchar](200) NULL,
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
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
	[dim_ent_miscellaneous_booking_sk] [int] NULL,
	[dim_ent_miscellaneous_booking_nk] [int] NULL,
	[miscellaneous_booking_code] [varchar](1000) NULL,
	[dim_ent_workpack_sk] [int] NULL,
	[dim_ent_workpack_nk] [int] NULL,
	[data_class_hours_code] [varchar](300) NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[hdms_estimated_booking_mhours_code] [varchar](300) NULL,
	[hdms_cummulative_booking_mhours_code] [varchar](300) NULL,
	[hdms_daily_actual_booking_mhours_code] [varchar](300) NULL,
	[dim_ent_data_class_sk] [int] NULL,
	[dim_ent_data_class_nk] [int] NULL,
	[dim_ent_estimated_booking_mhours_sk] [int] NULL,
	[dim_ent_estimated_booking_mhours_nk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_sk] [int] NULL,
	[dim_ent_cummulative_booking_mhours_nk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_sk] [int] NULL,
	[dim_ent_daily_actual_booking_mhours_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
