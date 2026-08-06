/****** Object:  Table [dbo].[dim_ent_time_office_supervisor_id_master]    Script Date: 2/17/2023 2:50:24 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_ent_time_office_supervisor_id_master]') AND type in (N'U'))
DROP TABLE [dbo].[dim_ent_time_office_supervisor_id_master]
GO

/****** Object:  Table [dbo].[dim_ent_time_office_supervisor_id_master]    Script Date: 2/17/2023 2:50:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_ent_time_office_supervisor_id_master]
(
	[dim_ent_time_office_supervisor_id_master_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_ent_time_office_supervisor_id_master_nk] [bigint] NOT NULL,
	[supv_id] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[supervisor_name] [varchar](100) NULL,
	[supervisor_mail_id] [varchar](100) NULL,
 CONSTRAINT [Constr_dim_ent_time_office_supervisor_id_master_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_time_office_supervisor_id_master_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


