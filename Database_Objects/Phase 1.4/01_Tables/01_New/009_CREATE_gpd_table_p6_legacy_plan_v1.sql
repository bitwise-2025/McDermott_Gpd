/****** Object:  Table [gpd].[dim_ent_geac_coa_P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[dim_ent_geac_coa_P6_legacy_plan]
(
	[stage_geac_coa_key] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [varchar](5000) NULL,
	[entity_id] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[ident1_code] [varchar](50) NULL,
	[ident2_code] [varchar](50) NULL,
	[ident3_code] [varchar](50) NULL,
	[coa_type] [varchar](50) NULL,
	[ident1_description] [varchar](250) NULL,
	[ident2_description] [varchar](250) NULL,
	[ident3_description] [varchar](250) NULL,
	[contract_id] [varchar](50) NULL,
	[entity_description] [varchar](240) NULL,
	[account_description] [varchar](240) NULL,
	[contract_description] [varchar](240) NULL,
	[ident1_status] [varchar](50) NULL,
	[ident1_start_date] [datetime] NULL,
	[ident1_end_date] [datetime] NULL,
	[ident2_status] [varchar](50) NULL,
	[ident2_start_date] [datetime] NULL,
	[ident2_end_date] [datetime] NULL,
	[sub_source_name] [varchar](250) NULL,
	[source_name] [varchar](250) NULL,
	[classification_id] [varchar](50) NULL,
	[coa_status] [varchar](20) NULL,
	[PSRLevel1] [varchar](5) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](100) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[measurable] [varchar](5) NULL,
	[Domain] [varchar](30) NULL,
	[dim_ent_prime_nk] [int] NULL,
	[dim_ent_sub_prime_nk] [int] NULL,
	[dim_ent_summary_cost_type_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_P6_Transaction_type_conversion]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_P6_Transaction_type_conversion]
(
	[Description] [nvarchar](1000) NULL,
	[parent_description] [nvarchar](1000) NULL,
	[Schedule] [nvarchar](1000) NULL,
	[TransactionType] [nvarchar](1000) NULL,
	[DataLake_Sub_Class_Name] [nvarchar](1000) NULL,
	[View_Display_PlanSubType] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[P6_legacy_plan]
(
	[stage_p6_legacy_plan_id] [int] IDENTITY(1,1) NOT NULL,
	[Reference_Number] [varchar](100) NULL,
	[Line_Number] [int] NULL,
	[Category] [varchar](100) NULL,
	[Parent_Transaction_Type] [varchar](100) NULL,
	[Transaction_Type] [varchar](100) NULL,
	[Metrics] [varchar](100) NULL,
	[Office_Location] [varchar](100) NULL,
	[Username] [varchar](100) NULL,
	[Contract] [varchar](100) NULL,
	[Entity] [varchar](100) NULL,
	[Job_Number] [varchar](100) NULL,
	[Sub_Function] [varchar](100) NULL,
	[Activity_Code] [varchar](100) NULL,
	[Unit] [varchar](100) NULL,
	[Quantity] [varchar](100) NULL,
	[Man_Hours] [varchar](100) NULL,
	[Percentage] [varchar](100) NULL,
	[Effective_Year] [int] NULL,
	[Effective_Month] [int] NULL,
	[Effective_Date] [varchar](100) NULL,
	[Revision] [int] NULL,
	[data_class] [nvarchar](100) NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[data_sub_class] [nvarchar](100) NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[source] [nvarchar](100) NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[sub_source] [nvarchar](100) NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[geac_coa_value] [nvarchar](100) NULL,
	[dim_entp_unit_of_measure_sk] [int] NULL,
	[dim_entp_unit_of_measure_nk] [int] NULL,
	[dim_entp_activity_sk] [int] NULL,
	[dim_entp_activity_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[fx] [nvarchar](100) NULL,
	[dim_entp_function_sk] [int] NULL,
	[dim_entp_function_nk] [int] NULL,
	[cwp] [nvarchar](100) NULL,
	[dim_entp_cwp_sk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[iwp] [nvarchar](100) NULL,
	[dim_entp_iwp_sk] [int] NULL,
	[dim_entp_iwp_nk] [int] NULL,
	[pim] [nvarchar](100) NULL,
	[dim_entp_pim_sk] [int] NULL,
	[dim_entp_pim_nk] [int] NULL,
	[roc] [nvarchar](100) NULL,
	[dim_entp_roc_sk] [int] NULL,
	[dim_entp_roc_nk] [int] NULL,
	[Phase] [varchar](50) NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[work_unit] [nvarchar](100) NULL,
	[dim_entp_work_unit_sk] [int] NULL,
	[dim_entp_work_unit_nk] [int] NULL,
	[work_area] [nvarchar](100) NULL,
	[dim_entp_work_area_sk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[schedule_resource] [nvarchar](100) NULL,
	[dim_entp_schedule_resource_sk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[discipline] [varchar](500) NULL,
	[dim_entp_discipline_sk] [int] NULL,
	[dim_entp_discipline_nk] [int] NULL,
	[dim_entp_office_sk] [bigint] NULL,
	[dim_entp_office_nk] [bigint] NULL,
	[dim_entp_geac_coa_sk] [int] NULL,
	[dim_entp_geac_coa_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_geac_coa_P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_geac_coa_P6_legacy_plan]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[coa_value] [varchar](5000) NULL,
	[entity_id] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[ident1_code] [varchar](50) NULL,
	[ident2_code] [varchar](50) NULL,
	[ident3_code] [varchar](50) NULL,
	[coa_type] [varchar](50) NULL,
	[ident1_description] [varchar](250) NULL,
	[ident2_description] [varchar](250) NULL,
	[ident3_description] [varchar](250) NULL,
	[contract_id] [varchar](50) NULL,
	[entity_description] [varchar](240) NULL,
	[account_description] [varchar](240) NULL,
	[contract_description] [varchar](240) NULL,
	[ident1_status] [varchar](50) NULL,
	[ident1_start_date] [datetime] NULL,
	[ident1_end_date] [datetime] NULL,
	[ident2_status] [varchar](50) NULL,
	[ident2_start_date] [datetime] NULL,
	[ident2_end_date] [datetime] NULL,
	[sub_source_name] [varchar](250) NULL,
	[source_name] [varchar](250) NULL,
	[classification_id] [varchar](50) NULL,
	[coa_status] [varchar](20) NULL,
	[PSRLevel1] [varchar](5) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](100) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[measurable] [varchar](5) NULL,
	[Domain] [varchar](30) NULL,
	[dim_ent_prime_nk] [int] NULL,
	[dim_ent_sub_prime_nk] [int] NULL,
	[dim_ent_summary_cost_type_nk] [int] NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_P6_legacy_plan]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[Reference_Number] [varchar](100) NULL,
	[Line_Number] [int] NULL,
	[Category] [varchar](100) NULL,
	[Parent_Transaction_Type] [varchar](100) NULL,
	[Transaction_Type] [varchar](100) NULL,
	[Metrics] [varchar](100) NULL,
	[Office_Location] [varchar](100) NULL,
	[Username] [varchar](100) NULL,
	[Contract] [varchar](100) NULL,
	[Entity] [varchar](100) NULL,
	[Job_Number] [varchar](100) NULL,
	[Sub_Function] [varchar](100) NULL,
	[Activity_Code] [varchar](100) NULL,
	[Unit] [varchar](100) NULL,
	[Quantity] [varchar](100) NULL,
	[Man_Hours] [varchar](100) NULL,
	[Percentage] [varchar](100) NULL,
	[Effective_Year] [int] NULL,
	[Effective_Month] [int] NULL,
	[Effective_Date] [varchar](100) NULL,
	[Revision] [int] NULL,
	[data_class] [nvarchar](100) NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[data_sub_class] [nvarchar](100) NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[source] [nvarchar](100) NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[sub_source] [nvarchar](100) NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[geac_coa_value] [nvarchar](100) NULL,
	[dim_entp_unit_of_measure_sk] [int] NULL,
	[dim_entp_unit_of_measure_nk] [int] NULL,
	[dim_entp_activity_sk] [int] NULL,
	[dim_entp_activity_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[fx] [nvarchar](100) NULL,
	[dim_entp_function_sk] [int] NULL,
	[dim_entp_function_nk] [int] NULL,
	[cwp] [nvarchar](100) NULL,
	[dim_entp_cwp_sk] [int] NULL,
	[dim_entp_cwp_nk] [int] NULL,
	[iwp] [nvarchar](100) NULL,
	[dim_entp_iwp_sk] [int] NULL,
	[dim_entp_iwp_nk] [int] NULL,
	[pim] [nvarchar](100) NULL,
	[dim_entp_pim_sk] [int] NULL,
	[dim_entp_pim_nk] [int] NULL,
	[roc] [nvarchar](100) NULL,
	[dim_entp_roc_sk] [int] NULL,
	[dim_entp_roc_nk] [int] NULL,
	[Phase] [varchar](50) NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[work_unit] [nvarchar](100) NULL,
	[dim_entp_work_unit_sk] [int] NULL,
	[dim_entp_work_unit_nk] [int] NULL,
	[work_area] [nvarchar](100) NULL,
	[dim_entp_work_area_sk] [int] NULL,
	[dim_entp_work_area_nk] [int] NULL,
	[schedule_resource] [nvarchar](100) NULL,
	[dim_entp_schedule_resource_sk] [int] NULL,
	[dim_entp_schedule_resource_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[rk_failure_info] [varchar](4000) NULL,
	[hash_code] [varchar](4000) NULL,
	[discipline] [varchar](500) NULL,
	[dim_entp_discipline_sk] [int] NULL,
	[dim_entp_discipline_nk] [int] NULL,
	[dim_entp_office_sk] [bigint] NULL,
	[dim_entp_office_nk] [bigint] NULL,
	[dim_entp_geac_coa_sk] [int] NULL,
	[dim_entp_geac_coa_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_tmp_Activity_P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_tmp_Activity_P6_legacy_plan]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[activity_code] [varchar](50) NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL,
	[office] [varchar](50) NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[activity_description] [varchar](512) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[tmp_Activity_P6_legacy_plan]    Script Date: 4/6/2022 1:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[tmp_Activity_P6_legacy_plan]
(
	[stage_tmp_activity_P6_legacy_plan_id] [int] IDENTITY(1,1) NOT NULL,
	[activity_code] [varchar](50) NULL,
	[project_number] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL,
	[office] [varchar](50) NULL,
	[activity_description] [varchar](512) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
