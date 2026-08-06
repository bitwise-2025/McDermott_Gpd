SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_yardkpi_detailing_engineering]
(
	[dim_entp_yardkpi_detailing_engineering_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_detailing_engineering_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[dim_ent_contract_nk] [bigint] NULL,
	[dim_ent_time_coa_kronos_sk] [bigint] NULL,
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
	[Remarks] [varchar](500) NULL,
	[division] [varchar](50) NULL,
	[component] [varchar](50) NULL,
	[subf] [varchar](50) NULL,
	[cst_element] [varchar](100) NULL,
	[wbs] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO