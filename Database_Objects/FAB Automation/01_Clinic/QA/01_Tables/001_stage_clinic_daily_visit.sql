DROP TABLE [gpd].[stage_clinic_daily_visit]
GO


CREATE TABLE [gpd].[stage_clinic_daily_visit]
(
	[stage_clinic_daily_visit_id] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](100) NULL,
	[visit_id] [int] NULL,
	[leave_start_date] [datetime] NULL,
	[leave_end_date] [datetime] NULL,
	[visit_details] [varchar](1000) NULL,
	[prepared_by] [varchar](100) NULL,
	[prepared_on] [datetime] NULL,
	[sickleave_appr_by] [varchar](100) NULL,
	[extracted] [varchar](10) NULL,
	[extract_asof] [datetime] NULL,
	[extracted_by] [varchar](100) NULL,
	[extracted_on] [datetime] NULL,
	[loc_id] [int] NULL,
	[sl_comm_by] [varchar](10) NULL,
	[sickleave_type] [varchar](10) NULL,
	[clinic] [varchar](10) NULL,
	[employee_id] [varchar](10) NULL,
	[first_name] [varchar](50) NULL,
	[middle_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[visit_date] [datetime] NULL,
	[visit_time] [decimal](4, 2) NULL,
	[shift] [varchar](10) NULL,
	[visit_type] [varchar](10) NULL,
	[physician_id] [varchar](1000) NULL,
	[parent_visit_id] [int] NULL,
	[visit_classification] [varchar](100) NULL,
	[type_of_illness] [varchar](100) NULL,
	[department] [varchar](10) NULL,
	[sex] [varchar](1) NULL,
	[visit_status] [varchar](1) NULL,
	[treatmentdet] [varchar](1000) NULL,
	[diagonosis] [varchar](1000) NULL,
	[hospital_name] [varchar](100) NULL,
	[cost_center] [varchar](100) NULL,
	[follow_up] [varchar](100) NULL,
	[age] [varchar](5) NULL,
	[sap_id] [int] NULL,
	[designation] [varchar](255) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

