
			delete	from 	plp_pipeline 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del';
			delete	from 	plp_pipeline_parameter 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del';

			delete	from 	plp_pipeline 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_stage_to_raw_del';
			delete	from 	plp_pipeline_parameter 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_stage_to_raw_del';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_stage_to_raw_del';
			
			delete	from 	plp_pipeline 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del';
			delete	from 	plp_pipeline_parameter 		where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del';
			delete  from plp_parameter_value where	pipeline_code = 'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del';


insert into plp_pipeline (
pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'YARDKPI', 'PCM ndt details Source to Stage ADLS', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10',30)

insert into plp_pipeline (
pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
)values(
'pl_yardkpi_pcm_ndt_details_stage_to_raw_del', 'YARDKPI', 'PCM ndt_details Stage ADLS to RAW ADLS', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10',30)

insert into plp_pipeline (
pipeline_code, subject_area_code, description, active, touched_by, touched_dtm, sec_sa_id
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'YARDKPI', 'PCM ndt_details RAW ADLS to Synapse', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10',30)


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'fab_code', 1,'fab_code','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'sp_dataset_ndt_details', 2,'sp_dataset','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'contract', 3,'contract','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'job', 4,'job','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'item', 5,'item','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'from_date', 6,'from_date','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'to_date', 7,'to_date','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'trans_type', 8,'trans_type','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'output_file_system', 9,'output_file_system','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM', 'folder_path', 10,'folder_path','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')



insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'BTY', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sp_dataset_ndt_details', 'ndt_details', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'contract', '*', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'job', '*', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'item', '*', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '2022-09-01 00:00:00', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', '2022-11-16 00:00:00', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'trans_type', 'Del', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-staging-data', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/YARDKPI/PCM_Del', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM')




insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_stage_to_raw_del', 'PCM', 'directory', 1,'directory','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_stage_to_raw_del', 'PCM', 'input_file_system', 2,'input_file_system','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_stage_to_raw_del', 'PCM', 'output_file_system_raw', 3,'output_file_system','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_stage_to_raw_del', 'PCM', 'input_file_name_stg', 4,'input_file_name','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')



insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name_stg', 'pcm_ndt_details_del.csv', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_stage_to_raw_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/PCM_Del', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_stage_to_raw_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_stage_to_raw_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system_raw', 'mdr-raw-data', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_stage_to_raw_del','PCM')


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'source_code', 1,'source_code','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'sub_source_code', 2,'sub_source_code','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'directory', 3,'directory','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'input_file_system', 4,'input_file_system','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'last_run_start_date', 5,'last_run_start_date','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')




insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_code', 'SYSTEM', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sub_source_code', 'PCM', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/YARDKPI/PCM_Del', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '2022-09-05T11:20:24.10', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_raw_to_synapse_del', 'PCM', 'sp_dataset_ndt_details', 2,'sp_dataset','IN', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sp_dataset_ndt_details', 'ndt_details', 1, 'patitapaban.routray@mcdermott.com','2022-09-05T11:20:24.10','pl_yardkpi_pcm_ndt_details_raw_to_synapse_del','PCM')



