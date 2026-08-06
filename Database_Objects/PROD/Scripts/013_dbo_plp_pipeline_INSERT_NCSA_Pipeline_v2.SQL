declare @count int				
declare @next_val int; select @next_val = sec_sa_id from dbo.sec_sa where description = 'NCSA'				
select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_phase_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_phase_master_pipeline','NCSA','Phase Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_unit_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_unit_master_pipeline','NCSA','Unit Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_wa_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_wa_master_pipeline','NCSA','Work Area Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sr_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sr_master_pipeline','NCSA','Scheduled Resource Master to load SRC-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_activity_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_activity_master_pipeline','NCSA','Activity Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_iwp_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_iwp_master_pipeline','NCSA','IWP Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_roc_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_roc_master_pipeline','NCSA','ROC Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_subcontract_employee_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_subcontract_employee_master_pipeline','NCSA','Subcontract Emp Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Employee_Sitepro_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Employee_Sitepro_master_pipeline','NCSA','Employee Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_prime_mcpm_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_prime_mcpm_master_pipeline','NCSA','PrimeMaster to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sub_prime_mcpm_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sub_prime_mcpm_master_pipeline','NCSA','Sub Prime Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_summary_cost_type_mcpm_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_summary_cost_type_mcpm_master_pipeline','NCSA','Summary CostType Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_doc_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_doc_master_pipeline','NCSA','iDocs Doc Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_ms_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_ms_master_pipeline','NCSA','iDocs MS Master SRC-STG-RAW-Synapsee',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_spool_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_spool_master_pipeline','NCSA','iDocs Spool Master to load SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpm_onshore_data_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpm_onshore_data_master_pipeline','NCSA','MPCM Onshore Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_progressitems_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_progressitems_master_pipeline','NCSA','ProgressItems Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_labor_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_labor_master_pipeline','NCSA','P6 Labor Units Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_project_milestone_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_project_milestone_master_pipeline','NCSA','Project Milestone Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Budget_sitepro_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Budget_sitepro_master_pipeline','NCSA','Budget sitepro Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_progress_sitepro_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_progress_sitepro_master_pipeline','NCSA','Progress sitepro Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_timesheet_sitepro_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_timesheet_sitepro_master_pipeline','NCSA','timesheet sitepro Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_6weeklookahead_sitepro_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_6weeklookahead_sitepro_master_pipeline','NCSA','6 week look ahead Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_po_extract_smat_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_po_extract_smat_master_pipeline','NCSA','PO Extract SMAT Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_rpsr_smat_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_rpsr_smat_master_pipeline','NCSA','RPSR SMAT Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_weeklyplan_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_weeklyplan_master_pipeline','NCSA','Weekly Plan Master SRC-STG-RAW-Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_master_pipeline_dimension'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_master_pipeline_dimension','NCSA','A master pipeline to run all DIM pipelines',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_master_pipeline_sitepro'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_master_pipeline_sitepro','NCSA','A master pipeline to run all sitepro fact pipelines',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end


