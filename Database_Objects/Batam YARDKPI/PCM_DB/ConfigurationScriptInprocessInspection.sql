--------------------------------------------------
--dim_entp_pcm_inprocess_inspection--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_pcm_inprocess_inspection', 'dim_entp_pcm_inprocess_inspection', 'yardkpi.stage_entp_pcm_inprocess_inspection', 
'dbo.dim_entp_pcm_inprocess_inspection', 'yardkpi.reprocess_entp_pcm_inprocess_inspection', 'dim_entp_pcm_inprocess_inspection_sk', 
'dim_entp_pcm_inprocess_inspection_nk', 'stage_entp_pcm_inprocess_inspection_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'ndt_drawing', 'char(40)','TEXT', 'NK', 'ndt_drawing',null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'ndt_drawing_desc', 'varchar(100)','TEXT', 'OA', 'ndt_drawing_desc',null, null, null, null, null, null, 2, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'trans_date', 'datetime','datetime', 'OA', 'trans_date',null, null, null, null, null, null, 3, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'trans_type', 'char(4)','text', 'OA', 'trans_type',null, null, null, null, null, null, 4, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'fab_code', 'varchar(3)','text', 'NK', 'fab_code',null, null, null, null, null, null, 5, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'job_title', 'varchar(50)','text', 'OA', 'job_title',null, null, null, null, null, null, 7, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'item', 'char(2)','text', 'NK', 'item',null, null, null, null, null, null, 8, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'item_title', 'varchar(50)','text', 'OA', 'item_title',null, null, null, null, null, null, 9, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'wctrl', 'varchar(8)','text', 'OA', 'wctrl',null, null, null, null, null, null, 10, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'weld_suffix', 'varchar(7)','text', 'OA', 'weld_suffix',null, null, null, null, null, null, 11, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'stress_relief', 'char(1)','text', 'OA', 'stress_relief',null, null, null, null, null, null, 12, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'weld_repair_ref', 'int','number', 'OA', 'weld_repair_ref',null, null, null, null, null, null, 13, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'discipline', 'char(1)','text', 'OA', 'discipline',null, null, null, null, null, null, 14, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'weld', 'varchar(4)','text', 'OA', 'weld',null, null, null, null, null, null, 15, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'activity_type', 'varchar(3)','text', 'OA', 'activity_type',null, null, null, null, null, null, 16, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'report_type', 'varchar(4)','text', 'OA', 'report_type',null, null, null, null, null, null, 17, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'report_num', 'decimal','number', 'OA', 'report_num',null, null, null, null, null, null, 18, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'inspector', 'char(2)','text', 'OA', 'inspector',null, null, null, null, null, null, 19, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'remarks', 'varchar(255)','text', 'OA', 'remarks',null, null, null, null, null, null, 20, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'activity_done_by', 'varchar(35)','text', 'OA', 'activity_done_by',null, null, null, null, null, null, 21, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'activity_done_on', 'datetime','datetime', 'OA', 'activity_done_on',null, null, null, null, null, null, 22, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'action_taken', 'varchar(255)','text', 'OA', 'action_taken',null, null, null, null, null, null, 23, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'action_taken_on', 'datetime','datetime', 'OA', 'action_taken_on',null, null, null, null, null, null, 24, 'Y');
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
('dim_entp_pcm_inprocess_inspection', 'other_remarks', 'varchar(255)','text', 'OA', 'other_remarks',null, null, null, null, null, null, 25, 'Y');
insert into generic_load_detail
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values
(	'dim_entp_pcm_inprocess_inspection',	'dim_ent_sub_source_nk',	'int',	
'NUMBER',	'RK',	'dim_ent_sub_source_nk',
'dim_ent_sub_source',	'dim_ent_sub_source_nk',	'sub_source_name',
'sub_source_code',	'source_name',	'source_code',	null,	null,	null,	null,	null,	null,	3000,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'dim_ent_Source_nk',	'int',	
'NUMBER',	'RK',	'dim_ent_Source_nk',
'dim_ent_source',	'dim_ent_source_nk',	'source_name',
'source_code',	NULL,	NULL,	null,	null,	null,	null,	null,	null,	3001,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'dim_ent_contract_nk',	'int',	
'NUMBER',	'RK',	'dim_ent_contract_nk',
'dim_ent_contract',	'dim_ent_contract_nk',	'contract_number',
'contract',	NULL,	NULL,	null,	null,	null,	null,	null,	null,	3002,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'dim_entp_pcm_job_item_nk',	'int',	
'NUMBER',	'RK',	'dim_entp_pcm_job_item_nk',
'dim_entp_pcm_job_item',	'dim_entp_pcm_job_item_nk',	'job',
'job',	'item',	'item',	'fab_code',	'fab_code',	'contract',	'contract',	null,	null,	3003,	'Y',	null	)
insert into generic_load_detail(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'job',	'char(5)',	
'TEXT',	'TA',	Null,Null,	Null,	Null,Null,	Null,	Null,	Null,	Null,	Null,	Null,	null,	null,	3004,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'contract',	'char(10)',	
'TEXT',	'TA',	Null,Null,	Null,	Null,Null,	Null,	Null,	Null,	Null,	Null,	Null,	null,	null,	3005,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'source_code',	'varchar(50)',	
'TEXT',	'TA',	Null,Null,	Null,	Null,Null,	Null,	Null,	Null,	Null,	Null,	Null,	null,	null,	3006,	'Y',	null	)
insert into generic_load_detail (load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, 
active_flag) values(	'dim_entp_pcm_inprocess_inspection',	'sub_source_code',	'varchar(50)',	
'TEXT',	'TA',	Null,Null,	Null,	Null,Null,	Null,	Null,	Null,	Null,	Null,	Null,	null,	null,	3007,	'Y',	null	)