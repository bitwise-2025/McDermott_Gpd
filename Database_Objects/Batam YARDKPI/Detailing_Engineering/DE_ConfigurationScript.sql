
delete from generic_load_header where load_name = 'dim_entp_yardkpi_detailing_engineering'
delete from generic_load_detail where load_name = 'dim_entp_yardkpi_detailing_engineering'

delete from generic_load_header where load_name = 'dim_entp_project_yardkpi_det_eng'
delete from generic_load_detail where load_name = 'dim_entp_project_yardkpi_det_eng'

delete from generic_load_header where load_name = 'dim_ent_contract_yardkpi_det_eng'
delete from generic_load_detail where load_name = 'dim_ent_contract_yardkpi_det_eng'


--------------------------------------------------
--dim_entp_yardkpi_detailing_engineering--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_detailing_engineering', 'dim_entp_yardkpi_detailing_engineering', 'yardkpi.stage_dim_yardkpi_detailing_engineering_v', 
'dbo.dim_entp_yardkpi_detailing_engineering', 'yardkpi.reprocess_detailing_engineering', 'dim_entp_yardkpi_detailing_engineering_sk', 
'dim_entp_yardkpi_detailing_engineering_nk', 'stage_detailing_engineering_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'project', 'varchar(50)',
'TEXT', 'NK', 'project',
null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'activity_id', 'varchar(100)',
'TEXT', 'NK', 'activity_id',
null, null, null, null, null, null, 2, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'division', 'varchar(50)', 'TEXT', 'OA', 'division', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'component', 'varchar(50)', 'TEXT', 'OA', 'component', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'subf', 'varchar(50)', 'TEXT', 'OA', 'subf', null, null, null, null, null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'cst_element', 'varchar(50)', 'TEXT', 'OA', 'cst_element', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'wbs', 'varchar(50)', 'TEXT', 'OA', 'wbs', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'project_status', 'varchar(50)', 'TEXT', 'OA', 'project_status', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'scope', 'varchar(50)', 'TEXT', 'OA', 'scope', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'plan_actual', 'varchar(50)', 'TEXT', 'OA', 'plan_actual', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'discipline', 'varchar(50)', 'TEXT', 'OA', 'discipline', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'discipline_description', 'varchar(500)', 'TEXT', 'OA', 'discipline_description', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'piping_detailing_deliverable_type', 'varchar(50)', 'TEXT', 'OA', 'piping_detailing_deliverable_type', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'facility', 'varchar(200)', 'TEXT', 'OA', 'facility', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'facility_description', 'varchar(500)', 'TEXT', 'OA', 'facility_description', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'description', 'varchar(500)', 'TEXT', 'OA', 'description', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'project_category', 'varchar(100)', 'TEXT', 'OA', 'project_category', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'detailing_group_activity', 'varchar(300)', 'TEXT', 'OA', 'detailing_group_activity', null, null, null, null, null, null, 20, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'Remarks', 'varchar(500)', 'TEXT', 'OA', 'Remarks', null, null, null, null, null, null, 21, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_detailing_engineering', 'dim_ent_contract_nk', 'int', 'NUMBER', 'RK', 'dim_ent_contract_nk',
'dbo.dim_ent_contract', 'dim_ent_contract_nk', 'contract_number', 'project', null, null, 24, 'Y');


--------------------------------------------------
--dim_entp_project_yardkpi_det_eng--
---------------------------------------------------

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_project_yardkpi_det_eng', 'dim_entp_project_yardkpi_det_eng',
'yardkpi.stage_ent_contract_det_eng_vw', 'dim_entp_project', 'yardkpi.reprocess_yardkpi_ent_project',
'dim_entp_project_sk', 'dim_entp_project_nk', 'stage_entp_det_eng_id',
13, 'Y', 'DIMENSION');

--NK--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_det_eng', 'project_number', 'varchar(10)',
'TEXT', 'NK', 'project_number',
null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_det_eng', 'contract_title', 'varchar(100)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_ent_contract_yardkpi_det_eng--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name, target_table_name,
reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_contract_yardkpi_det_eng', 'dim_ent_contract_yardkpi_det_eng', 'yardkpi.stage_ent_contract_det_eng_vw', 'dbo.dim_ent_contract',
'yardkpi.reprocess_yardkpi_ent_project',
'dim_ent_contract_sk', 'dim_ent_contract_nk', 'stage_entp_det_eng_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'contract_number', 'varchar(20)', 'TEXT', 'NK', 'contract_number', null, null, null, null, null, null, 1, 'Y');


--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'contract_title', 'varchar(250)', 'TEXT', 'OA', 'contract_name', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'project_number', 'varchar(50)', 'TEXT', 'OA', 'project_number', null, null, null, null, null, null, 3, 'Y');


--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, 
target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'dim_ent_project_nk', 'int', 'NUMBER', 'RK', 
'dim_ent_project_nk', 'dim_entp_project', 'dim_entp_project_nk', 'project_number',
'project_number', null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_det_eng', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 8, 'Y');

-----------------------------------------------------------------------------------------------
