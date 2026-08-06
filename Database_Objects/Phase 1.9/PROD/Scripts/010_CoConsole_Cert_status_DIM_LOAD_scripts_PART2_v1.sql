----------Co Console DIM LOAD Details----------------
---------------------Header------------------------

	insert into dbo.generic_load_header
([load_name],
	[description],
	[stage_table_name],
	[target_table_name],
	[reprocess_table_name],
	[target_sk_name],
	[target_gnk_name],
	[stage_sk_name],
	[glt_id],
	[active_flag],
	[load_type])
	Values('dim_entp_comm_certstatus_v3','dim_entp_comm_certstatus_v3','NCSA_coconsole_certificatestatus_convert_v',
	'dbo.dim_entp_commissioning_ss_certification_status','gpd.reprocess_cc_dim_entp_comm_certstatus',
	'dim_entp_commissioning_ss_certification_status_sk','dim_entp_commissioning_ss_certification_status_nk',
	'rssk',13,'Y','DIMENSION')

---------------------Detail------------------------

		insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','sub_system','varchar(50)',
	'TEXT','NK','sub_system',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
	NULL,NULL,NULL,1,'Y',NULL)
	
	insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','Project','varchar(100)',
	'TEXT','NK','Project',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
	NULL,NULL,NULL,2,'Y',NULL)
	
	insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','json_attribute','varchar(8000)',
	'TEXT','OA','json_attribute',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
	NULL,NULL,NULL,3,'Y',NULL)
	
	insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','dim_entp_project_nk','INT',
	'NUMBER','RK','dim_entp_project_nk','dim_entp_project','dim_entp_project_nk','project_number','Project',NULL,NULL,NULL,NULL,NULL,
	NULL,NULL,NULL,4,'Y',NULL)
	
	insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','dim_entp_commissioning_sub_system_nk','bigint',
	'NUMBER','RK','dim_entp_commissioning_sub_system_nk','dim_entp_commissioning_sub_system','dim_entp_commissioning_sub_system_nk','sub_system_number','Sub_System','project_number','Project',NULL,NULL,NULL,
	NULL,NULL,NULL,5,'Y',NULL)


insert into dbo.generic_load_detail

(	[load_name],
	[stage_column_name],
	[stage_column_data_type],
	[stage_column_data_type_category],
	[stage_column_key_type],
	[target_column_name],
	[ref_table_name],
	[ref_gnk_name],
	[ref_target_column_name1],
	[ref_source_column_name1],
	[ref_target_column_name2],
	[ref_source_column_name2],
	[ref_target_column_name3],
	[ref_source_column_name3],
	[ref_target_column_name4],
	[ref_source_column_name4],
	[ref_target_column_name5],
	[ref_source_column_name5],
	[sl_no],
	[active_flag],
	[skip_rk_validation])
	Values('dim_entp_comm_certstatus_v3','json_attribute_for_view','varchar(8000)',
	'TEXT','OA','json_attribute_for_view',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
	NULL,NULL,NULL,6,'Y',NULL)


/** Comment - Please execute the below script **/

update dbo.generic_load_header
set stage_table_name='gpd.NCSA_coconsole_certificatestatus_convert_v'
where load_name='dim_entp_comm_certstatus_v3'
