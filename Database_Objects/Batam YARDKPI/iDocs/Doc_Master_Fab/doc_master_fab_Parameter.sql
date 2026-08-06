
EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','iDocs'

-------------------------------------------
---select * from [dbo].[reprocess_history_v]
------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_idocs_doc_master_fab_master_pipeline' as pipeline_code, description as subject_area_code, 'IDOCS Doc Master Fab Master' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_idocs_doc_master_fab_master_pipeline','yardkpi.stage_iDocs_fab_docmaster','yardkpi.reprocess_iDocs_fab_docmaster','dbo.dim_entp_yardkpi_iDocs_fab_docmaster')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_idocs_doc_master_fab_master_pipeline','yardkpi.stage_ent_contract_iDocs_fab_docmas_vw','yardkpi.reprocess_yardkpi_ent_contract','dim_entp_project')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_idocs_doc_master_fab_master_pipeline','yardkpi.stage_ent_contract_iDocs_fab_docmas_vw','yardkpi.reprocess_yardkpi_ent_contract','dbo.dim_ent_contract')

-----------------------------------------------------------------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_idocs_doc_master_fab_source_to_stage' as pipeline_code, description as subject_area_code, 'IDOCS Doc Master Fab Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_idocs_doc_master_fab_stage_to_raw' as pipeline_code, description as subject_area_code, 'IDOCS Doc Master Fab Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse' as pipeline_code, description as subject_area_code, 'IDOCS Doc Master Fab RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

----------
---------------------------------------------
--pl_yardkpi_idocs_doc_master_fab_source_to_stage
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'file_system', 2,'file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'folder_path', 3,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'input_folder_path', 5,'input_folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_source_to_stage', 'iDocs', 'input_file_name', 6,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

-----------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '2022-11-11 04:48:26', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/iDocs/Doc_Master_Fab', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'iDocs_doc_master_fab', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_folder_path', 'IDOCS-', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', '_IDOCS_DL_PWRBI_FAB_DOCMASTER_', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_source_to_stage','iDocs')

----------------------------------------
--pl_yardkpi_detailing_engineering_excel_stage_to_raw
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_stage_to_raw', 'iDocs', 'input_file_system', 1,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_stage_to_raw', 'iDocs', 'folder_path', 2,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_stage_to_raw', 'iDocs', 'file_name', 3,'file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_stage_to_raw', 'iDocs', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_stage_to_raw', 'iDocs', 'input_file_name', 5,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')
----------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_stage_to_raw','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/iDocs/Doc_Master_Fab', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_stage_to_raw','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'iDocs_doc_master_fab', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_stage_to_raw','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_stage_to_raw','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', '_IDOCS_DL_PWRBI_FAB_DOCMASTER_', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_stage_to_raw','iDocs')

-------------------------------------------------------
--pl_yardkpi_idocs_doc_master_fab_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'source_code', 1,'source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'sub_source_code', 2,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'input_file_system', 4,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'input_file_name', 5,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_idocs_doc_master_fab_raw_to_synapse', 'iDocs', 'last_run_start_date', 6,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

-----------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'iDocs', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/iDocs/Doc_Master_Fab', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'iDocs_doc_master_fab', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '2022-11-21 08:36:28', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_idocs_doc_master_fab_raw_to_synapse','iDocs')

--*****************dONE*************************
