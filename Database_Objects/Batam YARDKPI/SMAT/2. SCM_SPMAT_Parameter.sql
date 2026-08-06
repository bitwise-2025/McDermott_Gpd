EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','SMAT'
----------------------------------------------
--For reprocess history table tracking activity
--select * from [dbo].[reprocess_history_v]
----------------------------------------------
insert into plp_pipeline 
select 'pl_yardkpi_smat_master_pipeline' as pipeline_code, description as subject_area_code, 'SMAT Master Pipeline' as description, null as comment, 1 as active, 'aamar@mcdermott.com' as touched_by,'2023-09-20T12:48:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_smat_master_pipeline','yardkpi.stage_po_header_smat','yardkpi.reprocess_po_header_smat','dbo.dim_entp_po_header_smat')

--------------------------------------------------
--pl_yardkpi_smat_source_to_stage
--------------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_smat_source_to_stage', 'YARDKPI','SMAT KPI Source to Stage ADLS', NULL , 1 , 'aamar@mcdermott.com','2023-09-20T12:48:24.10', 90)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'source_name', 1, 'source_name', 'IN',  1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'sub_source_name', 2, 'sub_source_name', 'IN',  1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'output_file_system', 3, 'output_file_system', 'IN',  1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'folder_path', 4,'folder_path', 'IN', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'file_name', 5,'file_name', 'IN', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_source_to_stage', 'SMAT', 'last_run_start_date', 6, 'last_run_start_date', 'IN',  1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('source_name', 'SYSTEM', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('sub_source_name', 'SMAT', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('output_file_system', 'mdr-staging-data', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('folder_path', 'Project_Data/YARDKPI/SMAT', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_name', 'YARDKPI_SMAT', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('last_run_start_date', ' ', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_smat_source_to_stage', 'SMAT')


-----------------------------------------------
--pl_yardkpi_smat_stage_to_raw
-----------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_smat_stage_to_raw', 'YARDKPI','SMAT Stage ADLS to RAW ADLS', NULL , 1 , 'aamar@mcdermott.com','2023-09-20T12:48:24.10', 60)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_stage_to_raw', 'SMAT', 'input_file_system', 1,'input_file_system','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_stage_to_raw', 'SMAT', 'folder_path', 2,'folder_path','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_stage_to_raw', 'SMAT', 'file_name', 3,'file_name','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_stage_to_raw', 'SMAT', 'output_file_system', 4,'output_file_system','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('input_file_system', 'mdr-staging-data', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_smat_stage_to_raw','SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('folder_path', 'Project_Data/YARDKPI/SMAT', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_smat_stage_to_raw','SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_name', 'YARDKPI_SMAT', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_smat_stage_to_raw','SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('output_file_system', 'mdr-raw-data', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_smat_stage_to_raw','SMAT')


-------------------------------------------------------
--pl_yardkpi_smat_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_smat_raw_to_synapse', 'YARDKPI','SMAT RAW ADLS to Synapse', NULL , 1 , 'ajmal.usman@mcdermott.com','2023-09-20T12:48:24.10', 60)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_raw_to_synapse', 'SMAT', 'directory', 1, 'directory', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')
 
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_raw_to_synapse', 'SMAT', 'input_file_system', 2, 'input_file_system', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_raw_to_synapse', 'SMAT', 'file_name', 3, 'input_file_name', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_smat_raw_to_synapse', 'SMAT', 'last_run_start_date', 4, 'last_run_start_date', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('directory', 'Project_Data/YARDKPI/SMAT', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_smat_raw_to_synapse', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('input_file_system', 'mdr-raw-data', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_smat_raw_to_synapse', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_name', 'YARDKPI_SMAT', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_smat_raw_to_synapse', 'SMAT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('last_run_start_date', ' ', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_smat_raw_to_synapse', 'SMAT')