/****** Object:  Table [dbo].[generic_json_detail]    Script Date: 11/9/2023 4:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TABLE [dbo].[generic_json_detail]
 add [email_indicator_flag] [varchar](1) NULL;

ALTER TABLE [dbo].[generic_json_detail]
 add [file_name_indicator_flag] [varchar](1) NULL;

ALTER TABLE [dbo].[generic_json_detail]
 add [project_no_indicator_flag] [varchar](1) NULL;

ALTER TABLE [dbo].[generic_json_detail]
 add [zversion_no_indicator_flag] [varchar](1) NULL;


/****** Object:  Table [dbo].[json_load_stat]    Script Date: 11/9/2023 4:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[json_load_stat]
(
	[jls_id] [bigint] IDENTITY(1,1) NOT NULL,
	[load_name] [varchar](500) NOT NULL,
	[created_date_time] [datetime] NULL,
	[active] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[json_load_stat_emails]    Script Date: 11/9/2023 4:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[json_load_stat_emails]
(
	[jlse_id] [bigint] IDENTITY(1,1) NOT NULL,
	[jlsp_id] [bigint] NOT NULL,
	[email_id] [varchar](500) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[json_load_status_project]    Script Date: 11/9/2023 4:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[json_load_status_project]
(
	[jlsp_id] [bigint] IDENTITY(1,1) NOT NULL,
	[jls_id] [bigint] NOT NULL,
	[project_no] [varchar](500) NOT NULL,
	[file_name] [varchar](1000) NULL,
	[processed_record_count] [int] NULL,
	[error_record_count] [int] NULL,
	[zversion_no] [bigint] NULL,
	[email_id] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO