declare @count int				
declare @next_val int;				
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_phase_master_pipeline' and stage_table_name = 'gpd.NCSA_Phases' and reprocessing_table_name = 'gpd.reprocess_dim_ops_phase'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_phase_master_pipeline','gpd.NCSA_Phases','gpd.reprocess_dim_ops_phase','dbo.dim_entp_phase')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_unit_master_pipeline' and stage_table_name = 'gpd.NCSA_Unit' and reprocessing_table_name = 'gpd.reprocess_dim_ops_workunit'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_unit_master_pipeline','gpd.NCSA_Unit','gpd.reprocess_dim_ops_workunit','dbo.dim_entp_work_unit')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_wa_master_pipeline' and stage_table_name = 'gpd.NCSA_WorkArea' and reprocessing_table_name = 'gpd.reprocess_dim_ops_work_area'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_wa_master_pipeline','gpd.NCSA_WorkArea','gpd.reprocess_dim_ops_work_area','dbo.dim_entp_work_area')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_sr_master_pipeline' and stage_table_name = 'gpd.NCSA_ScheduleResource' and reprocessing_table_name = 'gpd.reprocess_dim_ops_schedule_resource'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_sr_master_pipeline','gpd.NCSA_ScheduleResource','gpd.reprocess_dim_ops_schedule_resource','dbo.dim_entp_schedule_resource')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_activity_master_pipeline' and stage_table_name = 'gpd.NCSA_Activity' and reprocessing_table_name = 'gpd.reprocess_dim_ops_cwp'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_activity_master_pipeline','gpd.NCSA_Activity','gpd.reprocess_dim_ops_cwp','dbo.dim_entp_cwp')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_activity_master_pipeline' and stage_table_name = 'gpd.NCSA_Activity' and reprocessing_table_name = 'gpd.reprocess_dim_ops_activity'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_activity_master_pipeline','gpd.NCSA_Activity','gpd.reprocess_dim_ops_activity','dbo.dim_entp_activity')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_iwp_master_pipeline' and stage_table_name = 'gpd.NCSA_IWP' and reprocessing_table_name = 'gpd.reprocess_dim_ops_iwp'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_iwp_master_pipeline','gpd.NCSA_IWP','gpd.reprocess_dim_ops_iwp','dbo.dim_entp_iwp')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_roc_master_pipeline' and stage_table_name = 'gpd.NCSA_Rules_of_Credit' and reprocessing_table_name = 'gpd.reprocess_dim_ops_roc'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_roc_master_pipeline','gpd.NCSA_Rules_of_Credit','gpd.reprocess_dim_ops_roc','dbo.dim_entp_roc')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_subcontract_employee_master_pipeline' and stage_table_name = 'gpd.NCSA_SubcontractEmployee' and reprocessing_table_name = 'gpd.reprocess_NCSA_SubcontractEmployee'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_subcontract_employee_master_pipeline','gpd.NCSA_SubcontractEmployee','gpd.reprocess_NCSA_SubcontractEmployee','dbo.dim_ent_employee')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_Employee_Sitepro_master_pipeline' and stage_table_name = 'gpd.NCSA_Employee' and reprocessing_table_name = 'gpd.reprocess_NCSA_Employee'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_Employee_Sitepro_master_pipeline','gpd.NCSA_Employee','gpd.reprocess_NCSA_Employee','dbo.dim_ent_employee')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_prime_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_Prime' and reprocessing_table_name = 'gpd.reprocess_NCSA_Prime'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_prime_mcpm_master_pipeline','gpd.NCSA_Prime','gpd.reprocess_NCSA_Prime','dbo.dim_ent_prime')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_sub_prime_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_Sub_Prime' and reprocessing_table_name = 'gpd.reprocess_NCSA_Sub_Prime'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_sub_prime_mcpm_master_pipeline','gpd.NCSA_Sub_Prime','gpd.reprocess_NCSA_Sub_Prime','dbo.dim_ent_sub_prime')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_summary_cost_type_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_summary_cost_type' and reprocessing_table_name = 'gpd.reprocess_NCSA_summary_cost_type'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_summary_cost_type_mcpm_master_pipeline','gpd.NCSA_summary_cost_type','gpd.reprocess_NCSA_summary_cost_type','dbo.dim_ent_summary_cost_type')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_idocs_doc_master_pipeline' and stage_table_name = 'gpd.iDocs_P24A_ConsDocMaster' and reprocessing_table_name = 'gpd.reprocess_dim_iDocs_P24A_ConsDocMaster'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_idocs_doc_master_pipeline','gpd.iDocs_P24A_ConsDocMaster','gpd.reprocess_dim_iDocs_P24A_ConsDocMaster','dbo.dim_ent_idocs')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_idocs_ms_master_pipeline' and stage_table_name = 'gpd.iDocs_P24B_ConsMSMaster' and reprocessing_table_name = 'gpd.reprocess_dim_iDocs_P24B_ConsMSMaster'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_idocs_ms_master_pipeline','gpd.iDocs_P24B_ConsMSMaster','gpd.reprocess_dim_iDocs_P24B_ConsMSMaster','dbo.dim_ent_idocs_milestone')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_idocs_spool_master_pipeline' and stage_table_name = 'gpd.iDocs_P21A_spoolstatus' and reprocessing_table_name = 'gpd.reprocess_dim_iDocs_P21A_spool'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_idocs_spool_master_pipeline','gpd.iDocs_P21A_spoolstatus','gpd.reprocess_dim_iDocs_P21A_spool','dbo.dim_ent_idocs_spool')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline' and stage_table_name = 'gpd.MCPM_coa_v' and reprocessing_table_name = 'gpd.reprocess_MCPM_coa'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpm_onshore_data_master_pipeline','gpd.MCPM_coa_v','gpd.reprocess_MCPM_coa','dbo.dim_ent_jde_coa')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_dim_ent_jde_coa' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpm_onshore_data_master_pipeline','gpd.NCSA_MCPM_dim_ent_jde_coa','gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa','dbo.dim_ent_jde_coa')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_Onshore' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_Onshore'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpm_onshore_data_master_pipeline','gpd.NCSA_MCPM_Onshore','gpd.reprocess_NCSA_MCPM_Onshore','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_progressitems_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_ProgressItems_Onshore' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_ProgressItems_Onshore'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpmdata_progressitems_master_pipeline','gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.reprocess_NCSA_MCPM_ProgressItems_Onshore','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_labor_master_pipeline' and stage_table_name = 'gpd.NCSA_P6_Labor_Units' and reprocessing_table_name = 'gpd.reprocess_P6_Labor_Units'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_labor_master_pipeline','gpd.NCSA_P6_Labor_Units','gpd.reprocess_P6_Labor_Units','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_labor_master_pipeline' and stage_table_name = 'gpd.tmpresource' and reprocessing_table_name = 'gpd.tmpreprocess_dim_ops_schedule_resource'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_labor_master_pipeline','gpd.tmpresource','gpd.tmpreprocess_dim_ops_schedule_resource','dbo.dim_entp_schedule_resource')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_labor_master_pipeline' and stage_table_name = 'gpd.tmp_NCSA_Activity' and reprocessing_table_name = 'gpd.tmpreprocess_NCSA_Activity'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_labor_master_pipeline','gpd.tmp_NCSA_Activity','gpd.tmpreprocess_NCSA_Activity','dbo.dim_entp_activity')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_project_milestone_master_pipeline' and stage_table_name = 'gpd.NCSA_P6_ProjectMilestones' and reprocessing_table_name = 'gpd.reprocess_P6_ProjectMilestones'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_project_milestone_master_pipeline','gpd.NCSA_P6_ProjectMilestones','gpd.reprocess_P6_ProjectMilestones','dbo.dim_entp_activity')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_Budget_sitepro_master_pipeline' and stage_table_name = 'gpd.NSCA_pim' and reprocessing_table_name = 'gpd.reprocess_dim_entp_pim'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_Budget_sitepro_master_pipeline','gpd.NSCA_pim','gpd.reprocess_dim_entp_pim','dbo.dim_entp_pim')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_Budget_sitepro_master_pipeline' and stage_table_name = 'gpd.NCSA_Sitepro_budget' and reprocessing_table_name = 'gpd.reprocess_NCSA_Sitepro_budget'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_Budget_sitepro_master_pipeline','gpd.NCSA_Sitepro_budget','gpd.reprocess_NCSA_Sitepro_budget','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_progress_sitepro_master_pipeline' and stage_table_name = 'gpd.NSCA_pim' and reprocessing_table_name = 'gpd.reprocess_dim_entp_pim'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_progress_sitepro_master_pipeline','gpd.NSCA_pim','gpd.reprocess_dim_entp_pim','dbo.dim_entp_pim')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_progress_sitepro_master_pipeline' and stage_table_name = 'gpd.NCSA_Sitepro_Progress' and reprocessing_table_name = 'gpd.reprocess_NCSA_Sitepro_Progress'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_progress_sitepro_master_pipeline','gpd.NCSA_Sitepro_Progress','gpd.reprocess_NCSA_Sitepro_Progress','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_timesheet_sitepro_master_pipeline' and stage_table_name = 'gpd.NCSA_Sitepro_timesheet' and reprocessing_table_name = 'gpd.reprocess_NCSA_Sitepro_timesheet'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_timesheet_sitepro_master_pipeline','gpd.NCSA_Sitepro_timesheet','gpd.reprocess_NCSA_Sitepro_timesheet','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_6weeklookahead_sitepro_master_pipeline' and stage_table_name = 'gpd.NCSA_Sitepro_6WkLAhead' and reprocessing_table_name = 'gpd.reprocess_NCSA_Sitepro_6WkLAhead'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_6weeklookahead_sitepro_master_pipeline','gpd.NCSA_Sitepro_6WkLAhead','gpd.reprocess_NCSA_Sitepro_6WkLAhead','dbo.fact_ops')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_po_extract_smat_master_pipeline' and stage_table_name = 'gpd.NCSA_SMAT_PO_EXTRACT' and reprocessing_table_name = 'gpd.reprocess_dim_ent_supplier_SMAT_PO'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_extract_smat_master_pipeline','gpd.NCSA_SMAT_PO_EXTRACT','gpd.reprocess_dim_ent_supplier_SMAT_PO','dbo.dim_ent_supplier')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_rpsr_smat_master_pipeline' and stage_table_name = 'gpd.NCSA_SMAT_RPSR' and reprocessing_table_name = 'NA'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_rpsr_smat_master_pipeline','gpd.NCSA_SMAT_RPSR',NULL,NULL)
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_weeklyplan_master_pipeline' and stage_table_name = 'gpd.NCSA_Work_Plan' and reprocessing_table_name = 'gpd.reprocess_NCSA_Work_Plan'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_weeklyplan_master_pipeline','gpd.NCSA_Work_Plan','gpd.reprocess_NCSA_Work_Plan','dbo.fact_ops')
end


select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline' and stage_table_name = 'gpd.coa_MCPM' and reprocessing_table_name = 'gpd.reprocess_coa_MCPM'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpm_onshore_data_master_pipeline','gpd.coa_MCPM','gpd.reprocess_coa_MCPM','dbo.dim_ent_jde_coa')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline' and stage_table_name = 'gpd.coa_MCPM_combined' and reprocessing_table_name = 'gpd.reprocess_coa_MCPM_combined'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpm_onshore_data_master_pipeline','gpd.coa_MCPM_combined','gpd.reprocess_coa_MCPM_combined','dbo.dim_ent_combined_coa')
 end

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_progressitems_master_pipeline' and stage_table_name = 'gpd.coa_MCPM_PI' and reprocessing_table_name = 'gpd.reprocess_coa_MCPM_PI'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpmdata_progressitems_master_pipeline','gpd.coa_MCPM_PI','gpd.reprocess_coa_MCPM_PI','dim_ent_jde_coa')
 end
 
 

