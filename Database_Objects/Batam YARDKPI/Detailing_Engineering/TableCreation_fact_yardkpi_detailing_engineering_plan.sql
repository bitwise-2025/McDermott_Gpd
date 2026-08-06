/****** Object:  Table [dbo].[fact_yardkpi_detailing_engineering_plan]    Script Date: 9/30/2022 10:58:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_yardkpi_detailing_engineering_plan]
(
	[fact_yardkpi_detailing_engineering_plan_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_detailing_engineering_nk] [bigint] NULL,
	[cutoff_date] [date] NULL,
	[date] [date] NULL,
	[plans] [money] NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


