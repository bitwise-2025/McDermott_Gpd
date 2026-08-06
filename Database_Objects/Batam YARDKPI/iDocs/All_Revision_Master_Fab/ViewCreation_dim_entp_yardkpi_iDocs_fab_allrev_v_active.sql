SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_allrev_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_allrev_v]
AS select [dim_entp_yardkpi_iDocs_fab_allrev_sk]
	,[dim_entp_yardkpi_iDocs_fab_allrev_nk] 
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
	,[version_no]
	,[revision_no]
	,[revision_date]
	,[issue_state]
	
from [dbo].[dim_entp_yardkpi_iDocs_fab_allrev] where active = 1;
GO

