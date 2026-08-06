declare @dd datetime
select @dd = getdate()
---------------------------------------
--For reprocess history table tracking activity
---select * from [dbo].[reprocess_history_v]
------------------------------------------

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_spc_master'

insert into plp_pipeline 
select 'pl_yardkpi_spc_master' as pipeline_code, description as subject_area_code, 'SPC to SYNAPSE DIMENSION LOAD for YARDKPI' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by,@dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_spc_master'

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_project_vw','yardkpi.reprocess_entp_spc_project','dbo.dim_entp_spc_project')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_discipline_vw','yardkpi.reprocess_entp_spc_discipline','dbo.dim_entp_spc_discipline')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_status_vw','yardkpi.reprocess_entp_spc_status','dbo.dim_entp_spc_status')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_jobno_vw','yardkpi.reprocess_entp_spc_jobno','dbo.dim_entp_spc_jobno')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_entp_project_vw','yardkpi.reprocess_entp_spc_entp_project','dbo.dim_entp_project')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_ent_contract_vw','yardkpi.reprocess_entp_spc_ent_contract','dbo.dim_ent_contract')

insert into plp_pipeline_details (
pipeline_code, stage_table_name, reprocessing_table_name, target_table_name
)values(
'pl_yardkpi_spc_master','yardkpi.stage_entp_spc_progress','yardkpi.reprocess_entp_spc_progress','dbo.dim_entp_spc_progress')


-----------------------------------------
--SELECT * from plp_pipeline where subject_area_code ='YARDKPI'
----------------------------------
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_spc_source_to_stage'

insert into plp_pipeline 
select 'pl_yardkpi_spc_source_to_stage' as pipeline_code, description as subject_area_code, 'SPC Source to Stage ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_spc_stage_to_raw'

insert into plp_pipeline 
select 'pl_yardkpi_spc_stage_to_raw' as pipeline_code, description as subject_area_code, 'SPC Stage ADLS to RAW ADLS' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

delete from plp_pipeline where pipeline_code = 'pl_yardkpi_spc_raw_to_synapse'

insert into plp_pipeline 
select 'pl_yardkpi_spc_raw_to_synapse' as pipeline_code, description as subject_area_code, 'SPC RAW ADLS to Synapse' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'YARDKPI'

---------------------------------------------
--pl_yardkpi_spc_source_to_stage
---------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_spc_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'source_name', 1,'source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'sub_source_name', 2,'sub_source_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'folder_path', 4,'folder_path','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_source_to_stage', 'SPC', 'schema_table', 6,'schema_table','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

--------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_spc_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_name', 'SYSTEM', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_name', 'SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')
--======
--DEV--
--======
--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'schema_table', 'battor01.mcdcorp.net|1521|spfc1bat|QA4036BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|1521|spfc1bat|QA3695BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|1521|spfc1bat|QA7264BTM_DATA.SPCRPT_FIWP', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')
--=======
-- QA--
--=======
--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'schema_table', 'battor01.mcdcorp.net|1521|spfc1bat|QA4036BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|1521|spfc1bat|QA3695BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|1521|spfc1bat|QA7264BTM_DATA.SPCRPT_FIWP', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')
--QA3695BTM_DATA.SPCRPT_FIWP
--QA7068BTM_DATA.SPCRPT_FIWP

--=========
--PROD--
--=========
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'schema_table', 'batpor02.mcdcorp.net|1521|spfc3bap|PR4036BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PR3695BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PD7264BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc2bap|PD7068BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PR3973BTM_DATA.SPCRPT_FIWP', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_source_to_stage','SPC')
---------------------------------

delete from plp_parameter where parameter_code = 'schema_table'

insert into plp_parameter (
parameter_code,	parameter_type_code,	description,	parameter_data_type,	max_no_values,	parameter_size,	comment,	active,	touched_by,	touched_dtm
)values(
'schema_table',	'PIPELINE',	'pl_yardkpi_spc_source_to_stage',	'T',	1,	5000,	NULL,	1,	'ajmal.usman@mcdermott.com',@dd)
----------------------------------------
--pl_yardkpi_spc_stage_to_raw
---------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_spc_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_stage_to_raw', 'SPC', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_stage_to_raw', 'SPC', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_stage_to_raw', 'SPC', 'output_file_system', 3,'output_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_stage_to_raw', 'SPC', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_spc_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_stage_to_raw','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_stage_to_raw','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_stage_to_raw','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_stage_to_raw','SPC')

-----------------------------------------------
--pl_yardkpi_spc_raw_to_synapse
----------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_spc_raw_to_synapse'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'directory', 1,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'input_file_system', 2,'input_file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'last_run_start_date', 3,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

-----------------------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_spc_raw_to_synapse'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_raw_to_synapse','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_raw_to_synapse','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_raw_to_synapse','SPC')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'YARDKPI_SPC', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_spc_raw_to_synapse','SPC')
