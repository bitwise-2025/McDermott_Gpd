SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_pcm_welder_information]

CREATE TABLE [dbo].[dim_entp_pcm_welder_information]
(
	[dim_entp_pcm_welder_information_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_pcm_welder_information_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[fab_code] [varchar](5) NULL,
	[welder] [varchar](100) NULL,
	[employee_name] [varchar](300) NULL,
	[employee_location] [varchar](40) NULL,
	[location_detail] [varchar](200) NULL,
	[employer] [varchar](200) NULL,
	[employer_detail] [varchar](400) NULL,
	[welder_start_date] [datetime] NULL,
	[welder_termination_date] [datetime] NULL,
	[welder_type] [varchar](20) NULL,
	[Welder_type_Description] [varchar](200) NULL,
	[emp_status] [varchar](20) NULL,
	[Badge_Id][varchar](100) NULL,
	[SAP_Id][varchar](100) NULL
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


