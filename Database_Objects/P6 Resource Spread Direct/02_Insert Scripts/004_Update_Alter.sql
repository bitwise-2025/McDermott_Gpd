update [dbo].[generic_load_detail] 
set stage_column_data_type='varchar(50)'
where load_name='dim_entp_temp_activity_p6_eng' and stage_column_name='total_float'


update [dbo].[generic_load_detail] 
set stage_column_data_type_category='TEXT'
where load_name='dim_entp_temp_activity_p6_eng' and stage_column_name='total_float'


update [dbo].[generic_load_detail] 
set stage_column_data_type='varchar(20)'
where load_name='dim_entp_temp_activity_p6_eng' and stage_column_name='is_on_critical_path'

update [dbo].[generic_load_detail] 
set stage_column_data_type_category='TEXT'
where load_name='dim_entp_temp_activity_p6_eng' and stage_column_name='is_on_critical_path'

GO
alter table [gpd].[tmp_Activity_P6_engr_headcount] alter column total_float varchar(50)
GO
alter table gpd.reprocess_tmp_Activity_P6_engr_headcount alter column total_float varchar(50)
GO
alter table dim_entp_activity alter column total_float varchar(50)
