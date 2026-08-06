declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_time_office_master_pipeline' and stage_table_name = 'gpd.stage_office_employee_master' and reprocessing_table_name = 'gpd.reprocess_dim_ent_clinic_daily_visit'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_time_office_master_pipeline','gpd.stage_office_employee_master','gpd.reprocess_dim_ent_time_office_employee_master','dim_ent_time_office_employee_master')
 end



select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_time_office_master_pipeline' and stage_table_name = 'gpd.stage_office_supervisor_master' and reprocessing_table_name = 'gpd.reprocess_dim_ent_clinic_daily_visit'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_time_office_master_pipeline','gpd.stage_office_supervisor_master','gpd.reprocess_dim_ent_time_office_supervisor_id_master','dim_ent_time_office_supervisor_id_master')
 end
