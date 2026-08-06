delete from generic_load_header where load_name = 'dim_entp_yardkpi_dc_srv_reg'
delete from generic_load_detail where load_name = 'dim_entp_yardkpi_dc_srv_reg'

delete from generic_load_header where load_name = 'dim_entp_project_yardkpi_dc_srv_reg'
delete from generic_load_detail where load_name = 'dim_entp_project_yardkpi_dc_srv_reg'

delete from generic_load_header where load_name = 'dim_entp_contract_yardkpi_dc_srv_reg'
delete from generic_load_detail where load_name = 'dim_entp_contract_yardkpi_dc_srv_reg'


------------------------------------------------------------------------------------------------
--dim_entp_yardkpi_dc_srv_reg--
------------------------------------------------------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name, target_table_name, reprocess_table_name, target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_dc_srv_reg', 'dim_entp_yardkpi_dc_srv_reg', 'yardkpi.stage_dc_survey_register', 'dbo.dim_entp_dc_survey_register', 'yardkpi.reprocess_dc_survey_register', 'dim_entp_dc_survey_register_sk', 'dim_entp_dc_survey_register_nk', 'stage_dc_survey_register_id', 13, 'Y', 'DIMENSION');

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'report_number', 'varchar(200)', 'TEXT', 'NK', 'report_number', null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'rev', 'varchar(50)', 'TEXT', 'NK', 'rev', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'dc_function', 'varchar(50)', 'TEXT', 'NK', 'dc_function', null, null, null, null, null, null, 3, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'discipline_code', 'varchar(50)', 'TEXT', 'OA', 'discipline_code', null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'platform_name', 'varchar(200)', 'TEXT', 'OA', 'platform_name', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'description', 'varchar(1000)', 'TEXT', 'OA', 'description', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'dwg_ref', 'varchar(1000)', 'TEXT', 'OA', 'dwg_ref', null, null, null, null, null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'work_pack_no', 'varchar(1000)', 'TEXT', 'OA', 'work_pack_no', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'work_pack_title', 'varchar(300)', 'TEXT', 'OA', 'work_pack_title', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'date_request', 'varchar(50)', 'TEXT', 'OA', 'date_request', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'date_Inspect', 'varchar(50)', 'TEXT', 'OA', 'date_Inspect', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'date_report', 'varchar(50)', 'TEXT', 'OA', 'date_report', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'qc_rfi_irn', 'varchar(200)', 'TEXT', 'OA', 'qc_rfi_irn', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'pcm_status', 'varchar(200)', 'TEXT', 'OA', 'pcm_status', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'yard_area', 'varchar(100)', 'TEXT', 'OA', 'yard_area', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'stages', 'varchar(150)', 'TEXT', 'OA', 'stages', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'weightage', 'varchar(20)', 'TEXT', 'OA', 'weightage', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'status', 'varchar(300)', 'TEXT', 'OA', 'status', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'defect_category', 'varchar(500)', 'TEXT', 'OA', 'defect_category', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'remarks', 'varchar(1000)', 'TEXT', 'OA', 'remarks', null, null, null, null, null, null, 20, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'trn_no', 'varchar(100)', 'TEXT', 'OA', 'trn_no', null, null, null, null, null, null, 21, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'irn_no', 'varchar(100)', 'TEXT', 'OA', 'irn_no', null, null, null, null, null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'date', 'varchar(50)', 'TEXT', 'OA', 'date', null, null, null, null, null, null, 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'misc', 'varchar(1000)', 'TEXT', 'OA', 'misc', null, null, null, null, null, null, 24, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 25, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 26, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'contract_number', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 27, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 28, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 29, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_dc_srv_reg', 'dim_ent_contract_nk', 'int', 'NUMBER', 'RK', 'dim_ent_contract_nk',
'dbo.dim_ent_contract', 'dim_ent_contract_nk', 'contract_number', 'contract_number', null, null, 30, 'Y');

--------------------------------------------------
--dim_entp_project_yardkpi_dc_srv_reg--
---------------------------------------------------

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_project_yardkpi_dc_srv_reg', 'dim_entp_project_yardkpi_dc_srv_reg',
'yardkpi.stage_ent_contract_dc_srv_reg_vw', 'dim_entp_project', 'yardkpi.reprocess_yardkpi_ent_project',
'dim_entp_project_sk', 'dim_entp_project_nk', 'stage_ent_contract_dc_srv_reg_id',
13, 'Y', 'DIMENSION');
-----------------------------------------------------

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_dc_srv_reg', 'contract_number', 'varchar(50)', 'TEXT', 'NK', 'project_number', null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_dc_srv_reg', 'contract_title', 'varchar(100)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_entp_contract_yardkpi_dc_srv_reg--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, 
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_contract_yardkpi_dc_srv_reg', 'dim_entp_contract_yardkpi_dc_srv_reg', 
'yardkpi.stage_ent_contract_dc_srv_reg_vw', 'dbo.dim_ent_contract', 'yardkpi.reprocess_yardkpi_ent_project',
'dim_ent_contract_sk', 'dim_ent_contract_nk', 'stage_ent_contract_dc_srv_reg_id', 13, 'Y', 'DIMENSION');
-----------------------------------------------------

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'contract_number', 'varchar(50)', 'TEXT', 'NK', 'contract_number', null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'contract_title', 'varchar(250)', 'TEXT', 'OA', 'contract_name', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'project_number', 'varchar(50)', 'TEXT', 'OA', 'project_number', null, null, null, null, null, null, 3, 'Y');


--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, 
target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'dim_ent_project_nk', 'int', 'NUMBER', 'RK', 
'dim_ent_project_nk', 'dim_entp_project', 'dim_entp_project_nk', 'project_number',
'project_number', null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_contract_yardkpi_dc_srv_reg', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 8, 'Y');

-----------------------------------------------------------------------------------------------
