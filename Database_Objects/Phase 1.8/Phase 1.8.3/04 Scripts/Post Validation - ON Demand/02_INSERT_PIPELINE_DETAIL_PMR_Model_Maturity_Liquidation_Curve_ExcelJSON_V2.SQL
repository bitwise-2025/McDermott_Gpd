declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_model_maturity_modelmat_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.ModelMat_Model_Maturity_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_model_maturity_modelmat_exlstgjsn_master_pipeline','gpd.ModelMat_Model_Maturity_PMR_JSON',NULL,NULL)
 end;
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_liquidation_curve_modelmat_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.ModelMat_Liquidation_Curve_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_liquidation_curve_modelmat_exlstgjsn_master_pipeline','gpd.ModelMat_Liquidation_Curve_PMR_JSON',NULL,NULL)
 end;