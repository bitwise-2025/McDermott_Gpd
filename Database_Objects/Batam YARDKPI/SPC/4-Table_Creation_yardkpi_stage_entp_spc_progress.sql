/****** Object:  Table [yardkpi].[stage_entp_spc_progress]    Script Date: 6/20/2024 6:29:15 PM ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--Drop TABLE [yardkpi].[stage_entp_spc_progress]
CREATE TABLE [yardkpi].[stage_entp_spc_progress]
(
	[stage_entp_spc_progress_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NOT NULL,
	[FIWPOBID] [varchar](500) NOT NULL,
	[FIWPUID] [varchar](128) NOT NULL,
	[PROJECT] [varchar](250) NOT NULL,
	[NAME] [varchar](4000) NOT NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[PURPOSE] [varchar](4000) NULL,
	[DISCIPLINE] [varchar](4000) NOT NULL,
	[PLANNEDSTARTDATE] [date] NULL,
	[PLANNEDFINISHDATE] [date] NULL,
	[ACTUALSTARTDATE] [date] NULL,
	[ACTUALFINISHDATE] [date] NULL,
	[ESTIMATEDMANHOURS_str] [varchar](100) NULL,
	[ESTIMATEDMANHOURS] [decimal](25,18) NULL,
	[PLANNEDMANHOURS_str][varchar](100) NULL,
	[PLANNEDMANHOURS][decimal](25,18) NULL,
	[ACTUALMANHOURS_str] [varchar](100) NULL,
	[ACTUALMANHOURS] [decimal](25,18) NULL,
	[COMPLETEDMANHOURS_str] [varchar](100) NULL,
	[COMPLETEDMANHOURS] [decimal](25,18) NULL,
	[TOTALCOMPONENTCONSTRAINTS] [int] NULL,
	[OPENCOMPONENTCONSTRAINTS] [int] NULL,
	[STATUS] [varchar](4000) NOT NULL,
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
	[CREATIONUSER] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO