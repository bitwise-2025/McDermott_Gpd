/****** Object:  Table [dbo].[dim_entp_activity_resource]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_activity_resource]
(
	[dim_entp_activity_resource_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_activity_resource_nk] [bigint] NOT NULL,
	[plantype_revision] [varchar](100) NULL,
	[activity_code] [varchar](100) NULL,
	[activity_description] [varchar](600) NULL,
	[resource_id] [varchar](300) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[Original_Duration] [int] NULL,
	[remaining_duration] [int] NULL,
	[actual_duration] [int] NULL,
	[planned_start] [date] NULL,
	[planned_finish] [date] NULL,
	[actual_start] [date] NULL,
	[actual_finish] [date] NULL,
	[remaining_late_start] [date] NULL,
	[remaining_late_finish] [date] NULL,
	[budgeted_units] [varchar](30) NULL,
	[actual_units] [varchar](30) NULL,
	[remaining_units] [varchar](30) NULL,
	[function_name] [varchar](50) NULL,
	[milestones] [varchar](50) NULL,
	[office] [varchar](200) NULL,
	[Prime] [varchar](200) NULL,
	[SubPrime] [varchar](200) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_planning_resource_nk] [bigint] NULL,
	[dim_ent_office_nk] [bigint] NULL,
	[dim_ent_prime_nk] [bigint] NULL,
	[dim_ent_sub_prime_nk] [bigint] NULL,
	[dim_entp_phase_nk] [bigint] NULL,
	[project_number] [varchar](120) NULL,
 CONSTRAINT [Cnstr_dim_entp_activity_resource_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_activity_resource_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[fact_ops_planning]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_ops_planning]
(
	[fact_entp_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_function_sk] [int] NOT NULL,
	[dim_entp_function_nk] [int] NOT NULL,
	[dim_entp_project_sk] [int] NOT NULL,
	[dim_entp_project_nk] [int] NOT NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_work_unit_sk] [int] NULL,
	[dim_entp_work_unit_nk] [int] NULL,
	[dim_entp_work_area_sk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[dim_entp_cwp_sk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[dim_entp_schedule_resource_sk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[dim_entp_activity_resource_sk] [bigint] NULL,
	[dim_entp_activity_resource_nk] [bigint] NULL,
	[dim_entp_iwp_sk] [int] NULL,
	[dim_entp_iwp_nk] [int] NULL,
	[dim_entp_pim_sk] [int] NULL,
	[dim_entp_pim_nk] [int] NULL,
	[dim_entp_roc_sk] [int] NULL,
	[dim_entp_roc_nk] [int] NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[dim_entp_unit_of_measure_sk] [int] NULL,
	[dim_entp_unit_of_measure_nk] [int] NULL,
	[transaction_date] [date] NULL,
	[transaction_quantity] [decimal](30, 5) NULL,
	[created_date_time] [datetime] NULL,
	[temp_hash_code] [varchar](120) NULL,
	[temp_panned] [decimal](15, 5) NULL,
	[dim_ent_employee_sk] [int] NULL,
	[dim_ent_employee_nk] [int] NULL,
	[dim_ent_jde_coa_sk] [int] NULL,
	[dim_ent_jde_coa_nk] [int] NULL,
	[dim_ent_geac_coa_sk] [int] NULL,
	[dim_ent_geac_coa_nk] [int] NULL,
	[dim_entp_discipline_sk] [bigint] NULL,
	[dim_ent_office_sk] [bigint] NULL,
	[dim_ent_office_nk] [bigint] NULL,
	[dim_entp_discipline_nk] [bigint] NULL,
	[dim_entp_planning_resource_sk] [bigint] NULL,
	[dim_entp_planning_resource_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_fact_entp_ops_planning_sk] PRIMARY KEY NONCLUSTERED 
	(
		[fact_entp_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = HASH ( [dim_entp_function_sk] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_planning_resource]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_planning_resource]
(
	[dim_entp_planning_resource_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_planning_resource_nk] [bigint] NOT NULL,
	[resource_id] [varchar](300) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[resource_hierarchy] [varchar](500) NULL,
	[resource_name] [varchar](500) NULL,
	[resource_type] [varchar](300) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[project_number] [varchar](120) NULL,
 CONSTRAINT [Cnstr_dim_entp_planning_resource_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_planning_resource_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[NCSA_planning_resource]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_planning_resource]
(
	[stage_p6_planning_resource_id] [bigint] IDENTITY(1,1) NOT NULL,
	[resource_id] [varchar](300) NULL,
	[resource_id_name] [varchar](500) NULL,
	[resource_name] [varchar](500) NULL,
	[resource_type] [varchar](300) NULL,
	[project] [varchar](120) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[P6_resource_spread]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[P6_resource_spread]
(
	[stage_p6_engr_id] [int] IDENTITY(1,1) NOT NULL,
	[project] [varchar](100) NOT NULL,
	[Activity_ID] [varchar](55) NULL,
	[Activity_Name] [varchar](512) NULL,
	[plantype_revision] [varchar](300) NULL,
	[Original_Duration] [varchar](100) NULL,
	[Actual_Duration] [varchar](100) NULL,
	[Remaining_Duration] [varchar](100) NULL,
	[Start] [varchar](55) NULL,
	[Finish] [varchar](55) NULL,
	[Actual_Start] [varchar](55) NULL,
	[Actual_Finish] [varchar](55) NULL,
	[Remaining_Late_Start] [varchar](55) NULL,
	[Remaining_Late_Finish] [varchar](55) NULL,
	[Calendar] [varchar](100) NULL,
	[Budgeted_Units] [varchar](100) NULL,
	[Actual_Units] [varchar](100) NULL,
	[Remaining_Units] [varchar](100) NULL,
	[WBS] [varchar](100) NULL,
	[WBS_Name] [varchar](100) NULL,
	[Cost_Account] [varchar](100) NULL,
	[Role] [varchar](100) NULL,
	[Resource_ID] [varchar](300) NULL,
	[Resource_ID_Name] [varchar](500) NULL,
	[Resource_Name] [varchar](500) NULL,
	[Resource_Type] [varchar](300) NULL,
	[Change_Management] [varchar](50) NULL,
	[Executed_By_Type] [varchar](50) NULL,
	[Function] [varchar](50) NULL,
	[Milestones] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Phase] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Schedule_Risk_Assessment] [varchar](50) NULL,
	[Storage_Solutions] [varchar](50) NULL,
	[Supply_Chain] [varchar](50) NULL,
	[Prime] [varchar](100) NULL,
	[SubPrime] [varchar](100) NULL,
	[Spreadsheet_Field] [varchar](512) NULL,
	[Period] [varchar](55) NULL,
	[Units] [varchar](100) NULL,
	[fx] [nvarchar](100) NULL,
	[work_unit] [nvarchar](100) NULL,
	[work_area] [nvarchar](100) NULL,
	[cwp] [nvarchar](100) NULL,
	[schedule_resource] [nvarchar](100) NULL,
	[iwp] [nvarchar](100) NULL,
	[pim] [nvarchar](100) NULL,
	[roc] [nvarchar](100) NULL,
	[data_class] [nvarchar](100) NULL,
	[sub_source] [nvarchar](100) NULL,
	[source] [nvarchar](100) NULL,
	[unit_of_measure] [nvarchar](100) NULL,
	[dim_entp_function_sk] [int] NULL,
	[dim_entp_function_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_work_unit_sk] [int] NULL,
	[dim_entp_work_unit_nk] [int] NULL,
	[dim_entp_work_area_sk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[dim_entp_cwp_sk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[dim_entp_schedule_resource_sk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[dim_entp_activity_resource_sk] [int] NULL,
	[dim_entp_activity_resource_nk] [int] NULL,
	[dim_entp_iwp_sk] [int] NULL,
	[dim_entp_iwp_nk] [int] NULL,
	[dim_entp_pim_sk] [int] NULL,
	[dim_entp_pim_nk] [int] NULL,
	[dim_entp_roc_sk] [int] NULL,
	[dim_entp_roc_nk] [int] NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[dim_entp_unit_of_measure_sk] [int] NULL,
	[dim_entp_unit_of_measure_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[dim_entp_planning_resource_sk] [int] NULL,
	[dim_entp_planning_resource_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_planning_resource]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_planning_resource]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[resource_id] [varchar](300) NULL,
	[Description] [varchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[resource_id_name] [varchar](500) NULL,
	[resource_name] [varchar](500) NULL,
	[resource_type] [varchar](300) NULL,
	[project] [varchar](120) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_P6_resource_spread]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_P6_resource_spread]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[project] [varchar](100) NOT NULL,
	[Activity_ID] [varchar](55) NULL,
	[Activity_Name] [varchar](512) NULL,
	[plantype_revision] [varchar](300) NULL,
	[Original_Duration] [varchar](100) NULL,
	[Actual_Duration] [varchar](100) NULL,
	[Remaining_Duration] [varchar](100) NULL,
	[Start] [varchar](55) NULL,
	[Finish] [varchar](55) NULL,
	[Actual_Start] [varchar](55) NULL,
	[Actual_Finish] [varchar](55) NULL,
	[Remaining_Late_Start] [varchar](55) NULL,
	[Remaining_Late_Finish] [varchar](55) NULL,
	[Calendar] [varchar](100) NULL,
	[Budgeted_Units] [varchar](100) NULL,
	[Actual_Units] [varchar](100) NULL,
	[Remaining_Units] [varchar](100) NULL,
	[WBS] [varchar](100) NULL,
	[WBS_Name] [varchar](100) NULL,
	[Cost_Account] [varchar](100) NULL,
	[Role] [varchar](100) NULL,
	[Resource_ID] [varchar](300) NULL,
	[Resource_ID_Name] [varchar](500) NULL,
	[Resource_Name] [varchar](500) NULL,
	[Resource_Type] [varchar](300) NULL,
	[Change_Management] [varchar](50) NULL,
	[Executed_By_Type] [varchar](50) NULL,
	[Function] [varchar](50) NULL,
	[Milestones] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Phase] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Schedule_Risk_Assessment] [varchar](50) NULL,
	[Storage_Solutions] [varchar](50) NULL,
	[Supply_Chain] [varchar](50) NULL,
	[Prime] [varchar](100) NULL,
	[SubPrime] [varchar](100) NULL,
	[Spreadsheet_Field] [varchar](512) NULL,
	[Period] [varchar](55) NULL,
	[Units] [varchar](100) NULL,
	[fx] [nvarchar](100) NULL,
	[work_unit] [nvarchar](100) NULL,
	[work_area] [nvarchar](100) NULL,
	[cwp] [nvarchar](100) NULL,
	[schedule_resource] [nvarchar](100) NULL,
	[iwp] [nvarchar](100) NULL,
	[pim] [nvarchar](100) NULL,
	[roc] [nvarchar](100) NULL,
	[data_class] [nvarchar](100) NULL,
	[sub_source] [nvarchar](100) NULL,
	[source] [nvarchar](100) NULL,
	[unit_of_measure] [nvarchar](100) NULL,
	[dim_entp_function_sk] [int] NULL,
	[dim_entp_function_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_work_unit_sk] [int] NULL,
	[dim_entp_work_unit_nk] [int] NULL,
	[dim_entp_work_area_sk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[dim_entp_cwp_sk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[dim_entp_schedule_resource_sk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[dim_entp_activity_resource_sk] [int] NULL,
	[dim_entp_activity_resource_nk] [int] NULL,
	[dim_entp_iwp_sk] [int] NULL,
	[dim_entp_iwp_nk] [int] NULL,
	[dim_entp_pim_sk] [int] NULL,
	[dim_entp_pim_nk] [int] NULL,
	[dim_entp_roc_sk] [int] NULL,
	[dim_entp_roc_nk] [int] NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[dim_entp_unit_of_measure_sk] [int] NULL,
	[dim_entp_unit_of_measure_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[hash_code] [varchar](8000) NULL,
	[dim_entp_planning_resource_sk] [int] NULL,
	[dim_entp_planning_resource_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_tmp_P6_resource_activity]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_tmp_P6_resource_activity]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[plantype_revision] [varchar](100) NULL,
	[activity_code] [varchar](100) NULL,
	[activity_description] [varchar](600) NULL,
	[resource_id] [varchar](300) NULL,
	[Original_Duration] [int] NULL,
	[remaining_duration] [int] NULL,
	[actual_duration] [int] NULL,
	[planned_start] [date] NULL,
	[planned_finish] [date] NULL,
	[actual_start] [date] NULL,
	[actual_finish] [date] NULL,
	[remaining_late_start] [date] NULL,
	[remaining_late_finish] [date] NULL,
	[budgeted_units] [varchar](30) NULL,
	[actual_units] [varchar](30) NULL,
	[remaining_units] [varchar](30) NULL,
	[function_name] [varchar](50) NULL,
	[milestones] [varchar](50) NULL,
	[office] [varchar](200) NULL,
	[Prime] [varchar](200) NULL,
	[SubPrime] [varchar](200) NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_phase_nk] [bigint] NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[tmp_P6_resource_activity]    Script Date: 8/4/2022 1:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[tmp_P6_resource_activity]
(
	[stage_tmp_P6_resource_activity_id] [int] IDENTITY(1,1) NOT NULL,
	[plantype_revision] [varchar](100) NULL,
	[activity_code] [varchar](100) NULL,
	[activity_description] [varchar](600) NULL,
	[resource_id] [varchar](300) NULL,
	[Original_Duration] [int] NULL,
	[remaining_duration] [int] NULL,
	[actual_duration] [int] NULL,
	[planned_start] [date] NULL,
	[planned_finish] [date] NULL,
	[actual_start] [date] NULL,
	[actual_finish] [date] NULL,
	[remaining_late_start] [date] NULL,
	[remaining_late_finish] [date] NULL,
	[budgeted_units] [varchar](30) NULL,
	[actual_units] [varchar](30) NULL,
	[remaining_units] [varchar](30) NULL,
	[function_name] [varchar](50) NULL,
	[milestones] [varchar](50) NULL,
	[office] [varchar](200) NULL,
	[Prime] [varchar](200) NULL,
	[SubPrime] [varchar](200) NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_phase_nk] [bigint] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [IND_activity_resource_nk]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [IND_activity_resource_nk] ON [dbo].[fact_ops_planning]
(
	[dim_entp_activity_resource_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [IND_cwp_nk]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [IND_cwp_nk] ON [dbo].[fact_ops_planning]
(
	[dim_entp_cwp_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [IND_resource_nk]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [IND_resource_nk] ON [dbo].[fact_ops_planning]
(
	[dim_entp_planning_resource_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indRK1]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [indRK1] ON [dbo].[fact_ops_planning]
(
	[dim_entp_project_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indRK2]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [indRK2] ON [dbo].[fact_ops_planning]
(
	[dim_entp_project_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indRK2_dim_entp_iwp_nk]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [indRK2_dim_entp_iwp_nk] ON [dbo].[fact_ops_planning]
(
	[dim_entp_iwp_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indSK]    Script Date: 8/4/2022 1:47:22 AM ******/
CREATE NONCLUSTERED INDEX [indSK] ON [dbo].[fact_ops_planning]
(
	[fact_entp_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO

