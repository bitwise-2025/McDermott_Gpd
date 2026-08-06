
EXEC dbo.load_dim_ent_sub_source 'SYSTEM','MWIN'
---------------------------------------------------------------
--dim_entp_mwin_project--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_mwin_project'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_mwin_project', 'dim_entp_mwin_project',
'yardkpi.stage_entp_project_mwin_vw', 'dbo.dim_entp_project', 'yardkpi.reprocess_entp_project_mwin',
'dim_entp_project_sk', 'dim_entp_project_nk', 'stage_entp_project_mwin_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_mwin_project'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_project', 'project_id', 'varchar(120)', 'TEXT', 'NK', 'project_number', null, null, null, null, null, null, 1, 'Y');

--OA--
insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_project', 'project_description', 'varchar(250)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_ent_mwin_contract--
---------------------------------------------------
delete from generic_load_header where load_name = 'dim_ent_mwin_contract'

insert into generic_load_header 
(load_name, description, 
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_mwin_contract', 'dim_ent_mwin_contract', 
'yardkpi.stage_ent_contract_mwin_vw', 'dbo.dim_ent_contract', 'yardkpi.reprocess_ent_contract_mwin',
'dim_ent_contract_sk', 'dim_ent_contract_nk', 'stage_ent_contract_mwin_id', 13, 'Y', 'DIMENSION');
-----------------------------------------------------
delete from generic_load_detail where load_name = 'dim_ent_mwin_contract'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'contract_id', 'varchar(120)', 'TEXT', 'NK', 'contract_number', null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'contract_description', 'varchar(250)', 'TEXT', 'OA', 'contract_name', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'project_id', 'varchar(120)', 'TEXT', 'OA', 'project_number', null, null, null, null, null, null, 3, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, 
target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'dim_ent_project_nk', 'int', 'NUMBER', 'RK', 
'dim_ent_project_nk', 'dim_entp_project', 'dim_entp_project_nk', 'project_number',
'project_id', null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_mwin_contract', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 8, 'Y');

------------------------------------------------------------------------------------------------
--dim_entp_mwin_rfi_milestone--
------------------------------------------------------------------------------------------------
delete from generic_load_header where load_name = 'dim_entp_mwin_rfi_milestone'

insert into generic_load_header (load_name,description,
stage_table_name,target_table_name,reprocess_table_name,
target_sk_name,target_gnk_name,stage_Sk_name,glt_id,active_flag,load_type) VALUES 
('dim_entp_mwin_rfi_milestone','dim_entp_mwin_rfi_milestone',
'yardkpi.stage_entp_mwin_rfi_milestone','dbo.dim_entp_mwin_rfi_milestone','yardkpi.reprocess_entp_mwin_rfi_milestone',
'dim_entp_mwin_rfi_milestone_sk','dim_entp_mwin_rfi_milestone_nk','stage_entp_mwin_rfi_milestone_id',13,'Y','DIMENSION')

