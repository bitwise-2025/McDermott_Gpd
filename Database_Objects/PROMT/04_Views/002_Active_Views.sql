CREATE VIEW [promt].[dim_ent_promt_risk_opportunity_category_active_v]
AS SELECT 
[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[ro_category] as [Ro Category]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[ro_category_description] as [Ro Category Description]
,[sub_category] as [Sub Category]
FROM [promt].[dim_ent_promt_risk_opportunity_category]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_probability_range_percentage_active_v]
AS SELECT 
[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[probability_range_percentage] as [Probability Range Percentage]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[probability_range_percentage_description] as [Probability Range Percentage Description]
,[probability_range_percentage_display_order] as [Probability Range Percentage Display Order]
 FROM [promt].[dim_ent_promt_probability_range_percentage]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_environment_active_v]
AS SELECT 
[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[environment] as [Environment]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[environment_description] as [Environment Description]
FROM [promt].[dim_ent_promt_environment]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_health_safety_security_active_v]
AS SELECT 
[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[health_safety_security] as [Health Safety Security]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[health_safety_security_description] as [Health Safety Security Description]
 FROM [promt].[dim_ent_promt_health_safety_security]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_quality_active_v]
AS SELECT 
[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[quality] as [Quality]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[quality_description] as [Quality Description]
 FROM [promt].[dim_ent_promt_quality]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_reputation_active_v]
