/****** Object:  Table [dbo].[fact_mcpm_offshore_laborcorrection]    Script Date: 1/12/2023 11:33:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_mcpm_offshore_laborcorrection]
(
	[fact_entp_sk] [bigint] IDENTITY(1,1) NOT NULL,
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
	[HoursBooked] [float] NULL,
	[NewWorkPackID] [varchar](200) NULL,
	[NewActivityCode] [varchar](200) NULL,
	[NewHoursBooked] [float] NULL,
	[created_date_time] [datetime] NULL,
	[temp_hash_code] [varchar](120) NULL,
	[temp_panned] [decimal](15, 5) NULL,
 CONSTRAINT [Cnstr_fact_mcpm_offshore_laborcorrection] PRIMARY KEY NONCLUSTERED 
	(
		[fact_entp_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


