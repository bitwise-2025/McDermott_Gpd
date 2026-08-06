 
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
 


--- Critical vendor Payments

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_criticalvendorpayments_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Critical_Vendor_Payments_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_criticalvendorpayments_pmr_exlstgjsn_master_pipeline','gpd.Critical_Vendor_Payments_PMR_JSON',NULL,NULL)
 end
 
 --- offshore client schedule
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_offshoreclientschedule_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Offshore_Client_Schedule_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_offshoreclientschedule_pmr_exlstgjsn_master_pipeline','gpd.Offshore_Client_Schedule_PMR_JSON',NULL,NULL)
 end
 
 --- Offshore Yard Layout
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_offshoreyardlayout_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Offshore_Yard_Layout_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_offshoreyardlayout_pmr_exlstgjsn_master_pipeline','gpd.Offshore_Yard_Layout_PMR_JSON',NULL,NULL)
 end
 
 --- Vendor Payment Forecast
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_vendorpaymentforecast_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Vendor_Payment_Forecast_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_vendorpaymentforecast_pmr_exlstgjsn_master_pipeline','gpd.Vendor_Payment_Forecast_PMR_JSON',NULL,NULL)
 end
 
 --- Vendor Payment Summary
 
  select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_vendorpaymentsummary_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Vendor_Payment_Summary_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_vendorpaymentsummary_pmr_exlstgjsn_master_pipeline','gpd.Vendor_Payment_Summary_PMR_JSON',NULL,NULL)
 end;
 