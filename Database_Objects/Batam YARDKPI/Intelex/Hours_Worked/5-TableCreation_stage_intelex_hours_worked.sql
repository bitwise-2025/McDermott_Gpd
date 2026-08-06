/****** Object:  Table [yardkpi].[stage_intelex_audit]    Script Date: 11/22/2022 4:41:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[stage_intelex_hours_worked]

CREATE TABLE [yardkpi].[stage_intelex_hours_worked]
(
	[stage_intelex_hours_worked_id] [bigint] IDENTITY(1,1) NOT NULL,
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
	[Sub_Profile_Type] [varchar](100) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


