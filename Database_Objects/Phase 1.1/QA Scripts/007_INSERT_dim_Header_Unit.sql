
update [dbo].[generic_load_header]
set stage_table_name='gpd.NCSA_Unit_combined_v', description='unit from sitepro and MCPM'
where load_name='dim_entp_work_unit'
and target_table_name='dim_entp_work_unit'