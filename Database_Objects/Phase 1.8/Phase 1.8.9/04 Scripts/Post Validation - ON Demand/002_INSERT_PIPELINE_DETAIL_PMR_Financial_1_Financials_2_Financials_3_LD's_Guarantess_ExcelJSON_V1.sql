 
 declare @count int;
 
 ---- Financials_1
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_financials_1_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Financials_1_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_financials_1_pmr_exlstgjsn_master_pipeline','gpd.Financials_1_PMR_JSON',NULL,NULL)
 end
 
 --- Financials_2
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_financials_2_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Financials_2_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_financials_2_pmr_exlstgjsn_master_pipeline','gpd.Financials_2_PMR_JSON',NULL,NULL)
 end
 
 --- Financials_3
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_financials_3_lds_guarantees_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Financials_3_LDs_Guarantees_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_financials_3_lds_guarantees_pmr_exlstgjsn_master_pipeline','gpd.Financials_3_LDs_Guarantees_PMR_JSON',NULL,NULL)
 end;