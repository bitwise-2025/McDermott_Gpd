/****** Object:  Table [dbo].[dim_entp_commissioning_punch_items]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_punch_items]
(
	[dim_entp_commissioning_punch_items_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_punch_items_nk] [bigint] NOT NULL,
	[punch_item] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[punch_item_description] [varchar](1000) NULL,
	[discipline] [varchar](100) NULL,
	[category] [varchar](100) NULL,
	[raised_by] [varchar](100) NULL,
	[raised_date] [datetime] NULL,
	[action_by] [varchar](100) NULL,
	[notes] [varchar](1000) NULL,
	[status] [varchar](100) NULL,
	[cleared_by] [varchar](100) NULL,
	[cleared_date] [datetime] NULL,
	[verfied_by] [varchar](100) NULL,
	[verified_date] [datetime] NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_ent_document_status_nk] [bigint] NULL,
	[dim_entp_commissioning_sub_system_nk] [bigint] NULL,
	[dim_entp_commissioning_tags_nk] [bigint] NULL,
	[project] [varchar](30) NULL,
 CONSTRAINT [Cnstr_63bb409e3e814ac99d0f763a38619f43] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_punch_items_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_sheets]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_sheets]
(
	[dim_entp_commissioning_sheets_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_sheets_nk] [bigint] NULL,
	[sheet] [varchar](100) NULL,
	[sheet_type] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[sheet_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[dim_ent_discipline_nk] [bigint] NULL,
	[dim_entp_commissioning_sub_system_nk] [bigint] NULL,
	[dim_entp_commissioning_tags_nk] [bigint] NULL,
	[discipline] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_aeed016df0d043a2b80beec1f5b00075] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_sheets_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_sheets_transactions]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_sheets_transactions]
(
	[dim_entp_commissioning_sheets_transactions_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_sheets_transactions_nk] [bigint] NULL,
	[sheet] [varchar](100) NULL,
	[sheet_status] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[type] [varchar](100) NULL,
	[ok] [varchar](10) NULL,
	[approver] [varchar](100) NULL,
	[status_date] [datetime] NULL,
	[barcode] [varchar](100) NULL,
	[phase_number] [varchar](100) NULL,
	[dim_ent_discipline_nk] [bigint] NULL,
	[dim_entp_commissioning_sheets_nk] [bigint] NULL,
	[tag_number] [varchar](100) NULL,
	[system_number] [varchar](100) NULL,
	[sub_system_number] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[dim_entp_commissioning_tags_nk] [bigint] NULL,
	[dim_entp_commissioning_system_nk] [bigint] NULL,
	[dim_entp_commissioning_sub_system_nk] [bigint] NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[discipline] [varchar](100) NULL,
 CONSTRAINT [Cnstr_e753d25ba6e44d6aae6235075f9b2aba] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_sheets_transactions_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_ss_certification_status]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_ss_certification_status]
(
	[dim_entp_commissioning_ss_certification_status_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_ss_certification_status_nk] [bigint] NOT NULL,
	[sub_system] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[json_attribute] [varchar](8000) NULL,
	[project] [varchar](20) NULL,
	[dim_entp_project_nk] [int] NULL,
	[dim_entp_commissioning_sub_system_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_ff00a8afb6ba47c487d29bd93450a965] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_ss_certification_status_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_sub_system]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_sub_system]
(
	[dim_entp_commissioning_sub_system_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_sub_system_nk] [bigint] NULL,
	[sub_system_number] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[sub_system_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_commissioning_system_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_10a4ac47da31499f901bbbdb08366492] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_sub_system_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_system]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_system]
(
	[dim_entp_commissioning_system_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_system_nk] [bigint] NULL,
	[system_number] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[system_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_26ac22f761dd45989f122482e7688835] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_system_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_commissioning_tags]    Script Date: 7/25/2022 1:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_commissioning_tags]
(
	[dim_entp_commissioning_tags_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_commissioning_tags_nk] [bigint] NULL,
	[tag_number] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[tag_description] [varchar](1000) NULL,
	[tag_type] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_bca6bb37c8c1446f87ac7886e1a8af13] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_commissioning_tags_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_commissioning_punch_items]
(
	[dim_entp_commissioning_punch_items_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_commissioning_punch_items]
(
	[dim_entp_commissioning_punch_items_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_commissioning_punch_items]
(
	[punch_item] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_commissioning_punch_items]
(
	[punch_item] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_commissioning_sheets_transactions]
(
	[dim_entp_commissioning_sheets_transactions_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_commissioning_sheets_transactions]
(
	[dim_entp_commissioning_sheets_transactions_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_commissioning_sheets_transactions]
(
	[sheet] ASC,
	[sheet_status] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_commissioning_sub_system]
(
	[dim_entp_commissioning_sub_system_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_commissioning_sub_system]
(
	[dim_entp_commissioning_sub_system_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_commissioning_sub_system]
(
	[sub_system_number] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_commissioning_system]
(
	[dim_entp_commissioning_system_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_commissioning_system]
(
	[dim_entp_commissioning_system_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_commissioning_system]
(
	[system_number] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_commissioning_tags]
(
	[dim_entp_commissioning_tags_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_commissioning_tags]
(
	[dim_entp_commissioning_tags_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 7/25/2022 1:53:10 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_commissioning_tags]
(
	[tag_number] ASC
)WITH (DROP_EXISTING = OFF)
GO
