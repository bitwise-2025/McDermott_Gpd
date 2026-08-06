
ALTER TABLE [dbo].[dim_entp_activity_resource]
	ADD dim_entp_activity_nk [int] NULL;

	
INSERT INTO [dbo].[generic_load_detail]
           ([load_name]
           ,[stage_column_name]
           ,[stage_column_data_type]
           ,[stage_column_data_type_category]
           ,[stage_column_key_type]
           ,[target_column_name]
           ,[ref_table_name]
           ,[ref_gnk_name]
           ,[ref_target_column_name1]
           ,[ref_source_column_name1]
           ,[ref_target_column_name2]
           ,[ref_source_column_name2]
           ,[ref_target_column_name3]
           ,[ref_source_column_name3]
           ,[ref_target_column_name4]
           ,[ref_source_column_name4]
           ,[ref_target_column_name5]
           ,[ref_source_column_name5]
           ,[sl_no]
           ,[active_flag]
           ,[skip_rk_validation])
     VALUES('dim_entp_p6_resource_activity','dim_entp_activity_nk','int','NUMBER','RK','dim_entp_activity_nk','dim_entp_activity','dim_entp_activity_nk','project_number','project_number','activity_code','activity_code',NULL,NULL,NULL,NULL,NULL,NULL,'30','Y',NULL)


