/****** Object:  Table [gpd].[P6_engr_manhrs_histogram]    Script Date: 3/2/2022 5:16:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[P6_engr_manhrs_histogram]
(
	[stage_p6_hist_id] [int] IDENTITY(1,1) NOT NULL,
	[project] [varchar](100) NOT NULL,
	[Office_Code] [varchar](100) NULL,
	[Data_sub_class_code] [varchar](512) NULL,
	[Prime] [varchar](100) NULL,
	[Sub_Prime] [varchar](100) NULL,
	[SFN] [varchar](100) NULL,
	[Activity_Code] [varchar](100) NULL,
	[Discipline_code] [varchar](100) NULL,
	[Period] [varchar](100) NULL,
	[units] [varchar](100) NULL,
	[fx] [nvarchar](100) NULL,
	[data_class] [nvarchar](100) NULL,
	[sub_source] [nvarchar](100) NULL,
	[source] [nvarchar](100) NULL,
	[PSRL1Code] [varchar](20) NULL, 
	[PSRL2Code] [varchar](20) NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
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
	[load_date_time] [datetime] NULL,
	[parent_rssk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_P6_engr_manhrs_histogram]    Script Date: 3/2/2022 5:16:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_P6_engr_manhrs_histogram]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[project] [varchar](100) NOT NULL,
	[Office_Code] [varchar](100) NULL,
	[Data_sub_class_code] [varchar](512) NULL,
	[Prime] [varchar](100) NULL,
	[Sub_Prime] [varchar](100) NULL,
	[SFN] [varchar](100) NULL,
	[Activity_Code] [varchar](100) NULL,
	[Discipline_code] [varchar](100) NULL,
	[Period] [varchar](100) NULL,
	[units] [varchar](100) NULL,
	[fx] [nvarchar](100) NULL,
	[data_class] [nvarchar](100) NULL,
	[sub_source] [nvarchar](100) NULL,
	[source] [nvarchar](100) NULL,
	[PSRL1Code] [varchar](20) NULL, 
	[PSRL2Code] [varchar](20) NULL,
	[dim_entp_phase_sk] [int] NULL,
	[dim_entp_phase_nk] [int] NULL,
	[dim_entp_project_sk] [int] NULL,
	[dim_entp_project_nk] [int] NULL,
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
	[load_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[parent_rssk] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
