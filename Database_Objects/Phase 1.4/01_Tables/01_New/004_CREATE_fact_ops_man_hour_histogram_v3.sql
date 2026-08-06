/****** Object:  Table [dbo].[fact_ops_man_hour_histogram]    Script Date: 3/2/2022 5:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_ops_man_hour_histogram]
(
	[fact_entp_mhrs_histogram_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_project_sk] [int] NOT NULL,
	[dim_entp_project_nk] [int] NOT NULL,
	[dim_ent_office_sk] [int] NULL,
	[dim_ent_office_nk] [int] NULL,
	[dim_ent_prime_sk] [int] NULL,
	[dim_ent_prime_nk] [int] NULL,
	[dim_ent_sub_prime_sk] [int] NULL,
	[dim_ent_sub_prime_nk] [int] NULL,
	[dim_ent_subfunction_sk] [int] NULL,
	[dim_ent_subfunction_nk] [int] NULL,
	[dim_entp_activity_sk] [int] NULL,
	[dim_entp_activity_nk] [int] NULL,
	[dim_entp_data_sub_class_sk] [int] NULL,
	[dim_entp_data_sub_class_nk] [int] NULL,
	[dim_entp_data_class_sk] [int] NULL,
	[dim_entp_data_class_nk] [int] NULL,
	[dim_entp_sub_source_sk] [int] NULL,
	[dim_entp_sub_source_nk] [int] NULL,
	[dim_entp_source_sk] [int] NULL,
	[dim_entp_source_nk] [int] NULL,
	[dim_ent_psrlevel1_sk] [int] NULL,
	[dim_ent_psrlevel1_nk] [int] NULL,
	[dim_ent_psrlevel2_sk] [int] NULL,
	[dim_ent_psrlevel2_nk] [int] NULL,
	[transaction_date] [date] NULL,
	[transaction_quantity] [decimal](15, 5) NULL,
	[created_date_time] [datetime] NULL,
 CONSTRAINT [Cnstr_1e2c2d566fe244b39b1b2047ab2f81c1] PRIMARY KEY NONCLUSTERED 
	(
		[fact_entp_mhrs_histogram_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 3/2/2022 5:27:54 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[fact_ops_man_hour_histogram]
(
	[created_date_time] ASC
)WITH (DROP_EXISTING = OFF)
GO
