/****** Object:  Table [yardkpi].[reprocess_dc_survey_register]    Script Date: 9/15/2022 5:01:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--drop TABLE [yardkpi].[reprocess_detailing_engineering]

CREATE TABLE [yardkpi].[reprocess_detailing_engineering]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[project] [varchar](50) NULL,
	[project_status][varchar](50) NULL,
	[scope] [varchar](50) NULL,
	[plan_actual] [varchar](50) NULL,
	[activity_id] [varchar](100) NULL,
	[discipline] [varchar](50) NULL,
	[discipline_description] [varchar](500) NULL,
	[piping_detailing_deliverable_type] [varchar](50) NULL,
	[facility] [varchar](200) NULL,
	[facility_description] [varchar](500) NULL,
	[description] [varchar](500) NULL,
	[project_category] [varchar](100) NULL,
	[detailing_group_activity] [varchar](300) NULL,
	[division] [varchar](50) NULL,
	[component] [varchar](50) NULL,
	[subf] [varchar](50) NULL,
	[cst_element] [varchar](100) NULL,
	[wbs] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
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


