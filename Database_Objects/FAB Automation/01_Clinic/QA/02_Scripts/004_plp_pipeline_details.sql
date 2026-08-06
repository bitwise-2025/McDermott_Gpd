declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_clinic_daily_visit_master_pipeline' and stage_table_name = 'gpd.stage_clinic_daily_visit' and reprocessing_table_name = 'gpd.reprocess_dim_ent_clinic_daily_visit'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_clinic_daily_visit_master_pipeline','gpd.stage_clinic_daily_visit','gpd.reprocess_dim_ent_clinic_daily_visit','dim_ent_clinic_daily_visit')
 end

