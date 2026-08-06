
--------------------------------------------------PROD scripts----------------------------------------

---Potentially increase the number of projects for MCPM Weekly Monthly process.

update plp_parameter_value
set parameter_value='99236910,99185710,99356968,99350106,99241222,990E0841,99356420,99357972'
where active=1 and  pipeline_code in ('pl_mcpmdata_onshore_data_raw_to_synapse_stage', 'pl_mcpmdata_onshore_data_source_to_stage', 'pl_mcpmdata_progressitems_source_to_stage')
and parameter_code in ('projectid')