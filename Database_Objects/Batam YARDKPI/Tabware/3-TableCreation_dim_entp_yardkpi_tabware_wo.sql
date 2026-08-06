/****** Object:  Table [dbo].[dim_entp_yardkpi_tabware_wo]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_tabware_wo]

CREATE TABLE [dbo].[dim_entp_yardkpi_tabware_wo]
(
	[dim_entp_yardkpi_tabware_wo_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_tabware_wo_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[equipment] [varchar](50) NULL,
	[equipment_class] [varchar](50) NULL,
	[entered_date] [datetime] NULL,
	[requested_completion] [datetime] NULL,
	[completed_date] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[wo_status] [varchar](20) NULL,
	[work_class] [varchar](50) NULL,
	[iso9000] [varchar](20) NULL,
	[workers] [DECIMAL](13,3) NULL,
	[wo_planned_hours] [DECIMAL](13,3) NULL,
	[down_hours] [DECIMAL](13,3) NULL,
	[res_planned_hours] [DECIMAL](13,3) NULL,
	[actual_hours] [DECIMAL](13,3) NULL,
	[planned_hours_total] [DECIMAL](13,3) NULL,
	[internal_labor] [DECIMAL](13,3) NULL,
	[contract_labor] [DECIMAL](13,3) NULL,
	[internal_nonstock] [DECIMAL](13,3) NULL,
	[contract_nonstock] [DECIMAL](13,3) NULL,
	[stores_material] [DECIMAL](13,3) NULL,
	[wo_services] [DECIMAL](13,3) NULL,
	[internal_tool] [DECIMAL](13,3) NULL,
	[contract_tool] [DECIMAL](13,3) NULL,
	[internal_other] [DECIMAL](13,3) NULL,
	[contract_other] [DECIMAL](13,3) NULL,
	[wo_base] [varchar](50) NULL,
	[wo_task] [varchar](50) NULL,
	[wo_subtask] [varchar](50) NULL,
	[failure_flag] [int] NULL,
	[planned_labor] [DECIMAL](13,3) NULL,
	[planned_nonstock] [DECIMAL](13,3) NULL,
	[planned_stores] [DECIMAL](13,3) NULL,
	[planned_services] [DECIMAL](13,3) NULL,
	[planned_tools] [DECIMAL](13,3) NULL,
	[plant] [varchar](50) NULL
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


