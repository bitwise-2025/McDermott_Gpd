SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_entp_pcm_welder_information]

CREATE TABLE [yardkpi].[stage_entp_pcm_welder_information]
(
	[stage_entp_pcm_welder_information_id] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
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


