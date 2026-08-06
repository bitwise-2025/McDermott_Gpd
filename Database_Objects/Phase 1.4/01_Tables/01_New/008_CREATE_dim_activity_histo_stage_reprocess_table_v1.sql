/****** Object:  Table [gpd].[reprocess_tmp_Activity_P6_histogram]    Script Date: 3/2/2022 5:23:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_tmp_Activity_P6_histogram]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[activity_code] [nvarchar](100) NULL,
	[activity_desc] [nvarchar](100) NULL,
	[project] [varchar](50) NULL,
	[prime] [varchar](10) NULL,
	[sub_prime] [varchar](10) NULL,
	[WA] [varchar](10) NULL,
	[CWP] [varchar](10) NULL,
	[SR] [varchar](10) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[tmp_Activity_P6_histogram]    Script Date: 3/2/2022 5:23:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[tmp_Activity_P6_histogram]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[activity_code] [nvarchar](100) NULL,
	[activity_desc] [nvarchar](100) NULL,
	[project] [varchar](50) NULL,
	[prime] [varchar](10) NULL,
	[sub_prime] [varchar](10) NULL,
	[WA] [varchar](10) NULL,
	[CWP] [varchar](10) NULL,
	[SR] [varchar](10) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