AS SELECT 
[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[reputation] as [Reputation]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[reputation_description] as [Reputation Description]
FROM [promt].[dim_ent_promt_reputation]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_social_culture_active_v]
AS SELECT 
[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[social_culture] as [Social Culture]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[social_culture_description] as [Social Culture Description]
FROM [promt].[dim_ent_promt_social_culture]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
AS SELECT 
[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[cost_impact_tcv_percentage] as [Cost Impact Tcv Percentage]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[cost_impact_tcv_percentage_description] as [Cost Impact Tcv Percentage Description]
FROM [promt].[dim_ent_promt_cost_impact_tcv_percentage]
where active = 1
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_schedule_active_v]
AS SELECT 
[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[schedule] as [Schedule]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[schedule_description] as [Schedule Description]
FROM [promt].[dim_ent_promt_schedule]
where active = 1
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_risk_status_active_v]
AS SELECT 
[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[risk_status] as [Risk Status]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[risk_status_description] as [Risk Status Description]
FROM [promt].[dim_ent_promt_risk_status]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_opportunity_status_active_v]
AS SELECT 
[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_status] as [Opportunity Status]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[opportunity_status_description] as [Opportunity Status Description]
FROM [promt].[dim_ent_promt_opportunity_status]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_risk_closing_justification_active_v]
AS SELECT 
[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[closing_justification] as [Closing Justification]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[closing_justification_description] as [Closing Justification Description]
FROM [promt].[dim_ent_promt_risk_closing_justification]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_opportunity_closing_justification_active_v]
AS SELECT 
[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[opportunity_closing_justification] as [Opportunity Closing Justification]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[opportunity_closing_justification_description] as [Opportunity Closing Justification Description]
FROM [promt].[dim_ent_promt_opportunity_closing_justification]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_response_status_active_v]
AS SELECT 
[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[response_status] as [Respose Status]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[respose_status_description] as [Respose Status Description]
FROM [promt].[dim_ent_promt_response_status]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_risk_modeling_tech_active_v]
AS SELECT 
[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[risk_modeling_tech] as [Risk Modeling Tech]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[risk_modeling_tech_description] as [Risk Modeling Tech Description]
FROM [promt].[dim_ent_promt_risk_modeling_tech]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_strategy_pre_contract_active_v]
AS SELECT 
[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_pre_contract] as [Strategy Pre Contract]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[strategy_pre_contract_description] as [Strategy Pre Contract Description]
FROM [promt].[dim_ent_promt_strategy_pre_contract]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_strategy_execution_active_v]
AS SELECT 
[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[strategy_pre_contract_description] as [Strategy Pre Contract Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[strategy_execution] as [Strategy Execution]
,[strategy_execution_description] as [Strategy Execution Description]
FROM [promt].[dim_ent_promt_strategy_execution]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_action_status_active_v]
AS SELECT 
[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_status] as [Action Status]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[action_status_description] as [Action Status Description]
FROM [promt].[dim_ent_promt_action_status]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
AS SELECT 
[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_probability_range_percentage] as [Mit Probability Range Percentage]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_probability_range_percentage_description] as [Mit Probability Range Percentage Description]
,[mit_probability_range_percentage_display_order] as [Mit Probability Range Percentage Display Order]
FROM [promt].[dim_ent_promt_mit_probability_range_percentage]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_environment_active_v]
AS SELECT 
[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_environment] as [Mit Environment]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_environment_description] as [Mit Environment Description]
FROM [promt].[dim_ent_promt_mit_environment]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_health_safety_security_active_v]
AS SELECT 
[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_health_safety_security] as [Mit Health Safety Security]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_health_safety_security_description] as [Mit Health Safety Security Description]
FROM [promt].[dim_ent_promt_mit_health_safety_security]
where active = 1;
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_quality_active_v]
AS SELECT 
[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_quality] as [Mit Quality]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_quality_description] as [Mit Quality Description]
FROM [promt].[dim_ent_promt_mit_quality]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_reputation_active_v]
AS SELECT 
[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_reputation] as [Mit Reputation]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_reputation_description] as [Mit Reputation Description]
FROM [promt].[dim_ent_promt_mit_reputation]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_social_culture_active_v]
AS SELECT 
[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_social_culture] as [Mit Social Culture]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_social_culture_description] as [Mit Social Culture Description]
FROM [promt].[dim_ent_promt_mit_social_culture]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
AS SELECT 
[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_cost_impact_tcv_percentage] as [Mit Cost Impact Tcv Percentage]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_cost_impact_tcv_percentage_description] as [Mit Cost Impact Tcv Percentage Description]
FROM [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_schedule_active_v]
AS SELECT 
[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_schedule] as [Mit Schedule]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_schedule_description] as [Mit Schedule Description]
FROM [promt].[dim_ent_promt_mit_schedule]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_distribution_type_active_v]
AS SELECT 
[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[distribution_type] as [Distribution Type]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[distribution_type_description] as [Distribution Type Description]
FROM [promt].[dim_ent_promt_distribution_type]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_shared_externaly_active_v]
AS SELECT 
[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[shared_externaly] as [Shared Externaly]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[shared_externaly_description] as [Shared Externaly Description]
FROM [promt].[dim_ent_promt_shared_externaly]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_fully_transferred_active_v]
AS SELECT 
[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_transferred] as [Mit Fully Transferred]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_fully_transferred_description] as [Mit Fully Transferred Description]
FROM [promt].[dim_ent_promt_mit_fully_transferred]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_mit_fully_avoided_active_v]
AS SELECT 
[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[mit_fully_avoided] as [Mit Fully Avoided]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_fully_avoided_description] as [Mit Fully Avoided Description]
FROM [promt].[dim_ent_promt_mit_fully_avoided]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_project_active_v]
AS SELECT 
[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[t_project_id] as [Project ID]
,[project_no] as [Project Number]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[project_pc_code] as [Project Pc Code]
,[project_pc_code_description] as [Project Pc Code Description]
,[project_bid_project_id] as [Project Bid Project Id]
,[project_project_title] as [Project Project Title]
,[project_client_name] as [Project Client Name]
,[project_business_line] as [Project Business Line]
,[project_business_line_description] as [Project Business Line Description]
,[project_country] as [Project Country]
,[project_manager] as [Project Manager]
,[project_prom_lead] as [Project Prom Lead]
,[project_category] as [Project Category]
,[project_category_description] as [Project Category Description]
,[project_total_contract_value] as [Project Total Contract Value]
,[project_estimated_cost] as [Project Estimated Cost]
,[project_currency_code] as [Project Currency Code]
,[project_currency_code_description] as [Project Currency Code Description]	
,[project_contract_type] as [Project Contract Type]
,[project_contract_type_description] as [Project Contract Type Description]
,[project_total_duration] as [Project Total Duration]
,[project_document_revision_no] as [Project Document Revision No]
,[project_document_revision_date] as [Project Document Revision Date]
,[project_revisied_by] as [Project Revisied By]
,[project_approved_by] as [Project Approved By]
,[project_award_date] as [Project Award Date]
,[project_active_flag] as [Project Active Flag]
,[project_project_type] as [Project Project Type]
,[project_project_type_description] as [Project Project Type Description]
,[project_duration_type] as [Project Duration Type]
,[project_version_no] as [Project Version No]
,[project_status] as [Project Status]
,[project_status_description] as [Project Status Description]
,[closed_dtm] as [Closed Dtm]
,[archived] as [Archived]
,[rearchival_date] as [Rearchival Date]
,[event_p80] as [Event P80]


FROM [promt].[dim_ent_promt_project]
where active = 1;
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_contingency_active_v]
AS SELECT 

