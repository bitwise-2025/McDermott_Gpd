/****** Object:  Table [dbo].[dim_entp_contract_entity]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_contract_entity]
(
	[dim_entp_contract_entity_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_contract_entity_nk] [bigint] NOT NULL,
	[location] [varchar](200) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[contract_no] [varchar](200) NULL,
	[entity] [nvarchar](200) NULL,
	[dim_entp_project_nk] [int] NULL,
	[project_number] [varchar](255) NULL,
	[dim_ent_office_nk] [bigint] NULL,
 CONSTRAINT [dim_entp_contract_entity_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_contract_entity_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[dim_ent_geac_coa_MCPM_Legacy_Off]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[dim_ent_geac_coa_MCPM_Legacy_Off]
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
	[classification_id] [varchar](50) NULL,
	[coa_status] [varchar](20) NULL,
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
	[PSRLevel1] [varchar](5) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](100) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[measurable] [varchar](5) NULL,
	[Domain] [varchar](30) NULL,
	[SummaryCostType] [varchar](10) NULL,
	[Prime] [varchar](10) NULL,
	[SubPrime] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_MCPM_Contract_Entity]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_MCPM_Contract_Entity]
(
	[stage_mcpm_contracts_id] [bigint] IDENTITY(1,1) NOT NULL,
	[location] [nvarchar](200) NULL,
	[contract_no] [nvarchar](200) NULL,
	[project_id] [varchar](255) NULL,
	[dim_entp_project_nk] [int] NULL,
	[entity] [nvarchar](200) NULL,
	[dim_ent_office_nk] [bigint] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_MCPM_Legacy]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_MCPM_Legacy]
(
	[stage_ncsa_mcpm_offshore_id] [int] IDENTITY(1,1) NOT NULL,
	[Domain] [nvarchar](1000) NULL,
	[DomainName] [nvarchar](1000) NULL,
	[CutOff] [nvarchar](1000) NULL,
	[Currency] [nvarchar](1000) NULL,
	[CoA] [nvarchar](1000) NULL,
	[Title] [nvarchar](1000) NULL,
	[ProgressType] [nvarchar](1000) NULL,
	[ContractNo] [nvarchar](1000) NULL,
	[SummaryCostType] [nvarchar](1000) NULL,
	[Discipline] [nvarchar](1000) NULL,
	[CostType] [nvarchar](1000) NULL,
	[Unit] [nvarchar](1000) NULL,
	[WorkArea] [nvarchar](1000) NULL,
	[Prime] [nvarchar](1000) NULL,
	[SubPrime] [nvarchar](1000) NULL,
	[CostCode] [nvarchar](1000) NULL,
	[Measurable] [nvarchar](1000) NULL,
	[Phase] [nvarchar](1000) NULL,
	[PSRLevel1] [nvarchar](1000) NULL,
	[PSRLevel2] [nvarchar](1000) NULL,
	[PSRL1Description] [nvarchar](1000) NULL,
	[PSRL2Description] [nvarchar](1000) NULL,
	[UoM] [nvarchar](1000) NULL,
	[OBQty] [nvarchar](1000) NULL,
	[OBHrs] [nvarchar](1000) NULL,
	[OBAmt] [nvarchar](1000) NULL,
	[OBRate] [nvarchar](1000) NULL,
	[CBQty] [nvarchar](1000) NULL,
	[CBHrs] [nvarchar](1000) NULL,
	[CBAmt] [nvarchar](1000) NULL,
	[PBQty] [nvarchar](1000) NULL,
	[PBHrs] [nvarchar](1000) NULL,
	[PBAmt] [nvarchar](1000) NULL,
	[ActualHrs] [nvarchar](1000) NULL,
	[ActualAmt] [nvarchar](1000) NULL,
	[ActualRate] [nvarchar](1000) NULL,
	[CommittedHrs] [nvarchar](1000) NULL,
	[CommittedAmt] [nvarchar](1000) NULL,
	[EarnedQty] [nvarchar](1000) NULL,
	[EarnedHrs] [nvarchar](1000) NULL,
	[EarnedAmt] [nvarchar](1000) NULL,
	[TakeOffQty] [nvarchar](1000) NULL,
	[TakeOffHrs] [nvarchar](1000) NULL,
	[PctComplete] [nvarchar](1000) NULL,
	[EACHrs] [nvarchar](1000) NULL,
	[EACAmt] [nvarchar](1000) NULL,
	[ETCHrs] [nvarchar](1000) NULL,
	[ETCAmt] [nvarchar](1000) NULL,
	[ETCRate] [nvarchar](1000) NULL,
	[ForecastHrs] [nvarchar](1000) NULL,
	[ForecastAmt] [nvarchar](1000) NULL,
	[ForecastRate] [nvarchar](1000) NULL,
	[ForecastQty] [nvarchar](1000) NULL,
	[CWP_CODE] [varchar](50) NULL,
	[SCHEDULE_RESOURCE_CODE] [varchar](100) NULL,
	[ACTIVITY_CODE] [varchar](50) NULL,
	[IWP_CODE] [varchar](50) NULL,
	[PIM_CODE] [varchar](50) NULL,
	[ROC_CODE] [varchar](50) NULL,
	[FUNCTION_CODE] [varchar](50) NULL,
	[data_class_quantity_code] [varchar](50) NULL,
	[data_class_hours_code] [varchar](50) NULL,
	[data_class_amount_code] [varchar](50) NULL,
	[data_class_rate_code] [varchar](50) NULL,
	[data_class_precentage_code] [varchar](50) NULL,
	[sub_class_original_budget_quantity_code] [varchar](100) NULL,
	[sub_class_original_budget_hours_code] [varchar](100) NULL,
	[sub_class_original_budget_amount_code] [varchar](100) NULL,
	[sub_class_original_budget_rate_code] [varchar](100) NULL,
	[sub_class_current_budget_quantity_code] [varchar](100) NULL,
	[sub_class_current_budget_hours_code] [varchar](100) NULL,
	[sub_class_current_budget_amount_code] [varchar](100) NULL,
	[sub_class_progress_budget_quantity_code] [varchar](100) NULL,
	[sub_class_progress_budget_hours_code] [varchar](100) NULL,
	[sub_class_progress_budget_amount_code] [varchar](100) NULL,
	[sub_class_estimated_completion_hours_code] [varchar](100) NULL,
	[sub_class_estimated_completion_amount_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_hours_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_amount_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_rate_code] [varchar](100) NULL,
	[sub_class_committed_amount_code] [varchar](100) NULL,
	[sub_class_committed_hours_code] [varchar](100) NULL,
	[sub_class_actual_hours_code] [varchar](100) NULL,
	[sub_class_actual_amount_code] [varchar](100) NULL,
	[sub_class_actual_rate_code] [varchar](100) NULL,
	[sub_class_earned_quantity_code] [varchar](100) NULL,
	[sub_class_earned_hours_code] [varchar](100) NULL,
	[sub_class_earned_amount_code] [varchar](100) NULL,
	[sub_class_take_off_quantity_code] [varchar](100) NULL,
	[sub_class_take_off_hours_code] [varchar](100) NULL,
	[sub_class_forecast_hours_code] [varchar](100) NULL,
	[sub_class_forecast_amount_code] [varchar](100) NULL,
	[sub_class_forecast_rate_code] [varchar](100) NULL,
	[sub_class_forecast_quantity_code] [varchar](100) NULL,
	[sub_class_percentage_complete_code] [varchar](100) NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[unit_of_measure_code_quantity] [varchar](50) NULL,
	[unit_of_measure_code_hours] [varchar](50) NULL,
	[unit_of_measure_code_amount] [varchar](50) NULL,
	[unit_of_measure_code_precentage] [varchar](50) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[dim_ent_geac_coa_sk] [int] NULL,
	[dim_ent_geac_coa_nk] [int] NULL,
	[dim_ent_work_unit_sk] [int] NULL,
	[dim_ent_work_unit_nk] [int] NULL,
	[dim_ent_work_area_sk] [int] NULL,
	[dim_ent_work_area_nk] [int] NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
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
	[dim_ent_data_class_quantity_sk] [int] NULL,
	[dim_ent_data_class_quantity_nk] [int] NULL,
	[dim_ent_data_class_hours_sk] [int] NULL,
	[dim_ent_data_class_hours_nk] [int] NULL,
	[dim_ent_data_class_amount_sk] [int] NULL,
	[dim_ent_data_class_amount_nk] [int] NULL,
	[dim_ent_data_class_rate_sk] [int] NULL,
	[dim_ent_data_class_rate_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_committed_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_committed_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_committed_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_committed_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_take_off_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_take_off_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_take_off_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_take_off_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_percentage_complete_sk] [int] NULL,
	[dim_ent_data_sub_class_percentage_complete_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_unit_of_measure_quantity_sk] [int] NULL,
	[dim_ent_unit_of_measure_quantity_nk] [int] NULL,
	[dim_ent_unit_of_measure_hours_sk] [int] NULL,
	[dim_ent_unit_of_measure_hours_nk] [int] NULL,
	[dim_ent_unit_of_measure_amount_sk] [int] NULL,
	[dim_ent_unit_of_measure_amount_nk] [int] NULL,
	[dim_ent_unit_of_measure_percentage_sk] [int] NULL,
	[dim_ent_unit_of_measure_percentage_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[GEAC_COA] [varchar](100) NULL,
	[dim_ent_office_sk] [int] NULL,
	[dim_ent_office_nk] [int] NULL,
	[computed_discipline_code] [nvarchar](1000) NULL,
	[office_entity] [nvarchar](1000) NULL,
	[computed_office_location] [nvarchar](1000) NULL,
	[Job_Number_Description] [varchar](1000) NULL,
	[Work_Area_Description] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_geac_coa_MCPM_Legacy_Off]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_geac_coa_MCPM_Legacy_Off]
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
	[classification_id] [varchar](50) NULL,
	[coa_status] [varchar](20) NULL,
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
	[PSRLevel1] [varchar](5) NULL,
	[PSRLevel2] [varchar](5) NULL,
	[PSRL1Description] [varchar](100) NULL,
	[PSRL2Description] [varchar](100) NULL,
	[measurable] [varchar](5) NULL,
	[hash_code] [varchar](8000) NULL,
	[created_date_time] [datetime] NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[Domain] [varchar](30) NULL,
	[SummaryCostType] [varchar](10) NULL,
	[Prime] [varchar](10) NULL,
	[SubPrime] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_NCSA_MCPM_Legacy]    Script Date: 3/31/2022 12:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_NCSA_MCPM_Legacy]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[Domain] [nvarchar](1000) NULL,
	[DomainName] [nvarchar](1000) NULL,
	[CutOff] [nvarchar](1000) NULL,
	[Currency] [nvarchar](1000) NULL,
	[CoA] [nvarchar](1000) NULL,
	[Title] [nvarchar](1000) NULL,
	[ProgressType] [nvarchar](1000) NULL,
	[ContractNo] [nvarchar](1000) NULL,
	[SummaryCostType] [nvarchar](1000) NULL,
	[Discipline] [nvarchar](1000) NULL,
	[CostType] [nvarchar](1000) NULL,
	[Unit] [nvarchar](1000) NULL,
	[WorkArea] [nvarchar](1000) NULL,
	[Prime] [nvarchar](1000) NULL,
	[SubPrime] [nvarchar](1000) NULL,
	[CostCode] [nvarchar](1000) NULL,
	[Measurable] [nvarchar](1000) NULL,
	[Phase] [nvarchar](1000) NULL,
	[PSRLevel1] [nvarchar](1000) NULL,
	[PSRLevel2] [nvarchar](1000) NULL,
	[PSRL1Description] [nvarchar](1000) NULL,
	[PSRL2Description] [nvarchar](1000) NULL,
	[UoM] [nvarchar](1000) NULL,
	[OBQty] [nvarchar](1000) NULL,
	[OBHrs] [nvarchar](1000) NULL,
	[OBAmt] [nvarchar](1000) NULL,
	[OBRate] [nvarchar](1000) NULL,
	[CBQty] [nvarchar](1000) NULL,
	[CBHrs] [nvarchar](1000) NULL,
	[CBAmt] [nvarchar](1000) NULL,
	[PBQty] [nvarchar](1000) NULL,
	[PBHrs] [nvarchar](1000) NULL,
	[PBAmt] [nvarchar](1000) NULL,
	[ActualHrs] [nvarchar](1000) NULL,
	[ActualAmt] [nvarchar](1000) NULL,
	[ActualRate] [nvarchar](1000) NULL,
	[CommittedHrs] [nvarchar](1000) NULL,
	[CommittedAmt] [nvarchar](1000) NULL,
	[EarnedQty] [nvarchar](1000) NULL,
	[EarnedHrs] [nvarchar](1000) NULL,
	[EarnedAmt] [nvarchar](1000) NULL,
	[TakeOffQty] [nvarchar](1000) NULL,
	[TakeOffHrs] [nvarchar](1000) NULL,
	[PctComplete] [nvarchar](1000) NULL,
	[EACHrs] [nvarchar](1000) NULL,
	[EACAmt] [nvarchar](1000) NULL,
	[ETCHrs] [nvarchar](1000) NULL,
	[ETCAmt] [nvarchar](1000) NULL,
	[ETCRate] [nvarchar](1000) NULL,
	[ForecastHrs] [nvarchar](1000) NULL,
	[ForecastAmt] [nvarchar](1000) NULL,
	[ForecastRate] [nvarchar](1000) NULL,
	[ForecastQty] [nvarchar](1000) NULL,
	[CWP_CODE] [varchar](50) NULL,
	[SCHEDULE_RESOURCE_CODE] [varchar](100) NULL,
	[ACTIVITY_CODE] [varchar](50) NULL,
	[IWP_CODE] [varchar](50) NULL,
	[PIM_CODE] [varchar](50) NULL,
	[ROC_CODE] [varchar](50) NULL,
	[FUNCTION_CODE] [varchar](50) NULL,
	[data_class_quantity_code] [varchar](50) NULL,
	[data_class_hours_code] [varchar](50) NULL,
	[data_class_amount_code] [varchar](50) NULL,
	[data_class_rate_code] [varchar](50) NULL,
	[data_class_precentage_code] [varchar](50) NULL,
	[sub_class_original_budget_quantity_code] [varchar](100) NULL,
	[sub_class_original_budget_hours_code] [varchar](100) NULL,
	[sub_class_original_budget_amount_code] [varchar](100) NULL,
	[sub_class_original_budget_rate_code] [varchar](100) NULL,
	[sub_class_current_budget_quantity_code] [varchar](100) NULL,
	[sub_class_current_budget_hours_code] [varchar](100) NULL,
	[sub_class_current_budget_amount_code] [varchar](100) NULL,
	[sub_class_progress_budget_quantity_code] [varchar](100) NULL,
	[sub_class_progress_budget_hours_code] [varchar](100) NULL,
	[sub_class_progress_budget_amount_code] [varchar](100) NULL,
	[sub_class_estimated_completion_hours_code] [varchar](100) NULL,
	[sub_class_estimated_completion_amount_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_hours_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_amount_code] [varchar](100) NULL,
	[sub_class_estimated_take_of_completion_rate_code] [varchar](100) NULL,
	[sub_class_committed_amount_code] [varchar](100) NULL,
	[sub_class_committed_hours_code] [varchar](100) NULL,
	[sub_class_actual_hours_code] [varchar](100) NULL,
	[sub_class_actual_amount_code] [varchar](100) NULL,
	[sub_class_actual_rate_code] [varchar](100) NULL,
	[sub_class_earned_quantity_code] [varchar](100) NULL,
	[sub_class_earned_hours_code] [varchar](100) NULL,
	[sub_class_earned_amount_code] [varchar](100) NULL,
	[sub_class_take_off_quantity_code] [varchar](100) NULL,
	[sub_class_take_off_hours_code] [varchar](100) NULL,
	[sub_class_forecast_hours_code] [varchar](100) NULL,
	[sub_class_forecast_amount_code] [varchar](100) NULL,
	[sub_class_forecast_rate_code] [varchar](100) NULL,
	[sub_class_forecast_quantity_code] [varchar](100) NULL,
	[sub_class_percentage_complete_code] [varchar](100) NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[unit_of_measure_code_quantity] [varchar](50) NULL,
	[unit_of_measure_code_hours] [varchar](50) NULL,
	[unit_of_measure_code_amount] [varchar](50) NULL,
	[unit_of_measure_code_precentage] [varchar](50) NULL,
	[dim_ent_project_sk] [int] NULL,
	[dim_ent_project_nk] [int] NULL,
	[dim_ent_geac_coa_sk] [int] NULL,
	[dim_ent_geac_coa_nk] [int] NULL,
	[dim_ent_work_unit_sk] [int] NULL,
	[dim_ent_work_unit_nk] [int] NULL,
	[dim_ent_work_area_sk] [int] NULL,
	[dim_ent_work_area_nk] [int] NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_ent_function_sk] [int] NULL,
	[dim_ent_function_nk] [int] NULL,
	[dim_ent_discipline_sk] [int] NULL,
	[dim_ent_discipline_nk] [int] NULL,
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
	[dim_ent_data_class_quantity_sk] [int] NULL,
	[dim_ent_data_class_quantity_nk] [int] NULL,
	[dim_ent_data_class_hours_sk] [int] NULL,
	[dim_ent_data_class_hours_nk] [int] NULL,
	[dim_ent_data_class_amount_sk] [int] NULL,
	[dim_ent_data_class_amount_nk] [int] NULL,
	[dim_ent_data_class_rate_sk] [int] NULL,
	[dim_ent_data_class_rate_nk] [int] NULL,
	[dim_ent_data_class_percentage_sk] [int] NULL,
	[dim_ent_data_class_percentage_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_original_budget_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_current_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_progress_budget_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_at_completion_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_committed_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_committed_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_committed_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_committed_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_actual_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_actual_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_earned_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_earned_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_take_off_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_take_off_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_take_off_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_take_off_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_hours_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_hours_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_amount_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_amount_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_rate_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_rate_nk] [int] NULL,
	[dim_ent_data_sub_class_forecast_quantity_sk] [int] NULL,
	[dim_ent_data_sub_class_forecast_quantity_nk] [int] NULL,
	[dim_ent_data_sub_class_percentage_complete_sk] [int] NULL,
	[dim_ent_data_sub_class_percentage_complete_nk] [int] NULL,
	[dim_ent_source_sk] [int] NULL,
	[dim_ent_source_nk] [int] NULL,
	[dim_ent_sub_source_sk] [int] NULL,
	[dim_ent_sub_source_nk] [int] NULL,
	[dim_ent_unit_of_measure_quantity_sk] [int] NULL,
	[dim_ent_unit_of_measure_quantity_nk] [int] NULL,
	[dim_ent_unit_of_measure_hours_sk] [int] NULL,
	[dim_ent_unit_of_measure_hours_nk] [int] NULL,
	[dim_ent_unit_of_measure_amount_sk] [int] NULL,
	[dim_ent_unit_of_measure_amount_nk] [int] NULL,
	[dim_ent_unit_of_measure_percentage_sk] [int] NULL,
	[dim_ent_unit_of_measure_percentage_nk] [int] NULL,
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL,
	[GEAC_COA] [varchar](100) NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[dim_ent_office_sk] [int] NULL,
	[dim_ent_office_nk] [int] NULL,
	[computed_discipline_code] [nvarchar](1000) NULL,
	[office_entity] [nvarchar](1000) NULL,
	[computed_office_location] [nvarchar](1000) NULL,
	[Job_Number_Description] [varchar](1000) NULL,
	[Work_Area_Description] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 3/31/2022 12:58:53 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_contract_entity]
(
	[dim_entp_contract_entity_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 3/31/2022 12:58:53 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_contract_entity]
(
	[dim_entp_contract_entity_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 3/31/2022 12:58:53 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_contract_entity]
(
	[contract_no] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 3/31/2022 12:58:53 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_contract_entity]
(
	[contract_no] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_mcpm_contract_entity]    Script Date: 3/31/2022 11:31:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_dim_entp_mcpm_contract_entity]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[location] [nvarchar](200) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[contract_no] [nvarchar](200) NULL,
	[project_id] [varchar](255) NULL,
	[entity] [nvarchar](200) NULL,
	[rk_failure_info] [varchar](5000) NULL
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Table [gpd].[NCSA_WorkArea_MCPM_Legacy_offshore]    Script Date: 4/22/2022 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_WorkArea_MCPM_Legacy_offshore]
(
	[stage_ncsa_workarea_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[phase_code] [varchar](20) NULL,
	[work_unit_code] [varchar](20) NULL,
	[project_id] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_work_area_MCPM_Legacy_offshore]    Script Date: 4/22/2022 1:02:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_work_area_MCPM_Legacy_offshore]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[CreateByID] [int] NULL,
	[ModifiedByID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[phase_code] [varchar](20) NULL,
	[work_unit_code] [varchar](20) NULL,
	[project_id] [varchar](120) NULL,
	[dim_entp_project_nk] [int] NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



