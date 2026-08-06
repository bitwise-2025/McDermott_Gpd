SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_intelex_audit_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_intelex_audit_v]
AS select [dim_entp_yardkpi_intelex_audit_sk]
	,[dim_entp_yardkpi_intelex_audit_nk]
	,[start_date] 
	,[end_date] 
	,[hash_code]
	,[active]
	,[created_date_time] 
	,[modified_date_time] 
	,[late_arrival_flag]
	,[dim_ent_source_nk] 
	,[dim_ent_sub_source_nk]
	,[row_id]
	,[record_no]
	,[intlx_Date_Created]
	,[location]
	,[profile_type]
	,[profile]
	,[a_type]
	,[audit_scope]
	,[scope]
	,[audit_due_date]
	,[scheduled_date]
	,[audit_start_date]
	,[projected_end_date]
	,[intlx_end_date]
	,[lead_auditor]
	,[summary]
	,[findings] 
	,[questionnaires]
	,[current_stage]
	,[status]
from [dbo].[dim_entp_yardkpi_intelex_audit] where active = 1;
GO

