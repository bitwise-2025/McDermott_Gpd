

declare @count int;

--- Work Pack Progress

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_work_pack_progress_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Work_Pack_Progress_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_work_pack_progress_pmr_exlstgjsn_master_pipeline','gpd.Work_Pack_Progress_PMR_JSON',NULL,NULL)
 end;