select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_wa_sitepro_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_wa_sitepro_stage_to_raw','NCSA','NCSA - WA Sitepro to Raw',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_activity_cwp_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_activity_cwp_sitepro_raw_to_synapse_stage','NCSA','NCSA - CWP Raw to Synapse Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_roc_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_roc_sitepro_raw_to_synapse_stage','NCSA','Rule of credit from ADLS Raw to Synapse stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_rpsr_smat_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_rpsr_smat_stage_to_raw','NCSA','SMAT RPSR BB3- ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_weeklyplan_excel_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_weeklyplan_excel_raw_to_synapse_stage','NCSA','Weeklyplan - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_summary_cost_type_mcpm_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_summary_cost_type_mcpm_source_to_stage','NCSA','pl_Summary_Cost_type_MCPM_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_project_milestones_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_project_milestones_raw_to_synapse_stage','NCSA','NCSA - Project Milestones Raw to Synapse Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_unit_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_unit_sitepro_raw_to_synapse_stage','NCSA','Sitepro unit raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_milestone_master_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_milestone_master_source_to_stage','NCSA','iDocs - P24B Construction MS Master ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_doc_master_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_doc_master_stage_to_raw','NCSA','iDocs - P24A Construction Doc Master ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_rpsr_smat_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_rpsr_smat_source_to_stage','NCSA','SMAT RPSR BB3 - Source to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_spool_status_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_spool_status_source_to_stage','NCSA','iDocs - P21A Spool Status report to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_weeklyplan_excel_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_weeklyplan_excel_stage_to_raw','NCSA','Weeklyplan report ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_wa_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_wa_sitepro_source_to_stage','NCSA','NCSA - WA Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_po_extract_smat_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_po_extract_smat_stage_to_raw','NCSA','SMAT PO EXTRACT- ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_milestone_master_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_milestone_master_raw_to_synapse_stage','NCSA','iDocs - P24B Construction MS Master Synapse Stage Table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_onshore_data_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_onshore_data_raw_to_synapse_stage','NCSA','MCPM Onshore data FACT raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_roc_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_roc_sitepro_source_to_stage','NCSA','Rule of credit from sitepro to ADLS stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sr_sitepro_raw_to_synapse'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sr_sitepro_raw_to_synapse','NCSA','NCSA - Schedule Resource Sitepro to Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_iwp_sitepro_raw_to_synapse'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_iwp_sitepro_raw_to_synapse','NCSA','NCSA - IWP Sitepro to Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sub_prime_mcpm_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sub_prime_mcpm_raw_to_synapse_stage','NCSA','Sub Prime MCPM raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_activity_cwp_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_activity_cwp_sitepro_source_to_stage','NCSA','NCSA - CWP Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_timesheet_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_timesheet_sitepro_source_to_stage','NCSA','Timesheet From Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_rpsr_smat_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_rpsr_smat_raw_to_synapse_stage','NCSA','SMAT RPSR BB3 - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Employee_Sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Employee_Sitepro_source_to_stage','NCSA','Employee from Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_weeklyplan_excel_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_weeklyplan_excel_source_to_stage','NCSA','pl_weeklyplan_excel_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_po_extract_smat_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_po_extract_smat_source_to_stage','NCSA','SMAT PO EXTRACT - Source to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_unit_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_unit_sitepro_source_to_stage','NCSA','pl_unit_sitepro_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Employee_Sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Employee_Sitepro_raw_to_synapse_stage','NCSA','Sitepro Employee raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_prime_mcpm_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_prime_mcpm_source_to_stage','NCSA','pl_Prime_MCPM_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_progressitems_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_progressitems_stage_to_raw','NCSA','MCPM ProgressItems stage to raw',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_progress_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_progress_sitepro_source_to_stage','NCSA','Progress From Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_phases_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_phases_sitepro_raw_to_synapse_stage','NCSA','Sitepro Phase raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_onshore_data_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_onshore_data_source_to_stage','NCSA','MCPM Data From MCPM Onshore to Azure',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_milestone_master_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_milestone_master_stage_to_raw','NCSA','iDocs - P24B Construction MS Master ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_doc_master_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_doc_master_raw_to_synapse_stage','NCSA','iDocs - P24A Construction Doc Master Synapse Stage Table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sr_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sr_sitepro_source_to_stage','NCSA','NCSA - Schedule Resource Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_6wklookahead_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_6wklookahead_sitepro_raw_to_synapse_stage','NCSA','pl_6wklookahead_sitepro_raw_to_synapse_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Labor_Units_raw_to_synapse'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Labor_Units_raw_to_synapse','NCSA','Labor Units - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Labor_Units_P6_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Labor_Units_P6_to_stage','NCSA','Labor Units - P6 to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_subcontract_employee_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_subcontract_employee_raw_to_synapse_stage','NCSA','NCSA - Time Works Subcontract Employee Raw to Synapse Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_progress_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_progress_sitepro_raw_to_synapse_stage','NCSA','pl_progress_sitepro_raw_to_synapse_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_timesheet_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_timesheet_sitepro_raw_to_synapse_stage','NCSA','pl_timesheet_sitepro_raw_to_synapse_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_activity_cwp_sitepro_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_activity_cwp_sitepro_stage_to_raw','NCSA','NCSA - CWP Stage to Raw',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_iwp_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_iwp_sitepro_source_to_stage','NCSA','NCSA - IWP Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_budget_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_budget_sitepro_source_to_stage','NCSA','Budget From Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_summary_cost_type_mcpm_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_summary_cost_type_mcpm_raw_to_synapse_stage','NCSA','Summary Cost Type raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_prime_mcpm_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_prime_mcpm_raw_to_synapse_stage','NCSA','PRIME raw to Synapse load',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_progressitems_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_progressitems_source_to_stage','NCSA','MCPM ProgressItems to stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_ncsa_master_pipelines'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_ncsa_master_pipelines','NCSA','pl_ncsa_master_pipelines','Mock pipeline to allow for parameterization of Email details within NCSA','1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_wa_sitepro_raw_to_synapse'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_wa_sitepro_raw_to_synapse','NCSA','NCSA - WA Sitepro to Synapse',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_doc_master_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_doc_master_source_to_stage','NCSA','iDocs - P24A Construction Doc Master ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_project_milestones_excel_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_project_milestones_excel_to_stage','NCSA','NCSA - Project Milestones to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_subcontract_employee_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_subcontract_employee_source_to_stage','NCSA','NCSA - Subcontract Employee to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_spool_status_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_spool_status_stage_to_raw','NCSA','iDocs - P21A Spool Status report ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_Labor_Units_stage_to_raw'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_Labor_Units_stage_to_raw','NCSA','Labor Units - ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_6wklookahead_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_6wklookahead_sitepro_source_to_stage','NCSA','6WkLAhead From Sitepro to Stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_sub_prime_mcpm_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_sub_prime_mcpm_source_to_stage','NCSA','pl_Sub_Prime_MCPM_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_progressitems_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_progressitems_raw_to_synapse_stage','NCSA','MCPM ProgressItems raw to synapse stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_phases_sitepro_source_to_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_phases_sitepro_source_to_stage','NCSA','pl_phases_sitepro_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_budget_sitepro_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_budget_sitepro_raw_to_synapse_stage','NCSA','pl_budget_sitepro_raw_to_synapse_stage',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_po_extract_smat_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_po_extract_smat_raw_to_synapse_stage','NCSA','SMAT PO EXTRACT - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_idocs_spool_status_raw_to_synapse_stage'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_idocs_spool_status_raw_to_synapse_stage','NCSA','iDocs - P21A Spool Status report - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com','2021-04-30 00:00:00',@next_val)
 end

