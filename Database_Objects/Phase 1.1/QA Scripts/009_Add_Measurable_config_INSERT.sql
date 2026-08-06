-- Adding measurable column to first of the DIM Config
--Step 1] Update the dim configuration for load name  'dim_ent_jde_coa_MCPM'

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
     VALUES('dim_ent_jde_coa_MCPM','measurable','varchar(5)','TEXT','OA','measurable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25','Y',NULL)


GO


--Step 2] Update the dim configuration for load name  'dim_ent_mcpm_coa'

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
     VALUES('dim_ent_mcpm_coa','measurable','varchar(5)','TEXT','OA','measurable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'250','Y',NULL)

GO


--Step 3 ] Update the dim configuration for load name  'dim_ent_jde_coa'

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
     VALUES('dim_ent_jde_coa','measurable','varchar(5)','TEXT','OA','measurable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'250','Y',NULL)
