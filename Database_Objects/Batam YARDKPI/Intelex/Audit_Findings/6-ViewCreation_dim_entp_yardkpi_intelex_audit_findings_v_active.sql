SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_intelex_audit_findings_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_intelex_audit_findings_v]
AS select 
	[dim_entp_yardkpi_intelex_audit_findings_sk],
	[dim_entp_yardkpi_intelex_audit_findings_nk],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag],
	[dim_ent_source_nk],
	[dim_ent_sub_source_nk],
	[row_id],
	[record_no],
	[Audit_Title],
	[Location],
	[Profile_Type],
	[Profile],
	[Product_Line],
	[Checklist],
	[Finding_Record_No],
	[MDR_Finding_No],
	[Question],
	[Finding_Description],
	[Finding_Severity],
	[Finding_Creator],
	[Finding_Due_Date],
	[Person_Responsible],
	[Auditee_Finding_Acceptance],
	[Auditee_Finding_Comments],
	[Completed_By],
	[Completion_Date],
	[Final_Approver],
	[Date_of_Approval],
	[Final_Approver_Notes],
	[Workflow_Current_Stage],
	[Workflow_Status]
	
from [dbo].[dim_entp_yardkpi_intelex_audit_findings] where active = 1;
GO

