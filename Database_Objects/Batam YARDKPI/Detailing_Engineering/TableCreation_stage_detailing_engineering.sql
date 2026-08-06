SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- DROP TABLE [yardkpi].[stage_detailing_engineering]

CREATE TABLE [yardkpi].[stage_detailing_engineering]
(
	[stage_detailing_engineering_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_rssk] [int] NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[cutoff_date] [varchar](50) NULL,
	[project_status][varchar](50) NULL,
	[project] [varchar](50) NULL,
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
	[ROS_IFC_Drawing_receive_by_Detailing_team] [varchar](50) NULL,
	[Complete_issuance_Shop_Drawing_by_Detailing_team] [varchar](50) NULL,
	[detailing_group_activity] [varchar](300) NULL,
	[qty] [varchar](50) NULL,
	[division] [varchar](50) NULL,
	[component] [varchar](50) NULL,
	[subf] [varchar](50) NULL,
	[cst_element] [varchar](100) NULL,
	[wbs] [varchar](50) NULL,
	[detailing_start] [varchar](50) NULL,
	[detailing_finish] [varchar](50) NULL,
	[manhour] [varchar](50) NULL,
	[progress] [varchar](50) NULL,
	[plan_progress] [varchar](50) NULL,
	[earned] [varchar](50) NULL,
	[plan] [varchar](50) NULL,
	[variance] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
	[total] [varchar](50) NULL,
	[cek] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[plans] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


