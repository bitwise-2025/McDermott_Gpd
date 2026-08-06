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

