declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_period_EAC_variance_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.procurement_status_report_planning_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_period_EAC_variance_exlstgjsn_master_pipeline','gpd.Period_EAC_Variances_JSON',NULL,NULL)
 end
 
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_conq_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.CONQ_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_conq_exlstgjsn_master_pipeline','gpd.CONQ_JSON',NULL,NULL)
 end
 
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_conq_rca_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.CONQ_RCA_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_conq_rca_exlstgjsn_master_pipeline','gpd.CONQ_RCA_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_changemanagement_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.ChangeManagement_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_changemanagement_pmr_exlstgjsn_master_pipeline','gpd.ChangeManagement_PMR_JSON',NULL,NULL)
 end;
 
 ---Net cash
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_netcash_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Net_Cash_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_netcash_pmr_exlstgjsn_master_pipeline','gpd.Net_Cash_PMR_JSON',NULL,NULL)
 end;
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_netcash_cashflow_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Net_Cash_CashFlow_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_netcash_cashflow_pmr_exlstgjsn_master_pipeline','gpd.Net_Cash_CashFlow_PMR_JSON',NULL,NULL)
 end;
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_netcash_cash_position_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Net_Cash_Cash_Position_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_netcash_cash_position_pmr_exlstgjsn_master_pipeline','gpd.Net_Cash_Cash_Position_PMR_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_netcash_collections_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Net_Cash_Collections_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_netcash_collections_pmr_exlstgjsn_master_pipeline','gpd.Net_Cash_Collections_PMR_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_netcash_status_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Net_Cash_Status_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_netcash_status_pmr_exlstgjsn_master_pipeline','gpd.Net_Cash_Status_PMR_JSON',NULL,NULL)
 end
 
 ------RISK & OPPORTUNITY
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_deferral_risk_riskopp_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.RiskOpp_Deferral_Risks_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_deferral_risk_riskopp_exlstgjsn_master_pipeline','gpd.RiskOpp_Deferral_Risks_PMR_JSON',NULL,NULL)
 end
 
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_risk_riskopp_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.RiskOpp_Risks_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_risk_riskopp_exlstgjsn_master_pipeline','gpd.RiskOpp_Risks_PMR_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_contingency_draw_down_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Contingency_Draw_Down_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_contingency_draw_down_exlstgjsn_master_pipeline','gpd.Contingency_Draw_Down_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_contingency_riskopp_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.RiskOpp_Contingency_PMR_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_contingency_riskopp_exlstgjsn_master_pipeline','gpd.RiskOpp_Contingency_PMR_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_opportunity_riskopp_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.RiskOpp_Opportunity_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_opportunity_riskopp_exlstgjsn_master_pipeline','gpd.RiskOpp_Opportunity_PMR_JSON',NULL,NULL)
 end;
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_romap_status_riskopp_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.RiskOpp_Romap_Status_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_romap_status_riskopp_exlstgjsn_master_pipeline','gpd.RiskOpp_Romap_Status_PMR_JSON',NULL,NULL)
 end;