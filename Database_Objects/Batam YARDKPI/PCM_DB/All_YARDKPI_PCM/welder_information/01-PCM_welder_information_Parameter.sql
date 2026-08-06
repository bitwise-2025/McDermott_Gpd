declare @dd datetime
select @dd = getdate()

---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

insert into plp_pipeline 
select 'pl_yardkpi_pcm_welder_information_master_pipeline' as pipeline_code, description as subject_area_code, 'PCM welder_information Data Master' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_pcm_welder_information_master_pipeline','yardkpi.stage_entp_pcm_welder_information','yardkpi.reprocess_entp_pcm_welder_information','dbo.dim_entp_pcm_welder_information')

-----------------------------------------------------------------------------------------------------


insert into plp_pipeline 
select 'pl_yardkpi_pcm_welder_information_source_to_stage' as pipeline_code, description as subject_area_code, 'PCM welder information Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_pcm_welder_information_stage_to_raw' as pipeline_code, description as subject_area_code, 'PCM welder information stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

insert into plp_pipeline 
select 'pl_yardkpi_pcm_welder_information_raw_to_synapse' as pipeline_code, description as subject_area_code, 'PCM welder information RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_pcm_welder_information_source_to_stage
---------------------------------------------


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_source_to_stage', 'PCM', 'file_system', 1,'file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_source_to_stage', 'PCM', 'folder_path', 2,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_source_to_stage', 'PCM', 'file_name', 3,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_source_to_stage', 'PCM', 'source_code', 4,'source_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_source_to_stage', 'PCM', 'sub_source_code', 5,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_source_to_stage','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/PCM/welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_source_to_stage','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'pcm_welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_source_to_stage','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_source_to_stage','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'PCM', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_source_to_stage','PCM')


----------------------------------------
--pl_yardkpi_pcm_welder_information_stage_to_raw
---------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_stage_to_raw', 'PCM', 'input_file_system', 1,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_stage_to_raw', 'PCM', 'folder_path', 2,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_stage_to_raw', 'PCM', 'file_name', 3,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_stage_to_raw', 'PCM', 'output_file_system', 4,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_stage_to_raw','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/PCM/welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_stage_to_raw','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'pcm_welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_stage_to_raw','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_stage_to_raw','PCM')

-------------------------------------------------------
--pl_yardkpi_pcm_welder_information_raw_to_synapse
-------------------------------------------------------

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_raw_to_synapse', 'PCM', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_raw_to_synapse', 'PCM', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_raw_to_synapse', 'PCM', 'input_file_name', 3,'input_file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_information_raw_to_synapse', 'PCM', 'last_run_start_date', 4,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)
-----------------------------------------------------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/PCM/welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_raw_to_synapse','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_raw_to_synapse','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'pcm_welder_information', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_raw_to_synapse','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_information_raw_to_synapse','PCM')
