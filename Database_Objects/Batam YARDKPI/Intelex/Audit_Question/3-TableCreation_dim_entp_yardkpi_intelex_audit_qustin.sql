/****** Object:  Table [dbo].[dim_entp_yardkpi_intelex_audit]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_intelex_audit_questn]

CREATE TABLE [dbo].[dim_entp_yardkpi_intelex_audit_questn]
(
	[dim_entp_yardkpi_intelex_audit_questn_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_intelex_audit_questn_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_entp_yardkpi_intelex_audit_nk] [bigint] NULL,
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
	[workflow_status] [varchar](50) NULL
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


