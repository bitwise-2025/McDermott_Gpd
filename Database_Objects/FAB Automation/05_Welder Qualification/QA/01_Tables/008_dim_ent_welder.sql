DROP TABLE [dbo].[dim_ent_welder]
GO
CREATE TABLE [dbo].[dim_ent_welder]
(
	[dim_ent_welder_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_welder_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[fab_code] [varchar](3) NULL,
	[welder] [varchar](15) NULL,
	[welder_name] [varchar](30) NULL,
	[load_date] [varchar](50) NOT NULL,
 CONSTRAINT [dim_ent_welder_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_welder_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
