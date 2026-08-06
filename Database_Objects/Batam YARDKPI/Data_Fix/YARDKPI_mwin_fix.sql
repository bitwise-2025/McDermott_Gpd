delete from plp_pipeline where pipeline_code = 'pl_yardkpi_mwin_master_pipelines'
delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_rbt_master_pipelines'

DROP PROC [dbo].[usp_yardKPI_MWIN_dim_fact_load_validate]

DROP TABLE [yardkpi].[stage_entp_mwin_rfi_milestone]
DROP TABLE [yardkpi].[reprocess_entp_mwin_rfi_milestone]
DROP TABLE [dbo].[dim_entp_mwin_rfi_milestone]

DROP TABLE yardkpi.reprocess_ent_contract_mwin

DROP VIEW [dbo].[dim_entp_mwin_rfi_milestone_vw]
DROP VIEW [yardkpi].[stage_entp_project_mwin_vw]
DROP VIEW [yardkpi].[stage_ent_contract_mwin_vw]
