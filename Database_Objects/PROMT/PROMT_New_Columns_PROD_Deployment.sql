Alter table [promt].[stage_promt_datalake_export_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_opportunity] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_opportunity] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_opportunity]  
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_risk_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_risk_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_risk_snapshot]
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_opportunity_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_opportunity_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_opportunity_snapshot]
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_simulationresult] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_project] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_project] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_project_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_project_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime


GO


Alter table [promt].[stage_promt_datalake_export_risk] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_risk] 
add [event_p80] decimal (18,2)

Alter table [promt].[fact_promt_risk] 
add [event_p80] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_opportunity] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_opportunity] 
add [event_p80] decimal (18,2)

Alter table [promt].[fact_promt_opportunity]  
add [event_p80] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_risk_snapshot] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_risk_snapshot] 
add [event_p80] decimal (18,2)

Alter table [promt].[fact_promt_risk_snapshot]
add [event_p80] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_opportunity_snapshot] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_promt_datalake_export_opportunity_snapshot] 
add [event_p80] decimal (18,2)

Alter table [promt].[fact_promt_opportunity_snapshot]
add [event_p80] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_simulationresult] 
add [event_p80] decimal (18,2)

Alter table [promt].[stage_promt_datalake_export_contingency] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_contingency] 
add [event_p80] decimal (18,2)

Alter table [promt].[dim_ent_promt_contingency] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_project] 
add [event_p80] decimal (18,2)

Alter table [promt].[dim_ent_promt_project] 
add [event_p80] decimal (18,2)

Alter table [promt].[reprocess_dim_ent_promt_project_snapshot] 
add [event_p80] decimal (18,2)

Alter table [promt].[dim_ent_promt_project_snapshot] 
add [event_p80] decimal (18,2)


GO

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_contingency','closed_dtm','datetime','DATETIME','OA','closed_dtm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,450,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_contingency','archived','varchar(5)','TEXT','OA','archived',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,460,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_contingency','rearchival_date','datetime','DATETIME','OA','rearchival_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,470,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_contingency','event_p80','DECIMAL','NUMBER','OA','event_p80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,480,'Y',NULL)




Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project','closed_dtm','datetime','DATETIME','OA','closed_dtm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,320,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project','archived','varchar(5)','TEXT','OA','archived',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,330,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project','rearchival_date','datetime','DATETIME','OA','rearchival_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,340,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project','event_p80','DECIMAL','NUMBER','OA','event_p80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,350,'Y',NULL)



Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project_snapshot','closed_dtm','datetime','DATETIME','OA','closed_dtm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,320,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project_snapshot','archived','varchar(5)','TEXT','OA','archived',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,330,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project_snapshot','rearchival_date','datetime','DATETIME','OA','rearchival_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,340,'Y',NULL)

