--------------------------------------------------
--dim_entp_project_iDocs_Doc_Eng--
---------------------------------------------------
delete from generic_load_header where load_name ='dim_entp_project_iDocs_Doc_Eng'

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_project_iDocs_Doc_Eng', 'dim_entp_project_iDocs_Doc_Eng', 'gpd.stage_dim_entp_project_iDocs_Doc_Eng_vw', 
'dbo.dim_entp_project', 'gpd.reprocess_dim_entp_project_iDocs_Doc_Eng', 'dim_entp_project_sk', 
'dim_entp_project_nk', 'stage_dim_ent_project_iDocs_Doc_Eng_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
delete from generic_load_detail where load_name ='dim_entp_project_iDocs_Doc_Eng'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_iDocs_Doc_Eng', 'PROJECT_NUMBER', 'varchar(120)','TEXT', 'NK', 'project_number',null, null, null, null, null, null, 1, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_iDocs_Doc_Eng', 'PROJECT_NAME', 'varchar(500)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_project_iDocs_Doc_Eng', 'CLIENT_NAME', 'varchar(1000)', 'TEXT', 'OA', 'client_name', null, null, null, null, null, null, 4, 'Y');

--------------------------------------------------
--dim_entp_cwp_iDocs_Doc_Eng--
---------------------------------------------------
delete from generic_load_header where load_name ='dim_entp_cwp_iDocs_Doc_Eng'

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_cwp_iDocs_Doc_Eng', 'dim_entp_cwp_iDocs_Doc_Eng', 'gpd.stage_dim_entp_cwp_iDocs_Doc_Eng_vw', 
'dbo.dim_entp_cwp', 'gpd.reprocess_dim_entp_cwp_iDocs_Doc_Eng', 'dim_entp_cwp_sk', 
'dim_entp_cwp_nk', 'stage_dim_entp_cwp_iDocs_Doc_Eng_id', 13, 'Y', 'DIMENSION');
-----------------------------------------------------
delete from generic_load_detail where load_name ='dim_entp_cwp_iDocs_Doc_Eng'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_cwp_iDocs_Doc_Eng', 'cwp_code', 'varchar(100)','TEXT', 'NK', 'cwp_code',null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_cwp_iDocs_Doc_Eng', 'project_number', 'varchar(120)','TEXT', 'NK', 'project_number',null, null, null, null, null, null, 2, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_cwp_iDocs_Doc_Eng', 'cwp_description', 'varchar(100)', 'TEXT', 'OA', 'cwp_description', null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_cwp_iDocs_Doc_Eng', 'cwp_status', 'varchar(100)', 'TEXT', 'OA', 'cwp_status', null, null, null, null, null, null, 4, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_cwp_iDocs_Doc_Eng', 'dim_entp_cwp_iDocs_Doc_Eng', 'varchar(120)', 'TEXT', 'RK', 'dim_entp_project_nk',
'dbo.dim_entp_project', 'dim_entp_project_nk', 'project_number', 'project_number', null, null, 5, 'Y');

--------------------------------------------------
--dim_ent_document_status_iDocs_Doc_Eng--
---------------------------------------------------
delete from generic_load_header where load_name ='dim_ent_document_status_iDocs_Doc_Eng'

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_document_status_iDocs_Doc_Eng', 'dim_ent_document_status_iDocs_Doc_Eng', 'gpd.stage_dim_ent_document_status_iDocs_Doc_Eng_vw', 
'dbo.dim_ent_document_status', 'gpd.reprocess_dim_ent_document_status_iDocs_Doc_Eng', 'dim_ent_document_status_sk', 
'dim_ent_document_status_nk', 'stage_dim_ent_document_status_iDocs_Doc_Eng_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
delete from generic_load_detail where load_name ='dim_ent_document_status_iDocs_Doc_Eng'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_document_status_iDocs_Doc_Eng', 'document_status_code', 'varchar(100)','TEXT', 'NK', 'document_status_code',null, null, null, null, null, null, 1, 'Y');

--OA---
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_document_status_iDocs_Doc_Eng', 'document_status_desc', 'varchar(100)', 'TEXT', 'OA', 'document_status_desc', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_ent_subfunction_iDocs_Doc_Eng--
---------------------------------------------------
delete from generic_load_header where load_name ='dim_ent_subfunction_iDocs_Doc_Eng'

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_subfunction_iDocs_Doc_Eng', 'dim_ent_subfunction_iDocs_Doc_Eng', 'gpd.stage_dim_ent_subfunction_iDocs_Doc_Eng_vw', 
'dbo.dim_ent_subfunction', 'gpd.reprocess_dim_ent_subfunction_iDocs_Doc_Eng', 'dim_ent_subfunction_sk', 
'dim_ent_subfunction_nk', 'stage_dim_ent_subfunction_iDocs_Doc_Eng_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
delete from generic_load_detail where load_name ='dim_ent_subfunction_iDocs_Doc_Eng'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_subfunction_iDocs_Doc_Eng', 'sub_function_code', 'varchar(100)','TEXT', 'NK', 'sub_function_code',null, null, null, null, null, null, 1, 'Y');

--OA---
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_subfunction_iDocs_Doc_Eng', 'sub_function_description', 'varchar(100)', 'TEXT', 'OA', 'sub_function_description', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_ent_discipline_iDocs_Doc_Eng--
---------------------------------------------------
delete from generic_load_header where load_name ='dim_ent_discipline_iDocs_Doc_Eng'

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_ent_discipline_iDocs_Doc_Eng', 'dim_ent_discipline_iDocs_Doc_Eng', 'gpd.stage_dim_ent_discipline_iDocs_Doc_Eng_vw', 
'dbo.dim_ent_discipline', 'gpd.reprocess_dim_ent_discipline_iDocs_Doc_Eng', 'dim_ent_discipline_sk', 
'dim_ent_discipline_nk', 'stage_dim_ent_discipline_iDocs_Doc_Eng_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
delete from generic_load_detail where load_name ='dim_ent_discipline_iDocs_Doc_Eng'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_discipline_iDocs_Doc_Eng', 'discipline_code', 'varchar(300)','TEXT', 'NK', 'discipline_code',null, null, null, null, null, null, 1, 'Y');

--OA---
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_ent_discipline_iDocs_Doc_Eng', 'discipline_name', 'varchar(300)', 'TEXT', 'OA', 'discipline_name', null, null, null, null, null, null, 2, 'Y');
