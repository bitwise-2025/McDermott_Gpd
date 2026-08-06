DECLARE @projectId varchar(100);
SET @projectId = 'N8585';


--Both Onshore and Offshore Pipelines
update plp_parameter_value
set parameter_value=parameter_value+ ',' + @projectId
where active=1 and pipeline_code in ('pl_phases_mcpm_source_to_stage', 'pl_prime_mcpm_source_to_stage', 'pl_sub_prime_mcpm_source_to_stage', 'pl_summary_cost_type_mcpm_source_to_stage', 'pl_unit_mcpm_source_to_stage', 'pl_wa_mcpm_source_to_stage')
and parameter_code in ('project');



--MCPM Offshore Pipelines
update plp_parameter_value
set parameter_value=parameter_value+ ',' + @projectId
where active=1 and  pipeline_code in ('pl_mcpmdata_offshore_monthly_raw_to_synapse')
and parameter_code in ('projectid');



