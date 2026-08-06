
--updating the GPD level for L3 data_subclass based on the changes to the view fact_ops_v1
update dbo.dim_ent_data_sub_class
set gpd_level = 'By IWP Split/Activity'
where data_sub_class_name in ('Remaining Early Units','Earned Units','At Completion Units','Baseline Plan Hours 2019_11_16','Baseline Plan Hours 2020_04_25','Baseline Plan Hours 2020_12_26')
and active = 1

--Additional Dime config detail for dim_entp_pim
insert into generic_load_detail(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,ref_table_name,ref_gnk_name,ref_target_column_name1,ref_source_column_name1,ref_target_column_name2,ref_source_column_name2,ref_target_column_name3,ref_source_column_name3,ref_target_column_name4,ref_source_column_name4,ref_target_column_name5,ref_source_column_name5,sl_no,active_flag)
	values('dim_entp_pim','Cost_Code_Description','varchar(255)','TEXT','OA','cost_code_description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'220','Y')

insert into generic_load_detail(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,ref_table_name,ref_gnk_name,ref_target_column_name1,ref_source_column_name1,ref_target_column_name2,ref_source_column_name2,ref_target_column_name3,ref_source_column_name3,ref_target_column_name4,ref_source_column_name4,ref_target_column_name5,ref_source_column_name5,sl_no,active_flag)
	values('dim_entp_pim','piece_mark','varchar(255)','TEXT','OA','piece_mark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'230','Y')