delete from generic_load_detail where load_name = 'dim_entp_mwin_rfi_milestone'

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_id', 'varchar(20)', 'TEXT', 'NK', 'rbt_id', null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'location', 'varchar(120)', 'TEXT', 'NK', 'location', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_hdr_category', 'varchar(50)', 'TEXT', 'NK', 'rbt_hdr_category', null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_version', 'varchar(10)', 'TEXT', 'NK', 'rbt_version', null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qr_number', 'FLOAT', 'NUMBER', 'NK', 'qr_number', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'project_id', 'varchar(120)', 'TEXT', 'NK', 'project_id', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_revision', 'varchar(10)', 'TEXT', 'NK', 'rbt_revision', null, null, null, null, null, null, 7, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_number', 'varchar(150)', 'TEXT', 'OA', 'rbt_number', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_title', 'varchar(500)', 'TEXT', 'OA', 'rbt_title', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspector', 'varchar(50)', 'TEXT', 'OA', 'qc_inspector', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspector_name', 'varchar(50)', 'TEXT', 'OA', 'qc_inspector_name', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'area_id', 'varchar(150)', 'TEXT', 'OA', 'area_id', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'area_title', 'varchar(1500)', 'TEXT', 'OA', 'area_title', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'discipline_id', 'varchar(200)', 'TEXT', 'OA', 'discipline_id', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'discipline_title', 'varchar(1000)', 'TEXT', 'OA', 'discipline_title', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'project_title', 'varchar(250)', 'TEXT', 'OA', 'project_title', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_hdr_categoryname', 'varchar(1500)', 'TEXT', 'OA', 'rbt_hdr_categoryname', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'drawing_no', 'varchar(500)', 'TEXT', 'OA', 'drawing_no', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspection_date', 'datetime', 'datetime', 'OA', 'qc_inspection_date', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspection_time', 'varchar(50)', 'TEXT', 'OA', 'qc_inspection_time', null, null, null, null, null, null, 20, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspection_enddate', 'datetime', 'datetime', 'OA', 'qc_inspection_enddate', null, null, null, null, null, null, 21, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'qc_inspection_endtime', 'varchar(50)', 'TEXT', 'OA', 'qc_inspection_endtime', null, null, null, null, null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'submitted_date', 'datetime', 'datetime', 'OA', 'submitted_date', null, null, null, null, null, null, 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'inspection_date', 'datetime', 'datetime', 'OA', 'inspection_date', null, null, null, null, null, null, 24, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'remark', 'varchar(8000)', 'TEXT', 'OA', 'remark', null, null, null, null, null, null, 25, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_status', 'varchar(30)', 'TEXT', 'OA', 'rbt_status', null, null, null, null, null, null, 26, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_type', 'varchar(10)', 'TEXT', 'OA', 'rbt_type', null, null, null, null, null, null, 27, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr1_title', 'varchar(100)', 'TEXT', 'OA', 'appr1_title', null, null, null, null, null, null, 28, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr1_name', 'varchar(150)', 'TEXT', 'OA', 'appr1_name', null, null, null, null, null, null, 29, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr1_appr_status', 'varchar(100)', 'TEXT', 'OA', 'appr1_appr_status', null, null, null, null, null, null, 30, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr1_approval_dt', 'datetime', 'datetime', 'OA', 'appr1_approval_dt', null, null, null, null, null, null, 31, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr2_title', 'varchar(150)', 'TEXT', 'OA', 'appr2_title', null, null, null, null, null, null, 32, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr2_name', 'varchar(150)', 'TEXT', 'OA', 'appr2_name', null, null, null, null, null, null, 33, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr2_appr_status', 'varchar(100)', 'TEXT', 'OA', 'appr2_appr_status', null, null, null, null, null, null, 34, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr2_approval_dt', 'datetime', 'datetime', 'OA', 'appr2_approval_dt', null, null, null, null, null, null, 35, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr3_title', 'varchar(100)', 'TEXT', 'OA', 'appr3_title', null, null, null, null, null, null, 36, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr3_name', 'varchar(150)', 'TEXT', 'OA', 'appr3_name', null, null, null, null, null, null, 37, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr3_appr_status', 'varchar(100)', 'TEXT', 'OA', 'appr3_appr_status', null, null, null, null, null, null, 38, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr3_approval_dt', 'datetime', 'datetime', 'OA', 'appr3_approval_dt', null, null, null, null, null, null, 39, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr4_title', 'varchar(150)', 'TEXT', 'OA', 'appr4_title', null, null, null, null, null, null, 40, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr4_name', 'varchar(150)', 'TEXT', 'OA', 'appr4_name', null, null, null, null, null, null, 41, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr4_appr_status', 'varchar(100)', 'TEXT', 'OA', 'appr4_appr_status', null, null, null, null, null, null, 42, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'appr4_approval_dt', 'datetime', 'datetime', 'OA', 'appr4_approval_dt', null, null, null, null, null, null, 43, 'Y');


--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 44, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 45, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 46, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 47, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'dim_ent_contract_nk', 'int', 'NUMBER', 'RK', 'dim_ent_contract_nk',
'dbo.dim_ent_contract', 'dim_ent_contract_nk', 'contract_number', 'project_id', null, null, 48, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_no_formtd', 'varchar(100)', 'TEXT', 'OA', 'rbt_no_formtd', null, null, null, null, null, null, 49, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'root_cause', 'varchar(500)', 'TEXT', 'OA', 'root_cause', null, null, null, null, null, null, 50, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Inspection_Level_Client', 'varchar(250)', 'TEXT', 'OA', 'Inspection_Level_Client', null, null, null, null, null, null, 51, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Inspection_Level_Contractor', 'varchar(250)', 'TEXT', 'OA', 'Inspection_Level_Contractor', null, null, null, null, null, null, 52, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_title', 'varchar(300)', 'TEXT', 'OA', 'ProductionPersonal_title', null, null, null, null, null, null, 53, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_name', 'varchar(500)', 'TEXT', 'OA', 'ProductionPersonal_name', null, null, null, null, null, null, 54, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_Remarks', 'varchar(4000)', 'TEXT', 'OA', 'ProductionPersonal_Remarks', null, null, null, null, null, null, 55, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_appr_status', 'varchar(100)', 'TEXT', 'OA', 'ProductionPersonal_appr_status', null, null, null, null, null, null, 56, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_approval_dt', 'datetime', 'datetime', 'OA', 'ProductionPersonal_approval_dt', null, null, null, null, null, null, 57, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Foremen', 'varchar(250)', 'TEXT', 'OA', 'Foremen', null, null, null, null, null, null, 58, 'Y');

