/****** Object:  Table [dbo].[dim_entp_yardkpi_intelex_audit]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [dbo].[dim_entp_yardkpi_intelex_hours_worked]

CREATE TABLE [dbo].[dim_entp_yardkpi_intelex_hours_worked]
(
	[dim_entp_yardkpi_intelex_hours_worked_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_intelex_hours_worked_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[dim_ent_source_nk] [bigint] NULL,
	[dim_ent_sub_source_nk] [bigint] NULL,
	[row_id] [bigint] NULL,
	[Id] [varchar](200) NULL,
	[Display_Field] [varchar](500) NULL,
	[Location_Code] [varchar](40) NULL,
	[Location] [varchar](100) NULL,
	[Profile_No] [varchar](40) NULL,
	[Vessel] [varchar](200) NULL,
	[Other_Vessel] [varchar](200) NULL,
	[Profile] [varchar](1000) NULL,
	[Profile_Area] [varchar](100) NULL,
	[Profile_Type] [varchar](100) NULL,
	[Business_Line] [varchar](500) NULL,
	[Project_Number] [varchar](100) NULL,
	[Project_Name] [varchar](500) NULL,
	[Month_Date] [datetime] NULL,
	[Month] [varchar](500) NULL,
	[Year] [int] NULL,
	[Employee_Hours] [int] NULL,
	[Subcontractor_Hours] [int] NULL,
	[Joint_Venture_Partner_Hours] [int] NULL,
	[Subcontractor_Vessel_Hours] [int] NULL,
	[Vessel_Hours_Helper] [int] NULL,
	[Sub_Profile_Type] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


