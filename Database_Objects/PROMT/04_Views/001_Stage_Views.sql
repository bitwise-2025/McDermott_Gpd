CREATE VIEW [promt].[stage_promt_risk_opportunity_v] AS select 
stage_promt_datalake_export_risk_id as stage_promt_risk_opportunity_id
,ISNULL(ro_category,'') as ro_category
,ISNULL(ro_category_description,'') as ro_category_description
,ISNULL(sub_category,'') as sub_category
,ISNULL(probability_range_percentage,'') as probability_range_percentage
,ISNULL(probability_range_percentage_description,'') as probability_range_percentage_description
,ISNULL(probability_range_percentage_display_order,'') as probability_range_percentage_display_order
,ISNULL(environment,'') as environment
,ISNULL(environment_description,'') as environment_description
,ISNULL(health_safety_security,'') as health_safety_security
,ISNULL(health_safety_security_description,'') as health_safety_security_description
,ISNULL(quality,'') as quality
,ISNULL(quality_description,'') as quality_description
,ISNULL(reputation,'') as reputation
,ISNULL(reputation_description,'') as reputation_description
,ISNULL(social_culture,'') as social_culture
,ISNULL(social_culture_description,'') as social_culture_description
,ISNULL(cost_impact_tcv_percentage,'') as cost_impact_tcv_percentage
,ISNULL(cost_impact_tcv_percentage_description,'') as cost_impact_tcv_percentage_description
,ISNULL(schedule,'') as schedule
,ISNULL(schedule_description,'') as schedule_description
,ISNULL(overall_impact,'') as overall_impact
,ISNULL(overall_impact_description,'') as overall_impact_description
,ISNULL(overall_impact_display_sort_order,'') as overall_impact_display_sort_order
,ISNULL(distribution_type,'') as distribution_type
,ISNULL(distribution_type_description,'') as distribution_type_description
,ISNULL(risk_modeling_tech,'') as risk_modeling_tech
,ISNULL(risk_modeling_tech_description,'') as risk_modeling_tech_description
,ISNULL(t_project_id,'') as t_project_id
,ISNULL(project_no,'') as project_no
,ISNULL(project_pc_code,'') as project_pc_code
,ISNULL(project_pc_code_description,'') as project_pc_code_description
,ISNULL(project_bid_project_id,'') as project_bid_project_id
,ISNULL(project_project_title,'') as project_project_title
,ISNULL(project_client_name,'') as project_client_name		
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_datalake_export_risk]

union all

