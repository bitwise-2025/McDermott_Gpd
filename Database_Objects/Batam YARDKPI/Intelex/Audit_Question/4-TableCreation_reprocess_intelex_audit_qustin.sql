/****** Object:  Table [yardkpi].[reprocess_intelex_audit]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_intelex_audit_questn]

CREATE TABLE [yardkpi].[reprocess_intelex_audit_questn]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[row_id] [bigint] NULL,
	[record_no] [bigint] NULL,
	[audit_title] [varchar](1000) NULL,
	[audit_workflow_status] [varchar](100) NULL,
	[auditor] [varchar](500) NULL,
	[quest_record_no] [bigint] NULL,
	[checklist_code] [varchar](400) NULL,
	[checklist_name] [varchar](500) NULL,
	[checklist_progress] [varchar](100) NULL,
	[checklist_status] [varchar](400) NULL,
	[location] [varchar](600) NULL,
	[checklist_status2] [varchar](400) NULL,
	[button_clicked] [varchar](400) NULL,
	[data_submitted] [datetime] NULL,
	[workflow_status] [varchar](50) NULL,
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


