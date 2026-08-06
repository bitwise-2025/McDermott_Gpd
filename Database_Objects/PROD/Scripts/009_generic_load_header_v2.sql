delete from generic_load_detail where load_name = 'dim_ent_NCSA_Employee'
	delete from generic_load_header where load_name = 'dim_ent_NCSA_Employee'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_NCSA_Employee','dim_ent_NCSA_Employee','[gpd].[NCSA_Employee]','dim_ent_employee','[gpd].[reprocess_NCSA_Employee]','dim_ent_employee_sk','dim_ent_employee_nk','rssk','13','Y',NULL)
delete from generic_load_detail where load_name = 'dim_entp_roc'
	delete from generic_load_header where load_name = 'dim_entp_roc'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_roc','dim_entp_roc','gpd.NCSA_Rules_of_Credit','dim_entp_roc','gpd.reprocess_dim_ops_roc','dim_entp_roc_sk','dim_entp_roc_nk','stage_ncsa_roc_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_iwp'
	delete from generic_load_header where load_name = 'dim_entp_iwp'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_iwp','dim_entp_iwp','gpd.NCSA_IWP','dim_entp_iwp','gpd.reprocess_dim_ops_iwp','dim_entp_iwp_sk','dim_entp_iwp_nk','stage_ncsa_iwp_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_work_area'
	delete from generic_load_header where load_name = 'dim_entp_work_area'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_work_area','dim_entp_work_area','gpd.NCSA_WorkArea','dim_entp_work_area','gpd.reprocess_dim_ops_work_area','dim_entp_work_area_sk','dim_entp_work_area_nk','stage_ncsa_workarea_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_subcontract_emp'
	delete from generic_load_header where load_name = 'dim_entp_subcontract_emp'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_subcontract_emp','dim_entp_subcontract_emp','[gpd].[NCSA_SubcontractEmployee]','dim_ent_employee','gpd.reprocess_NCSA_SubcontractEmployee','dim_ent_employee_sk','dim_ent_employee_nk','rssk','13','Y',NULL)
delete from generic_load_detail where load_name = 'dim_ent_idocs'
	delete from generic_load_header where load_name = 'dim_ent_idocs'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_idocs','dim_ent_idocs','gpd.iDocs_P24A_ConsDocMaster','dim_ent_idocs','gpd.reprocess_dim_iDocs_P24A_ConsDocMaster','dim_ent_idocs_doc_master_sk','dim_ent_idocs_doc_master_nk','stage_idoc_P24A_ConsDocMaster_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_activity'
	delete from generic_load_header where load_name = 'dim_entp_activity'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_activity','dim_entp_activity','gpd.NCSA_Activity','dim_entp_activity','gpd.reprocess_dim_ops_activity','dim_entp_activity_sk','dim_entp_activity_nk','stage_ncsa_activity_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_mcpm_coa_combined'
	delete from generic_load_header where load_name = 'dim_ent_mcpm_coa_combined'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_mcpm_coa_combined','dim_ent_mcpm_coa_combined','gpd.coa_MCPM_combined','dim_ent_combined_coa','gpd.reprocess_coa_MCPM_combined','dim_ent_combined_coa_sk','dim_ent_combined_coa_nk','stage_coa_jde_key','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_work_unit'
	delete from generic_load_header where load_name = 'dim_entp_work_unit'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_work_unit','dim_entp_work_unit','gpd.NCSA_Unit','dim_entp_work_unit','gpd.reprocess_dim_ops_workunit','dim_entp_work_unit_sk','dim_entp_work_unit_nk','stage_ncsa_unit_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_idocs_milestone'
	delete from generic_load_header where load_name = 'dim_ent_idocs_milestone'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_idocs_milestone','dim_ent_idocs_milestone','gpd.iDocs_P24B_ConsMSMaster','dim_ent_idocs_milestone','gpd.reprocess_dim_iDocs_P24B_ConsMSMaster','dim_ent_idocs_ms_master_sk','dim_ent_idocs_ms_master_nk','stage_idoc_P24B_ConsMSMaster_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_pim'
	delete from generic_load_header where load_name = 'dim_entp_pim'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_pim','dim_entp_pim','gpd.NSCA_pim','dim_entp_pim','gpd.reprocess_dim_entp_pim','dim_entp_pim_sk','dim_entp_pim_nk','dim_entp_pim_sk','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_cwp'
	delete from generic_load_header where load_name = 'dim_entp_cwp'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_cwp','dim_entp_cwp','gpd.NCSA_Activity','dim_entp_cwp','gpd.reprocess_dim_ops_cwp','dim_entp_cwp_sk','dim_entp_cwp_nk','stage_ncsa_activity_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_activity_pm'
	delete from generic_load_header where load_name = 'dim_entp_activity_pm'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_activity_pm','dim_entp_activity_pm','gpd.NCSA_P6_ProjectMilestones','dim_entp_activity','gpd.reprocess_P6_ProjectMilestones','dim_entp_activity_sk','dim_entp_activity_nk','stage_nsca_projectmilestones_id','13','Y',NULL)
