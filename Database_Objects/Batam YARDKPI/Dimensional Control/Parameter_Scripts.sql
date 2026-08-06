declare @dd datetime
select @dd = getdate()

--SELECT * FROM SEC_SA

delete from dbo.SEC_SA where description ='YARDKPI'

Insert into dbo.SEC_SA (description, active, created_date_time
)values(
'YARDKPI',1, @dd)

---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_master'

insert into plp_pipeline 
select 'pl_yardkpi_dc_survey_register_master' as pipeline_code, description as subject_area_code, 'DC Survey Register Master' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_dc_survey_register_master'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_dc_survey_register_master','yardkpi.stage_dc_survey_register','yardkpi.reprocess_dc_survey_register','dbo.dim_entp_dc_survey_register')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_dc_survey_register_master','yardkpi.stage_ent_contract_dc_srv_reg_vw','yardkpi.reprocess_yardkpi_ent_project','dbo.dim_entp_project')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_dc_survey_register_master','yardkpi.stage_ent_contract_dc_srv_reg_vw','yardkpi.reprocess_yardkpi_ent_project','dbo.dim_ent_contract')

---------------------------------------^^^^^

-----------------------------------------
--SELECT * from plp_pipeline where subject_area_code ='YARDKPI'
----------------------------------
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_source_to_stage'

insert into plp_pipeline 
select 'pl_yardkpi_dc_survey_register_source_to_stage' as pipeline_code, description as subject_area_code, 'DC Survey Register Excel Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_stage_to_raw'

insert into plp_pipeline 
select 'pl_yardkpi_dc_survey_register_stage_to_raw' as pipeline_code, description as subject_area_code, 'DC Survey Register Excel Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_raw_to_synapse'

insert into plp_pipeline 
select 'pl_yardkpi_dc_survey_register_raw_to_synapse' as pipeline_code, description as subject_area_code, 'DC Survey Register Excel RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'


---------------------------------------------
--pl_yardkpi_dc_survey_register_source_to_stage
---------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_source_to_stage', 'SHAREPOINT', 'list_name', 1,'list_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_source_to_stage', 'SHAREPOINT', 'sharepoint_link', 2,'sharepoint_link','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_source_to_stage', 'SHAREPOINT', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_source_to_stage', 'SHAREPOINT', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_source_to_stage', 'SHAREPOINT', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

--------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'list_name', 'DCSurveyRegister', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_source_to_stage','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sharepoint_link', 'https://mcdermottinc.sharepoint.com/sites/BATMQCDC/', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_source_to_stage','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_source_to_stage','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/Dimensional_Control', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_source_to_stage','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'dc_survey_register', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_source_to_stage','SHAREPOINT')

----------------------------------------------------------------------------------------------------------------
delete from dbo.plp_parameter where parameter_code = 'list_name'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'list_name', 'PIPELINE', 'yardkpi dc survey register sharepoint list name', 'T', 1, 500, 1, 'ajmal.usman@mcdermott.com',@dd)

delete from dbo.plp_parameter where parameter_code = 'sharepoint_link'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'sharepoint_link', 'PIPELINE', 'yardkpi dc survey register sharepoint link', 'T', 1, 5000, 1, 'ajmal.usman@mcdermott.com',@dd)

----------------------------------------
--pl_yardkpi_dc_survey_register_excel_stage_to_raw
---------------------------------------------
delete from dbo.plp_parameter where parameter_code = 'output_file_system'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'output_file_system', 'PIPELINE', 'pl_yardkpi_stage_to_raw_filesysytem', 'T', 1, 255, 1, 'ajmal.usman@mcdermott.com',@dd)

----------------------------------------------------------------------------------------------
delete from dbo.plp_parameter where parameter_code = 'Directory'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type,	max_no_values, parameter_size,comment, active,	touched_by, touched_dtm
) values(
'Directory','PIPELINE', 'Directory','T',1,500,'',1,	'ajmal.usman@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_stage_to_raw', 'SHAREPOINT', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_stage_to_raw', 'SHAREPOINT', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_stage_to_raw', 'SHAREPOINT', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_stage_to_raw', 'SHAREPOINT', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)


------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Dimensional_Control', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_stage_to_raw','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'dc_survey_register', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_stage_to_raw','SHAREPOINT')
------------------------------------------------

-----------------------------------------------
--pl_yardkpi_dc_survey_register_excel_raw_to_synapse
----------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_raw_to_synapse'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'source_code', 1,'source_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'sub_source_code', 2,'sub_source_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'input_file_system', 4,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'last_run_start_date', 5,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_dc_survey_register_raw_to_synapse', 'SHAREPOINT', 'file_name', 6,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-----------------------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_raw_to_synapse'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'MANUAL', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'EXCEL', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/Dimensional_Control', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'dc_survey_register', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_dc_survey_register_raw_to_synapse','SHAREPOINT')


------------------------------------------------