[dim_ent_promt_contingency_sk]
,[dim_ent_promt_contingency_nk]
,[ca_id] as [Ca Id]
,[t_project_id] as [T Project Id]
,[project_no] as [Project Number]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[project_month] as [Project Month] 	
,[month_date] as [Month Date] 			
,[drawdown_baseline] as [Drawdown Baseline] 	
,[drawdown_actuals] as [Drawdown Actuals] 		
,[drawdown_forecast] as [Drawdown Forecast] 	
,[active_flag] as [Active Flag] 			
,[value_type] as [Value Type] 			
,[created_dtm] as [Created Dtm] 			
,[created_by] as [Created By] 			
,[project_pc_code] as [Project Pc Code]
,[project_pc_code_description] as [Project Pc Code Description]
,[project_bid_project_id] as [Project Bid Project Id]
,[project_project_title] as [Project Project Title]
,[project_client_name] as [Project Client Name]
,[project_business_line] as [Project Business Line]
,[project_business_line_description] as [Project Business Line Description]
,[project_country] as [Project Country]
,[project_manager] as [Project Manager]
,[project_prom_lead] as [Project Prom Lead]
,[project_category] as [Project Category]
,[project_category_description] as [Project Category Description]
,[project_total_contract_value] as [Project Total Contract Value]
,[project_estimated_cost] as [Project Estimated Cost]
,[project_currency_code] as [Project Currency Code]
,[project_currency_code_description] as [Project Currency Code Description]	
,[project_contract_type] as [Project Contract Type]
,[project_contract_type_description] as [Project Contract Type Description]
,[project_total_duration] as [Project Total Duration]
,[project_document_revision_no] as [Project Document Revision No]
,[project_document_revision_date] as [Project Document Revision Date]
,[project_revisied_by] as [Project Revisied By]
,[project_approved_by] as [Project Approved By]
,[project_award_date] as [Project Award Date]
,[project_active_flag] as [Project Active Flag]
,[project_project_type] as [Project Project Type]
,[project_project_type_description] as [Project Project Type Description]
,[project_duration_type] as [Project Duration Type]
,[project_version_no] as [Project Version No]
,[project_status] as [Project Status]
,[project_status_description] as [Project Status Description]
,[dl_touched_dtm] as [Dl Touched Dtm]
FROM [promt].[dim_ent_promt_contingency]
where active = 1
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_overall_impact_active_v]
AS SELECT 
[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[overall_impact] as [Overall Impact]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[overall_impact_description] as [Overall Impact Description]
,[overall_impact_display_sort_order] as [Overall Impact Display Sort Order]
FROM [promt].[dim_ent_promt_overall_impact]
where active = 1
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE VIEW [promt].[dim_ent_promt_mit_overall_impact_active_v]
AS SELECT 
[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_overall_impact] as [Mit Overall Impact]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[mit_overall_impact_description] as [Mit Overall Impact Description]
,[mit_overall_impact_display_sort_order] as [Mit Overall Impact Display Sort Order]
FROM [promt].[dim_ent_promt_mit_overall_impact]
where active = 1
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW [promt].[dim_ent_promt_project_snapshot_active_v]
AS SELECT 
[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[t_project_id] as [Project ID]
,[ss_id] as [SS ID]
,[project_no] as [Project Number]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[project_pc_code] as [Project Pc Code]
,[project_pc_code_description] as [Project Pc Code Description]
,[project_bid_project_id] as [Project Bid Project Id]
,[project_project_title] as [Project Project Title]
,[project_client_name] as [Project Client Name]
,[project_business_line] as [Project Business Line]
,[project_business_line_description] as [Project Business Line Description]
,[project_country] as [Project Country]
,[project_manager] as [Project Manager]
,[project_prom_lead] as [Project Prom Lead]
,[project_category] as [Project Category]
,[project_category_description] as [Project Category Description]
,[project_total_contract_value] as [Project Total Contract Value]
,[project_estimated_cost] as [Project Estimated Cost]
,[project_currency_code] as [Project Currency Code]
,[project_currency_code_description] as [Project Currency Code Description]	
,[project_contract_type] as [Project Contract Type]
,[project_contract_type_description] as [Project Contract Type Description]
,[project_total_duration] as [Project Total Duration]
,[project_document_revision_no] as [Project Document Revision No]
,[project_document_revision_date] as [Project Document Revision Date]
,[project_revisied_by] as [Project Revisied By]
,[project_approved_by] as [Project Approved By]
,[project_award_date] as [Project Award Date]
,[project_active_flag] as [Project Active Flag]
,[project_project_type] as [Project Project Type]
,[project_project_type_description] as [Project Project Type Description]
,[project_duration_type] as [Project Duration Type]
,[project_version_no] as [Project Version No]
,[project_status] as [Project Status]
,[project_status_description] as [Project Status Description]
,[closed_dtm] as [Closed Dtm]
,[archived] as [Archived]
,[rearchival_date] as [Rearchival Date]
,[event_p80] as [Event P80]


FROM [promt].[dim_ent_promt_project_snapshot]
where active = 1;
GO

