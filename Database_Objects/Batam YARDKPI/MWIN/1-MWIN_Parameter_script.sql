declare @dd datetime
select @dd = getdate()
---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_mwin_master'

insert into plp_pipeline 
select 'pl_yardkpi_mwin_master' as pipeline_code, description as subject_area_code, 'MWIN From bench_mark to DIMENSION' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_mwin'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_mwin_master','yardkpi.stage_entp_mwin_rfi_milestone','yardkpi.reprocess_entp_mwin_rfi_milestone','dbo.dim_entp_mwin_rfi_milestone')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_mwin_master','yardkpi.stage_ent_contract_mwin_vw','yardkpi.reprocess_ent_contract_mwin','dbo.dim_ent_contract')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_mwin_master','yardkpi.stage_entp_project_mwin_vw','yardkpi.reprocess_entp_project_mwin','dbo.dim_entp_project')

-----------------------------------------
--SELECT * from plp_pipeline where subject_area_code ='YARDKPI'
----------------------------------
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_mwin_source_to_stage'

insert into plp_pipeline 
select 'pl_yardkpi_mwin_source_to_stage' as pipeline_code, description as subject_area_code, 'MWIN Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_mwin_stage_to_raw'

insert into plp_pipeline 
select 'pl_yardkpi_mwin_stage_to_raw' as pipeline_code, description as subject_area_code, 'MWIN Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_mwin_raw_to_synapse'

insert into plp_pipeline 
select 'pl_yardkpi_mwin_raw_to_synapse' as pipeline_code, description as subject_area_code, 'MWIN RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_mwin_source_to_stage
---------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_mwin_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'source_name', 1,'source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'sub_source_name', 2,'sub_source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'start_date', 6,'start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'end_date', 7,'end_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_source_to_stage', 'MWIN', 'contract', 8,'contract','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

--------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_mwin_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_name', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_name', 'MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'end_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'contract', 'R3695,R3973,D7264,R3979,R4036,D7068,R4148', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_source_to_stage','MWIN')

----------------------------------------
--pl_yardkpi_mwin_stage_to_raw
---------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_mwin_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_stage_to_raw', 'MWIN', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_stage_to_raw', 'MWIN', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_stage_to_raw', 'MWIN', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_stage_to_raw', 'MWIN', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_mwin_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_stage_to_raw','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_stage_to_raw','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_stage_to_raw','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_stage_to_raw','MWIN')

-----------------------------------------------
--pl_yardkpi_mwin_raw_to_synapse
----------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_mwin_raw_to_synapse'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_raw_to_synapse', 'MWIN', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_raw_to_synapse', 'MWIN', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_raw_to_synapse', 'MWIN', 'last_run_start_date', 3,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_mwin_raw_to_synapse', 'MWIN', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-----------------------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_mwin_raw_to_synapse'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_raw_to_synapse','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_raw_to_synapse','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_raw_to_synapse','MWIN')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_MWIN', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_mwin_raw_to_synapse','MWIN')
