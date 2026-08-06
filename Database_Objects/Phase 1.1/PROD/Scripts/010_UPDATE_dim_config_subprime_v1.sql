---Update the dim config for sub_prime to pick the prime_nk from relevant projects

--select * from [dbo].[generic_load_detail] 
update [dbo].[generic_load_detail]
set ref_target_column_name2='project_number'
,ref_source_column_name2='Domain'
where load_name='dim_ent_sub_prime'
and stage_column_name='dim_ent_prime_nk' and target_column_name='dim_ent_prime_nk'



update dbo.plp_pipeline_details 
set stage_table_name='gpd.NCSA_MCPM_UOM_v' 
where pipeline_code ='pl_uom_mcpm_master_pipeline' 

update dbo.plp_pipeline_details 
set stage_table_name='gpd.NCSA_MCPM_Phases_v' 
where pipeline_code ='pl_phases_mcpm_master_pipeline' 
