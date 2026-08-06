--STEP-1: EXECUTE THE BELOW QUERY
-----------------------------------------------
--pl_yardkpi_material_receiving_source_to_stage
-----------------------------------------------

select * from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_material_receiving_source_to_stage'
select * from plp_parameter_value where pipeline_code ='pl_yardkpi_material_receiving_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_source_to_stage', 'SHAREPOINT', 'list_name', 2,'list_name', 'IN', 1, 'Swapnanil.Pal@mcdermott.com', '2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_source_to_stage', 'SHAREPOINT', 'sharepoint_link', 6,'sharepoint_link', 'IN', 1, 'Swapnanil.Pal@mcdermott.com', '2022-04-22 10:53:23.817')
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'list_name', 'ALLPROJECTMRR', 1, 'Swapnanil.Pal@mcdermott.com', '2022-07-07 14:21:00.000', 'pl_yardkpi_material_receiving_source_to_stage', 'SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sharepoint_link', 'https://mcdermottinc.sharepoint.com/sites/WH-MATERIALCOORDINATOR/', 1, 'Swapnanil.Pal@mcdermott.com', '2022-07-07 14:21:00.000', 'pl_yardkpi_material_receiving_source_to_stage', 'SHAREPOINT')

Delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_material_receiving_source_to_stage' and parameter_code = 'start_date'
Delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_material_receiving_source_to_stage' and parameter_code = 'start_date'

UPDATE plp_parameter_value
SET parameter_value = 'SHAREPOINT'
WHERE pipeline_code = 'pl_yardkpi_material_receiving_source_to_stage' and parameter_code = 'sub_source_name'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-2: EXECUTE THE BELOW QUERY
--------------------------------------------
--pl_yardkpi_material_receiving_stage_to_raw
--------------------------------------------

select * from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_material_receiving_stage_to_raw'
select * from plp_parameter_value where pipeline_code ='pl_yardkpi_material_receiving_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_stage_to_raw', 'SHAREPOINT', 'input_file_system', 1,'input_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_stage_to_raw', 'SHAREPOINT', 'folder_path', 2,'folder_path','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_stage_to_raw', 'SHAREPOINT', 'file_name', 3,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_stage_to_raw', 'SHAREPOINT', 'output_file_system', 4,'output_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Material_Register/Material_Receiving', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'Material_Receiving', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_stage_to_raw','SHAREPOINT')

insert into plp_pipeline 
select 'pl_yardkpi_material_receiving_stage_to_raw' as pipeline_code, description as subject_area_code, 'MR From Stage to Raw' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by,'2022-04-22 10:53:23.817' as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-3: EXECUTE THE BELOW QUERY
----------------------------------------------
--pl_yardkpi_material_receiving_raw_to_synapse
----------------------------------------------

select * from plp_pipeline_parameter where pipeline_code ='pl_yardkpi_material_receiving_raw_to_synapse'
select * from plp_parameter_value where pipeline_code ='pl_yardkpi_material_receiving_raw_to_synapse'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT', 'folder_path', 2,'folder_path','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT', 'file_name', 3,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT', 'output_file_system', 5,'output_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT', 'source_code', 6, 'source_code', 'IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT', 'sub_source_code', 7, 'sub_source_code', 'IN', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817')
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Material_Register/Material_Receiving', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'Material_Receiving', 1, 'Swapnanil.Pal@mcdermott.com','2022-04-22 10:53:23.817','pl_yardkpi_material_receiving_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'Swapnanil.Pal@mcdermott.com', '2022-04-22 10:53:23.817', 'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'SHAREPOINT', 1, 'Swapnanil.Pal@mcdermott.com', '2022-04-22 10:53:23.817', 'pl_yardkpi_material_receiving_raw_to_synapse', 'SHAREPOINT')
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-4: EXECUTE THE BELOW QUERY

ALTER TABLE [yardkpi].[stage_material_Receiving_register]
ADD [UNIQID] [varchar](100)

ALTER TABLE [dbo].[dim_entp_yardkpi_material_Receiving_register]
ADD [UNIQID] [varchar](100)
 
ALTER TABLE [yardkpi].[reprocess_material_Receiving_register]
ADD [UNIQID] [varchar](100)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------