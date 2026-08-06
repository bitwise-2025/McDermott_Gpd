--------------------------------------------------
--dim_entp_yardkpi_pcm_weld_process_master--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_pcm_weld_process_master', 'dim_entp_yardkpi_pcm_weld_process_master', 'yardkpi.stage_entp_pcm_weld_process_master', 
'dbo.dim_entp_pcm_weld_process_master', 'yardkpi.reprocess_entp_pcm_weld_process_master', 'dim_entp_pcm_weld_process_master_sk', 
'dim_entp_pcm_weld_process_master_nk', 'stage_entp_pcm_weld_process_master_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_weld_process_master', 'fab_code', 'varchar(5)','TEXT', 'NK', 'fab_code',null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_weld_process_master', 'process', 'varchar(5)','TEXT', 'NK', 'process',null, null, null, null, null, null, 2, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_weld_process_master', 'process_title', 'varchar(100)', 'TEXT', 'OA', 'process_title', null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_weld_process_master', 'discipline', 'varchar(5)', 'TEXT', 'OA', 'discipline', null, null, null, null, null, null, 4, 'Y');

