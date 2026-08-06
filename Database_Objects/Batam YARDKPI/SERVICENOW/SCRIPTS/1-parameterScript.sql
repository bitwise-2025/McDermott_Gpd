declare @dd datetime
select @dd = getdate()
------------------------------------------------------
--pl_yardkpi_servicenow_source_to_stage
------------------------------------------------------
UPDATE plp_parameter_value 
SET parameter_value = 'ServiceNow'
where pipeline_code = 'pl_yardkpi_servicenow_source_to_stage' 
and parameter_code = 'sub_source_name' 

----------------------------------------------------
--pl_yardkpi_servicenow_stage_to_raw
---------------------------------------------------

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_servicenow_stage_to_raw'

insert into plp_pipeline 
select 'pl_yardkpi_servicenow_stage_to_raw' as pipeline_code, description as subject_area_code, 'ServiceNow Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_servicenow_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_stage_to_raw', 'SERVICENOW', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_stage_to_raw', 'SERVICENOW', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_stage_to_raw', 'SERVICENOW', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_stage_to_raw', 'SERVICENOW', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_servicenow_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/ServiceNow', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_stage_to_raw','SERVICENOW')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_stage_to_raw','SERVICENOW')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_stage_to_raw','SERVICENOW')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'incident', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_stage_to_raw','SERVICENOW')

----------------------------------------------------
--pl_yardkpi_servicenow_raw_to_synapse
---------------------------------------------------

delete from plp_parameter_value
where pipeline_code = 'pl_yardkpi_servicenow_raw_to_synapse' and parameter_code = 'processing_year'

delete from plp_pipeline_parameter
where pipeline_code = 'pl_yardkpi_servicenow_raw_to_synapse' and parameter_code = 'processing_year'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_raw_to_synapse', 'SERVICENOW', 'directory', 2,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_raw_to_synapse', 'SERVICENOW', 'input_file_system', 3,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_servicenow_raw_to_synapse', 'SERVICENOW', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-----------------------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_R2P_raw_to_synapse'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/ServiceNow', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_raw_to_synapse','SERVICENOW')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_raw_to_synapse','SERVICENOW')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'incident', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_servicenow_raw_to_synapse','SERVICENOW')

