declare @count int;


select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_proc_sts_rpt_plan_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.procurement_status_report_planning_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_proc_sts_rpt_plan_scm_exlstgjsn_master_pipeline','gpd.procurement_status_report_planning_JSON',NULL,NULL)
 end
 
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_milestone_psrp_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Milestone_PSRP_SCM_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_proc_sts_rpt_plan_scm_exlstgjsn_master_pipeline','gpd.Milestone_PSRP_SCM_JSON',NULL,NULL)
 end
 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_std_milestone_psrp_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Standard_Milestone_PSRP_SCM_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_std_milestone_psrp_scm_exlstgjsn_master_pipeline','gpd.Standard_Milestone_PSRP_SCM_JSON',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_narrative_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Narratives_SCM_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_narrative_scm_exlstgjsn_master_pipeline','gpd.Narratives_SCM_JSON',NULL,NULL)
 end;
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_key_engg_quantities_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Global_Template_Engineering_Key_Quantities_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_key_engg_quantities_scm_exlstgjsn_master_pipeline','gpd.Global_Template_Engineering_Key_Quantities_JSON',NULL,NULL)
 end
 
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_subcontract_cost_status_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Stage_Subcontract_Status'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_subcontract_cost_status_exlstgjsn_master_pipeline','gpd.Stage_Subcontract_Status',NULL,NULL)
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_major_subcontract_cost_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Major_Subcontract_Cost_Status_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_major_subcontract_cost_exlstgjsn_master_pipeline','gpd.Major_Subcontract_Cost_Status_JSON',NULL,NULL)
 end;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_fabrication_const_sched_ms_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_fabrication_const_sched_ms_scm_exlstgjsn_master_pipeline','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON',NULL,NULL)
 end