Insert into [dbo].[generic_load_detail] values ('dim_ent_promt_project_snapshot','event_p80','DECIMAL','NUMBER','OA','event_p80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,350,'Y',NULL)


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
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_contingency_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_simulationresult_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_snapshot_raw_to_synapse'


update plp_parameter_value
set parameter_value='2025-06-11 08:36:36.173'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_snapshot_raw_to_synapse'



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



DROP VIEW [promt].[dim_ent_promt_project_active_v]
GO

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




DROP VIEW [promt].[dim_ent_promt_project_snapshot_active_v]
GO

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






DROP VIEW [promt].[Projects]
GO

CREATE VIEW [promt].[Projects]
AS select *,[project Number]+' - '+[Project Project Title] as Project from [promt].[dim_ent_promt_project_active_v];
GO





DROP VIEW [promt].[Projects History]
GO

CREATE VIEW [promt].[Projects History]
AS select * from [promt].[dim_ent_promt_project_active_v];
GO






DROP VIEW [promt].[Projects History Snapshot]
GO

CREATE VIEW [promt].[Projects History Snapshot]
AS select * from [promt].[dim_ent_promt_project_snapshot_active_v];
GO






DROP VIEW [promt].[risk information]
GO

CREATE VIEW [promt].[risk information] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80])
AS SELECT distinct
[promt].[fact_promt_risk].risk_id
,[promt].[fact_promt_risk].risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,[promt].[fact_promt_risk].risk_title
,[promt].[fact_promt_risk].description
,[promt].[fact_promt_risk].record_date
,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
,NULLIF(a3.[environment description],'') as [environment description]
,NULLIF(a4.[health safety security description],'') as [health safety security description]
,NULLIF(a5.[quality description],'') as [quality description]
,NULLIF(a6.[reputation description],'') as [reputation description]
,NULLIF(a7.[social culture description],'') as [social culture description]
,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
,NULLIF(a9.[schedule description],'') as [schedule description]
,case 
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].severity_score
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then 1
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then 2
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then 3
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,[promt].[fact_promt_risk].hilp
,[promt].[fact_promt_risk].risk_owner
,NULLIF(a10.[risk status description], '') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description] 
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,[promt].[fact_promt_risk].actions
,NULLIF(a14.[action status description],'') as [action status description]
,[promt].[fact_promt_risk].cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,[promt].[fact_promt_risk].[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIF(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].mit_severity_score
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then 1
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then 2
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then 3
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then 4
	else
	0
end
,[promt].[fact_promt_risk].mit_hilp
,[promt].[fact_promt_risk].probability
,[promt].[fact_promt_risk].best_case
,[promt].[fact_promt_risk].most_likely
,[promt].[fact_promt_risk].worst_case
,[promt].[fact_promt_risk].discrete_value
,[promt].[fact_promt_risk].bottom_value
,[promt].[fact_promt_risk].top_value
,[promt].[fact_promt_risk].lower_probability
,[promt].[fact_promt_risk].min_value
,[promt].[fact_promt_risk].max_value
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,[promt].[fact_promt_risk].risk_function1
,[promt].[fact_promt_risk].mit_probability
,[promt].[fact_promt_risk].mit_best_case
,[promt].[fact_promt_risk].mit_most_likely
,[promt].[fact_promt_risk].mit_worst_case
,[promt].[fact_promt_risk].mit_discrete_value
,[promt].[fact_promt_risk].mit_bottom_value
,[promt].[fact_promt_risk].mit_top_value
,[promt].[fact_promt_risk].mit_lower_probability
,[promt].[fact_promt_risk].mit_min_value
,[promt].[fact_promt_risk].mit_max_value
,[promt].[fact_promt_risk].risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,[promt].[fact_promt_risk].drivers_causes
,[promt].[fact_promt_risk].risk_due_date
,[promt].[fact_promt_risk].mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,[promt].[fact_promt_risk].[t_project_id]
,[promt].[fact_promt_risk].active_flag
,[promt].[fact_promt_risk].created_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].dl_touched_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,[promt].[fact_promt_risk].expected_value_at_risk
,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,[promt].[fact_promt_risk].risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,[promt].[fact_promt_risk].action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].mit_severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk desc)
,[promt].[fact_promt_risk].closed_dtm
,[promt].[fact_promt_risk].archived
,[promt].[fact_promt_risk].rearchival_date
,[promt].[fact_promt_risk].cost_impact_ranging_basis
,[promt].[fact_promt_risk].weighted_value_at_risk
,[promt].[fact_promt_risk].event_p80

