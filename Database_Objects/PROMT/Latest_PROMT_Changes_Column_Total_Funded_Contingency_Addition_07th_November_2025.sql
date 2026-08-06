Alter table [promt].[stage_promt_datalake_export_risk] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_risk] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[fact_promt_risk] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_opportunity] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_opportunity] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[fact_promt_opportunity]  
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_risk_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_risk_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[fact_promt_risk_snapshot]
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_opportunity_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_opportunity_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[fact_promt_opportunity_snapshot]
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_simulationresult] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_contingency] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_contingency] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[dim_ent_promt_contingency] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_project] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[dim_ent_promt_project] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_project_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)

Alter table [promt].[dim_ent_promt_project_snapshot] 
add [Total_Funded_Contingency] decimal (18,2)


GO



truncate table [promt].[stage_promt_datalake_export_risk] 
truncate table [promt].[reprocess_promt_datalake_export_risk]
truncate table [promt].[fact_promt_risk]

truncate table [promt].[stage_promt_datalake_export_opportunity]
truncate table [promt].[reprocess_promt_datalake_export_opportunity]
truncate table [promt].[fact_promt_opportunity] 

truncate table [promt].[stage_promt_datalake_export_risk_snapshot]		
truncate table [promt].[reprocess_promt_datalake_export_risk_snapshot]	
truncate table [promt].[fact_promt_risk_snapshot]	

truncate table [promt].[stage_promt_datalake_export_opportunity_snapshot]	
truncate table [promt].[reprocess_promt_datalake_export_opportunity_snapshot]
truncate table [promt].[fact_promt_opportunity_snapshot]

truncate table promt.dim_ent_promt_contingency   
truncate table [promt].[stage_promt_datalake_export_simulationresult]  

truncate table [promt].[dim_ent_promt_project]
truncate table [promt].[dim_ent_promt_project_snapshot]


TRUNCATE TABLE [promt].[dim_ent_promt_risk_opportunity_category]	
TRUNCATE TABLE [promt].[dim_ent_promt_probability_range_percentage]	
TRUNCATE TABLE [promt].[dim_ent_promt_environment]
TRUNCATE TABLE [promt].[dim_ent_promt_health_safety_security]		
TRUNCATE TABLE [promt].[dim_ent_promt_quality]		
TRUNCATE TABLE [promt].[dim_ent_promt_reputation]		
TRUNCATE TABLE [promt].[dim_ent_promt_social_culture]	
TRUNCATE TABLE [promt].[dim_ent_promt_cost_impact_tcv_percentage]	
TRUNCATE TABLE [promt].[dim_ent_promt_schedule]	
TRUNCATE TABLE [promt].[dim_ent_promt_risk_status]	
TRUNCATE TABLE [promt].[dim_ent_promt_opportunity_status]	
TRUNCATE TABLE [promt].[dim_ent_promt_risk_closing_justification]	
TRUNCATE TABLE [promt].[dim_ent_promt_opportunity_closing_justification]
TRUNCATE TABLE [promt].[dim_ent_promt_response_status]		
TRUNCATE TABLE [promt].[dim_ent_promt_risk_modeling_tech]	
TRUNCATE TABLE [promt].[dim_ent_promt_strategy_pre_contract]
TRUNCATE TABLE [promt].[dim_ent_promt_strategy_execution]	
TRUNCATE TABLE [promt].[dim_ent_promt_action_status]		
TRUNCATE TABLE [promt].[dim_ent_promt_mit_probability_range_percentage]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_environment]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_health_safety_security]		
TRUNCATE TABLE [promt].[dim_ent_promt_mit_quality]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_reputation]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_social_culture]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_schedule]		
TRUNCATE TABLE [promt].[dim_ent_promt_distribution_type]
TRUNCATE TABLE [promt].[dim_ent_promt_shared_externaly]	
TRUNCATE TABLE [promt].[dim_ent_promt_mit_fully_transferred]
TRUNCATE TABLE [promt].[dim_ent_promt_mit_fully_avoided]	
TRUNCATE TABLE [promt].[dim_ent_promt_project]		
TRUNCATE TABLE [promt].[dim_ent_promt_overall_impact]
TRUNCATE TABLE [promt].[dim_ent_promt_mit_overall_impact]
TRUNCATE TABLE [promt].[dim_ent_promt_project_snapshot] 


