--EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','Toolhound'
----------------------------------------------
--For reprocess history table tracking activity
--select * from [dbo].[reprocess_history_v]
----------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_toolhound_inventory_master_pipeline' as pipeline_code, description as subject_area_code, 'Toolhound Master Pipeline' as description, null as comment, 1 as active, 'aamar@mcdermott.com' as touched_by,'2023-09-20T12:48:24.10' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_toolhound_inventory_master_pipeline','yardkpi.stage_toolhound_inventory','yardkpi.reprocess_toolhound_inventory','dbo.dim_entp_yardkpi_toolhound_inventory')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_toolhound_inventory_master_pipeline','yardkpi.stage_toolhound_category_v','yardkpi.reprocess_toolhound_category','dbo.dim_entp_yardkpi_toolhound_category')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_toolhound_inventory_master_pipeline','yardkpi.stage_toolhound_subcategory_v','yardkpi.reprocess_toolhound_subcategory','dbo.dim_entp_yardkpi_toolhound_subcategory')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_toolhound_inventory_master_pipeline','yardkpi.stage_toolhound_location_v','yardkpi.reprocess_toolhound_location','dbo.dim_entp_yardkpi_toolhound_location')

--------------------------------------------------
--pl_yardkpi_toolhound_inventory_source_to_stage
--------------------------------------------------
 
insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_toolhound_inventory_source_to_stage', 'YARDKPI','Toolhound Source to Stage ADLS', NULL , 1 , 'aamar@mcdermott.com','2023-09-20T12:48:24.10', 90)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound', 'last_run_start_date', 1, 'last_run_start_date', 'IN',  1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound', 'file_system', 2,'file_system', 'IN', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound', 'folder_path', 3,'folder_path', 'IN', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound', 'file_name', 4,'file_name', 'IN', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('last_run_start_date', ' ', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_system', 'mdr-staging-data', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('folder_path', 'Project_Data/YARDKPI/Toolhound/Inventory', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_name', 'Toolhound_Inventory', 1, 'aamar@mcdermott.com', '2023-09-20T12:48:24.10', 'pl_yardkpi_toolhound_inventory_source_to_stage', 'Toolhound')


-----------------------------------------------
--pl_yardkpi_toolhound_inventory_stage_to_raw
-----------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_toolhound_inventory_stage_to_raw', 'YARDKPI','Toolhound Stage to Raw ADLS', NULL , 1 , 'aamar@mcdermott.com','2023-09-20T12:48:24.10', 90)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_stage_to_raw', 'Toolhound', 'input_file_system', 1,'input_file_system','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_stage_to_raw', 'Toolhound', 'folder_path', 2,'folder_path','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_stage_to_raw', 'Toolhound', 'file_name', 3,'file_name','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_stage_to_raw', 'Toolhound', 'output_file_system', 4,'output_file_system','IN', 1, 'aamar@mcdermott.com','2023-09-21T11:20:24.10')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('input_file_system', 'mdr-staging-data', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_toolhound_inventory_stage_to_raw','Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('folder_path', 'Project_Data/YARDKPI/Toolhound/Inventory', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_toolhound_inventory_stage_to_raw','Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('file_name', 'Toolhound_Inventory', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_toolhound_inventory_stage_to_raw','Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('output_file_system', 'mdr-raw-data', 1, 'aamar@mcdermott.com','2023-09-21T12:48:24.10','pl_yardkpi_toolhound_inventory_stage_to_raw','Toolhound')

-------------------------------------------------------
--pl_yardkpi_toolhound_inventory_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm,sec_sa_id
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'YARDKPI','Toolhound Raw ADLS to Synapse', NULL , 1 , 'aamar@mcdermott.com','2023-09-20T12:48:24.10', 90)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'source_code', 1, 'source_code', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'sub_source_code', 2, 'sub_source_code', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')
 
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'directory', 3, 'directory', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')
 
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'input_file_system', 4, 'input_file_system', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'input_file_name', 5, 'input_file_name', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values('pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound', 'last_run_start_date', 6, 'last_run_start_date', 'IN', 1, 'aamar@mcdermott.com','2021-09-25T11:20:24.10')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('source_code', 'SYSTEM', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')
 
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('sub_source_code', 'Toolhound', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')
 
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('directory', 'Project_Data/YARDKPI/Toolhound/Inventory', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('input_file_system', 'mdr-raw-data', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('input_file_name', 'Toolhound_Inventory', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values('last_run_start_date', ' ', 1, 'aamar@mcdermott.com', '2021-09-25T11:20:24.10', 'pl_yardkpi_toolhound_inventory_raw_to_synapse', 'Toolhound')

