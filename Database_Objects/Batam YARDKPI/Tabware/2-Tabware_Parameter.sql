
EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','Tabware'
---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_tabware_master_pipeline' as pipeline_code, description as subject_area_code, 'Tabware Master Pipeline' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2023-02-21T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_tabware_master_pipeline','yardkpi.stage_tabware_wo','yardkpi.reprocess_tabware_wo','dbo.dim_entp_yardkpi_tabware_wo')

-----------------------------------------------------------------------------------------------------


insert into plp_pipeline 
select 'pl_yardkpi_tabware_source_to_stage' as pipeline_code, description as subject_area_code, 'Tabware Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2023-02-21T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_tabware_stage_to_raw' as pipeline_code, description as subject_area_code, 'Tabware ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2023-02-21T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_tabware_raw_to_synapse' as pipeline_code, description as subject_area_code, 'Tabware RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2023-02-21T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_tabware_source_to_stage
---------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_source_to_stage', 'Tabware', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_source_to_stage', 'Tabware', 'plant', 2,'plant','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_source_to_stage', 'Tabware', 'file_system', 3,'file_system','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_source_to_stage', 'Tabware', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_source_to_stage', 'Tabware', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

-------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '2022-01-01 10:54:23', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_source_to_stage','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'plant', 'BTM', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_source_to_stage','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_source_to_stage','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_source_to_stage','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_source_to_stage','Tabware')
--------------------------------------------------------------------------
insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'plant', 'PIPELINE', 'TABWARE PLANT/YARD', 'T', 1, 5000, 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.107')

----------------------------------------
--pl_yardkpi_tabware_stage_to_raw
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_stage_to_raw', 'Tabware', 'input_file_system', 1,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_stage_to_raw', 'Tabware', 'folder_path', 2,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_stage_to_raw', 'Tabware', 'file_name', 3,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_stage_to_raw', 'Tabware', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_stage_to_raw','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_stage_to_raw','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_stage_to_raw','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_stage_to_raw','Tabware')

-------------------------------------------------------
--pl_yardkpi_tabware_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'source_code', 1,'source_code','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'sub_source_code', 2,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'input_file_system', 4,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'input_file_name', 5,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_tabware_raw_to_synapse', 'Tabware', 'last_run_start_date', 6,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10')
-----------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'TABWARE', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'tabware', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com','2023-02-21T11:20:24.10','pl_yardkpi_tabware_raw_to_synapse','Tabware')
