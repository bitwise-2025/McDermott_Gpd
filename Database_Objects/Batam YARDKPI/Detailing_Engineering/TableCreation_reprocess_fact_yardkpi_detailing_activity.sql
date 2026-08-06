SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--drop TABLE [yardkpi].[reprocess_fact_yardkpi_detailing_activity]

CREATE TABLE [yardkpi].[reprocess_fact_yardkpi_detailing_activity]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_rssk] [int] NULL,
	[cutoff_date] [varchar](50) NULL,
	[project] [varchar](50) NULL,
	[activity_id] [varchar](100) NULL,
	[ROS_IFC_Drawing_receive_by_Detailing_team] [varchar](50) NULL,
	[Complete_issuance_Shop_Drawing_by_Detailing_team] [varchar](50) NULL,
	[qty] [varchar](50) NULL,
	[detailing_start] [varchar](50) NULL,
	[detailing_finish] [varchar](50) NULL,
	[manhour] [varchar](50) NULL,
	[progress] [varchar](50) NULL,
	[plan_progress] [varchar](50) NULL,
	[earned] [varchar](50) NULL,
	[plan] [varchar](50) NULL,
	[variance] [varchar](50) NULL,
	[total] [varchar](50) NULL,
	[cek] [varchar](50) NULL,
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


