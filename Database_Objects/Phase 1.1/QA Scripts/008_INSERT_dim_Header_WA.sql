
update [dbo].[generic_load_header]
set stage_table_name='gpd.NCSA_WorkArea_combined_v', description='WorkArea from sitepro and MCPM'
where load_name='dim_entp_work_area'
and target_table_name='dim_entp_work_area'