declare @count int				
declare @next_val int;				
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_offshore_monthly_raw_to_synapse' and stage_table_name = 'gpd.NCSA_MCPM_offshore' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_offshore'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpmdata_offshore_monthly_raw_to_synapse','gpd.NCSA_MCPM_offshore','gpd.reprocess_NCSA_MCPM_offshore','dbo.fact_ops')
 end
 
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_offshore_monthly_raw_to_synapse' and stage_table_name = 'gpd.dim_ent_geac_coa_MCPM_Off' and reprocessing_table_name = 'gpd.reprocess_dim_ent_geac_coa_MCPM_Off'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpmdata_offshore_monthly_raw_to_synapse','gpd.dim_ent_geac_coa_MCPM_Off','gpd.reprocess_dim_ent_geac_coa_MCPM_Off','dbo.dim_ent_geac_coa')
 end