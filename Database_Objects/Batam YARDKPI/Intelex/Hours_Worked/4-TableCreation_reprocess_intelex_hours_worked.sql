/****** Object:  Table [yardkpi].[reprocess_intelex_audit]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_intelex_hours_worked]

CREATE TABLE [yardkpi].[reprocess_intelex_hours_worked]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NULL,
	[sub_source_code] [varchar](50) NULL,
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
	[Sub_Profile_Type] [varchar](100) NULL,
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


