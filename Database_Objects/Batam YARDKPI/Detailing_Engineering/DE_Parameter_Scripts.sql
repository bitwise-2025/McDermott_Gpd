--SELECT * FROM SEC_SA

---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

Delete from plp_pipeline where pipeline_code ='pl_yardkpi_detailing_engineering_excel_master'
Delete from plp_pipeline_details where pipeline_code ='pl_yardkpi_detailing_engineering_excel_master'

Delete from plp_pipeline where pipeline_code ='pl_yardkpi_detailing_engineering_excel_source_to_stage'
Delete from plp_pipeline where pipeline_code ='pl_yardkpi_detailing_engineering_excel_stage_to_raw'
Delete from plp_pipeline where pipeline_code ='pl_yardkpi_detailing_engineering_excel_raw_to_synapse'

Delete from plp_parameter where parameter_code ='output_folder_path'
Delete from plp_parameter where parameter_code ='output_file_name'

Delete from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_detailing_engineering_excel_source_to_stage'
Delete from plp_parameter_value where pipeline_code ='pl_yardkpi_detailing_engineering_excel_source_to_stage'

Delete from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_detailing_engineering_excel_stage_to_raw'
Delete from plp_parameter_value where pipeline_code ='pl_yardkpi_detailing_engineering_excel_stage_to_raw'

Delete from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_detailing_engineering_excel_raw_to_synapse'
Delete from plp_parameter_value where pipeline_code ='pl_yardkpi_detailing_engineering_excel_raw_to_synapse'


--------------==================================================================================
insert into plp_pipeline 
select 'pl_yardkpi_detailing_engineering_excel_master' as pipeline_code, description as subject_area_code, 'Detailing Engineering Excel Master' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_detailing_engineering_excel_master','yardkpi.stage_dim_yardkpi_detailing_engineering_v','yardkpi.reprocess_detailing_engineering','dbo.dim_entp_yardkpi_detailing_engineering')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_detailing_engineering_excel_master','yardkpi.stage_ent_contract_det_eng_vw','yardkpi.reprocess_yardkpi_ent_project','dim_entp_project')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_detailing_engineering_excel_master','yardkpi.stage_ent_contract_det_eng_vw','yardkpi.reprocess_yardkpi_ent_project','dbo.dim_ent_contract')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_detailing_engineering_excel_master','yardkpi.stage_fact_yardkpi_detailing_activity_v','yardkpi.reprocess_fact_yardkpi_detailing_activity','dbo.fact_yardkpi_detailing_engineering_data')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_detailing_engineering_excel_master','yardkpi.stage_fact_yardkpi_detailing_plan_v','yardkpi.reprocess_fact_yardkpi_detailing_plan','dbo.fact_yardkpi_detailing_engineering_plan')


---------------------------------------^^^^^
-----------------------------------------
--SELECT * from plp_pipeline where subject_area_code ='YARDKPI'
-------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_detailing_engineering_excel_source_to_stage' as pipeline_code, description as subject_area_code, 'Detailing Engineering Excel Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_detailing_engineering_excel_stage_to_raw' as pipeline_code, description as subject_area_code, 'Detailing Engineering Excel Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_detailing_engineering_excel_raw_to_synapse' as pipeline_code, description as subject_area_code, 'Detailing Engineering Excel RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,'2022-10-06T11:20:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

----------
---------------------------------------------
--pl_yardkpi_detailing_engineering_excel_source_to_stage
---------------------------------------------

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'output_folder_path', 'PIPELINE', 'pl_yardkpi_source_to_stage_folder_path', 'T', 1, 255, 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'output_file_name', 'PIPELINE', 'pl_yardkpi_source_to_stage_folder_path', 'T', 1, 255, 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')


--------------------------------------------------------------------------
--select * from plp_parameter where parameter_code like '%folder_path'
----------------------------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'source_directory', 1,'source_directory','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'input_file_name', 2,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'excel_sheet_name', 3,'excel_sheet_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'output_folder_path', 5,'output_folder_path','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'output_file_name', 6,'output_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'last_run_start_date', 7,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')


-----------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_directory', 'Detailing\Drawings\Project Control\1.On Going Project\D7068- Aramco Marjan', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'D7068 - Marjan Package 1 - Detailing Engineering Weekly Progress', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'excel_sheet_name', 'Detailing Activity', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_folder_path', 'Project_Data/YARDKPI/Detailing_Engineering', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_name', 'Detailing_Engineering_Activity', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')
----------------------------------------
--pl_yardkpi_detailing_engineering_excel_stage_to_raw
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_stage_to_raw', 'NetworkFolder', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_stage_to_raw', 'NetworkFolder', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_stage_to_raw', 'NetworkFolder', 'input_file_name', 3,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_stage_to_raw', 'NetworkFolder', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Detailing_Engineering', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_stage_to_raw','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_stage_to_raw','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'Detailing_Engineering_Activity', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_stage_to_raw','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_stage_to_raw','NetworkFolder')

-------------------------------------------------------
--pl_yardkpi_detailing_engineering_excel_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'source_code', 1,'source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'sub_source_code', 2,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'input_file_system', 4,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'input_file_name', 5,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_raw_to_synapse', 'NetworkFolder', 'last_run_start_date', 6,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')

-----------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'MANUAL', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'EXCEL', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Detailing_Engineering', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'Detailing_Engineering_Activity', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_raw_to_synapse','NetworkFolder')

