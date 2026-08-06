
select * from dim_ent_sub_source where sub_source_name = 'SPC'

EXEC dbo.load_dim_ent_sub_source 'SYSTEM','SPC'

---------------------------------------------------------------
--dim_entp_spc_project--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_project'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_spc_project', 'dim_entp_spc_project',
'yardkpi.stage_entp_spc_project_vw', 'dbo.dim_entp_spc_project', 'yardkpi.reprocess_entp_spc_project',
'dim_entp_spc_project_sk', 'dim_entp_spc_project_nk', 'stage_entp_spc_project_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_spc_project'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_project', 'PROJECT', 'varchar(250)', 'TEXT', 'NK', 'PROJECT', null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_project', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_project', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_project', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_project', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');

---------------------------------------------------------------
--dim_entp_spc_discipline--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_discipline'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_spc_discipline', 'dim_entp_spc_discipline',
'yardkpi.stage_entp_spc_discipline_vw', 'dbo.dim_entp_spc_discipline', 'yardkpi.reprocess_entp_spc_discipline',
'dim_entp_spc_discipline_sk', 'dim_entp_spc_discipline_nk', 'stage_entp_spc_discipline_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_spc_discipline'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_discipline', 'discipline', 'varchar(4000)', 'TEXT', 'NK', 'discipline', null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_discipline', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_discipline', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_discipline', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_discipline', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');

---------------------------------------------------------------
--dim_entp_spc_status--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_status'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_spc_status', 'dim_entp_spc_status',
'yardkpi.stage_entp_spc_status_vw', 'dbo.dim_entp_spc_status', 'yardkpi.reprocess_entp_spc_status',
'dim_entp_spc_status_sk', 'dim_entp_spc_status_nk', 'stage_entp_spc_status_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_spc_status'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_status', 'status', 'varchar(4000)', 'TEXT', 'NK', 'status', null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_status', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_status', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_status', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_status', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');

---------------------------------------------------------------
--dim_entp_spc_jobno--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_jobno'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_spc_jobno', 'dim_entp_spc_jobno',
'yardkpi.stage_entp_spc_jobno_vw', 'dbo.dim_entp_spc_jobno', 'yardkpi.reprocess_entp_spc_jobno',
'dim_entp_spc_jobno_sk', 'dim_entp_spc_jobno_nk', 'stage_entp_spc_jobno_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_spc_jobno'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_jobno', 'jobno', 'varchar(4000)', 'TEXT', 'NK', 'jobno', null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_jobno', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_jobno', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_jobno', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_jobno', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');

---------------------------------------------------------------
--dim_entp_spc_entp_project--
---------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_entp_project'

insert into generic_load_header
(load_name, description,
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name,
glt_id, active_flag, load_type)
values
('dim_entp_spc_entp_project', 'dim_entp_spc_entp_project',
'yardkpi.stage_entp_spc_entp_project_vw', 'dbo.dim_entp_project', 'yardkpi.reprocess_entp_spc_entp_project',
'dim_entp_project_sk', 'dim_entp_project_nk', 'stage_entp_spc_entp_project_id',
13, 'Y', 'DIMENSION');

delete from generic_load_detail where load_name = 'dim_entp_spc_entp_project'

--NK----
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_entp_project', 'project_number', 'varchar(120)', 'TEXT', 'NK', 'project_number', null, null, null, null, null, null, 1, 'Y');

--OA--
insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_entp_project', 'project_description', 'varchar(250)', 'TEXT', 'OA', 'project_name', null, null, null, null, null, null, 2, 'Y');

--------------------------------------------------
--dim_entp_spc_ent_contract--
---------------------------------------------------
delete from generic_load_header where load_name = 'dim_entp_spc_ent_contract'

insert into generic_load_header 
(load_name, description, 
stage_table_name, target_table_name, reprocess_table_name,
target_sk_name, target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_spc_ent_contract', 'dim_entp_spc_ent_contract', 
'yardkpi.stage_entp_spc_ent_contract_vw', 'dbo.dim_ent_contract', 'yardkpi.reprocess_entp_spc_ent_contract',
'dim_ent_contract_sk', 'dim_ent_contract_nk', 'stage_entp_spc_ent_contract_id', 13, 'Y', 'DIMENSION');
-----------------------------------------------------
delete from generic_load_detail where load_name = 'dim_entp_spc_ent_contract'
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'contract_number', 'varchar(120)', 'TEXT', 'NK', 'contract_number', null, null, null, null, null, null, 1, 'Y');

