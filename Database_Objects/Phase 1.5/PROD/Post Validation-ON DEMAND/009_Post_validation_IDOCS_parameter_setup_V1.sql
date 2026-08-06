--Post Validation Script for IDOCS 1.5 for one project "BB3"

update plp_parameter_value
set parameter_value='2022-08-22 00:00:00' -- This date needs to be changed based on the PROD migration date
where active=1 and pipeline_code in ('pl_idocs_doc_master_source_to_stage','pl_idocs_milestone_master_source_to_stage','pl_idocs_doc_eng_source_to_stage','pl_idocs_doc_ven_source_to_stage','pl_idocs_closed_m_source_to_stage','pl_idocs_ev_ms_master_source_to_stage','pl_idocs_open_exp_source_to_stage','pl_idocs_project_specific_source_to_stage','pl_idocs_spool_status_source_to_stage')
and pipeline_sub_code in ('iDocs_236910') 
and parameter_code ='last_run_start_date'


---Correction of Incorrect SEC_SA_ID in PROD : Added by Satish.

update [dbo].[plp_pipeline]
set sec_sa_id=47
where pipeline_code='pl_mcpmdata_offshore_monthly_raw_to_synapse'