/****** Object:  Table [yardkpi].[reprocess_nonconformance]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_intelex_nonconformance]

CREATE TABLE [yardkpi].[reprocess_intelex_nonconformance]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
	[row_id] [bigint] NULL,
	[ncr_no] [bigint] NULL,
	[date_created] [datetime] NULL,
	[date_closed] [datetime] NULL,
	[location] [varchar](100) NULL,
	[profile_type] [varchar](200) NULL,
	[profile] [varchar](300) NULL,
	[product_line] [varchar](300) NULL,
	[ncr_type] [varchar](100) NULL,
	[issued_to] [varchar](100) NULL,
	[specify_regulatory_agency_issued_to] [varchar](3000) NULL,
	[issued_by] [varchar](500) NULL,
	[specify_regulatory_agency_issued_by] [varchar](3000) NULL,
	[client_ncr_no] [varchar](2000) NULL,
	[issue] [varchar](2000) NULL,
	[description] [varchar](8000) NULL,
	[requirement] [varchar](8000) NULL,
	[area_of_project] [varchar](8000) NULL,
	[vessel] [varchar](5000) NULL,
	[function_name] [varchar](300) NULL,
	[product_activity] [varchar](1000) NULL,
	[defect_code] [varchar](5000) NULL,
	[units_affected] [varchar](100) NULL,
	[seriallot_no] [varchar](1000) NULL,
	[immediate_action] [varchar](8000) NULL,
	[recommended_action] [varchar](8000) NULL,
	[identified_by] [varchar](500) NULL,
	[reported_by] [varchar](500) NULL,
	[date_reported] [datetime] NULL,
	[project_phase] [varchar](1000) NULL,
	[supplier] [varchar](1000) NULL,
	[return_material_authorization_no] [varchar](1000) NULL,
	[is_this_recurrence] [varchar](100) NULL,
	[suspected_cause] [varchar](8000) NULL,
	[probability] [varchar](3000) NULL,
	[detection] [varchar](3000) NULL,
	[criticality] [varchar](100) NULL,
	[rpn] [varchar](100) NULL,
	[responsible_for_disposition] [varchar](500) NULL,
	[disposition_due_date] [datetime] NULL,
	[reviewer_comments] [varchar](8000) NULL,
	[cancel_comments] [varchar](2000) NULL,
	[disposition] [varchar](100) NULL,
	[client_approval_required] [varchar](40) NULL,
	[qty_used_as_is] [varchar](40) NULL,
	[used_as_is_comments] [varchar](8000) NULL,
	[dispositioner_action_plan_recommendations] [varchar](8000) NULL,
	[disposition_completed_date] [datetime] NULL,
	[action_verification_due_date] [datetime] NULL,
	[dispositioner_comments] [varchar](3000) NULL,
	[verification_due_date] [datetime] NULL,
	[verification_by] [varchar](500) NULL,
	[verification_notes] [varchar](8000) NULL,
	[verification_date] [datetime] NULL,
	[workflowcurrent_stage] [varchar](300) NULL,
	[workflowstatus] [varchar](100) NULL,
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


