
delete from generic_load_header where load_name = 'dim_entp_yardkpi_iDocs_fab_docmaster'
delete from generic_load_detail where load_name = 'dim_entp_yardkpi_iDocs_fab_docmaster'

delete from generic_load_header where load_name = 'dim_entp_yardkpi_iDocs_fab_docmaster_rev'
delete from generic_load_detail where load_name = 'dim_entp_yardkpi_iDocs_fab_docmaster_rev'

delete from generic_load_header where load_name = 'dim_entp_project_yardkpi_iDocs_docmas'
delete from generic_load_detail where load_name = 'dim_entp_project_yardkpi_iDocs_docmas'

delete from generic_load_header where load_name = 'dim_ent_contract_yardkpi_iDocs_docmas'
delete from generic_load_detail where load_name = 'dim_ent_contract_yardkpi_iDocs_docmas'


--------------------------------------------------
--dim_entp_yardkpi_iDocs_fab_docmaster--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_iDocs_fab_docmaster', 'dim_entp_yardkpi_iDocs_fab_docmaster', 'yardkpi.stage_iDocs_fab_docmaster', 
'dbo.dim_entp_yardkpi_iDocs_fab_docmaster', 'yardkpi.reprocess_iDocs_fab_docmaster', 'dim_entp_yardkpi_iDocs_fab_docmaster_sk', 
'dim_entp_yardkpi_iDocs_fab_docmaster_nk', 'stage_iDocs_fab_docmaster_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'doc_id', 'varchar(50)',
'TEXT', 'NK', 'doc_id',
null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'project_no', 'varchar(120)', 'TEXT', 'OA', 'project_no', null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'project_id', 'varchar(120)', 'TEXT', 'OA', 'project_id', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'project_name', 'varchar(300)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'client_name', 'varchar(300)', 'TEXT', 'OA', 'client_name', null, null, null, null, null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'deliverable', 'varchar(200)', 'TEXT', 'OA', 'deliverable', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'dl_import', 'varchar(200)', 'TEXT', 'OA', 'dl_import', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'type_class', 'varchar(200)', 'TEXT', 'OA', 'type_class', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'deliverable_type', 'varchar(500)', 'TEXT', 'OA', 'deliverable_type', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'doc_type', 'varchar(500)', 'TEXT', 'OA', 'doc_type', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'doc_number', 'varchar(500)', 'TEXT', 'OA', 'doc_number', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'alternate_doc_number', 'varchar(500)', 'TEXT', 'OA', 'alternate_doc_number', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'title', 'varchar(1000)', 'TEXT', 'OA', 'title', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'revision_no', 'varchar(1000)', 'TEXT', 'OA', 'revision_no', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'revision_date', 'date', 'DATE', 'OA', 'revision_date', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'issue_state', 'varchar(100)', 'TEXT', 'OA', 'issue_state', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'client_rev_no', 'varchar(500)', 'TEXT', 'OA', 'client_rev_no', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'facility_plant_unit', 'varchar(500)', 'TEXT', 'OA', 'facility_plant_unit', null, null, null, null, null, null, 20, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'overdue_reason', 'varchar(500)', 'TEXT', 'OA', 'overdue_reason', null, null, null, null, null, null, 21, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'office_location', 'varchar(500)', 'TEXT', 'OA', 'office_location', null, null, null, null, null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'discipline', 'varchar(500)', 'TEXT', 'OA', 'discipline', null, null, null, null, null, null, 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'pcm_last_weld', 'varchar(500)', 'TEXT', 'OA', 'pcm_last_weld', null, null, null, null, null, null, 24, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'ref_no', 'varchar(500)', 'TEXT', 'OA', 'ref_no', null, null, null, null, null, null, 25, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'shop_dwg_type_of_error', 'varchar(500)', 'TEXT', 'OA', 'shop_dwg_type_of_error', null, null, null, null, null, null, 26, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'superseded_by', 'varchar(500)', 'TEXT', 'OA', 'superseded_by', null, null, null, null, null, null, 27, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'idocs_url', 'varchar(1000)', 'TEXT', 'OA', 'idocs_url', null, null, null, null, null, null, 28, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'idocs_folder', 'varchar(1000)', 'TEXT', 'OA', 'idocs_folder', null, null, null, null, null, null, 29, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'contract_no', 'varchar(120)', 'TEXT', 'OA', 'contract_no', null, null, null, null, null, null, 30, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 31, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 32, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster', 'dim_ent_contract_nk', 'int', 'NUMBER', 'RK', 'dim_ent_contract_nk', 'dbo.dim_ent_contract', 'dim_ent_contract_nk', 'contract_number', 'contract_no', NULL, NULL, 33, 'Y');