select 
stage_promt_datalake_export_opportunity_id as stage_promt_risk_opportunity_id
,ISNULL(ro_category,'') as ro_category
,ISNULL(ro_category_description,'') as ro_category_description
,ISNULL(sub_category,'') as sub_category
,ISNULL(probability_range_percentage,'') as probability_range_percentage
,ISNULL(probability_range_percentage_description,'') as probability_range_percentage_description
,ISNULL(probability_range_percentage_display_order,'') as probability_range_percentage_display_order
,ISNULL(environment,'') as environment
,ISNULL(environment_description,'') as environment_description
,ISNULL(health_safety_security,'') as health_safety_security
,ISNULL(health_safety_security_description,'') as health_safety_security_description
,ISNULL(quality,'') as quality
,ISNULL(quality_description,'') as quality_description
,ISNULL(reputation,'') as reputation
,ISNULL(reputation_description,'') as reputation_description
,ISNULL(social_culture,'') as social_culture
,ISNULL(social_culture_description,'') as social_culture_description
,ISNULL(cost_impact_tcv_percentage,'') as cost_impact_tcv_percentage
,ISNULL(cost_impact_tcv_percentage_description,'') as cost_impact_tcv_percentage_description
,ISNULL(schedule,'') as schedule
,ISNULL(schedule_description,'') as schedule_description
,ISNULL(overall_impact,'') as overall_impact
,ISNULL(overall_impact_description,'') as overall_impact_description
,ISNULL(overall_impact_display_sort_order,'') as overall_impact_display_sort_order
,ISNULL(distribution_type,'') as distribution_type
,ISNULL(distribution_type_description,'') as distribution_type_description
,ISNULL(risk_modeling_tech,'') as risk_modeling_tech
,ISNULL(risk_modeling_tech_description,'') as risk_modeling_tech_description
,ISNULL(t_project_id,'') as t_project_id
,ISNULL(project_no,'') as project_no
,ISNULL(project_pc_code,'') as project_pc_code
,ISNULL(project_pc_code_description,'') as project_pc_code_description
,ISNULL(project_bid_project_id,'') as project_bid_project_id
,ISNULL(project_project_title,'') as project_project_title
,ISNULL(project_client_name,'') as project_client_name		
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_datalake_export_opportunity];
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_risk_opportunity_category_v] as
select ROW_NUMBER() OVER (ORDER BY ro_category) as stage_promt_risk_opportunity_id,ro_category,ro_category_description,sub_category from (
select distinct ro_category,ro_category_description,sub_category  
from [promt].[stage_promt_risk_opportunity_v] )a
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_probability_range_percentage_v] as
select ROW_NUMBER() OVER (ORDER BY probability_range_percentage) as probability_range_percentage_id,probability_range_percentage,probability_range_percentage_description,probability_range_percentage_display_order from (
select distinct probability_range_percentage,probability_range_percentage_description,probability_range_percentage_display_order 
from [promt].[stage_promt_risk_opportunity_v] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_environment_v] as
select ROW_NUMBER() OVER (ORDER BY environment) as environment_id,environment,environment_description from (
select distinct environment,environment_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_health_safety_security_v] as
select ROW_NUMBER() OVER (ORDER BY health_safety_security) as health_safety_security_id,health_safety_security,health_safety_security_description from (
select distinct health_safety_security,health_safety_security_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_quality_v] as
select ROW_NUMBER() OVER (ORDER BY quality) as promt_quality_id,quality,quality_description from (
select distinct quality,quality_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_reputation_v] as
select ROW_NUMBER() OVER (ORDER BY reputation) as promt_reputation_id,reputation,reputation_description from (
select distinct reputation,reputation_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_social_culture_v] as
select ROW_NUMBER() OVER (ORDER BY social_culture) as social_culture_id,social_culture,social_culture_description from (
select distinct social_culture,social_culture_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_cost_impact_tcv_percentage_v] as
select ROW_NUMBER() OVER (ORDER BY cost_impact_tcv_percentage) as cost_impact_tcv_percentage_id,cost_impact_tcv_percentage,cost_impact_tcv_percentage_description from (
select distinct cost_impact_tcv_percentage,cost_impact_tcv_percentage_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_schedule_v] as
select ROW_NUMBER() OVER (ORDER BY schedule) as schedule_id,schedule,schedule_description from (
select distinct schedule,schedule_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_risk_status_v] as
select ROW_NUMBER() OVER (ORDER BY risk_status) as risk_status_id,risk_status,risk_status_description from (
select distinct ISNULL(risk_status,'') risk_status,ISNULL(risk_status_description,'') risk_status_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_opportunity_status_v] as
select ROW_NUMBER() OVER (ORDER BY opportunity_status) as opportunity_status_id,opportunity_status,opportunity_status_description from (
select distinct ISNULL(opportunity_status,'') opportunity_status,ISNULL(opportunity_status_description,'') opportunity_status_description 
from [promt].[stage_promt_datalake_export_opportunity] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_risk_closing_justification_v] as
select ROW_NUMBER() OVER (ORDER BY closing_justification) as closing_justification_id,closing_justification,closing_justification_description from (
select distinct ISNULL(closing_justification,'') closing_justification,ISNULL(closing_justification_description,'') closing_justification_description
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_opportunity_closing_justification_v] as
select ROW_NUMBER() OVER (ORDER BY opportunity_closing_justification) as opportunity_closing_justification_id,opportunity_closing_justification,opportunity_closing_justification_description from (
select distinct ISNULL(opportunity_closing_justification,'') opportunity_closing_justification,ISNULL(opportunity_closing_justification_description,'') opportunity_closing_justification_description 
from [promt].[stage_promt_datalake_export_opportunity] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_response_status_v] as
select ROW_NUMBER() OVER (ORDER BY response_status) as response_status_id,response_status,respose_status_description from (
select distinct ISNULL(response_status,'') response_status,ISNULL(respose_status_description,'') respose_status_description 
from [promt].[stage_promt_datalake_export_opportunity] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_risk_modeling_tech_v] as
select ROW_NUMBER() OVER (ORDER BY risk_modeling_tech) as risk_modeling_tech_id,risk_modeling_tech,risk_modeling_tech_description from (
select distinct risk_modeling_tech,risk_modeling_tech_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_strategy_pre_contract_v] as
select ROW_NUMBER() OVER (ORDER BY strategy_pre_contract) as strategy_pre_contract_id,strategy_pre_contract,strategy_pre_contract_description from (
select distinct ISNULL(strategy_pre_contract,'') strategy_pre_contract,ISNULL(strategy_pre_contract_description,'') strategy_pre_contract_description from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_strategy_execution_v] as
select ROW_NUMBER() OVER (ORDER BY strategy_execution) as strategy_execution_id,strategy_pre_contract_description,strategy_execution,strategy_execution_description from (
select distinct ISNULL(strategy_pre_contract_description,'') strategy_pre_contract_description,ISNULL(strategy_execution,'') strategy_execution,ISNULL(strategy_execution_description,'') strategy_execution_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_action_status_v] as
select ROW_NUMBER() OVER (ORDER BY action_status) as action_status_id,action_status,action_status_description from (
select distinct ISNULL(action_status,'') action_status,ISNULL(action_status_description,'') action_status_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_mit_probability_range_percentage_v] as
select ROW_NUMBER() OVER (ORDER BY mit_probability_range_percentage) as mit_probability_range_percentage_id,mit_probability_range_percentage,mit_probability_range_percentage_description,mit_probability_range_percentage_display_order from (
select distinct ISNULL(mit_probability_range_percentage,'') mit_probability_range_percentage,ISNULL(mit_probability_range_percentage_description,'') mit_probability_range_percentage_description, ISNULL(mit_probability_range_percentage_display_order,'') mit_probability_range_percentage_display_order 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_mit_environment_v] as
select ROW_NUMBER() OVER (ORDER BY mit_environment) as mit_environment_id,mit_environment,mit_environment_description from (
select distinct ISNULL(mit_environment,'') mit_environment,ISNULL(mit_environment_description,'') mit_environment_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_health_safety_security_v] as
select ROW_NUMBER() OVER (ORDER BY mit_health_safety_security) as mit_health_safety_security_id,mit_health_safety_security,mit_health_safety_security_description from (
select distinct ISNULL(mit_health_safety_security,'') mit_health_safety_security,ISNULL(mit_health_safety_security_description,'') mit_health_safety_security_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_quality_v] as
select ROW_NUMBER() OVER (ORDER BY mit_quality) as mit_quality_id,mit_quality,mit_quality_description from (
select distinct ISNULL(mit_quality,'') mit_quality,ISNULL(mit_quality_description,'') mit_quality_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_reputation_v] as
select ROW_NUMBER() OVER (ORDER BY mit_reputation) as mit_reputation_id,mit_reputation,mit_reputation_description from (
select distinct ISNULL(mit_reputation,'') mit_reputation,ISNULL(mit_reputation_description,'') mit_reputation_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_social_culture_v] as
select ROW_NUMBER() OVER (ORDER BY mit_social_culture) as mit_social_culture_id,mit_social_culture,mit_social_culture_description from (
select distinct ISNULL(mit_social_culture,'') mit_social_culture,ISNULL(mit_social_culture_description,'') mit_social_culture_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_cost_impact_tcv_percentage_v] as
select ROW_NUMBER() OVER (ORDER BY mit_cost_impact_tcv_percentage) as mit_cost_impact_tcv_percentage_id,mit_cost_impact_tcv_percentage,mit_cost_impact_tcv_percentage_description from (
select distinct ISNULL(mit_cost_impact_tcv_percentage,'') mit_cost_impact_tcv_percentage,ISNULL(mit_cost_impact_tcv_percentage_description,'') mit_cost_impact_tcv_percentage_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_mit_schedule_v] as
select ROW_NUMBER() OVER (ORDER BY mit_schedule) as mit_schedule_id,mit_schedule,mit_schedule_description from (
select distinct ISNULL(mit_schedule,'') mit_schedule,ISNULL(mit_schedule_description,'') mit_schedule_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


Create View [promt].[stage_promt_distribution_type_v] as
select ROW_NUMBER() OVER (ORDER BY distribution_type) as distribution_type_id,distribution_type,distribution_type_description from (
select distinct ISNULL(distribution_type,'') distribution_type,ISNULL(distribution_type_description,'') distribution_type_description 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------



Create View [promt].[stage_promt_shared_externaly_v] as
select ROW_NUMBER() OVER (ORDER BY shared_externaly) as shared_externaly_id,shared_externaly,shared_externaly_description from (
select distinct ISNULL(shared_externaly,'') shared_externaly,ISNULL(shared_externaly_description,'') shared_externaly_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------



Create View [promt].[stage_promt_mit_fully_transferred_v] as
select ROW_NUMBER() OVER (ORDER BY mit_fully_transferred) as mit_fully_transferred_id,mit_fully_transferred,mit_fully_transferred_description from (
select distinct ISNULL(mit_fully_transferred,'') mit_fully_transferred,ISNULL(mit_fully_transferred_description,'') mit_fully_transferred_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------



Create View [promt].[stage_promt_mit_fully_avoided_v] as
select ROW_NUMBER() OVER (ORDER BY mit_fully_avoided) as mit_fully_avoided_id,mit_fully_avoided,mit_fully_avoided_description from (
select distinct ISNULL(mit_fully_avoided,'') mit_fully_avoided,ISNULL(mit_fully_avoided_description,'') mit_fully_avoided_description 
from [promt].[stage_promt_datalake_export_risk] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_project_v] as
select ROW_NUMBER() OVER (ORDER BY project_no) as promt_project_id
,[t_project_id]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from (
select distinct 
[t_project_id]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_overall_impact_v] as
select ROW_NUMBER() OVER (ORDER BY overall_impact) as overall_impact_id,overall_impact,overall_impact_description,overall_impact_display_sort_order from (
select distinct overall_impact,overall_impact_description,overall_impact_display_sort_order 
from [promt].[stage_promt_risk_opportunity_v] )a
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

Create View [promt].[stage_promt_mit_overall_impact_v] as
select ROW_NUMBER() OVER (ORDER BY mit_overall_impact) as mit_overall_impact_id,mit_overall_impact,mit_overall_impact_description,mit_overall_impact_display_sort_order from (
select distinct ISNULL(mit_overall_impact,'') mit_overall_impact,ISNULL(mit_overall_impact_description,'') mit_overall_impact_description,ISNULL(mit_overall_impact_display_sort_order,'') mit_overall_impact_display_sort_order 
from [promt].[stage_promt_datalake_export_risk] )a
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE VIEW [promt].[stage_promt_risk_opportunity_snapshot_v]
AS select 
stage_promt_datalake_export_risk_snapshot_id as stage_promt_risk_opportunity_id
,ISNULL(ro_category,'') as ro_category
,ISNULL(ro_category_description,'') as ro_category_description
,ISNULL(sub_category,'') as sub_category
,ISNULL(probability_range_percentage,'') as probability_range_percentage
,ISNULL(probability_range_percentage_description,'') as probability_range_percentage_description
,ISNULL(probability_range_percentage_display_order,'') as probability_range_percentage_display_order
,ISNULL(environment,'') as environment
,ISNULL(environment_description,'') as environment_description
,ISNULL(health_safety_security,'') as health_safety_security
,ISNULL(health_safety_security_description,'') as health_safety_security_description
,ISNULL(quality,'') as quality
,ISNULL(quality_description,'') as quality_description
,ISNULL(reputation,'') as reputation
,ISNULL(reputation_description,'') as reputation_description
,ISNULL(social_culture,'') as social_culture
,ISNULL(social_culture_description,'') as social_culture_description
,ISNULL(cost_impact_tcv_percentage,'') as cost_impact_tcv_percentage
,ISNULL(cost_impact_tcv_percentage_description,'') as cost_impact_tcv_percentage_description
,ISNULL(schedule,'') as schedule
,ISNULL(schedule_description,'') as schedule_description
,ISNULL(overall_impact,'') as overall_impact
,ISNULL(overall_impact_description,'') as overall_impact_description
,ISNULL(overall_impact_display_sort_order,'') as overall_impact_display_sort_order
,ISNULL(distribution_type,'') as distribution_type
,ISNULL(distribution_type_description,'') as distribution_type_description
,ISNULL(risk_modeling_tech,'') as risk_modeling_tech
,ISNULL(risk_modeling_tech_description,'') as risk_modeling_tech_description
,ISNULL(t_project_id,'') as t_project_id
,ISNULL(ss_id,'') as ss_id
,ISNULL(project_no,'') as project_no
,ISNULL(project_pc_code,'') as project_pc_code
,ISNULL(project_pc_code_description,'') as project_pc_code_description
,ISNULL(project_bid_project_id,'') as project_bid_project_id
,ISNULL(project_project_title,'') as project_project_title
,ISNULL(project_client_name,'') as project_client_name		
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_datalake_export_risk_snapshot]

union all

select 
stage_promt_datalake_export_opportunity_snapshot_id as stage_promt_risk_opportunity_id
,ISNULL(ro_category,'') as ro_category
,ISNULL(ro_category_description,'') as ro_category_description
,ISNULL(sub_category,'') as sub_category
,ISNULL(probability_range_percentage,'') as probability_range_percentage
,ISNULL(probability_range_percentage_description,'') as probability_range_percentage_description
,ISNULL(probability_range_percentage_display_order,'') as probability_range_percentage_display_order
,ISNULL(environment,'') as environment
,ISNULL(environment_description,'') as environment_description
,ISNULL(health_safety_security,'') as health_safety_security
,ISNULL(health_safety_security_description,'') as health_safety_security_description
,ISNULL(quality,'') as quality
,ISNULL(quality_description,'') as quality_description
,ISNULL(reputation,'') as reputation
,ISNULL(reputation_description,'') as reputation_description
,ISNULL(social_culture,'') as social_culture
,ISNULL(social_culture_description,'') as social_culture_description
,ISNULL(cost_impact_tcv_percentage,'') as cost_impact_tcv_percentage
,ISNULL(cost_impact_tcv_percentage_description,'') as cost_impact_tcv_percentage_description
,ISNULL(schedule,'') as schedule
,ISNULL(schedule_description,'') as schedule_description
,ISNULL(overall_impact,'') as overall_impact
,ISNULL(overall_impact_description,'') as overall_impact_description
,ISNULL(overall_impact_display_sort_order,'') as overall_impact_display_sort_order
,ISNULL(distribution_type,'') as distribution_type
,ISNULL(distribution_type_description,'') as distribution_type_description
,ISNULL(risk_modeling_tech,'') as risk_modeling_tech
,ISNULL(risk_modeling_tech_description,'') as risk_modeling_tech_description
,ISNULL(t_project_id,'') as t_project_id
,ISNULL(ss_id,'') as ss_id
,ISNULL(project_no,'') as project_no
,ISNULL(project_pc_code,'') as project_pc_code
,ISNULL(project_pc_code_description,'') as project_pc_code_description
,ISNULL(project_bid_project_id,'') as project_bid_project_id
,ISNULL(project_project_title,'') as project_project_title
,ISNULL(project_client_name,'') as project_client_name		
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_datalake_export_opportunity_snapshot];
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------



CREATE VIEW [promt].[stage_promt_project_snapshot_v]
AS select ROW_NUMBER() OVER (ORDER BY project_no) as promt_snapshot_project_id
,[t_project_id]
,[ss_id]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from (
select distinct 
[t_project_id]
,[ss_id]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]	

from [promt].[stage_promt_risk_opportunity_snapshot_v] )a
GO









