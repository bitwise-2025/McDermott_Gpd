--Step 1] Backup data from the main dim tables into temp tables.

SELECT * INTO [dbo].[dim_entp_work_area_bkp_04262022]
FROM [dbo].[dim_entp_work_area] 


--Step 2] Drop and recreate the DIM tables with Distribution as 'RoundRobin' Instead of 'Hash'
GO
/****** Object:  Index [indSK]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indSK] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indRK1]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indRK1] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indNKSE]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indNKSE] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indNKA]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indNKA] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indNK]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indNK] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indGNKSE]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indGNKSE] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Index [indGNKA]    Script Date: 1/11/2022 12:29:24 AM ******/
DROP INDEX [indGNKA] ON [dbo].[dim_entp_work_area]
GO
/****** Object:  Table [dbo].[dim_entp_work_area]    Script Date: 1/11/2022 12:29:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_entp_work_area]') AND type in (N'U'))
DROP TABLE [dbo].[dim_entp_work_area]
GO
/****** Object:  Table [dbo].[dim_entp_work_area]    Script Date: 1/11/2022 12:29:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_work_area]
(
	[dim_entp_work_area_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_entp_work_area_nk] [int] NOT NULL,
	[work_area_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[work_area_name] [varchar](500) NULL,
	[dim_entp_project_nk] [int] NOT NULL,
	[dim_entp_phase_nk] [int] NOT NULL,
	[dim_entp_work_unit_nk] [int] NOT NULL,
	[project_number] [varchar](120) NULL,
 CONSTRAINT [Cnstr_d3f2e02b0157408ca37d719bc8acda8c] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_work_area_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [indGNKA]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indGNKA] ON [dbo].[dim_entp_work_area]
(
	[dim_entp_work_area_nk] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indGNKSE]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indGNKSE] ON [dbo].[dim_entp_work_area]
(
	[dim_entp_work_area_nk] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNK]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indNK] ON [dbo].[dim_entp_work_area]
(
	[work_area_code] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKA]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indNKA] ON [dbo].[dim_entp_work_area]
(
	[work_area_code] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNKSE]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indNKSE] ON [dbo].[dim_entp_work_area]
(
	[work_area_code] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indRK1]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indRK1] ON [dbo].[dim_entp_work_area]
(
	[dim_entp_project_nk] ASC,
	[dim_entp_phase_nk] ASC,
	[dim_entp_work_unit_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [indSK]    Script Date: 1/11/2022 12:29:24 AM ******/
CREATE NONCLUSTERED INDEX [indSK] ON [dbo].[dim_entp_work_area]
(
	[dim_entp_work_area_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO

--Step 4] Reload the data from the Work Area backup table into new DIM tables

SET IDENTITY_INSERT [dbo].[dim_entp_work_area] ON;  
GO  

INSERT INTO [dbo].[dim_entp_work_area]
(      [dim_entp_work_area_sk],
       [dim_entp_work_area_nk],
       [work_area_code],
       [start_date],
       [end_date],
       [hash_code],
       [active],
       [created_date_time],
       [modified_date_time],
       [late_arrival_flag],
       [work_area_name],
       [dim_entp_project_nk],
       [dim_entp_phase_nk],
       [dim_entp_work_unit_nk],
       [project_number]
)
select * from [dbo].[dim_entp_work_area_bkp_04262022]

Go


SET IDENTITY_INSERT [dbo].[dim_entp_work_area] OFF;  
GO  
