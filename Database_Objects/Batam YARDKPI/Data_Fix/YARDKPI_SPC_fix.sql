--==================
--pre-script
--==================
DROP Table [yardkpi].[stage_entp_spc_progress]
DROP TABLE [yardkpi].[reprocess_entp_spc_progress]
DROP TABLE [dbo].[dim_entp_spc_progress]
DROP PROC [dbo].[usp_yardKPI_spc_dim_fact_load_validate]
--drop PROC [dbo].[usp_yardkpi_spc_dim_load]
DROP VIEW [yardkpi].[stage_entp_spc_project_vw]
DROP Table dbo.dim_entp_spc_project
DROP TABLE [yardkpi].[reprocess_entp_spc_project]
DROP VIEW [yardkpi].[stage_entp_spc_discipline_vw]
DROP TABLE [yardkpi].[reprocess_entp_spc_discipline]
DROP TABLE [dbo].[dim_entp_spc_discipline]
DROP VIEW [yardkpi].[stage_entp_spc_status_vw]
DROP TABLE [yardkpi].[reprocess_entp_spc_status]
DROP TABLE [dbo].[dim_entp_spc_status]
DROP VIEW [yardkpi].[stage_entp_spc_jobno_vw]
DROP TABLE [dbo].[dim_entp_spc_jobno]
DROP TABLE [yardkpi].[reprocess_entp_spc_jobno]
--DROP VIEW [yardkpi].[stage_entp_spc_entp_project_vw]
--DROP TABLE [yardkpi].[reprocess_entp_spc_entp_project]
DROP VIEW yardkpi.stage_entp_spc_contract_vw
DROP TABLE yardkpi.reprocess_entp_spc_contract
--DROP VIEW [yardkpi].[stage_entp_spc_ent_contract_vw]
--DROP TABLE [yardkpi].[reprocess_entp_spc_ent_contract]
delete from generic_load_header where load_name ='dim_entp_spc_contract'
delete from generic_load_detail where load_name ='dim_entp_spc_contract'

DROP VIEW dbo.dim_entp_spc_project_vw
DROP VIEW dbo.dim_entp_spc_discipline_vw
DROP VIEW dbo.dim_entp_spc_status_vw
DROP VIEW dbo.dim_entp_spc_jobno_vw
DROP VIEW [dbo].[dim_entp_spc_progress_vw]
