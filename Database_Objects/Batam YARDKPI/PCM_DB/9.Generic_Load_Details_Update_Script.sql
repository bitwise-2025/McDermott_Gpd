Update generic_load_detail 
Set stage_column_data_type_category = 'TEXT'
Where load_name = 'Dim_entp_pcm_ndt_details_load' and stage_column_name = 'defect_length'

Update generic_load_detail 
Set stage_column_data_type = 'varchar(20)'
Where load_name = 'Dim_entp_pcm_ndt_details_load' and stage_column_name = 'defect_length'

Update generic_load_detail 
Set stage_column_data_type_category = 'TEXT'
Where load_name = 'Dim_entp_pcm_ndt_details_load' and stage_column_data_type like '%date%'

Update generic_load_detail 
Set stage_column_data_type = 'varchar(50)'
Where load_name = 'Dim_entp_pcm_ndt_details_load' and stage_column_data_type like '%date%'
-----------------------------------------------------------------------------------------

Update generic_load_detail 
Set stage_column_data_type_category = 'TEXT'
Where load_name = 'Dim_entp_pcm_Welder_activity_load' and stage_column_name = 'weld_date'

Update generic_load_detail 
Set stage_column_data_type = 'varchar(50)'
Where load_name = 'Dim_entp_pcm_Welder_activity_load' and stage_column_name = 'weld_date'

Update generic_load_detail 
Set stage_column_data_type_category = 'TEXT'
Where load_name = 'Dim_entp_pcm_Welder_activity_load' and stage_column_name = 'weld_repair_ref'

Update generic_load_detail 
Set stage_column_data_type = 'varchar(50)'
Where load_name = 'Dim_entp_pcm_Welder_activity_load' and stage_column_name = 'weld_repair_ref'