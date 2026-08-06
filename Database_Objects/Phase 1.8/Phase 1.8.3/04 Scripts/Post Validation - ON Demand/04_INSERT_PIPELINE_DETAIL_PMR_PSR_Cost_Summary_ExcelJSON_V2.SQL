declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_psr_cost_summary_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.PSR_Cost_Summary_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_psr_cost_summary_exlstgjsn_master_pipeline','gpd.PSR_Cost_Summary_PMR_JSON',NULL,NULL)
 end;