delete from generic_load_detail where load_name = 'dim_ent_prime'
	delete from generic_load_header where load_name = 'dim_ent_prime'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_prime','dim_ent_prime','[gpd].[NCSA_Prime]','[dbo].[dim_ent_prime]','[gpd].[reprocess_NCSA_Prime]','dim_ent_prime_sk','dim_ent_prime_nk','rssk','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_supplier'
	delete from generic_load_header where load_name = 'dim_ent_supplier'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_supplier','SMAT PO data into dim_ent_supplier','[gpd].[NCSA_SMAT_PO_EXTRACT]','dbo.dim_ent_supplier','[gpd].[reprocess_dim_ent_supplier_SMAT_PO]','dim_ent_supplier_sk','dim_ent_supplier_nk','stage_smat_po_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_schedule_resource'
	delete from generic_load_header where load_name = 'dim_entp_schedule_resource'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_schedule_resource','dim_entp_schedule_resource','gpd.NCSA_ScheduleResource','dim_entp_schedule_resource','gpd.reprocess_dim_ops_schedule_resource','dim_entp_schedule_resource_sk','dim_entp_schedule_resource_nk','stage_ncsa_scheduleresource_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_sub_prime'
	delete from generic_load_header where load_name = 'dim_ent_sub_prime'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_sub_prime','dim_ent_sub_prime','[gpd].[NCSA_Sub_Prime]','[dbo].[dim_ent_sub_prime]','[gpd].[reprocess_NCSA_Sub_Prime]','dim_ent_sub_prime_sk','dim_ent_sub_prime_nk','rssk','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_mcpm_coa'
	delete from generic_load_header where load_name = 'dim_ent_mcpm_coa'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_mcpm_coa','dim_ent_mcpm_coa','gpd.coa_MCPM','dim_ent_jde_coa','gpd.reprocess_coa_MCPM','dim_ent_jde_coa_sk','dim_ent_jde_coa_nk','stage_coa_jde_key','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_phase'
	delete from generic_load_header where load_name = 'dim_entp_phase'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_phase','dim_entp_phase','gpd.NCSA_Phases','dim_entp_phase','gpd.reprocess_dim_ops_phase','dim_entp_phase_sk','dim_entp_phase_nk','stage_ncsa_phase_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_entp_temp_activity'
	delete from generic_load_header where load_name = 'dim_entp_temp_activity'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_entp_temp_activity','dim_entp_temp_activity','gpd.tmp_NCSA_Activity','dim_entp_activity','[gpd].[tmpreprocess_NCSA_Activity]','dim_entp_activity_sk','dim_entp_activity_nk','stage_ncsa_activity_id','13','Y',NULL)
delete from generic_load_detail where load_name = 'dim_ent_mcpm_coa_pi'
	delete from generic_load_header where load_name = 'dim_ent_mcpm_coa_pi'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_mcpm_coa_pi','dim_ent_mcpm_coa Progress items','gpd.coa_MCPM_PI','dim_ent_jde_coa','gpd.reprocess_coa_MCPM_PI','dim_ent_jde_coa_sk','dim_ent_jde_coa_nk','stage_coa_jde_key','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_idocs_spool'
	delete from generic_load_header where load_name = 'dim_ent_idocs_spool'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_idocs_spool','dim_ent_idocs_spool','gpd.iDocs_P21A_spoolstatus','dim_ent_idocs_spool','gpd.reprocess_dim_iDocs_P21A_spool','dim_ent_idocs_spool_sk','dim_ent_idocs_spool_nk','stage_idoc_P21A_SpoolStatus_id','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_summary_cost_type'
	delete from generic_load_header where load_name = 'dim_ent_summary_cost_type'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_summary_cost_type','dim_ent_summary_cost_type','[gpd].[NCSA_summary_cost_type]','[dbo].[dim_ent_summary_cost_type]','[gpd].[reprocess_NCSA_summary_cost_type]','dim_ent_summary_cost_type_sk','dim_ent_summary_cost_type_nk','rssk','13','Y','DIMENSION')
delete from generic_load_detail where load_name = 'dim_ent_temp_schedule_resource'
	delete from generic_load_header where load_name = 'dim_ent_temp_schedule_resource'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_temp_schedule_resource','dim_ent_temp_schedule_resource','gpd.tmpresource','dim_entp_schedule_resource','gpd.tmpreprocess_dim_ops_schedule_resource','dim_entp_schedule_resource_sk','dim_entp_schedule_resource_nk','stage_temp_scheduleresource_id','13','Y',NULL)
delete from generic_load_detail where load_name = 'dim_ent_jde_coa_MCPM'
	delete from generic_load_header where load_name = 'dim_ent_jde_coa_MCPM'
	insert into generic_load_header(load_name,description,stage_table_name,target_table_name,reprocess_table_name,target_sk_name,target_gnk_name,stage_sk_name,glt_id,active_flag,load_type)
	values('dim_ent_jde_coa_MCPM','MCPM CoA update','gpd.MCPM_coa_v','dbo.dim_ent_jde_coa','gpd.reprocess_MCPM_coa','dim_ent_jde_coa_sk','dim_ent_jde_coa_nk','stage_mcpm_coa_id','13','Y','DIMENSION')
