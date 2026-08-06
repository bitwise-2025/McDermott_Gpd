/****** Object:  Table [gpd].[NCSA_MCPM_LaborCorrection]    Script Date: 1/12/2023 11:33:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[NCSA_MCPM_LaborCorrection]') AND type in (N'U'))
DROP TABLE [gpd].[NCSA_MCPM_LaborCorrection]
GO

/****** Object:  Table [gpd].[NCSA_MCPM_LaborCorrection]    Script Date: 1/12/2023 11:33:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[NCSA_MCPM_LaborCorrection]
(
	[stage_ncsa_mcpm_laborcorection_id] [int] IDENTITY(1,1) NOT NULL,
	[PrimKey] [varchar](1000) NOT NULL,
	[Created] [varchar](1000) NULL,
	[CreatedBy] [varchar](1000) NULL,
	[Updated] [varchar](1000) NULL,
	[UpdatedBy] [varchar](1000) NULL,
	[CUT] [varchar](100) NULL,
	[CDL] [varchar](100) NULL,
	[Domain] [varchar](100) NULL,
	[ContractNo] [varchar](200) NULL,
	[Entity] [varchar](100) NULL,
	[CostType] [varchar](100) NULL,
	[WorkArea] [varchar](100) NULL,
	[CostCode] [varchar](100) NULL,
	[ActivityCode] [varchar](200) NULL,
	[TimesheetDate] [varchar](200) NULL,
	[EmployeeNo] [varchar](200) NULL,
	[HoursBooked] [varchar](200) NULL,
	[NewWorkPackID] [varchar](200) NULL,
	[NewActivityCode] [varchar](200) NULL,
	[NewHoursBooked] [varchar](200) NULL,
	[load_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


