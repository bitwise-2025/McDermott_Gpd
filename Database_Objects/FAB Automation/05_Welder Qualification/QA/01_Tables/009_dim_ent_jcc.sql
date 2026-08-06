DROP TABLE [dbo].[dim_ent_jcc]
GO
CREATE TABLE [dbo].[dim_ent_jcc]
(
	[dim_ent_jcc_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_jcc_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[Jcc_no] [varchar](25) NOT NULL,
	[process] [varchar](3) NULL,
	[fab_code] [varchar](3) NOT NULL,
	[discipline] [varchar](3) NULL,
	[certificate_num] [varchar](15) NOT NULL,
	[jcc_submit_date] [datetime] NULL,
	[jcc_sign_date] [datetime] NULL,
	[jcc_receive_date] [datetime] NULL,
	[jcc_expiry_date] [datetime] NULL,
 CONSTRAINT [dim_ent_jcc_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_jcc_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
