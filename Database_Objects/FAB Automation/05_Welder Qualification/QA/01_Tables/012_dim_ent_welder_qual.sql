DROP TABLE [dbo].[dim_ent_welder_qual]
GO
CREATE TABLE [dbo].[dim_ent_welder_qual]
(
	[dim_ent_welder_qual_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_welder_qual_nk] [int] NOT NULL,
	[dim_ent_jcc_nk] [int] NULL,
	[dim_ent_welder_nk] [int] NULL,
	[dim_ent_welder_contract_nk] [int] NULL,
	[dim_entp_pcm_weld_process_master_nk] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[fab_code] [varchar](3) NOT NULL,
	[welder] [varchar](15) NOT NULL,
	[process] [varchar](3) NULL,
	[discipline] [varchar](3) NULL,
	[first_qual_date] [datetime] NULL,
	[qual_expiry_date] [datetime] NULL,
	[certificate_num] [varchar](15) NOT NULL,
	[position] [varchar](7) NULL,
	[witness] [varchar](4) NULL,
	[weld_code] [varchar](10) NULL,
	[training_reg_date] [datetime] NULL,
	[training_start_date] [datetime] NULL,
	[ndt_test_date] [datetime] NULL,
	[ndt_status] [varchar](1) NULL,
	[training_end_date] [datetime] NULL,
	[wqt_date] [datetime] NULL,
	[mech_lab_submit_date] [datetime] NULL,
	[mech_test_receive_date] [datetime] NULL,
	[mech_status] [varchar](10) NULL,
	[Jcc_no] [varchar](25) NOT NULL,
	[prod_weld_flag] [varchar](1) NULL,
	[Prod_weld_required] [int] NULL,
	[Prod_weld_completed] [int] NULL,
	[prod_weld_completion_date] [datetime] NULL,
	[rec_source] [varchar](1) NULL,
	[contract_id] [varchar](10) NOT NULL,
 CONSTRAINT [dim_ent_welder_qual_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_welder_qual_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
