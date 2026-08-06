/****** Object:  Table [dbo].[dim_entp_spc_progress]    Script Date: 6/21/2024 7:43:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_spc_progress]
(
	[dim_entp_spc_progress_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_spc_progress_nk] [bigint] NULL,
	[start_date] [datetime]  NULL,
	[end_date] [datetime]  NULL,
	[hash_code] [varchar](8000)  NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1)  NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[dim_entp_spc_project_nk] [bigint]  NULL,
	[dim_entp_spc_discipline_nk] [bigint]  NULL,
	[dim_entp_spc_status_nk] [bigint]  NULL,
	[dim_entp_spc_jobno_nk] [bigint] NULL,
	[FIWPOBID] [varchar](500)  NULL,
	[FIWPUID] [varchar](128)  NULL,
	[NAME] [varchar](4000)  NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[PURPOSE] [varchar](4000) NULL,
	[PLANNEDSTARTDATE] [date] NULL,
	[PLANNEDFINISHDATE] [date] NULL,
	[ACTUALSTARTDATE] [date] NULL,
	[ACTUALFINISHDATE] [date] NULL,
	[ESTIMATEDMANHOURS] [decimal](25,18) NULL,
	[PLANNEDMANHOURS] [decimal](25,18) NULL,
	[ACTUALMANHOURS] [decimal](25,18) NULL,
	[COMPLETEDMANHOURS] [decimal](25,18) NULL,
	[TOTALCOMPONENTCONSTRAINTS] [bigint] NULL,
	[OPENCOMPONENTCONSTRAINTS] [bigint] NULL,
	[SCOPE] [varchar](8000) NULL,
	[NOTES] [varchar](8000) NULL,
	[CREWSIZE] [bigint] NULL,
	[CREWDURATION] [varchar](4000) NULL,
	[EWPNUMBER] [varchar](4000) NULL,
	[CONTRACTOR] [varchar](4000) NULL,
	[DESIGNAREA] [varchar](4000) NULL,
	[FOREMAN] [varchar](4000) NULL,
	[GENERALFOREMAN] [varchar](4000) NULL,
	[FIELDENGINEER] [varchar](4000) NULL,
	[SUPERINTENDENT] [varchar](4000) NULL,
	[CREWOBID] [varchar](500) NULL,
	[CWPOBID] [varchar](500) NULL,
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


