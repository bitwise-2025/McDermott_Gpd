DROP TABLE [dbo].[dim_ent_welder_contract]
GO
CREATE TABLE [dbo].[dim_ent_welder_contract]
(
	[dim_ent_welder_contract_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_welder_contract_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[contract_id] [varchar](10) NOT NULL,
	[contract_description] [varchar](100) NULL,
 CONSTRAINT [dim_ent_welder_contract_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_welder_contract_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
