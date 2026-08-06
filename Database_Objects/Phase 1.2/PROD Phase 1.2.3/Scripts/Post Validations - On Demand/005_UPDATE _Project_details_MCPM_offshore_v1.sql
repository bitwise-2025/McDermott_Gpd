-----------------------plp_parameter_value------------------------------------
update plp_parameter_value
set parameter_value='N8585,D7029,D7072,N8196,R4036,R3973,D7317,E0660,D7415,D7512,D7521,D6978,D7264,D7068,N8318,R3507'
where pipeline_code='pl_mcpmdata_offshore_weekly_source_to_stage'
and parameter_code = 'projectid'
--and parameter_value_id=5797