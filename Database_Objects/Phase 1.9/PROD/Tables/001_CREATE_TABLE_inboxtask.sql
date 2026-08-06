CREATE TABLE [dbo].[dim_entp_plm_inboxtask]
(
	[dim_entp_plm_inboxtask_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_plm_inboxtask_nk] [bigint] NOT NULL,
	[id] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[project_number] [varchar](100) NULL,
	[project] [varchar](100) NULL,
	[document_id] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL,
	[discipline] [varchar](1000) NULL,
	[dim_entp_discipline_nk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
	[json_attribute_for_view] [varchar](8000) NULL,
 CONSTRAINT [Constr_dim_entp_plm_inboxtask_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_plm_inboxtask_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [gpd].[NCSA_PLM_Inboxtask]
(
	[stage_plm_inboxtask_id] [int] IDENTITY(1,1) NOT NULL,
	[id] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[project] [varchar](100) NULL,
	[document_id] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL,
	[discipline] [varchar](1000) NULL,
	[dim_entp_discipline_nk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [gpd].[reprocess_dim_entp_plm_inboxtask]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[hash_code] [varchar](4000) NULL,
	[created_date_time] [datetime] NULL,
	[id] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[project] [varchar](100) NULL,
	[document_id] [varchar](100) NULL,
	[json_attribute] [varchar](8000) NULL,
	[discipline] [varchar](1000) NULL,
	[dim_entp_discipline_nk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
	[rk_failure_info] [varchar](4000) NULL,
	[json_attribute_for_view] [varchar](8000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

