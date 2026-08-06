declare @dd datetime
select @dd = getdate()
--=========================================
--pl_idocs_doc_eng_source_to_stage
--==========================================

delete from plp_pipeline_parameter where pipeline_code = 'pl_idocs_doc_eng_source_to_stage' and pipeline_sub_code = 'iDocs_360536'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'last_run_end_date', 2,'last_run_end_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'file_system', 3,'file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'input_file_system', 6,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'input_folder_path', 7,'input_folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_eng_source_to_stage', 'iDocs_360536', 'input_file_name', 8,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

---------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_idocs_doc_eng_source_to_stage' and pipeline_sub_code = 'iDocs_360536'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_end_date', 'currentdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/NCSA/iDocs/Doc_Master_Eng', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'iDocs_doc_eng', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_folder_path', 'IDOCS-O_G-360536_2GW_HVDC_GERMANY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', '*_IDOCS_DL_ENG_PWRBI_DOCMASTER_*.CSV', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_eng_source_to_stage','iDocs_360536')


--=========================================
--pl_idocs_doc_ven_source_to_stage
--==========================================

delete from plp_pipeline_parameter where pipeline_code = 'pl_idocs_doc_ven_source_to_stage' and pipeline_sub_code = 'iDocs_360536'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'last_run_end_date', 2,'last_run_end_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'file_system', 3,'file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'input_file_system', 6,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'input_folder_path', 7,'input_folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_idocs_doc_ven_source_to_stage', 'iDocs_360536', 'input_file_name', 8,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

---------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_idocs_doc_ven_source_to_stage' and pipeline_sub_code = 'iDocs_360536'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_end_date', 'currentdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/NCSA/iDocs/Doc_Master_Ven', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'iDocs_doc_ven', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_folder_path', 'IDOCS-O_G-360536_2GW_HVDC_GERMANY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', '*_IDOCS_DL_VEN_PWRBI_DOCMASTER_*.CSV', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_idocs_doc_ven_source_to_stage','iDocs_360536')
