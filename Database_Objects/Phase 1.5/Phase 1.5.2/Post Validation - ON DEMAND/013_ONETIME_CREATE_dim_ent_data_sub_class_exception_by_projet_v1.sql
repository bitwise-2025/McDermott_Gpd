/****** Object:  Table [dbo].[dim_ent_data_sub_class_exception_by_projet]    Script Date: 10/3/2022 8:35:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dim_ent_data_sub_class_exception_by_projet]') AND type in (N'U'))
DROP TABLE [dbo].[dim_ent_data_sub_class_exception_by_projet]
GO
/****** Object:  Table [dbo].[dim_ent_data_sub_class_exception_by_projet]    Script Date: 10/3/2022 8:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_data_sub_class_exception_by_projet]
(
	[dim_ent_data_sub_class_exception_by_projet_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_data_sub_class_exception_by_projet_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[dim_entp_project_nk] [int] NOT NULL,
	[dim_ent_sub_source_nk] [int] NOT NULL,
	[dim_ent_data_sub_class_nk] [int] NOT NULL,
	[project_number] [varchar](120) NULL,
	[data_sub_class] [varchar](120) NULL,
	[sub_source] [varchar](120) NULL,
 CONSTRAINT [Cnstr_2d9563afbd6849ceb94444232d] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_data_sub_class_exception_by_projet_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
