
--Insert Pipeline entry for pl_mcpmdata_offshore_monthly_raw_to_synapse
insert into plp_pipeline values('pl_mcpmdata_offshore_monthly_raw_to_synapse','NCSA', 'MCPM Offshore data FACT raw to Synapse load',null, 1, 'ssampathkumar@mcdermott.com', '2021-12-20 19:52:41.387', 9)



--Insert Paramenters for MCPM Onshore by considering the parameters from MCPM Onshore
insert into plp_pipeline_parameter 
select 'pl_mcpmdata_offshore_monthly_raw_to_synapse' as pipeline_code, pipeline_sub_code,parameter_code,display_order,
source_column_name,source_operator,comment,active,touched_by,'2021-12-20 07:52:41.387' AS touched_dtm
from plp_pipeline_parameter
where pipeline_code like 'pl_mcpmdata_onshore_data_raw_to_synapse_stage%' and pipeline_sub_code ='MCPM';

--Remove the unused ones for MCPM Offshre
delete from plp_pipeline_parameter where pipeline_code like 'pl_mcpmdata_offshore_monthly_raw_to_synapse%'
and parameter_code in ('function_code','unit_of_measure_code_quantity','unit_of_measure_code_hours','unit_of_measure_code_amount','unit_of_measure_code_precentage');



--Insert Parameter values for MCPM Onshore by considering the parameter values from MCPM Onshore
insert into plp_parameter_value
select parameter_code,parameter_value,active,touched_by,'2021-12-20 07:52:41.387' AS touched_dtm,
'pl_mcpmdata_offshore_monthly_raw_to_synapse' as pipeline_code,pipeline_sub_code
from plp_parameter_value
where pipeline_code like 'pl_mcpmdata_onshore_data_raw_to_synapse_stage%' and pipeline_sub_code ='MCPM';

--Remove the unused ones for MCPM Offshre
delete from plp_parameter_value where pipeline_code like 'pl_mcpmdata_offshore_monthly_raw_to_synapse%'
and parameter_code in ('function_code','unit_of_measure_code_quantity','unit_of_measure_code_hours','unit_of_measure_code_amount','unit_of_measure_code_precentage');

--Update sub_source_code value as 'MCPM Offshore'
update plp_parameter_value
set parameter_value ='MCPM Offshore'
where pipeline_code like 'pl_mcpmdata_offshore_monthly_raw_to_synapse%' and parameter_code ='sub_source_code';


--Update the Projectid value as N8585 for MCPM Offshore
--Commenting the below update section as we have consolidated update script for Dim and Facts for all new Offshore projects
/*
update plp_parameter_value
set parameter_value='N8585'
where active=1 and  pipeline_code in ('pl_mcpmdata_offshore_monthly_raw_to_synapse') and parameter_code in ('projectid');
*/