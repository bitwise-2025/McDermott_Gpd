
declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_maps_reason_master_pipeline' and stage_table_name = 'gpd.stage_maps_reason' 
and reprocessing_table_name = 'gpd.reprocess_dim_entp_maps_reason'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_maps_reason_master_pipeline','gpd.stage_maps_reason','gpd.reprocess_dim_entp_maps_reason','dim_entp_maps_reason')
 end

