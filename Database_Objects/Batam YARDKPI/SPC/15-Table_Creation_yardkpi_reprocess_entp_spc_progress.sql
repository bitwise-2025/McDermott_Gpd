/****** Object:  Table [yardkpi].[reprocess_entp_spc_progress]    Script Date: 6/21/2024 7:45:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [yardkpi].[reprocess_entp_spc_progress]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50)  NULL,
	[sub_source_code] [varchar](50)  NULL,
	[FIWPOBID] [varchar](500)  NULL,
	[FIWPUID] [varchar](128)  NULL,
	[PROJECT] [varchar](250)  NULL,
	[NAME] [varchar](4000)  NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[PURPOSE] [varchar](4000) NULL,
	[DISCIPLINE] [varchar](4000)  NULL,
	[PLANNEDSTARTDATE] [date] NULL,
	[PLANNEDFINISHDATE] [date] NULL,
	[ACTUALSTARTDATE] [date] NULL,
	[ACTUALFINISHDATE] [date] NULL,
	[ESTIMATEDMANHOURS] [decimal](25,18) NULL,
	[PLANNEDMANHOURS][decimal](25,18) NULL,
	[ACTUALMANHOURS] [decimal](25,18) NULL,
	[COMPLETEDMANHOURS] [decimal](25,18) NULL,
	[TOTALCOMPONENTCONSTRAINTS] [int] NULL,
	[OPENCOMPONENTCONSTRAINTS] [int] NULL,
	[STATUS] [varchar](4000)  NULL,
	[SCOPE] [varchar](8000) NULL,
	[NOTES] [varchar](8000) NULL,
	[CREWSIZE] [int] NULL,
	[CREWDURATION] [varchar](4000) NULL,
	[EWPNUMBER] [varchar](4000) NULL,
	[CONTRACT_Number] [varchar](120) NULL,
	[CONTRACT_Description] [varchar](250) NULL,
	[CONTRACTOR] [varchar](4000) NULL,
	[DESIGNAREA] [varchar](4000) NULL,
	[FOREMAN] [varchar](4000) NULL,
	[GENERALFOREMAN] [varchar](4000) NULL,
	[FIELDENGINEER] [varchar](4000) NULL,
	[SUPERINTENDENT] [varchar](4000) NULL,
	[CREWOBID] [varchar](500) NULL,
	[CWPOBID] [varchar](500) NULL,
	[JOBNO] [varchar](4000) NULL,
	[REVISION] [varchar](4000) NULL,
	[IWPREVDATE] [varchar](4000) NULL,
	[CREATIONUSER] [varchar](4000) NULL,
	[hash_code] [varchar](8000)  NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime]  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

