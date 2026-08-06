/****** Object:  Table [yardkpi].[reprocess_intelex_audit]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_intelex_audit_findings]

CREATE TABLE [yardkpi].[reprocess_intelex_audit_findings]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[row_id] [bigint] NULL,
	[record_no] [bigint] NULL,
	[Audit_Title] [varchar](2000) NULL,
	[Location] [varchar](100) NULL,
	[Profile_Type] [varchar](200) NULL,
	[Profile] [varchar](300) NULL,
	[Product_Line] [varchar](200) NULL,
	[Checklist] [varchar](5000) NULL,
	[Finding_Record_No] [varchar](100) NULL,
	[MDR_Finding_No] [varchar](100) NULL,
	[Question] [varchar](8000) NULL,
	[Finding_Description] [varchar](8000) NULL,
	[Finding_Severity] [varchar](50) NULL,
	[Finding_Creator] [varchar](400) NULL,
	[Finding_Due_Date] [datetime] NULL,
	[Person_Responsible] [varchar](400) NULL,
	[Auditee_Finding_Acceptance] [varchar](50) NULL,
	[Auditee_Finding_Comments] [varchar](5000) NULL,
	[Completed_By] [varchar](400) NULL,
	[Completion_Date] [datetime] NULL,
	[Final_Approver] [varchar](400) NULL,
	[Date_of_Approval] [datetime] NULL,
	[Final_Approver_Notes] [varchar](400) NULL,
	[Workflow_Current_Stage] [varchar](50) NULL,
	[Workflow_Status] [varchar](50) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


