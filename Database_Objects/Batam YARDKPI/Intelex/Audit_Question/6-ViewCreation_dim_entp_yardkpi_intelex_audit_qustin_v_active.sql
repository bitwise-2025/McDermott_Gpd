SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_intelex_audit_questn_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_intelex_audit_questn_v]
AS select 
	[dim_entp_yardkpi_intelex_audit_questn_sk]
	,[dim_entp_yardkpi_intelex_audit_questn_nk]
	,[start_date]
	,[end_date]
	,[hash_code]
	,[active]
	,[created_date_time]
	,[modified_date_time]
	,[late_arrival_flag]
	,[dim_ent_source_nk]
	,[dim_ent_sub_source_nk]
	,[dim_entp_yardkpi_intelex_audit_nk]
	,[row_id]
	,[record_no]
	,[audit_title]
	,[audit_workflow_status]
	,[auditor]
	,[quest_record_no] 
	,[checklist_code]
	,[checklist_name]
	,[checklist_progress]
	,[checklist_status]
	,[location]
	,[checklist_status2]
	,[button_clicked]
	,[data_submitted]
	,[workflow_status]
	
from [dbo].[dim_entp_yardkpi_intelex_audit_questn] where active = 1;
GO