GO



update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_risk_source_to_stage'


update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_source_to_stage'


update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_contingency_source_to_stage'


update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_simulationresult_source_to_stage'

update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_risk_snapshot_source_to_stage'


update plp_parameter_value
set parameter_value='1990-01-16 15:23:10'
where parameter_code='promt_start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_snapshot_source_to_stage'



update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_contingency_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_simulationresult_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_snapshot_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-11-13 10:25:47.313'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_snapshot_raw_to_synapse'

GO


Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_contingency','Total_Funded_Contingency','DECIMAL','NUMBER','OA','Total_Funded_Contingency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,490,'Y',NULL)


Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project','Total_Funded_Contingency','DECIMAL','NUMBER','OA','Total_Funded_Contingency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,360,'Y',NULL)


Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project_snapshot','Total_Funded_Contingency','DECIMAL','NUMBER','OA','Total_Funded_Contingency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,360,'Y',NULL)





GO



insert into [promt].[dim_ent_promt_risk_status] ([dim_ent_risk_status_nk],[risk_status],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag],[risk_status_description]) values(19,'','2025-05-27 09:04:38.343','2050-12-30 00:00:00.000','JªÇ85öí',1,'2025-05-27 09:04:38.343',NULL,'N','')

insert into [promt].[dim_ent_promt_mit_fully_avoided] ([dim_ent_mit_fully_avoided_nk],[mit_fully_avoided],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag],[mit_fully_avoided_description]) values(18,'Y','2025-05-27 09:04:38.343','2050-12-30 00:00:00.000','SD85fgh',1,'2025-05-27 09:04:38.343',NULL,'N','Yes')


GO


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
,[Total_Funded_Contingency]

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
,[Total_Funded_Contingency]

from [promt].[stage_promt_datalake_export_opportunity];
GO






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
,[Total_Funded_Contingency]

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
,[Total_Funded_Contingency]

from [promt].[stage_promt_risk_opportunity_v] )a;
GO






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
,[Total_Funded_Contingency]

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
,[Total_Funded_Contingency]

from [promt].[stage_promt_datalake_export_opportunity_snapshot];
GO






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
,[Total_Funded_Contingency]

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
,[Total_Funded_Contingency]

from [promt].[stage_promt_risk_opportunity_snapshot_v] )a;
GO







ALTER PROC [promt].[sp_validate_for_promt_datalake_export_risk] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();
	
	--------------------------------------------------------------------------------------
	----setup any pre=processing values as required.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry


	--------------------------------------------------------------------------------------
	-- Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
