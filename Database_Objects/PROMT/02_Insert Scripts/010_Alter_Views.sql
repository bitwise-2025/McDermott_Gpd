ALTER VIEW [promt].[stage_promt_risk_opportunity_v] AS select 
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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

from [promt].[stage_promt_datalake_export_opportunity];
GO


-----------------------------------------------------------------------------------------------



ALTER VIEW [promt].[stage_promt_project_v] AS select ROW_NUMBER() OVER (ORDER BY project_no) as promt_project_id
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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

from [promt].[stage_promt_risk_opportunity_v] )a;
GO


-----------------------------------------------------------------------------------------------



ALTER VIEW [promt].[stage_promt_risk_opportunity_snapshot_v] AS select 
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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

from [promt].[stage_promt_datalake_export_opportunity_snapshot];
GO


-----------------------------------------------------------------------------------------------



ALTER VIEW [promt].[stage_promt_project_snapshot_v] AS select ROW_NUMBER() OVER (ORDER BY project_no) as promt_snapshot_project_id
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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

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
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]

from [promt].[stage_promt_risk_opportunity_snapshot_v] )a;
GO