--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'contract_description', 'varchar(250)', 'TEXT', 'OA', 'contract_name', null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'project_number', 'varchar(120)', 'TEXT', 'OA', 'project_number', null, null, null, null, null, null, 3, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, 
target_column_name, ref_table_name, ref_gnk_name, 
ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'dim_ent_project_nk', 'int', 'NUMBER', 'RK', 
'dim_ent_project_nk', 'dim_entp_project', 'dim_entp_project_nk', 
'project_number','project_number', null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_ent_contract', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 8, 'Y');

------------------------------------------------------------------------------------------------
--dim_entp_spc_progress--
------------------------------------------------------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_spc_progress'

insert into generic_load_header (load_name,description,
stage_table_name,target_table_name,reprocess_table_name,
target_sk_name,target_gnk_name,stage_Sk_name,glt_id,active_flag,load_type) VALUES 
('dim_entp_spc_progress','dim_entp_spc_progress',
'yardkpi.stage_entp_spc_progress','dbo.dim_entp_spc_progress','yardkpi.reprocess_entp_spc_progress',
'dim_entp_spc_progress_sk','dim_entp_spc_progress_nk','stage_entp_spc_progress_id',13,'Y','DIMENSION')

delete from generic_load_detail where load_name = 'dim_entp_spc_progress'

--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'NAME', 'VARCHAR(4000)','TEXT', 'NK', 'NAME',null, null, null, null, null, null, 1, 'Y')

--OA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'FIWPOBID', 'VARCHAR(500)','TEXT', 'OA', 'FIWPOBID',null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'FIWPUID', 'VARCHAR(128)','TEXT', 'OA', 'FIWPUID',null, null, null, null, null, null, 3, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'DESCRIPTION', 'VARCHAR(4000)','TEXT', 'OA', 'DESCRIPTION',null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'PURPOSE', 'VARCHAR(4000)','TEXT', 'OA', 'PURPOSE',null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'PLANNEDSTARTDATE', 'date','date', 'OA', 'PLANNEDSTARTDATE',null, null, null, null, null, null, 6, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'PLANNEDFINISHDATE', 'date','date', 'OA', 'PLANNEDFINISHDATE',null, null, null, null, null, null, 7, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'ACTUALSTARTDATE', 'date','date', 'OA', 'ACTUALSTARTDATE',null, null, null, null, null, null, 8, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'ACTUALFINISHDATE', 'date','date', 'OA', 'ACTUALFINISHDATE',null, null, null, null, null, null, 9, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'ESTIMATEDMANHOURS', 'decimal(25,18)','NUMBER', 'OA', 'ESTIMATEDMANHOURS',null, null, null, null, null, null, 10, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'PLANNEDMANHOURS', 'decimal(25,18)','NUMBER', 'OA', 'PLANNEDMANHOURS',null, null, null, null, null, null, 11, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'ACTUALMANHOURS', 'decimal(25,18)','NUMBER', 'OA', 'ACTUALMANHOURS',null, null, null, null, null, null, 12, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'COMPLETEDMANHOURS', 'decimal(25,18)','NUMBER', 'OA', 'COMPLETEDMANHOURS',null, null, null, null, null, null, 13, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'TOTALCOMPONENTCONSTRAINTS', 'int','NUMBER', 'OA', 'TOTALCOMPONENTCONSTRAINTS',null, null, null, null, null, null, 14, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'OPENCOMPONENTCONSTRAINTS', 'int','NUMBER', 'OA', 'OPENCOMPONENTCONSTRAINTS',null, null, null, null, null, null, 15, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'SCOPE', 'VARCHAR(8000)','TEXT', 'OA', 'SCOPE',null, null, null, null, null, null, 16, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'NOTES', 'VARCHAR(8000)','TEXT', 'OA', 'NOTES',null, null, null, null, null, null, 17, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CREWSIZE', 'INT','NUMBER', 'OA', 'CREWSIZE',null, null, null, null, null, null, 18, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CREWDURATION', 'VARCHAR(4000)','TEXT', 'OA', 'CREWDURATION',null, null, null, null, null, null, 19, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'EWPNUMBER', 'VARCHAR(4000)','TEXT', 'OA', 'EWPNUMBER',null, null, null, null, null, null, 20, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CONTRACTOR', 'VARCHAR(4000)','TEXT', 'OA', 'CONTRACTOR',null, null, null, null, null, null, 21, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'DESIGNAREA', 'VARCHAR(4000)','TEXT', 'OA', 'DESIGNAREA',null, null, null, null, null, null, 22, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'FOREMAN', 'VARCHAR(4000)','TEXT', 'OA', 'FOREMAN',null, null, null, null, null, null, 23, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'GENERALFOREMAN', 'VARCHAR(4000)','TEXT', 'OA', 'GENERALFOREMAN',null, null, null, null, null, null, 24, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'FIELDENGINEER', 'VARCHAR(4000)','TEXT', 'OA', 'FIELDENGINEER',null, null, null, null, null, null, 25, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'SUPERINTENDENT', 'VARCHAR(4000)','TEXT', 'OA', 'SUPERINTENDENT',null, null, null, null, null, null, 26, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CREWOBID', 'VARCHAR(500)','TEXT', 'OA', 'CREWOBID',null, null, null, null, null, null, 27, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CWPOBID', 'VARCHAR(500)','TEXT', 'OA', 'CWPOBID',null, null, null, null, null, null, 28, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'REVISION', 'VARCHAR(4000)','TEXT', 'OA', 'REVISION',null, null, null, null, null, null, 29, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'IWPREVDATE', 'VARCHAR(4000)','TEXT', 'OA', 'IWPREVDATE',null, null, null, null, null, null, 30, 'Y')

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_spc_progress', 'CREATIONUSER', 'VARCHAR(4000)','TEXT', 'OA', 'CREATIONUSER',null, null, null, null, null, null, 31, 'Y')

