create table [promt].[reprocess_dim_ent_promt_risk_opportunity_category] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[ro_category] varchar(150) NOT NULL,
	[ro_category_description] varchar(500) NULL, 
	[sub_category] varchar(150) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------



create table [promt].[reprocess_dim_ent_promt_probability_range_percentage] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[probability_range_percentage] varchar(150) NOT NULL,
	[probability_range_percentage_description] varchar(500) NULL,
	[probability_range_percentage_display_order] varchar(10) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_environment]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[environment] varchar(150) NOT NULL,
	[environment_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_health_safety_security] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[health_safety_security] varchar(150) NOT NULL,
	[health_safety_security_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_quality]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[quality] varchar(150) NOT NULL,
	[quality_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_reputation]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[reputation] varchar(150) NOT NULL,
	[reputation_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_social_culture]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[social_culture] varchar(150) NOT NULL,
	[social_culture_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_cost_impact_tcv_percentage]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[cost_impact_tcv_percentage] varchar(150) NOT NULL,
	[cost_impact_tcv_percentage_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_schedule]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[schedule] varchar(150) NOT NULL,
	[schedule_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_risk_status]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[risk_status] varchar(150) NOT NULL,
	[risk_status_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_opportunity_status]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[opportunity_status] varchar(150) NOT NULL,
	[opportunity_status_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_risk_closing_justification]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[closing_justification] varchar(150) NOT NULL,
	[closing_justification_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_opportunity_closing_justification] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[opportunity_closing_justification] varchar(150) NOT NULL,
	[opportunity_closing_justification_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_response_status] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[response_status] varchar(150) NOT NULL,
	[respose_status_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_risk_modeling_tech]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[risk_modeling_tech] varchar(150) NOT NULL,
	[risk_modeling_tech_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_strategy_pre_contract]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[strategy_pre_contract] varchar(150) NOT NULL,
	[strategy_pre_contract_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_strategy_execution]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[strategy_pre_contract_description] varchar(500) NOT NULL,
	[strategy_execution] varchar(150) NULL, 
	[strategy_execution_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_action_status]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[action_status] varchar(150) NOT NULL,
	[action_status_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_probability_range_percentage] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_probability_range_percentage] varchar(150) NOT NULL,
	[mit_probability_range_percentage_description] varchar(500) NULL,
	[mit_probability_range_percentage_display_order] varchar(10) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_mit_environment] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_environment] varchar(150) NOT NULL,
	[mit_environment_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_mit_health_safety_security] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_health_safety_security] varchar(150) NOT NULL,
	[mit_health_safety_security_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_quality] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_quality] varchar(150) NOT NULL,
	[mit_quality_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_reputation] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_reputation] varchar(150) NOT NULL,
	[mit_reputation_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_mit_social_culture]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_social_culture] varchar(150) NOT NULL,
	[mit_social_culture_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_cost_impact_tcv_percentage] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_cost_impact_tcv_percentage] varchar(150) NOT NULL,
	[mit_cost_impact_tcv_percentage_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_schedule]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_schedule] varchar(150) NOT NULL,
	[mit_schedule_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_distribution_type] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[distribution_type] varchar(150) NOT NULL,
	[distribution_type_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_shared_externaly] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[shared_externaly] varchar(150) NOT NULL,
	[shared_externaly_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[reprocess_dim_ent_promt_mit_fully_transferred]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_fully_transferred] varchar(150) NOT NULL,
	[mit_fully_transferred_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_fully_avoided]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_fully_avoided] varchar(150) NOT NULL,
	[mit_fully_avoided_description] varchar(500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_project] 
