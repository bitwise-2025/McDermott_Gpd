SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster_v]
AS select [dim_entp_yardkpi_iDocs_fab_msmaster_sk]
	,[dim_entp_yardkpi_iDocs_fab_msmaster_nk] 
	,[start_date] 
	,[end_date]
	,[hash_code]
	,[active]
	,[created_date_time] 
	,[modified_date_time]
	,[late_arrival_flag] 
	,[dim_ent_source_nk]
	,[dim_ent_sub_source_nk] 
	,[dim_ent_contract_nk] 
	,[project_no]
	,[project_id] 
	,[project_name]
	,[contract_no] 
	,[deliverable] 
	,[dl_import]
	,[doc_id] 
	,[doc_number] 
	,[type_class] 
	,[ms_order]
	,[ms_id] 
	,[ms_gate_name]
	,[ms_weight] 
	,[scheduled_date_original] 
	,[scheduled_date] 
	,[forecast_date_original]
	,[forecast_date] 
	,[actual_date_original]
	,[actual_date]
from [dbo].[dim_entp_yardkpi_iDocs_fab_msmaster] where active = 1;
GO


