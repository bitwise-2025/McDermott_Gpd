/****** Object:  Table [yardkpi].[stage_intelex_audit]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_intelex_audit]

CREATE TABLE [yardkpi].[stage_intelex_audit]
(
	[stage_intelex_audit_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[row_id] [bigint] NULL,
	[record_no] [bigint] NULL,
	[intlx_Date_Created] [datetime] NULL,
	[location] [varchar](100) NULL,
	[profile_type] [varchar](200) NULL,
	[profile] [varchar](300) NULL,
	[a_type] [varchar](150) NULL,
	[audit_scope] [varchar](100) NULL,
	[scope] [varchar](400) NULL,
	[audit_due_date] [datetime] NULL,
	[scheduled_date] [datetime] NULL,
	[audit_start_date] [datetime] NULL,
	[projected_end_date] [datetime] NULL,
	[intlx_end_date] [datetime] NULL,
	[lead_auditor] [varchar](500) NULL,
	[summary] [varchar](8000) NULL,
	[findings] [int] NULL,
	[questionnaires] [int] NULL,
	[current_stage] [varchar](50) NULL,
	[status] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