--TA--

insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, sl_no, active_flag) values
('dim_entp_spc_progress',	'PROJECT',	'varchar(250)',	'TEXT',	'TA',	32,	'Y'	)

insert into generic_load_detail(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, sl_no, active_flag) values
('dim_entp_spc_progress',	'DISCIPLINE',	'varchar(4000)', 'TEXT','TA', 33,	'Y'	)

insert into generic_load_detail(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, sl_no, active_flag) values(
'dim_entp_spc_progress',	'STATUS',	'varchar(4000)', 'TEXT',	'TA',	34,	'Y'	)

insert into generic_load_detail(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, sl_no, active_flag) values
('dim_entp_spc_progress',	'CONTRACT_Number',	'varchar(120)',	'TEXT',	'TA',	35,	'Y'	)

insert into generic_load_detail(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, sl_no, active_flag) values
('dim_entp_spc_progress',	'JOBNO',	'varchar(4000)', 'TEXT',	'TA',	36,	'Y'	)

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 37, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 38, 'Y');

--RK--

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no,  active_flag) values
('dim_entp_spc_progress',	'dim_entp_spc_project_nk',	'int',	'NUMBER',	'RK',	'dim_entp_spc_project_nk', 'dim_entp_spc_project_vw',	'dim_entp_spc_project_nk',	'PROJECT', 'PROJECT',	NULL,	NULL,	39,	'Y')

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress',	'dim_entp_spc_discipline_nk',	'int',	'NUMBER',	'RK',	'dim_entp_spc_discipline_nk', 'dim_entp_spc_discipline_vw',	'dim_entp_spc_discipline_nk',	'DISCIPLINE', 'DISCIPLINE',	NULL,	NULL,	40,	'Y')

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress',	'dim_entp_spc_status_nk',	'int',	'NUMBER',	'RK',	'dim_entp_spc_status_nk','dim_entp_spc_status_vw',	'dim_entp_spc_status_nk',	'status', 'status',	NULL,	NULL,	41,	'Y')

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no,  active_flag) values
('dim_entp_spc_progress',	'dim_ent_contract_nk',	'int',	'NUMBER',	'RK',	'dim_ent_contract_nk', 'dim_ent_contract',	'dim_ent_contract_nk',	'contract_number', 'CONTRACT_number',	NULL,	NULL,	42,	'Y')

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name,ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress',	'dim_entp_spc_jobno_nk',	'int',	'NUMBER',	'RK',	'dim_entp_spc_jobno_nk','dim_entp_spc_jobno_vw',	'dim_entp_spc_jobno_nk',	'jobno', 'jobno',	NULL,	NULL,	43,	'Y')

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 44, 'Y');

insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_spc_progress', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 45, 'Y');

