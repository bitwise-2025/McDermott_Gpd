	delete	from 	plp_pipeline where	pipeline_code = 'pl_yardkpi_spc_source_to_stage';
			delete	from 	plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_spc_source_to_stage';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_spc_source_to_stage';
			
			delete	from 	plp_pipeline where	pipeline_code = 'pl_yardkpi_spc_stage_to_raw';
			delete	from 	plp_pipeline_parameter 	where	pipeline_code = 'pl_yardkpi_spc_stage_to_raw';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_spc_stage_to_raw';		
			
			delete	from 	plp_pipeline where	pipeline_code = 'pl_yardkpi_spc_raw_to_synapse';
			delete	from 	plp_pipeline_parameter where	pipeline_code = 'pl_yardkpi_spc_raw_to_synapse';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_spc_raw_to_synapse';
		
			delete from plp_parameter where description='pl_yardkpi_spc_source_to_stage';
			delete from plp_parameter where description='pl_yardkpi_spc_stage_to_raw';

--delete from dbo.SEC_SA where description='YARDKPI';

----SELECT * FROM SEC_SA

--Insert into dbo.SEC_SA (description, active, created_date_time
--)values(
--'YARDKPI',1,'2022-09-05T11:20:24.10')


		insert into plp_pipeline (
		pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
		)values(
		'pl_yardkpi_spc_source_to_stage', 'YARDKPI', 'SPC SQL Server Source to Stage ADLS', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10',30)

		insert into plp_pipeline (
		pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
		)values(
		'pl_yardkpi_spc_stage_to_raw', 'YARDKPI', 'SPC Stage ADLS to RAW ADLS', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10',30)

		insert into plp_pipeline (
		pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'YARDKPI', 'SPC RAW ADLS to Synapse', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10',30)


--insert into plp_pipeline_parameter (
--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
--)values(
--'pl_yardkpi_spc_source_to_stage', 'SPC', 'fab_code', 1,'fab_code','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')


		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'sp_dataset_spc', 1,'sp_dataset','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		--insert into plp_pipeline_parameter (
		--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		--)values(
		--'pl_yardkpi_spc_source_to_stage', 'SPC', 'schema_table', 2,'schema_table','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into plp_pipeline_parameter (
--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
--)values(
--'pl_yardkpi_spc_source_to_stage', 'SPC', 'table_name', 3,'table_name','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')
--insert into plp_pipeline_parameter (
--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
--)values(
--'pl_yardkpi_spc_source_to_stage', 'SPC', 'job', 4,'job','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into plp_pipeline_parameter (
--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
--)values(
--'pl_yardkpi_spc_source_to_stage', 'SPC', 'item', 5,'item','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'from_date', 2,'from_date','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'to_date', 3,'to_date','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into plp_pipeline_parameter (
--pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
--)values(
--'pl_yardkpi_spc_source_to_stage', 'SPC', 'trans_type', 8,'trans_type','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')


		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'output_file_system', 4,'output_file_system','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')


		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'folder_path',5,'folder_path','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

			insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_source_to_stage', 'SPC', 'server_name', 6,'server_name','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')



--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'fab_code', 'BTY', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'sp_dataset_spc', 'spc', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		--insert into plp_parameter_value (
		--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		--)values(
		--'schema_table', 'QA7068BTM_Data.SPCRPT_FIWP,QASHELLCRUX_DATA.SPCRPT_FIWP,QAD7264BTM_Data.SPCRPT_FIWP', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')
		--===--
		--QA--
		--====---
		--insert into plp_parameter_value (
		--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		--)values(
		--'server_name', 'battor01.mcdcorp.net|spfc1bat|QA4036BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|spfc1bat|QA3695BTM_DATA.SPCRPT_FIWP,battor01.mcdcorp.net|spfc1bat|QA7264BTM_DATA.SPCRPT_FIWP', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')
		--====--
		--PROD--
		--====---
		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'server_name', 'batpor02.mcdcorp.net|spfc3bap|PR4036BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|spfc3bap|PR3695BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|spfc3bap|PD7264BTM_DATA.SPCRPT_FIWP', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')


--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'table_name', 'SPCRPT_FIWP', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'job', '*', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'item', '*', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'from_date', '1900-01-01 00:00:00', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'to_date', NULL, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

--insert into plp_parameter_value (
--parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
--)values(
--'trans_type', 'INCR', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'output_file_system', 'mdr-staging-data', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'folder_path', 'Project_Data/YARDKPI/SPC', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_source_to_stage','SPC')



--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'fab_code', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into dbo.plp_parameter (
		parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
		)values(
		'sp_dataset_spc', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')
		insert into dbo.plp_parameter (
		parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
		)values(
		'server_name', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into dbo.plp_parameter (
		parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
		)values(
		'schema_table', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'contract', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'job', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'item', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'trans_type', 'PIPELINE', 'pl_yardkpi_spc_source_to_stage', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')






--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'output_file_system_raw', 'PIPELINE', 'pl_yardkpi_spc_stage_to_raw', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

--insert into dbo.plp_parameter (
--parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
--)values(
--'input_file_name_stg', 'PIPELINE', 'pl_yardkpi_spc_stage_to_raw', 'T', 1, 255, 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')


		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_stage_to_raw', 'SPC', 'directory', 1,'directory','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_stage_to_raw', 'SPC', 'input_file_system', 2,'input_file_system','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_stage_to_raw', 'SPC', 'output_file_system_raw', 3,'output_file_system','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_stage_to_raw', 'SPC', 'input_file_name_stg', 4,'input_file_name','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')



		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'input_file_name_stg', 'spc', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_stage_to_raw','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'directory', 'Project_Data/YARDKPI/SPC', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_stage_to_raw','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'input_file_system', 'mdr-staging-data', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_stage_to_raw','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'output_file_system_raw', 'mdr-raw-data', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_stage_to_raw','SPC')







		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'source_code', 1,'source_code','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'sub_source_code', 2,'sub_source_code','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'directory', 3,'directory','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'input_file_system', 4,'input_file_system','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')

		insert into plp_pipeline_parameter (
		pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
		)values(
		'pl_yardkpi_spc_raw_to_synapse', 'SPC', 'last_run_start_date', 5,'last_run_start_date','IN', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10')



		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'source_code', 'SYSTEM', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_raw_to_synapse','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'sub_source_code', 'SPC', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_raw_to_synapse','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'directory', 'Project_Data/YARDKPI/SPC', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_raw_to_synapse','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'input_file_system', 'mdr-raw-data', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_raw_to_synapse','SPC')

		insert into plp_parameter_value (
		parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
		)values(
		'last_run_start_date', '2022-09-05T11:20:24.10', 1, 'chhaya.kotian@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_spc_raw_to_synapse','SPC')

--COMMIT
------------------------------------------------