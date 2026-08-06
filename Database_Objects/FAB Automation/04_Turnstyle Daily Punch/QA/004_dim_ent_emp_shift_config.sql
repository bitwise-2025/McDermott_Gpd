DROP TABLE [dbo].[dim_ent_emp_shift_config]
GO

CREATE TABLE [dbo].[dim_ent_emp_shift_config]
(
	[dim_ent_emp_shift_config_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_emp_shift_config_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[shift_start_time] [time](7) NOT NULL,
	[shift_end_time] [time](7) NOT NULL,
	[shift_type] [varchar](20) NOT NULL,
	[location] [varchar](20) NOT NULL,
	[load_date] [datetime] NOT NULL,
	[shift_start_range1] [time](7) NULL,
	[shift_end_range1] [time](7) NULL,
	[shift_start_range2] [time](7) NULL,
	[shift_end_range2] [time](7) NULL,
 CONSTRAINT [Cnstr_dim_ent_emp_shift_config] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_emp_shift_config_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