INSERT INTO [promt].[stage_promt_datalake_export_risk]
([risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT
[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
FROM [promt].[reprocess_promt_datalake_export_risk];

DELETE FROM [promt].[reprocess_promt_datalake_export_risk];

	-----------------------------------------------------------------
-------Update the SK/NK values within the Synapse table USING STORED PROCEDURE.
	-----------------------------------------------------------------
	
EXEC promt.sp_update_dimension_keys_for_promt_datalake_export_risk;


	SELECT @unprocessed_count  = count(*) FROM promt.stage_promt_datalake_export_risk
	WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL 
;
			


	SELECT @processed_count  = count(*) FROM promt.stage_promt_datalake_export_risk
	WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_risk_status_sk] IS NOT NULL
AND [dim_ent_risk_status_nk] IS NOT NULL
AND [dim_ent_risk_closing_justification_sk] IS NOT NULL
AND [dim_ent_risk_closing_justification_nk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_sk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_nk] IS NOT NULL
AND [dim_ent_strategy_execution_sk] IS NOT NULL
AND [dim_ent_strategy_execution_nk] IS NOT NULL
AND [dim_ent_action_status_sk] IS NOT NULL
AND [dim_ent_action_status_nk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_mit_environment_sk] IS NOT NULL
AND [dim_ent_mit_environment_nk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_sk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_nk] IS NOT NULL
AND [dim_ent_mit_quality_sk] IS NOT NULL
AND [dim_ent_mit_quality_nk] IS NOT NULL
AND [dim_ent_mit_reputation_sk] IS NOT NULL
AND [dim_ent_mit_reputation_nk] IS NOT NULL
AND [dim_ent_mit_social_culture_sk] IS NOT NULL
AND [dim_ent_mit_social_culture_nk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_mit_schedule_sk] IS NOT NULL
AND [dim_ent_mit_schedule_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_shared_externaly_sk] IS NOT NULL
AND [dim_ent_shared_externaly_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_sk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_nk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_sk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
AND [dim_ent_mit_overall_impact_sk] IS NOT NULL
AND [dim_ent_mit_overall_impact_nk] IS NOT NULL
;



INSERT INTO [promt].[reprocess_promt_datalake_export_risk]
(
[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT

[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM promt.stage_promt_datalake_export_risk

WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL
;
		

UPDATE promt.stage_promt_datalake_export_risk
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_risk
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_risk
set created_date_time = GETDATE();

	---------------------------------------------------------------------------

DELETE FROM promt.stage_promt_datalake_export_risk
WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL
;
		



if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
		
	
	end

	if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null 
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;


--End of Stored Procedure
END
GO









ALTER PROC [promt].[sp_fact_load_promt_risk] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

		INSERT INTO [promt].[fact_promt_risk]
(

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

)

select 

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

from promt.stage_promt_datalake_export_risk
WHERE   
[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_risk_status_sk] IS NOT NULL
AND [dim_ent_risk_status_nk] IS NOT NULL
AND [dim_ent_risk_closing_justification_sk] IS NOT NULL
AND [dim_ent_risk_closing_justification_nk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_sk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_nk] IS NOT NULL
AND [dim_ent_strategy_execution_sk] IS NOT NULL
AND [dim_ent_strategy_execution_nk] IS NOT NULL
AND [dim_ent_action_status_sk] IS NOT NULL
AND [dim_ent_action_status_nk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_mit_environment_sk] IS NOT NULL
AND [dim_ent_mit_environment_nk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_sk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_nk] IS NOT NULL
AND [dim_ent_mit_quality_sk] IS NOT NULL
AND [dim_ent_mit_quality_nk] IS NOT NULL
AND [dim_ent_mit_reputation_sk] IS NOT NULL
AND [dim_ent_mit_reputation_nk] IS NOT NULL
AND [dim_ent_mit_social_culture_sk] IS NOT NULL
AND [dim_ent_mit_social_culture_nk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_mit_schedule_sk] IS NOT NULL
AND [dim_ent_mit_schedule_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_shared_externaly_sk] IS NOT NULL
AND [dim_ent_shared_externaly_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_sk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_nk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_sk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
AND [dim_ent_mit_overall_impact_sk] IS NOT NULL
AND [dim_ent_mit_overall_impact_nk] IS NOT NULL

group by

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
	

	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;
end;		
GO







ALTER PROC [promt].[sp_validate_for_promt_datalake_export_opportunity] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();


	--------------------------------------------------------------------------------------
	----setup any pre=processing values as required.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry


	--------------------------------------------------------------------------------------
	-- Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
INSERT INTO [promt].[stage_promt_datalake_export_opportunity]
(
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM [promt].[reprocess_promt_datalake_export_opportunity];

DELETE FROM [promt].[reprocess_promt_datalake_export_opportunity];

	-----------------------------------------------------------------
-------Update the SK/NK values within the Synapse table USING STORED PROCEDURE.
	-----------------------------------------------------------------
	
EXEC promt.sp_update_dimension_keys_for_promt_datalake_export_opportunity;


	SELECT @unprocessed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity
	WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;
			


	SELECT @processed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity
	WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_opportunity_status_sk] IS NOT NULL
AND [dim_ent_opportunity_status_nk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_sk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_nk] IS NOT NULL
AND [dim_ent_response_status_sk] IS NOT NULL
AND [dim_ent_response_status_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
;



INSERT INTO [promt].[reprocess_promt_datalake_export_opportunity]
(
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT

[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM promt.stage_promt_datalake_export_opportunity

WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;

UPDATE promt.stage_promt_datalake_export_opportunity
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity
set created_date_time = GETDATE();
	---------------------------------------------------------------------------

DELETE FROM promt.stage_promt_datalake_export_opportunity
WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;	



if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
		
	
	end

	if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null 
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;


--End of Stored Procedure
END
GO












ALTER PROC [promt].[sp_fact_load_promt_opportunity] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

INSERT INTO [promt].[fact_promt_opportunity]
(

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

)

select 

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

from promt.stage_promt_datalake_export_opportunity
WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_opportunity_status_sk] IS NOT NULL
AND [dim_ent_opportunity_status_nk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_sk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_nk] IS NOT NULL
AND [dim_ent_response_status_sk] IS NOT NULL
AND [dim_ent_response_status_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL


group by

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

	

	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;
end;		
GO










ALTER PROC [promt].[sp_validate_for_promt_datalake_export_risk_snapshot] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();
	
	--------------------------------------------------------------------------------------
	----setup any pre=processing values as required.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry


	--------------------------------------------------------------------------------------
	-- Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
INSERT INTO [promt].[stage_promt_datalake_export_risk_snapshot]
([ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT
[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
FROM [promt].[reprocess_promt_datalake_export_risk_snapshot];

DELETE FROM [promt].[reprocess_promt_datalake_export_risk_snapshot];

	-----------------------------------------------------------------
-------Update the SK/NK values within the Synapse table USING STORED PROCEDURE.
	-----------------------------------------------------------------
	
EXEC promt.sp_update_dimension_keys_for_promt_datalake_export_risk_snapshot;


	SELECT @unprocessed_count  = count(*) FROM promt.stage_promt_datalake_export_risk_snapshot
	WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL 
;
			


	SELECT @processed_count  = count(*) FROM promt.stage_promt_datalake_export_risk_snapshot
	WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_risk_status_sk] IS NOT NULL
AND [dim_ent_risk_status_nk] IS NOT NULL
AND [dim_ent_risk_closing_justification_sk] IS NOT NULL
AND [dim_ent_risk_closing_justification_nk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_sk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_nk] IS NOT NULL
AND [dim_ent_strategy_execution_sk] IS NOT NULL
AND [dim_ent_strategy_execution_nk] IS NOT NULL
AND [dim_ent_action_status_sk] IS NOT NULL
AND [dim_ent_action_status_nk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_mit_environment_sk] IS NOT NULL
AND [dim_ent_mit_environment_nk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_sk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_nk] IS NOT NULL
AND [dim_ent_mit_quality_sk] IS NOT NULL
AND [dim_ent_mit_quality_nk] IS NOT NULL
AND [dim_ent_mit_reputation_sk] IS NOT NULL
AND [dim_ent_mit_reputation_nk] IS NOT NULL
AND [dim_ent_mit_social_culture_sk] IS NOT NULL
AND [dim_ent_mit_social_culture_nk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_mit_schedule_sk] IS NOT NULL
AND [dim_ent_mit_schedule_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_shared_externaly_sk] IS NOT NULL
AND [dim_ent_shared_externaly_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_sk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_nk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_sk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
AND [dim_ent_mit_overall_impact_sk] IS NOT NULL
AND [dim_ent_mit_overall_impact_nk] IS NOT NULL
;



INSERT INTO [promt].[reprocess_promt_datalake_export_risk_snapshot]
(
[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT

[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[risk_title]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[risk_owner]
,[risk_status]
,[risk_status_description]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[closing_justification]
,[closing_justification_description]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[strategy_pre_contract]
,[strategy_pre_contract_description]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[strategy_execution]
,[strategy_execution_description]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[actions]
,[cost_mitigation]
,[action_status]
,[action_status_description]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[action_due_date]
,[mit_probability_range_percentage]
,[mit_probability_range_percentage_description]
,[mit_probability_range_percentage_display_order]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[mit_environment]
,[mit_environment_description]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[mit_health_safety_security]
,[mit_health_safety_security_description]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[mit_quality]
,[mit_quality_description]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[mit_reputation]
,[mit_reputation_description]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[mit_social_culture]
,[mit_social_culture_description]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[mit_cost_impact_tcv_percentage]
,[mit_cost_impact_tcv_percentage_description]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[mit_schedule]
,[mit_schedule_description]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[mit_overall_impact]
,[mit_overall_impact_description]
,[mit_overall_impact_display_sort_order]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[shared_externaly]
,[shared_externaly_description]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[t_project_id]
,[mit_fully_transferred]
,[mit_fully_transferred_description]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[mit_fully_avoided]
,[mit_fully_avoided_description]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM promt.stage_promt_datalake_export_risk_snapshot

WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL
;
		

UPDATE promt.stage_promt_datalake_export_risk_snapshot
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_risk_snapshot
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_risk_snapshot
set created_date_time = GETDATE();

	---------------------------------------------------------------------------

DELETE FROM promt.stage_promt_datalake_export_risk_snapshot
WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_risk_status_sk]
IS NULL OR [dim_ent_risk_status_nk]
IS NULL OR [dim_ent_risk_closing_justification_sk]
IS NULL OR [dim_ent_risk_closing_justification_nk]
IS NULL OR [dim_ent_strategy_pre_contract_sk]
IS NULL OR [dim_ent_strategy_pre_contract_nk]
IS NULL OR [dim_ent_strategy_execution_sk]
IS NULL OR [dim_ent_strategy_execution_nk]
IS NULL OR [dim_ent_action_status_sk]
IS NULL OR [dim_ent_action_status_nk]
IS NULL OR [dim_ent_mit_probability_range_percentage_sk]
IS NULL OR [dim_ent_mit_probability_range_percentage_nk]
IS NULL OR [dim_ent_mit_environment_sk]
IS NULL OR [dim_ent_mit_environment_nk]
IS NULL OR [dim_ent_mit_health_safety_security_sk]
IS NULL OR [dim_ent_mit_health_safety_security_nk]
IS NULL OR [dim_ent_mit_quality_sk]
IS NULL OR [dim_ent_mit_quality_nk]
IS NULL OR [dim_ent_mit_reputation_sk]
IS NULL OR [dim_ent_mit_reputation_nk]
IS NULL OR [dim_ent_mit_social_culture_sk]
IS NULL OR [dim_ent_mit_social_culture_nk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_mit_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_mit_schedule_sk]
IS NULL OR [dim_ent_mit_schedule_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_shared_externaly_sk]
IS NULL OR [dim_ent_shared_externaly_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_mit_fully_transferred_sk]
IS NULL OR [dim_ent_mit_fully_transferred_nk]
IS NULL OR [dim_ent_mit_fully_avoided_sk]
IS NULL OR [dim_ent_mit_fully_avoided_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL OR [dim_ent_mit_overall_impact_sk]
IS NULL OR [dim_ent_mit_overall_impact_nk]
IS NULL
;
		



if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
		
	
	end

	if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null 
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;


--End of Stored Procedure
END
GO











ALTER PROC [promt].[sp_fact_load_promt_risk_snapshot] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

		INSERT INTO [promt].[fact_promt_risk_snapshot]
(

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

)

select 

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

from promt.stage_promt_datalake_export_risk_snapshot
WHERE   
[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_risk_status_sk] IS NOT NULL
AND [dim_ent_risk_status_nk] IS NOT NULL
AND [dim_ent_risk_closing_justification_sk] IS NOT NULL
AND [dim_ent_risk_closing_justification_nk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_sk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_nk] IS NOT NULL
AND [dim_ent_strategy_execution_sk] IS NOT NULL
AND [dim_ent_strategy_execution_nk] IS NOT NULL
AND [dim_ent_action_status_sk] IS NOT NULL
AND [dim_ent_action_status_nk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_mit_environment_sk] IS NOT NULL
AND [dim_ent_mit_environment_nk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_sk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_nk] IS NOT NULL
AND [dim_ent_mit_quality_sk] IS NOT NULL
AND [dim_ent_mit_quality_nk] IS NOT NULL
AND [dim_ent_mit_reputation_sk] IS NOT NULL
AND [dim_ent_mit_reputation_nk] IS NOT NULL
AND [dim_ent_mit_social_culture_sk] IS NOT NULL
AND [dim_ent_mit_social_culture_nk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_mit_schedule_sk] IS NOT NULL
AND [dim_ent_mit_schedule_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_shared_externaly_sk] IS NOT NULL
AND [dim_ent_shared_externaly_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_sk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_nk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_sk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
AND [dim_ent_mit_overall_impact_sk] IS NOT NULL
AND [dim_ent_mit_overall_impact_nk] IS NOT NULL

group by

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
	

	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;
end;		
GO











ALTER PROC [promt].[sp_validate_for_promt_datalake_export_opportunity_snapshot] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();


	--------------------------------------------------------------------------------------
	----setup any pre=processing values as required.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry


	--------------------------------------------------------------------------------------
	-- Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
INSERT INTO [promt].[stage_promt_datalake_export_opportunity_snapshot]
(
[ssoi_id]
,[ss_id]
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT
[ssoi_id]
,[ss_id]
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM [promt].[reprocess_promt_datalake_export_opportunity_snapshot];

DELETE FROM [promt].[reprocess_promt_datalake_export_opportunity_snapshot];

	-----------------------------------------------------------------
-------Update the SK/NK values within the Synapse table USING STORED PROCEDURE.
	-----------------------------------------------------------------
	
EXEC promt.sp_update_dimension_keys_for_promt_datalake_export_opportunity_snapshot;


	SELECT @unprocessed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity_snapshot
	WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;
			


	SELECT @processed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity_snapshot
	WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_opportunity_status_sk] IS NOT NULL
AND [dim_ent_opportunity_status_nk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_sk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_nk] IS NOT NULL
AND [dim_ent_response_status_sk] IS NOT NULL
AND [dim_ent_response_status_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
;



INSERT INTO [promt].[reprocess_promt_datalake_export_opportunity_snapshot]
(
[ssoi_id]
,[ss_id]
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]
)
SELECT

[ssoi_id]
,[ss_id]
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
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
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

FROM promt.stage_promt_datalake_export_opportunity_snapshot

WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;

UPDATE promt.stage_promt_datalake_export_opportunity_snapshot
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity_snapshot
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity_snapshot
set created_date_time = GETDATE();
	---------------------------------------------------------------------------

DELETE FROM promt.stage_promt_datalake_export_opportunity_snapshot
WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;	



if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@unprocessed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
		
	
	end

	if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null 
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;


--End of Stored Procedure
END
GO











ALTER PROC [promt].[sp_fact_load_promt_opportunity_snapshot] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

INSERT INTO [promt].[fact_promt_opportunity_snapshot]
(

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[ssoi_id] 					
,[ss_id] 					
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

)

select 

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[ssoi_id] 					
,[ss_id] 					
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

from promt.stage_promt_datalake_export_opportunity_snapshot
WHERE   

[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_opportunity_status_sk] IS NOT NULL
AND [dim_ent_opportunity_status_nk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_sk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_nk] IS NOT NULL
AND [dim_ent_response_status_sk] IS NOT NULL
AND [dim_ent_response_status_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL


group by

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[ssoi_id] 					
,[ss_id] 					
,[period_date]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
,[event_p80]
,[Total_Funded_Contingency]

	

	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		


	end;
end catch;
end;		
GO








