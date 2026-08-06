--------------------------------------------------
--dim_entp_yardkpi_pcm_job_item--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_pcm_defect_master', 'dim_entp_yardkpi_pcm_defect_master', 'yardkpi.stage_entp_pcm_defect_master', 
'dbo.dim_entp_pcm_defect_master', 'yardkpi.reprocess_entp_pcm_defect_master', 'dim_entp_pcm_defect_master_sk', 
'dim_entp_pcm_defect_master_nk', 'stage_entp_pcm_defect_master_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_defect_master', 'fab_code', 'varchar(5)','TEXT', 'NK', 'fab_code',null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_defect_master', 'defect_type', 'varchar(5)','TEXT', 'NK', 'defect_type',null, null, null, null, null, null, 2, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_pcm_defect_master', 'defect_type_title', 'varchar(100)', 'TEXT', 'OA', 'defect_type_title', null, null, null, null, null, null, 3, 'Y');

