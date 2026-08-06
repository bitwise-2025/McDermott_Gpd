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
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_raw_to_synapse'


update plp_parameter_value
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_raw_to_synapse'


update plp_parameter_value
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_contingency_raw_to_synapse'


update plp_parameter_value
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_simulationresult_raw_to_synapse'


update plp_parameter_value
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_risk_snapshot_raw_to_synapse'


update plp_parameter_value
set parameter_value='2024-05-05 05:24:07.563'
where parameter_code='start_date'
and pipeline_code='pl_promt_datalake_export_opportunity_snapshot_raw_to_synapse'