--------------------------------------------------
--dim_entp_yardkpi_iDocs_fab_docmaster_rev--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'dim_entp_yardkpi_iDocs_fab_docmaster_revision', 'yardkpi.stage_iDocs_fab_docmaster', 
'dbo.dim_entp_yardkpi_iDocs_fab_docmaster_revision', 'yardkpi.reprocess_iDocs_fab_docmaster_revision', 'dim_entp_yardkpi_iDocs_fab_docmaster_revision_sk', 
'dim_entp_yardkpi_iDocs_fab_docmaster_revision_nk', 'stage_iDocs_fab_docmaster_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'doc_id', 'varchar(50)',
'TEXT', 'NK', 'doc_id',
null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'revision_no', 'varchar(50)',
'TEXT', 'NK', 'revision_no',
null, null, null, null, null, null, 2, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'doc_number', 'varchar(500)', 'TEXT', 'OA', 'doc_number', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'revision_date', 'date', 'DATE', 'OA', 'revision_date', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'overdue_reason', 'varchar(500)', 'TEXT', 'OA', 'overdue_reason', null, null, null, null, null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'shop_dwg_type_of_error', 'varchar(500)', 'TEXT', 'OA', 'shop_dwg_type_of_error', null, null, null, null, null, null, 8, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_iDocs_fab_docmaster_rev', 'dim_entp_yardkpi_iDocs_fab_docmaster_nk', 'int', 'NUMBER', 'RK', 'dim_entp_yardkpi_iDocs_fab_docmaster_nk', 'dim_entp_yardkpi_iDocs_fab_docmaster_v', 'dim_entp_yardkpi_iDocs_fab_docmaster_nk', 'doc_id', 'doc_id', NULL, NULL, 11, 'Y');

--------------------------------------------------
--dim_entp_project_yardkpi_iDocs_docmas
---------------------------------------------------

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_project_yardkpi_iDocs_docmas', 'dim_entp_project_yardkpi_iDocs_fab_docmas',
'yardkpi.stage_ent_contract_iDocs_fab_docmas_vw', 'dim_entp_project', 'yardkpi.reprocess_yardkpi_ent_contract',
'dim_entp_project_sk', 'dim_entp_project_nk', 'stage_ent_contract_iDocs_fab_docmas_id',
13, 'Y', 'DIMENSION');

--NK--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_iDocs_docmas', 'project_number', 'varchar(120)',
'TEXT', 'NK', 'project_number',
null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_yardkpi_iDocs_docmas', 'contract_name', 'varchar(150)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_ent_contract_yardkpi_iDocs_docmas--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name, target_table_name,
reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_contract_yardkpi_iDocs_docmas', 'dim_ent_contract_yardkpi_iDocs_fab_docmas', 'yardkpi.stage_ent_contract_iDocs_fab_docmas_vw', 'dbo.dim_ent_contract',
'yardkpi.reprocess_yardkpi_ent_contract',
'dim_ent_contract_sk', 'dim_ent_contract_nk', 'stage_ent_contract_iDocs_fab_docmas_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'contract_number', 'varchar(20)', 'TEXT', 'NK', 'contract_number', null, null, null, null, null, null, 1, 'Y');


--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'contract_name', 'varchar(150)', 'TEXT', 'OA', 'contract_name', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'project_number', 'varchar(50)', 'TEXT', 'OA', 'project_number', null, null, null, null, null, null, 3, 'Y');


--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, 
target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'dim_ent_project_nk', 'int', 'NUMBER', 'RK', 
'dim_ent_project_nk', 'dim_entp_project', 'dim_entp_project_nk', 'project_number',
'project_number', null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_contract_yardkpi_iDocs_docmas', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 8, 'Y');

-----------------------------------------------------------------------------------------------
