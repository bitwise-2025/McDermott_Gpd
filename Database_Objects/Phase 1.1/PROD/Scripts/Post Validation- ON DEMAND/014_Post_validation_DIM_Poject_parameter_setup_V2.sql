--add multiple project number(s) to draw data into mcpm dimensions
update plp_parameter_value
set parameter_value='99236910,99185710,N8585,D7029,D7072,D7068,99350106,R4036,R3973,E0660,N8196,D6978,N8318,99356968,D7317,99357972,990E0841,99356420,D7521,D7512,D7415,D7264,99241222,R3507,D6847,D7018,D7531,D7532,D7533'
where active=1 and pipeline_code in ('pl_phases_mcpm_source_to_stage', 'pl_prime_mcpm_source_to_stage', 'pl_sub_prime_mcpm_source_to_stage', 'pl_summary_cost_type_mcpm_source_to_stage', 'pl_unit_mcpm_source_to_stage', 'pl_wa_mcpm_source_to_stage')
and parameter_code in ('project')
