
--------------------------------------------------debi scripts----------------------------------------

--Update the Start Date manually to pick valid records form W6. The date has to be Saturday date e.g. '2022-07-30 00:00:00'
update plp_parameter_value
set parameter_value='2021-11-27 00:00:00'
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' 
and pipeline_sub_code in ('99236910','99185710') and parameter_code ='start_date'