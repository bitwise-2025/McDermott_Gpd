/****** Object:  Table [gpd].[reprocess_P6_Labor_Units]    Script Date: 6/7/2021 2:17:41 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[reprocess_P6_Labor_Units]') AND type in (N'U'))
DROP TABLE [gpd].[reprocess_P6_Labor_Units]
GO

/****** Object:  Table [gpd].[reprocess_P6_Labor_Units]    Script Date: 6/7/2021 2:17:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_P6_Labor_Units]
(
	[stage_ncsa_p6_labor_units_id] [int] IDENTITY(1,1) NOT NULL,
	[Activity_ID] [varchar](55) NOT NULL,
	[Activity_Name] [varchar](512) NULL,
	[Resource_ID_Name] [varchar](512) NOT NULL,
	[Global_Executed_By_Type] [varchar](55) NULL,
	[Start] [varchar](55) NULL,
	[Finish] [varchar](55) NULL,
	[Spreadsheet_Field] [varchar](512) NULL,
	[Period] [varchar](55) NULL,
	[Units] [float] NULL,
	[fx] [nvarchar](100) NULL,
	[project] [nvarchar](100) NULL,
	[phase] [nvarchar](100) NULL,
	[work_unit] [nvarchar](100) NULL,
	[work_area] [nvarchar](100) NULL,
	[cwp] [nvarchar](100) NULL,
	[schedule_resource] [nvarchar](100) NULL,
	[activity] [nvarchar](100) NULL,
	[iwp] [nvarchar](100) NULL,
	[pim] [nvarchar](100) NULL,
	[roc] [nvarchar](100) NULL,
	[data_sub_class] [nvarchar](100) NULL,
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
	[dim_entp_activity_sk] [int] NULL,
	[dim_entp_activity_nk] [int] NULL,
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
	[LU_Date] [date] NULL,
	[Planned_Start] [varchar](55) NULL,
	[Planned_End] [varchar](55) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[load_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