from [promt].[fact_promt_risk] 
	left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v] 
					a1 on a1.[dim_ent_risk_opportunity_category_nk] = [promt].[fact_promt_risk].[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = [promt].[fact_promt_risk].[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = [promt].[fact_promt_risk].[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= [promt].[fact_promt_risk].[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = [promt].[fact_promt_risk].[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = [promt].[fact_promt_risk].[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = [promt].[fact_promt_risk].[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = [promt].[fact_promt_risk].[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = [promt].[fact_promt_risk].[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = [promt].[fact_promt_risk].[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = [promt].[fact_promt_risk].[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = [promt].[fact_promt_risk].[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = [promt].[fact_promt_risk].[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = [promt].[fact_promt_risk].[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_avoided_nk]

	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_risk] a33 
						 where a33.risk_id = [promt].[fact_promt_risk].risk_id 
								and a33.risk_no = [promt].[fact_promt_risk].risk_no and 
								a33.t_project_id = [promt].[fact_promt_risk].t_project_id );
GO






DROP VIEW [promt].[risk information history]
GO

CREATE VIEW [promt].[risk information history] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80])
AS SELECT distinct
[promt].[fact_promt_risk].risk_id
,[promt].[fact_promt_risk].risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,[promt].[fact_promt_risk].risk_title
,[promt].[fact_promt_risk].description
,[promt].[fact_promt_risk].record_date
,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
,NULLIF(a3.[environment description],'') as [environment description]
,NULLIF(a4.[health safety security description],'') as [health safety security description]
,NULLIF(a5.[quality description],'') as [quality description]
,NULLIF(a6.[reputation description],'') as [reputation description]
,NULLIF(a7.[social culture description],'') as [social culture description]
,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
,NULLIF(a9.[schedule description],'') as [schedule description]
,case 
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].severity_score
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then 1
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then 2
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then 3
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,[promt].[fact_promt_risk].hilp
,[promt].[fact_promt_risk].risk_owner
,NULLIF(a10.[risk status description],'') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description]
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,[promt].[fact_promt_risk].actions
,NULLIF(a14.[action status description],'') as [action status description]
,[promt].[fact_promt_risk].cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,[promt].[fact_promt_risk].[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIf(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].mit_severity_score
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then 1
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then 2
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then 3
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then 4
	else
	0
end
,[promt].[fact_promt_risk].mit_hilp
,[promt].[fact_promt_risk].probability
,[promt].[fact_promt_risk].best_case
,[promt].[fact_promt_risk].most_likely
,[promt].[fact_promt_risk].worst_case
,[promt].[fact_promt_risk].discrete_value
,[promt].[fact_promt_risk].bottom_value
,[promt].[fact_promt_risk].top_value
,[promt].[fact_promt_risk].lower_probability
,[promt].[fact_promt_risk].min_value
,[promt].[fact_promt_risk].max_value
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,[promt].[fact_promt_risk].risk_function1
,[promt].[fact_promt_risk].mit_probability
,[promt].[fact_promt_risk].mit_best_case
,[promt].[fact_promt_risk].mit_most_likely
,[promt].[fact_promt_risk].mit_worst_case
,[promt].[fact_promt_risk].mit_discrete_value
,[promt].[fact_promt_risk].mit_bottom_value
,[promt].[fact_promt_risk].mit_top_value
,[promt].[fact_promt_risk].mit_lower_probability
,[promt].[fact_promt_risk].mit_min_value
,[promt].[fact_promt_risk].mit_max_value
,[promt].[fact_promt_risk].risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,[promt].[fact_promt_risk].drivers_causes
,[promt].[fact_promt_risk].risk_due_date
,[promt].[fact_promt_risk].mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,[promt].[fact_promt_risk].[t_project_id]
,[promt].[fact_promt_risk].active_flag
,[promt].[fact_promt_risk].created_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].dl_touched_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,[promt].[fact_promt_risk].expected_value_at_risk
,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,[promt].[fact_promt_risk].risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,[promt].[fact_promt_risk].action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].mit_severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk desc)
,[promt].[fact_promt_risk].closed_dtm
,[promt].[fact_promt_risk].archived
,[promt].[fact_promt_risk].rearchival_date
,[promt].[fact_promt_risk].cost_impact_ranging_basis
,[promt].[fact_promt_risk].weighted_value_at_risk
,[promt].[fact_promt_risk].event_p80

from [promt].[fact_promt_risk] 
	left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v] 
					a1 on a1.[dim_ent_risk_opportunity_category_nk] = [promt].[fact_promt_risk].[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = [promt].[fact_promt_risk].[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = [promt].[fact_promt_risk].[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= [promt].[fact_promt_risk].[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = [promt].[fact_promt_risk].[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = [promt].[fact_promt_risk].[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = [promt].[fact_promt_risk].[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = [promt].[fact_promt_risk].[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = [promt].[fact_promt_risk].[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = [promt].[fact_promt_risk].[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = [promt].[fact_promt_risk].[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = [promt].[fact_promt_risk].[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = [promt].[fact_promt_risk].[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = [promt].[fact_promt_risk].[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_avoided_nk]
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_risk] a33 
						 where a33.risk_id = [promt].[fact_promt_risk].risk_id 
								and a33.risk_no = [promt].[fact_promt_risk].risk_no and 
								a33.t_project_id = [promt].[fact_promt_risk].t_project_id );
GO








DROP VIEW [promt].[risk information history snapshot]
GO

CREATE VIEW [promt].[risk information history snapshot] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Period Date], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80])
AS SELECT distinct
a.risk_id
,a.risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,a.risk_title
,a.description
,a.record_date
,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
,NULLIF(a3.[environment description],'') as [environment description]
,NULLIF(a4.[health safety security description],'') as [health safety security description]
,NULLIF(a5.[quality description],'') as [quality description]
,NULLIF(a6.[reputation description],'') as [reputation description]
,NULLIF(a7.[social culture description],'') as [social culture description]
,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
,NULLIF(a9.[schedule description],'') as [schedule description]
,case 
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,a.severity_score
,case 
	when a.severity_score >= 1 AND a.severity_score <= 3  then '1. Low'
	when a.severity_score >= 4 AND a.severity_score <= 9 then '2. Medium'
	when a.severity_score >= 10 AND a.severity_score <= 15 then '3. High'
	when a.severity_score >= 16 AND a.severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when a.severity_score >= 1 AND a.severity_score <= 3  then 1
	when a.severity_score >= 4 AND a.severity_score <= 9 then 2
	when a.severity_score >= 10 AND a.severity_score <= 15 then 3
	when a.severity_score >= 16 AND a.severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,a.hilp
,a.risk_owner
,NULLIF(a10.[risk status description],'') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description]
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,a.actions
,NULLIF(a14.[action status description],'') as [action status description]
,a.cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,a.[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIF(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,a.mit_severity_score
,case 
	when a.mit_severity_score >= 1 AND a.mit_severity_score <= 3  then '1. Low'
	when a.mit_severity_score >= 4 AND a.mit_severity_score <= 9 then '2. Medium'
	when a.mit_severity_score >= 10 AND a.mit_severity_score <= 15 then '3. High'
	when a.mit_severity_score >= 16 AND a.mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when a.mit_severity_score >= 1 AND a.mit_severity_score <= 3  then 1
	when a.mit_severity_score >= 4 AND a.mit_severity_score <= 9 then 2
	when a.mit_severity_score >= 10 AND a.mit_severity_score <= 15 then 3
	when a.mit_severity_score >= 16 AND a.mit_severity_score <= 25 then 4
	else
	0
end
,a.mit_hilp
,a.probability
,a.best_case
,a.most_likely
,a.worst_case
,a.discrete_value
,a.bottom_value
,a.top_value
,a.lower_probability
,a.min_value
,a.max_value
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,a.risk_function1
,a.mit_probability
,a.mit_best_case
,a.mit_most_likely
,a.mit_worst_case
,a.mit_discrete_value
,a.mit_bottom_value
,a.mit_top_value
,a.mit_lower_probability
,a.mit_min_value
,a.mit_max_value
,a.risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,a.drivers_causes
,a.risk_due_date
,a.mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,a.[t_project_id]
,a.active_flag
,a.created_dtm
,a.created_by
,a.dl_touched_dtm
,a.created_by
,a.version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,a.expected_value_at_risk
,a.expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,a.risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY a.severity_score desc,a.expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY a.mit_severity_score desc,a.expected_value_at_risk desc)
, Period_date as [Period Date]
,a.closed_dtm
,a.archived
,a.rearchival_date
,a.cost_impact_ranging_basis
,a.weighted_value_at_risk
,a.event_p80

from [promt].[fact_promt_risk_snapshot] a
	left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v] 
					a1 on a1.[dim_ent_risk_opportunity_category_nk] = a.[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = a.[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = a.[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = a.[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = a.[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = a.[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = a.[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = a.[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= a.[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = a.[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = a.[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = a.[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = a.[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = a.[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = a.[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = a.[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = a.[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = a.[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = a.[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = a.[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = a.[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = a.[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = a.[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = a.[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_snapshot_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = a.[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = a.[dim_ent_mit_fully_avoided_nk]
	WHERE Process_date = (SELECT MAX(Process_date) FROM [promt].[fact_promt_risk_snapshot] a33
							WHERE   a33.period_date = a.period_date 
								and a33.t_project_id = a.t_project_id
								and a33.risk_id = a.risk_id 
								and a33.risk_no = a.risk_no );
GO









DROP VIEW [promt].[Opportunity information]
GO

CREATE VIEW [promt].[Opportunity information] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Closed Dtm], [Archived], [Rearchival Date], [Event P80])
AS SELECT 
	a.opportunity_id
	,a.opportunity_no
	,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
	,NULLIF(a1.[Sub Category],'') as [Sub Category]
	,a.opportunity_title
	,a.drivers_causes
	,a.description
	,a.record_date	
	,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
	,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
	,NULLIF(a3.[environment description],'') as [environment description]
	,NULLIF(a4.[health safety security description],'') as [health safety security description]
	,NULLIF(a5.[quality description],'') as [quality description]
	,NULLIF(a6.[reputation description],'') as [reputation description]
	,NULLIF(a7.[social culture description],'') as [social culture description]
	,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
	,NULLIF(a9.[schedule description],'') as [schedule description]
	,case 
		when a15.[Overall Impact] = 1 then '1. Very Low'
		when a15.[Overall Impact] = 2 then '2. Low'
		when a15.[Overall Impact] = 3 then '3. Medium'
		when a15.[Overall Impact] = 4 then '4. High'
		when a15.[Overall Impact] = 5 then '5. Very High'
		else null
	  end as overall_impact_description
	,NULLIF(a15.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
	,a.severity_score
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then '1. Fair'
		when a.severity_score >= 4 AND  a.severity_score <= 9 then '2. Good'
		when a.severity_score >= 10 AND  a.severity_score <= 15 then '3. Very Good'
		when a.severity_score >= 16 AND  a.severity_score <= 25 then '4. Excellent'
		else
		null
	end
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then 1
		when a.severity_score >= 4 AND  a.severity_score <= 9 then 2
		when a.severity_score >= 10 AND  a.severity_score <= 15 then 3
		when a.severity_score >= 16 AND  a.severity_score <= 25 then 4
		else
		0
	end
	,a.hilp
	,a.opportunity_owner
	,a.opportunity_due_date
	,NULLIF(a10.[opportunity status description],'') as [opportunity status description]
	,NULLIF(a11.[opportunity closing justification description],'') as [opportunity closing justification description]
    ,a.actions
    ,a.opportunity_cost
	,NULLIF(a14.[Respose Status Description],'') as [Respose Status Description]
	,a.action_due_date
    ,a.probability
    ,a.best_case
    ,a.most_likely
    ,a.worst_case
    ,a.discrete_value
    ,a.bottom_value
    ,a.top_value
    ,a.lower_probability
    ,a.min_value
    ,a.max_value
	,NULLIF(a12.[distribution type description],'') as [distribution type description]
    ,a.risk_function
	,a.[t_project_id]
	,a16.[Project Number] + ' - ' + a16.[Project Project Title] 
	,a.active_flag
	,a.created_dtm
    ,a.created_by
    ,a.dl_touched_dtm
	,a.created_by
	,NULLIF(a13.[risk modeling tech description],'') as [risk modeling tech description]
    , a.version_no
	,case when Convert(Date,a.opportunity_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.opportunity_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,case	when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
			when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,a.closed_dtm
	,a.archived
	,a.rearchival_date
	,a.event_p80

  FROM [promt].[fact_promt_opportunity] a
		left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v]
			a1 on a1.[dim_ent_risk_opportunity_category_nk] = a.[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = a.[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = a.[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = a.[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = a.[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = a.[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = a.[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = a.[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= a.[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_opportunity_status_active_v]
					a10 on a10.[dim_ent_opportunity_status_nk] = a.[dim_ent_opportunity_status_nk]
	left outer join [promt].[dim_ent_promt_opportunity_closing_justification_active_v]
					a11 on a11.[dim_ent_opportunity_closing_justification_nk] = a.[dim_ent_opportunity_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a12 on a12.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a13 on a13.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_response_status_active_v]
					a14 on a14.[dim_ent_response_status_nk] = a.[dim_ent_response_status_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a15 on a15.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
				a16 on a16.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_opportunity] a17
						 where a17.opportunity_id = a.opportunity_id 
								and a17.opportunity_no = a.opportunity_no and 
								a17.t_project_id = a.t_project_id );
GO








DROP VIEW [promt].[Opportunity information History]
GO

CREATE VIEW [promt].[Opportunity information History] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Closed Dtm], [Archived], [Rearchival Date], [Event P80])
AS SELECT 
	a.opportunity_id
	,a.opportunity_no
	,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
	,NULLIF(a1.[Sub Category],'') as [Sub Category]
	,a.opportunity_title
	,a.drivers_causes
	,a.description
	,a.record_date	
	,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
	,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
	,NULLIF(a3.[environment description],'') as [environment description]
	,NULLIF(a4.[health safety security description],'') as [health safety security description]
	,NULLIF(a5.[quality description],'') as [quality description]
	,NULLIF(a6.[reputation description],'') as [reputation description]
	,NULLIF(a7.[social culture description],'') as [social culture description]
	,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
	,NULLIF(a9.[schedule description],'') as [schedule description]
	,case 
		when a15.[Overall Impact] = 1 then '1. Very Low'
		when a15.[Overall Impact] = 2 then '2. Low'
		when a15.[Overall Impact] = 3 then '3. Medium'
		when a15.[Overall Impact] = 4 then '4. High'
		when a15.[Overall Impact] = 5 then '5. Very High'
		else null
	  end as overall_impact_description
	,NULLIF(a15.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
	,a.severity_score
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then '1. Fair'
		when a.severity_score >= 4 AND  a.severity_score <= 9 then '2. Good'
		when a.severity_score >= 10 AND  a.severity_score <= 15 then '3. Very Good'
		when a.severity_score >= 16 AND  a.severity_score <= 25 then '4. Excellent'
		else
		null
	end
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then 1
		when a.severity_score >= 4 AND  a.severity_score <= 9 then 2
		when a.severity_score >= 10 AND  a.severity_score <= 15 then 3
		when a.severity_score >= 16 AND  a.severity_score <= 25 then 4
		else
		0
	end
	,a.hilp
	,a.opportunity_owner
	,a.opportunity_due_date
	,NULLIF(a10.[opportunity status description],'') as [opportunity status description]
	,NULLIF(a11.[opportunity closing justification description],'') as [opportunity closing justification description]
    ,a.actions
    ,a.opportunity_cost
	,NULLIF(a14.[Respose Status Description],'') as [Respose Status Description]
	,a.action_due_date
    ,a.probability
    ,a.best_case
    ,a.most_likely
    ,a.worst_case
    ,a.discrete_value
    ,a.bottom_value
    ,a.top_value
    ,a.lower_probability
    ,a.min_value
    ,a.max_value
	,NULLIF(a12.[distribution type description],'') as [distribution type description] 
    ,a.risk_function
	,a.[t_project_id]
	,a16.[Project Number] + ' - ' + a16.[Project Project Title] 
	,a.active_flag
	,a.created_dtm
    ,a.created_by
    ,a.dl_touched_dtm
	,a.created_by
	,NULLIF(a13.[risk modeling tech description],'') as [risk modeling tech description]
    , a.version_no
	,case when Convert(Date,a.opportunity_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.opportunity_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,case	when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
			when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,a.closed_dtm
	,a.archived
	,a.rearchival_date
	,a.event_p80
	 
  FROM [promt].[fact_promt_opportunity] a
		left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v]
			a1 on a1.[dim_ent_risk_opportunity_category_nk] = a.[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = a.[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = a.[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = a.[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = a.[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = a.[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = a.[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = a.[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= a.[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_opportunity_status_active_v]
					a10 on a10.[dim_ent_opportunity_status_nk] = a.[dim_ent_opportunity_status_nk]
	left outer join [promt].[dim_ent_promt_opportunity_closing_justification_active_v]
					a11 on a11.[dim_ent_opportunity_closing_justification_nk] = a.[dim_ent_opportunity_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a12 on a12.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a13 on a13.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_response_status_active_v]
					a14 on a14.[dim_ent_response_status_nk] = a.[dim_ent_response_status_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a15 on a15.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
				a16 on a16.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_opportunity] a17
						 where a17.opportunity_id = a.opportunity_id 
								and a17.opportunity_no = a.opportunity_no and 
								a17.t_project_id = a.t_project_id );
GO








DROP VIEW [promt].[Opportunity information History Snapshot]
GO

CREATE VIEW [promt].[Opportunity information History Snapshot] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Period Date], [Closed Dtm], [Archived], [Rearchival Date], [Event P80])
AS SELECT 
	a.opportunity_id
	,a.opportunity_no
	,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
	,NULLIF(a1.[Sub Category],'') as [Sub Category]
	,a.opportunity_title
	,a.drivers_causes
	,a.description
	,a.record_date	
	,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
	,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
	,NULLIF(a3.[environment description],'') as [environment description] 
	,NULLIF(a4.[health safety security description],'') as [health safety security description]
	,NULLIF(a5.[quality description],'') as [quality description]
	,NULLIF(a6.[reputation description],'') as [reputation description]
	,NULLIF(a7.[social culture description],'') as [social culture description]
	,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
	,NULLIF(a9.[schedule description],'') as [schedule description]
	,case 
		when a15.[Overall Impact] = 1 then '1. Very Low'
		when a15.[Overall Impact] = 2 then '2. Low'
		when a15.[Overall Impact] = 3 then '3. Medium'
		when a15.[Overall Impact] = 4 then '4. High'
		when a15.[Overall Impact] = 5 then '5. Very High'
		else null
	  end as overall_impact_description
	,NULLIF(a15.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
	,a.severity_score
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then '1. Fair'
		when a.severity_score >= 4 AND  a.severity_score <= 9 then '2. Good'
		when a.severity_score >= 10 AND  a.severity_score <= 15 then '3. Very Good'
		when a.severity_score >= 16 AND  a.severity_score <= 25 then '4. Excellent'
		else
		null
	end
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then 1
		when a.severity_score >= 4 AND  a.severity_score <= 9 then 2
		when a.severity_score >= 10 AND  a.severity_score <= 15 then 3
		when a.severity_score >= 16 AND  a.severity_score <= 25 then 4
		else
		0
	end
	,a.hilp
	,a.opportunity_owner
	,a.opportunity_due_date
	,NULLIF(a10.[opportunity status description],'') as [opportunity status description]
	,NULLIF(a11.[opportunity closing justification description],'') as [opportunity closing justification description]
    ,a.actions
    ,a.opportunity_cost
	,NULLIF(a14.[Respose Status Description],'') as [Respose Status Description]
	,a.action_due_date
    ,a.probability
    ,a.best_case
    ,a.most_likely
    ,a.worst_case
    ,a.discrete_value
    ,a.bottom_value
    ,a.top_value
    ,a.lower_probability
    ,a.min_value
    ,a.max_value
	,NULLIF(a12.[distribution type description],'') as [distribution type description]
    ,a.risk_function
	,a.[t_project_id]
	,a16.[Project Number] + ' - ' + a16.[Project Project Title] 
	,a.active_flag
	,a.created_dtm
    ,a.created_by
    ,a.dl_touched_dtm
	,a.created_by
	,NULLIF(a13.[risk modeling tech description],'') as [risk modeling tech description]
    , a.version_no
	,case when Convert(Date,a.opportunity_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.opportunity_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,case	when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
			when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,period_date AS [Period Date]
	,a.closed_dtm
	,a.archived
	,a.rearchival_date
	,a.event_p80
	 
  FROM [promt].[fact_promt_opportunity_snapshot] a
		left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v]
			a1 on a1.[dim_ent_risk_opportunity_category_nk] = a.[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = a.[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = a.[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = a.[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = a.[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = a.[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = a.[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = a.[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= a.[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_opportunity_status_active_v]
					a10 on a10.[dim_ent_opportunity_status_nk] = a.[dim_ent_opportunity_status_nk]
	left outer join [promt].[dim_ent_promt_opportunity_closing_justification_active_v]
					a11 on a11.[dim_ent_opportunity_closing_justification_nk] = a.[dim_ent_opportunity_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a12 on a12.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a13 on a13.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_response_status_active_v]
					a14 on a14.[dim_ent_response_status_nk] = a.[dim_ent_response_status_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a15 on a15.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_snapshot_active_v]
				a16 on a16.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
				
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_opportunity_snapshot] a17
						 where 
								a17.period_date = a.period_date
							and	a17.t_project_id = a.t_project_id
							and a17.opportunity_id = a.opportunity_id 
							and a17.opportunity_no = a.opportunity_no );
GO










