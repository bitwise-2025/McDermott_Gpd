/****** Object:  Table [gpd].[tmp_Activity_P6_engr_headcount]    Script Date: 2/6/2022 5:45:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[tmp_Activity_P6_engr_headcount]
(
	[stage_tmp_activity_p6_engr_id] [int] IDENTITY(1,1) NOT NULL,
	[activity_code] [varchar](50) NULL,
	[activity_description] [varchar](600) NULL,
	[schedule_unit] [varchar](10) NULL,
	[schedule_resource] [varchar](100) NULL,
	[Original_Duration] [int] NULL,
	[remaining_duration] [int] NULL,
	[actual_start] [date] NULL,
	[actual_finish] [date] NULL,
	[percent_complete_type] [varchar](20) NULL,
	[executed_by_type] [varchar](20) NULL,
	[prime] [varchar](2) NULL,
	[sub_prime] [varchar](3) NULL,
	[schedule_work_area] [varchar](10) NULL,
	[executed_by] [varchar](20) NULL,
	[early_start_date] [datetime] NULL,
	[early_finish_date] [datetime] NULL,
	[is_on_critical_path] [varchar](20) NULL,
	[total_float] [int] NULL,
	[activity_status] [varchar](20) NULL,
	[planned_start] [datetime] NULL,
	[planned_finish] [datetime] NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[actual_duration] [int] NULL,
	[remaining_late_start] [date] NULL,
	[remaining_late_finish] [date] NULL,
	[calendar] [varchar](200) NULL,
	[budgeted_units] [varchar](30) NULL,
	[actual_units] [varchar](30) NULL,
	[remaining_units] [varchar](30) NULL,
	[wbs] [varchar](100) NULL,
	[wbs_name] [varchar](200) NULL,
	[cost_account] [varchar](100) NULL,
	[role_is] [varchar](100) NULL,
	[change_management] [varchar](50) NULL,
	[funct] [varchar](50) NULL,
	[milestones] [varchar](50) NULL,
	[office] [varchar](50) NULL,
	[dim_entp_phase_nk] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[schedule_risk_assessment] [varchar](50) NULL,
	[supply_chain] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

------------------------------------------------

/****** Object:  Table [gpd].[reprocess_tmp_Activity_P6_engr_headcount]    Script Date: 2/6/2022 5:47:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_tmp_Activity_P6_engr_headcount]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[activity_code] [varchar](50) NULL,
	[activity_description] [varchar](600) NULL,
	[schedule_unit] [varchar](10) NULL,
	[schedule_resource] [varchar](100) NULL,
	[Original_Duration] [int] NULL,
	[remaining_duration] [int] NULL,
	[actual_start] [date] NULL,
	[actual_finish] [date] NULL,
	[percent_complete_type] [varchar](20) NULL,
	[executed_by_type] [varchar](20) NULL,
	[prime] [varchar](2) NULL,
	[sub_prime] [varchar](3) NULL,
	[schedule_work_area] [varchar](10) NULL,
	[executed_by] [varchar](20) NULL,
	[early_start_date] [datetime] NULL,
	[early_finish_date] [datetime] NULL,
	[is_on_critical_path] [varchar](20) NULL,
	[total_float] [int] NULL,
	[activity_status] [varchar](20) NULL,
	[planned_start] [datetime] NULL,
	[planned_finish] [datetime] NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[actual_duration] [int] NULL,
	[remaining_late_start] [date] NULL,
	[remaining_late_finish] [date] NULL,
	[calendar] [varchar](200) NULL,
	[budgeted_units] [varchar](30) NULL,
	[actual_units] [varchar](30) NULL,
	[remaining_units] [varchar](30) NULL,
	[wbs] [varchar](100) NULL,
	[wbs_name] [varchar](200) NULL,
	[cost_account] [varchar](100) NULL,
	[role_is] [varchar](100) NULL,
	[change_management] [varchar](50) NULL,
	[funct] [varchar](50) NULL,
	[milestones] [varchar](50) NULL,
	[office] [varchar](50) NULL,
	[dim_entp_phase_nk] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[schedule_risk_assessment] [varchar](50) NULL,
	[supply_chain] [varchar](50) NULL,
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

