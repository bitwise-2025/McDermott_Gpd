declare @dd datetime
select @dd = getdate()

delete from dim_ent_sub_source where sub_source_name = 'R2P'
EXEC [dbo].[load_dim_ent_sub_source] 'SYSTEM','R2P';

---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_R2P_master_pipeline'

insert into plp_pipeline 
select 'pl_yardkpi_R2P_master_pipeline' as pipeline_code, description as subject_area_code, 'R2P to SYNAPSE DIMENSION LOAD for YARDKPI' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_R2P_master_pipeline'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_R2P_master_pipeline','yardkpi.stage_r2p_po_header','yardkpi.reprocess_r2p_po_header','dbo.dim_entp_yardkpi_r2p_po_header')

-----------------------------------------
--SELECT * from plp_pipeline where subject_area_code ='YARDKPI'
----------------------------------
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_R2P_source_to_stage'

insert into plp_pipeline 
select 'pl_yardkpi_R2P_source_to_stage' as pipeline_code, description as subject_area_code, 'R2P Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_R2P_stage_to_raw'

insert into plp_pipeline 
select 'pl_yardkpi_R2P_stage_to_raw' as pipeline_code, description as subject_area_code, 'R2P Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_R2P_raw_to_synapse'

insert into plp_pipeline 
select 'pl_yardkpi_R2P_raw_to_synapse' as pipeline_code, description as subject_area_code, 'R2P RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_R2P_source_to_stage
---------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_R2P_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'source_name', 1,'source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'sub_source_name', 2,'sub_source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'start_date', 6,'start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'end_date', 7,'end_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'report_path', 8,'report_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

--------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_R2P_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_name', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_name', 'R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'start_date', '10-24-2024', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'end_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'report_path', '/Custom/AZURE/MDR_PO_HEADER_LEVEL_REPORT_FOR_AZURE.xdo', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')
---------------------------------

delete from dbo.plp_parameter where parameter_code = 'report_path'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'report_path', 'PIPELINE', 'yardkpi r2p oracle report path', 'T', 1, 5000, 1, 'ajmal.usman@mcdermott.com',@dd)

----------------------------------------
--pl_yardkpi_R2P_stage_to_raw
---------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_R2P_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_stage_to_raw', 'R2P', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_stage_to_raw', 'R2P', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_stage_to_raw', 'R2P', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_stage_to_raw', 'R2P', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_R2P_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_stage_to_raw','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_stage_to_raw','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_stage_to_raw','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_stage_to_raw','R2P')

-----------------------------------------------
--pl_yardkpi_R2P_raw_to_synapse
----------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_R2P_raw_to_synapse'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_raw_to_synapse', 'R2P', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_raw_to_synapse', 'R2P', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_raw_to_synapse', 'R2P', 'last_run_start_date', 3,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_raw_to_synapse', 'R2P', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-----------------------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_R2P_raw_to_synapse'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_raw_to_synapse','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_raw_to_synapse','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_raw_to_synapse','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_R2P', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_raw_to_synapse','R2P')
