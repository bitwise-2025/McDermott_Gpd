DROP TABLE [gpd].[reprocess_welding_process]
GO
CREATE TABLE [gpd].[reprocess_welding_process]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NOT NULL,
	[fab_code] [varchar](3) NULL,
	[welder] [varchar](15) NULL,
	[welder_name] [varchar](30) NULL,
	[process] [varchar](2) NULL,
	[process_title] [varchar](100) NULL,
	[discipline] [varchar](1) NULL,
	[first_qual_date] [datetime] NULL,
	[qual_expiry_date] [datetime] NULL,
	[certificate_num] [varchar](15) NULL,
	[position] [varchar](7) NULL,
	[witness] [varchar](4) NULL,
	[weld_code] [varchar](10) NULL,
	[training_reg_date] [datetime] NULL,
	[training_start_date] [datetime] NULL,
	[ndt_test_date] [datetime] NULL,
	[ndt_status] [varchar](1) NULL,
	[training_end_date] [datetime] NULL,
	[Jcc_no] [varchar](25) NULL,
	[jcc_submit_date] [datetime] NULL,
	[jcc_sign_date] [datetime] NULL,
	[jcc_receive_date] [datetime] NULL,
	[jcc_expiry_date] [datetime] NULL,
	[prod_weld_flag] [varchar](1) NULL,
	[Prod_weld_required] [int] NULL,
	[Prod_weld_completed] [int] NULL,
	[prod_weld_completion_date] [datetime] NULL,
	[rec_source] [varchar](1) NULL,
	[contract_id] [varchar](10) NULL,
	[welder_key] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

