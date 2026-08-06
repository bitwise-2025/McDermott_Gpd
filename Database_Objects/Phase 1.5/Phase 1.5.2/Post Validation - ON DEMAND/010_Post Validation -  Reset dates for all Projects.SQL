
--Resetting start date for mutiple projects

update plp_parameter_value
set parameter_value='2022-09-21 00:00:00' -- This date will be changed per need
where active=1 and pipeline_code in ('pl_idocs_doc_master_source_to_stage','pl_idocs_milestone_master_source_to_stage','pl_idocs_doc_eng_source_to_stage','pl_idocs_doc_ven_source_to_stage','pl_idocs_closed_m_source_to_stage','pl_idocs_ev_ms_master_source_to_stage','pl_idocs_open_exp_source_to_stage','pl_idocs_project_specific_source_to_stage','pl_idocs_spool_status_source_to_stage')
and pipeline_sub_code in ('iDocs_236910','iDocs_350106','iDocs_356420','iDocs_357972','iDocs_D7068','iDocs_D7072','iDocs_D7264','iDocs_D7415','iDocs_D7512','iDocs_D7521','iDocs_N8585','iDocs_R3695','iDocs_R3940','iDocs_R3973','iDocs_R4036','iDocs_E0660') 
and parameter_code ='last_run_start_date'
