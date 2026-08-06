--EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','Intelex'
---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_intelex_audit_questn_master_pipeline' as pipeline_code, description as subject_area_code, 'Intelex Audit Question Master' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-12-20T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_intelex_audit_questn_master_pipeline','yardkpi.stage_intelex_audit_questn','yardkpi.reprocess_intelex_audit_questn','dbo.dim_entp_yardkpi_intelex_audit_questn')

-----------------------------------------------------------------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_intelex_audit_questn_source_to_stage' as pipeline_code, description as subject_area_code, 'Intelex Audit questn Data Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-12-20T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_intelex_audit_questn_stage_to_raw' as pipeline_code, description as subject_area_code, 'Intelex Audit questn Data Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-12-20T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_intelex_audit_questn_raw_to_synapse' as pipeline_code, description as subject_area_code, 'Intelex Audit questn Data RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-12-20T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_intelex_audit_questn_source_to_stage
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_source_to_stage', 'Intelex', 'service_url', 1,'service_url','IN', 1, 'ajmal.usman@mcdermott.com','2022-12-20T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_source_to_stage', 'Intelex', 'file_system', 2,'file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-12-20T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_source_to_stage', 'Intelex', 'folder_path', 3,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-12-20T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_source_to_stage', 'Intelex', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-12-20T11:20:24.10')
-------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'service_url', 'https://clients.intelex.com/Login3/McDermott/api/odata/Forms/DataDefinition/d4f63903-f4e9-48d4-a9b2-7d4773dc819b', 1, 'ajmal.usman@mcdermott.com','2022-12-20T11:20:24.10','pl_yardkpi_intelex_audit_questn_source_to_stage','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_intelex_audit_questn_source_to_stage','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Intelex/Audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_intelex_audit_questn_source_to_stage','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'Intelex_audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_intelex_audit_questn_source_to_stage','Intelex')

----------------------------------------
--pl_yardkpi_intelex_audit_questn_stage_to_raw
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_stage_to_raw', 'Intelex', 'input_file_system', 1,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_stage_to_raw', 'Intelex', 'folder_path', 2,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_stage_to_raw', 'Intelex', 'file_name', 3,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_stage_to_raw', 'Intelex', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_stage_to_raw','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Intelex/Audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_intelex_audit_questn_stage_to_raw','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'Intelex_audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_stage_to_raw','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_stage_to_raw','Intelex')


-------------------------------------------------------
--pl_yardkpi_intelex_audit_questn_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'source_code', 1,'source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'sub_source_code', 2,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'input_file_system', 4,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'input_file_name', 5,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_intelex_audit_questn_raw_to_synapse', 'Intelex', 'last_run_start_date', 6,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')
-----------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'Intelex', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Intelex/Audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'Intelex_audit_questn', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_intelex_audit_questn_raw_to_synapse','Intelex')
