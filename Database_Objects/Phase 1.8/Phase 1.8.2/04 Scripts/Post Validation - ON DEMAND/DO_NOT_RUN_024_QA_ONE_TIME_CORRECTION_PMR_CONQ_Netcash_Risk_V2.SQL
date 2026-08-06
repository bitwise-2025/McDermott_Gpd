update plp_pipeline
set sec_sa_id=47
where pipeline_code like 'pl_risk_riskopp_exlstgjsn_master_pipeline'



update plp_parameter_value
set parameter_value='QA/NCSA Operational/Manual/PMR/Risk_Opportunity/Risks'
where pipeline_code like 'pl_risk_riskopp_exlstgjsn_master_pipeline'
and parameter_value_id = 6620
