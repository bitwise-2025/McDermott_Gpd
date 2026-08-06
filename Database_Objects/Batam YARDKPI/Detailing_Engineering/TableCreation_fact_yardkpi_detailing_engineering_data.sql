SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_yardkpi_detailing_engineering_data]
(
	[fact_yardkpi_detailing_engineering_data_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_yardkpi_detailing_engineering_nk] [bigint] NULL,
	[cutoff_date] [date] NULL,
	[ROS_IFC_Drawing_receive_by_Detailing_team] [date] NULL,
	[Complete_issuance_Shop_Drawing_by_Detailing_team] [date] NULL,
	[qty] [bigint] NULL,
	[detailing_start] [date] NULL,
	[detailing_finish] [date] NULL,
	[manhour] [money] NULL,
	[progress] [money] NULL,
	[plan_progress] [money] NULL,
	[earned] [money] NULL,
	[plan] [money] NULL,
	[variance] [money] NULL,
	[total] [money] NULL,
	[cek] [varchar](50) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