(
	[rssk] 															[int] IDENTITY(1,1) NOT NULL,
	[created_date_time] 											[datetime] NULL,
	[hash_code] 													[varchar](4000) NULL,
	[t_project_id]													[int] NULL,
	[project_no]													[varchar](120) NULL,
	[project_pc_code]												[varchar](120) NULL,
	[project_pc_code_description]									[varchar](500) NULL,
	[project_bid_project_id]										[int] NULL,         
	[project_project_title]											[varchar](500) NULL,
	[project_client_name]											[varchar](500) NULL,
	[project_business_line]											[varchar](120) NULL,
	[project_business_line_description]								[varchar](500) NULL,
	[project_country]												[varchar](500) NULL,
	[project_manager]												[varchar](500) NULL,
	[project_prom_lead]												[varchar](500) NULL,
	[project_category]												[varchar](120) NULL,
	[project_category_description]									[varchar](500) NULL,
	[project_total_contract_value]									[decimal](15, 2) NULL,
	[project_estimated_cost]										[decimal](15, 2) NULL,
	[project_currency_code]											[varchar](120) NULL,
	[project_currency_code_description]								[varchar](500) NULL,
	[project_contract_type]											[varchar](120) NULL,
	[project_contract_type_description]								[varchar](500) NULL,
	[project_total_duration]										[decimal](15, 2) NULL,
	[project_document_revision_no]									[varchar](120) NULL,
	[project_document_revision_date]								[datetime] NULL,
	[project_revisied_by]											[varchar](120) NULL,
	[project_approved_by]											[varchar](120) NULL,
	[project_award_date]											[datetime] NULL,
	[project_active_flag]											[varchar](1) NULL,
	[project_project_type]											[varchar](120) NULL,
	[project_project_type_description]								[varchar](500) NULL,
	[project_duration_type]											[varchar](120) NULL,
	[project_version_no]											[int] NULL,
	[project_status]												[varchar](20) NULL,
	[project_status_description]									[varchar](500) NULL,
	[rk_failure_info] 												[varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_overall_impact]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[overall_impact] varchar(10) NOT NULL,
	[overall_impact_description] varchar(500) NULL,
	[overall_impact_display_sort_order] varchar(10) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[reprocess_dim_ent_promt_mit_overall_impact]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[mit_overall_impact] varchar(10) NOT NULL,
	[mit_overall_impact_description] varchar(500) NULL,
	[mit_overall_impact_display_sort_order] varchar(10) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[reprocess_dim_ent_promt_project_snapshot]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[t_project_id] [int] NULL,
	[ss_id] [int] NULL,
	[project_no] [varchar](120) NULL,
	[project_pc_code] [varchar](120) NULL,
	[project_pc_code_description] [varchar](500) NULL,
	[project_bid_project_id] [int] NULL,
	[project_project_title] [varchar](500) NULL,
	[project_client_name] [varchar](500) NULL,
	[project_business_line] [varchar](120) NULL,
	[project_business_line_description] [varchar](500) NULL,
	[project_country] [varchar](500) NULL,
	[project_manager] [varchar](500) NULL,
	[project_prom_lead] [varchar](500) NULL,
	[project_category] [varchar](120) NULL,
	[project_category_description] [varchar](500) NULL,
	[project_total_contract_value] [decimal](15, 2) NULL,
	[project_estimated_cost] [decimal](15, 2) NULL,
	[project_currency_code] [varchar](120) NULL,
	[project_currency_code_description] [varchar](500) NULL,
	[project_contract_type] [varchar](120) NULL,
	[project_contract_type_description] [varchar](500) NULL,
	[project_total_duration] [decimal](15, 2) NULL,
	[project_document_revision_no] [varchar](120) NULL,
	[project_document_revision_date] [datetime] NULL,
	[project_revisied_by] [varchar](120) NULL,
	[project_approved_by] [varchar](120) NULL,
	[project_award_date] [datetime] NULL,
	[project_active_flag] [varchar](1) NULL,
	[project_project_type] [varchar](120) NULL,
	[project_project_type_description] [varchar](500) NULL,
	[project_duration_type] [varchar](120) NULL,
	[project_version_no] [int] NULL,
	[project_status] [varchar](20) NULL,
	[project_status_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



