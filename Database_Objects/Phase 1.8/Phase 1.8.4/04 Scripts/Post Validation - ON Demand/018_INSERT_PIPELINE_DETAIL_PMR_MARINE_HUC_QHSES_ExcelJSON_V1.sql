declare @count int;

--MARINE
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_marine_spreadrate_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Marine_Spreadrate_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_marine_spreadrate_pmr_exlstgjsn_master_pipeline','gpd.Marine_Spreadrate_PMR_JSON',NULL,NULL)
 end
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_marine_campaign_readiness_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Marine_Campaign_Readiness_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_marine_campaign_readiness_pmr_exlstgjsn_master_pipeline','gpd.Marine_Campaign_Readiness_PMR_JSON',NULL,NULL)
 end

 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_marine_progress_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Marine_Progress_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_marine_progress_pmr_exlstgjsn_master_pipeline','gpd.Marine_Progress_PMR_JSON',NULL,NULL)
 end
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_scheduleanalytics_pmr_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.ScheduleAnalytics_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_scheduleanalytics_pmr_exlstgjsn_master_pipeline','gpd.ScheduleAnalytics_PMR_JSON',NULL,NULL)
 end;
 
 
 --QHSES
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_css_rating_qhses_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.CSS_Rating_QHSES_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_css_rating_qhses_exlstgjsn_master_pipeline','gpd.CSS_Rating_QHSES_PMR_JSON',NULL,NULL)
 end


select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_indicators_qhses_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Indicators_QHSES_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_indicators_qhses_exlstgjsn_master_pipeline','gpd.Indicators_QHSES_PMR_JSON',NULL,NULL)
 end
 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_status_qhses_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Status_QHSES_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_status_qhses_exlstgjsn_master_pipeline','gpd.Status_QHSES_PMR_JSON',NULL,NULL)
 end
 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_workhours_qhses_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.WorkHours_QHSES_PMR_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_workhours_qhses_exlstgjsn_master_pipeline','gpd.WorkHours_QHSES_PMR_JSON',NULL,NULL)
 end;
 


--HUC


select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_campaign_readiness_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Campaign_Readiness_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_campaign_readiness_huc_exlstgjsn_master_pipeline','gpd.Campaign_Readiness_HUC_JSON',NULL,NULL)
 end
 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_key_completion_metrics_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Key_Completion_Metrics_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_key_completion_metrics_huc_exlstgjsn_master_pipeline','gpd.Key_Completion_Metrics_HUC_JSON',NULL,NULL)
 end
 
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_progress_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Progress_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_progress_huc_exlstgjsn_master_pipeline','gpd.Progress_HUC_JSON',NULL,NULL)
 end
 
 
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_progress_curve_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Progress_Curve_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_progress_curve_huc_exlstgjsn_master_pipeline','gpd.Progress_Curve_HUC_JSON',NULL,NULL)
 end
 
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_comm_progress_curve_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Comm_Progress_Curve_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_comm_progress_curve_huc_exlstgjsn_master_pipeline','gpd.Comm_Progress_Curve_HUC_JSON',NULL,NULL)
 end
 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_comm_progress_huc_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Comm_Progress_HUC_JSON' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_comm_progress_huc_exlstgjsn_master_pipeline','gpd.Comm_Progress_HUC_JSON',NULL,NULL)
 end;
 
 
