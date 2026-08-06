CREATE TABLE [promt].[dim_ent_promt_risk_opportunity_category]
(
	[dim_ent_risk_opportunity_category_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_risk_opportunity_category_nk] [int] NOT NULL,
	[ro_category] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[ro_category_description] [varchar](500) NULL,
	[sub_category] [varchar](150) NULL,
 CONSTRAINT [risk_opportunity_categorypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_risk_opportunity_category_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_probability_range_percentage]
(
	[dim_ent_probability_range_percentage_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_probability_range_percentage_nk] [int] NOT NULL,
	[probability_range_percentage] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[probability_range_percentage_description] [varchar](500) NULL,
	[probability_range_percentage_display_order] varchar(10) NULL,
 CONSTRAINT [probability_range_percentagepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_probability_range_percentage_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_environment]
(
	[dim_ent_environment_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_environment_nk] [int] NOT NULL,
	[environment] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[environment_description] [varchar](500) NULL,
 CONSTRAINT [environmentpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_environment_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_health_safety_security]
(
	[dim_ent_health_safety_security_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_health_safety_security_nk] [int] NOT NULL,
	[health_safety_security] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[health_safety_security_description] [varchar](500) NULL,
 CONSTRAINT [health_safety_securitypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_health_safety_security_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_quality]
(
	[dim_ent_quality_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_quality_nk] [int] NOT NULL,
	[quality] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[quality_description] [varchar](500) NULL,
 CONSTRAINT [qualitypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_quality_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_reputation]
(
	[dim_ent_reputation_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_reputation_nk] [int] NOT NULL,
	[reputation] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[reputation_description] [varchar](500) NULL,
 CONSTRAINT [reputationpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_reputation_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_social_culture]
(
	[dim_ent_social_culture_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_social_culture_nk] [int] NOT NULL,
	[social_culture] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[social_culture_description] [varchar](500) NULL,
 CONSTRAINT [social_culturepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_social_culture_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_cost_impact_tcv_percentage]
(
	[dim_ent_cost_impact_tcv_percentage_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_cost_impact_tcv_percentage_nk] [int] NOT NULL,
	[cost_impact_tcv_percentage] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[cost_impact_tcv_percentage_description] [varchar](500) NULL,
 CONSTRAINT [cost_impact_tcv_percentagepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_cost_impact_tcv_percentage_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_schedule]
(
	[dim_ent_schedule_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_schedule_nk] [int] NOT NULL,
	[schedule] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[schedule_description] [varchar](500) NULL,
 CONSTRAINT [schedulepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_schedule_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_risk_status]
(
	[dim_ent_risk_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_risk_status_nk] [int] NOT NULL,
	[risk_status] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[risk_status_description] [varchar](500) NULL,
 CONSTRAINT [risk_statuspk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_risk_status_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_opportunity_status]
(
	[dim_ent_opportunity_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_opportunity_status_nk] [int] NOT NULL,
	[opportunity_status] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[opportunity_status_description] [varchar](500) NULL,
 CONSTRAINT [opportunity_statuspk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_opportunity_status_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_risk_closing_justification]
(
	[dim_ent_risk_closing_justification_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_risk_closing_justification_nk] [int] NOT NULL,
	[closing_justification] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[closing_justification_description] [varchar](500) NULL,
 CONSTRAINT [risk_closing_justificationpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_risk_closing_justification_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_opportunity_closing_justification]
(
	[dim_ent_opportunity_closing_justification_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_opportunity_closing_justification_nk] [int] NOT NULL,
	[opportunity_closing_justification] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[opportunity_closing_justification_description] [varchar](500) NULL,
 CONSTRAINT [opportunity_closing_justificationpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_opportunity_closing_justification_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_response_status]
(
	[dim_ent_response_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_response_status_nk] [int] NOT NULL,
	[response_status] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[respose_status_description] [varchar](500) NULL,
 CONSTRAINT [response_statuspk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_response_status_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_risk_modeling_tech]
(
	[dim_ent_risk_modeling_tech_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_risk_modeling_tech_nk] [int] NOT NULL,
	[risk_modeling_tech] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[risk_modeling_tech_description] [varchar](500) NULL,
 CONSTRAINT [risk_modeling_techpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_risk_modeling_tech_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_strategy_pre_contract]
(
	[dim_ent_strategy_pre_contract_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_strategy_pre_contract_nk] [int] NOT NULL,
	[strategy_pre_contract] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[strategy_pre_contract_description] [varchar](500) NULL,
 CONSTRAINT [strategy_pre_contractpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_strategy_pre_contract_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_strategy_execution]
(
	[dim_ent_strategy_execution_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_strategy_execution_nk] [int] NOT NULL,
	[strategy_pre_contract_description] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[strategy_execution] [varchar](150) NULL,
	[strategy_execution_description] [varchar](500) NULL,
 CONSTRAINT [strategy_pre_contract_descriptionpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_strategy_execution_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_action_status]
(
	[dim_ent_action_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_action_status_nk] [int] NOT NULL,
	[action_status] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[action_status_description] [varchar](500) NULL,
 CONSTRAINT [action_statuspk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_action_status_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_mit_probability_range_percentage]
(
	[dim_ent_mit_probability_range_percentage_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_probability_range_percentage_nk] [int] NOT NULL,
	[mit_probability_range_percentage] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_probability_range_percentage_description] [varchar](500) NULL,
	[mit_probability_range_percentage_display_order] varchar(10) NULL,
 CONSTRAINT [mit_probability_range_percentagepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_probability_range_percentage_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_mit_environment]
(
	[dim_ent_mit_environment_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_environment_nk] [int] NOT NULL,
	[mit_environment] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_environment_description] [varchar](500) NULL,
 CONSTRAINT [mit_environmentpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_environment_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_mit_health_safety_security]
(
	[dim_ent_mit_health_safety_security_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_health_safety_security_nk] [int] NOT NULL,
	[mit_health_safety_security] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_health_safety_security_description] [varchar](500) NULL,
 CONSTRAINT [mit_health_safety_securitypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_health_safety_security_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------



CREATE TABLE [promt].[dim_ent_promt_mit_quality]
(
	[dim_ent_mit_quality_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_quality_nk] [int] NOT NULL,
	[mit_quality] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_quality_description] [varchar](500) NULL,
 CONSTRAINT [mit_qualitypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_quality_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_mit_reputation]
(
	[dim_ent_mit_reputation_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_reputation_nk] [int] NOT NULL,
	[mit_reputation] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_reputation_description] [varchar](500) NULL,
 CONSTRAINT [mit_reputationpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_reputation_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_mit_social_culture]
(
	[dim_ent_mit_social_culture_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_social_culture_nk] [int] NOT NULL,
	[mit_social_culture] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_social_culture_description] [varchar](500) NULL,
 CONSTRAINT [mit_social_culturepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_social_culture_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage]
(
	[dim_ent_mit_cost_impact_tcv_percentage_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_cost_impact_tcv_percentage_nk] [int] NOT NULL,
	[mit_cost_impact_tcv_percentage] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_cost_impact_tcv_percentage_description] [varchar](500) NULL,
 CONSTRAINT [mit_cost_impact_tcv_percentagepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_cost_impact_tcv_percentage_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_mit_schedule]
(
	[dim_ent_mit_schedule_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_schedule_nk] [int] NOT NULL,
	[mit_schedule] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_schedule_description] [varchar](500) NULL,
 CONSTRAINT [mit_schedulepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_schedule_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_distribution_type]
(
	[dim_ent_distribution_type_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_distribution_type_nk] [int] NOT NULL,
	[distribution_type] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[distribution_type_description] [varchar](500) NULL,
 CONSTRAINT [distribution_typepk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_distribution_type_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_shared_externaly]
(
	[dim_ent_shared_externaly_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_shared_externaly_nk] [int] NOT NULL,
	[shared_externaly] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[shared_externaly_description] [varchar](500) NULL,
 CONSTRAINT [shared_externalypk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_shared_externaly_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_mit_fully_transferred]
(
	[dim_ent_mit_fully_transferred_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_fully_transferred_nk] [int] NOT NULL,
	[mit_fully_transferred] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_fully_transferred_description] [varchar](500) NULL,
 CONSTRAINT [mit_fully_transferredpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_fully_transferred_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [promt].[dim_ent_promt_mit_fully_avoided]
(
	[dim_ent_mit_fully_avoided_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_mit_fully_avoided_nk] [int] NOT NULL,
	[mit_fully_avoided] [varchar](150) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[mit_fully_avoided_description] [varchar](500) NULL,
 CONSTRAINT [mit_fully_avoidedpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_mit_fully_avoided_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_project]
(
	[dim_ent_promt_project_sk] 										[int] IDENTITY(1,1) NOT NULL,
	[dim_ent_promt_project_nk] 										[int] NOT NULL,
	[t_project_id]													[int] NULL,
	[project_no] 													[varchar](120) NOT NULL,
	[start_date] 													[datetime] NOT NULL,
	[end_date] 														[datetime] NOT NULL,
	[hash_code] 													[varchar](5000) NOT NULL,
	[active] 														[int] NULL,
	[created_date_time] 											[datetime] NULL,
	[modified_date_time] 											[datetime] NULL,
	[late_arrival_flag] 											[varchar](1) NOT NULL,
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
 CONSTRAINT [project_nopk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_promt_project_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

create table [promt].[dim_ent_promt_overall_impact] ( 
dim_ent_overall_impact_sk int identity(1, 1) not null, 
dim_ent_overall_impact_nk int  not null, 
overall_impact varchar(10) not null,
[start_date] [datetime] NOT NULL, 
[end_date] [datetime] NOT NULL, 
[hash_code] [varchar](5000) NOT NULL, 
[active] [int] NULL, 
[created_date_time] [datetime] NULL, 
[modified_date_time] [datetime] NULL, 
[late_arrival_flag] [varchar](1) NOT NULL, 
overall_impact_description varchar(500) NULL,
overall_impact_display_sort_order varchar(10) NULL,
CONSTRAINT [overall_impact_codepk] 
PRIMARY KEY NONCLUSTERED ( dim_ent_overall_impact_sk ASC ) NOT ENFORCED ) WITH ( DISTRIBUTION = ROUND_ROBIN, CLUSTERED COLUMNSTORE INDEX )
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


create table [promt].[dim_ent_promt_mit_overall_impact] ( 
dim_ent_mit_overall_impact_sk int identity(1, 1) not null, 
dim_ent_mit_overall_impact_nk int  not null, 
mit_overall_impact varchar(10) not null,
[start_date] [datetime] NOT NULL, 
[end_date] [datetime] NOT NULL, 
[hash_code] [varchar](5000) NOT NULL, 
[active] [int] NULL, 
[created_date_time] [datetime] NULL, 
[modified_date_time] [datetime] NULL, 
[late_arrival_flag] [varchar](1) NOT NULL, 
mit_overall_impact_description varchar(500) NULL,
mit_overall_impact_display_sort_order varchar(10) NULL,
CONSTRAINT [mit_overall_impact_codepk] 
PRIMARY KEY NONCLUSTERED ( dim_ent_mit_overall_impact_sk ASC ) NOT ENFORCED ) WITH ( DISTRIBUTION = ROUND_ROBIN, CLUSTERED COLUMNSTORE INDEX )
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [promt].[dim_ent_promt_project_snapshot]
(
	[dim_ent_promt_project_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_promt_project_nk] [int] NOT NULL,
	[t_project_id] [int] NULL,
	[ss_id] [int] NULL,
	[project_no] [varchar](120) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
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
 CONSTRAINT [projects_nopk1] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_promt_project_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



