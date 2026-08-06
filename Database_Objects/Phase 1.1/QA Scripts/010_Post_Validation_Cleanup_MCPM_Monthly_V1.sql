-- Cleanup Previous MCPM Monthly data so it does not conflict with new versions

DELETE from DBO.FACT_OPS 
WHERE DIM_ENTP_PROJECT_NK = 142  --Project 99236910
AND DIM_ENTP_SUB_SOURCE_NK=17
and dim_entp_data_sub_class_nk in (18,19,20,25,26,27,28,29,30,33,34,35,42,43,44,45,46,47,48,49,50,53,55,56,57)
and Transaction_DATE in ('2021-07-31','2021-06-30')
--327449 records

update dbo.plp_pipeline_details
SET reprocessing_table_name='gpd.reprocess_coa_MCPM'
where pipeline_code in ('pl_mcpm_onshore_data_master_pipeline')
and stage_table_name='gpd.coa_MCPM'
and reprocessing_table_name='gpd.reprocess_MCPM_coa'

update dbo.plp_pipeline_details 
set stage_table_name='gpd.NCSA_MCPM_UOM_v' 
where pipeline_code ='pl_uom_mcpm_master_pipeline' 

update dbo.plp_pipeline_details 
set stage_table_name='gpd.NCSA_MCPM_Phases_v' 
where pipeline_code ='pl_phases_mcpm_master_pipeline' 
