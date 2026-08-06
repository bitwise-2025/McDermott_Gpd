/****** Object:  Table [dbo].[dim_entp_project_week_closing_period]    Script Date: 8/18/2022 10:07:27 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_entp_project_week_closing_period]') AND type in (N'U'))
DROP TABLE [dbo].[dim_entp_project_week_closing_period]
GO

/****** Object:  Table [dbo].[dim_entp_project_week_closing_period]    Script Date: 8/18/2022 10:07:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_project_week_closing_period]
(
	[dim_entp_project_week_closing_period_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_entp_project_week_closing_period_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[dim_ent_week_closing_period_nk] [int] NOT NULL,
	[dim_entp_project_nk] [int] NOT NULL
)
WITH
(
	DISTRIBUTION = HASH ( [dim_entp_project_nk] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO

--
INSERT INTO [dbo].[dim_entp_project_week_closing_period]
           ([dim_entp_project_week_closing_period_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_week_closing_period_nk]
           ,[dim_entp_project_nk])
VALUES(1,'2000-01-01 00:00:00.000','2030-12-31 00:00:00.000','',1,'2021-06-24 00:00:00.000',NULL,'N',1,161)

