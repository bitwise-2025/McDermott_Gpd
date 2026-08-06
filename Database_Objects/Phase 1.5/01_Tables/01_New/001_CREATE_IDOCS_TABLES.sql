/****** Object:  Table [dbo].[dim_entp_eng_deliverables]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_eng_deliverables]
(
	[dim_entp_eng_del_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_eng_del_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[project_number] [varchar](120) NOT NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](500) NULL,
	[document_title] [varchar](1000) NULL,
	[revision] [varchar](50) NULL,
	[revision_date] [datetime] NULL,
	[holds] [varchar](100) NULL,
	[cwa] [varchar](500) NULL,
	[client_name] [varchar](1000) NULL,
	[type_class] [varchar](50) NULL,
	[document_type] [varchar](1000) NULL,
	[alternate_doc_number] [varchar](500) NULL,
	[facility_plant_unit] [varchar](500) NULL,
	[total_current_progress] [int] NULL,
	[ewp] [varchar](500) NULL,
	[tag_equipment_number] [varchar](300) NULL,
	[approver] [varchar](1000) NULL,
	[checker] [varchar](1000) NULL,
	[reason_for_change] [varchar](1000) NULL,
	[iso_linu] [varchar](1000) NULL,
	[iso_name] [varchar](1000) NULL,
	[superseded_by] [varchar](1000) NULL,
	[office_location] [varchar](500) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_cwp_nk] [bigint] NULL,
	[dim_ent_discipline_nk] [bigint] NULL,
	[dim_ent_document_status_nk] [bigint] NULL,
	[dim_ent_sub_function_nk] [bigint] NULL,
	[idocs_folder] [varchar](500) NULL,
	[idocs_url] [nvarchar](500) NULL,
	[start_activity_id] [varchar](1000) NULL,
	[idc_activity_id] [varchar](1000) NULL,
	[ifi_activity_id] [varchar](1000) NULL,
	[ifr_activity_id] [varchar](1000) NULL,
	[ifa_activity_id] [varchar](1000) NULL,
	[ica_activity_id] [varchar](1000) NULL,
	[ifb_activity_id] [varchar](1000) NULL,
	[tbe_activity_id] [varchar](1000) NULL,
	[ifp_activity_id] [varchar](1000) NULL,
	[afd_activity_id] [varchar](1000) NULL,
	[afc_final_activity_id] [varchar](1000) NULL,
	[proj_defined_01_activity_id] [varchar](1000) NULL,
	[proj_defined_02_activity_id] [varchar](1000) NULL,
	[proj_defined_03_activity_id] [varchar](1000) NULL,
	[proj_defined_04_activity_id] [varchar](1000) NULL,
	[proj_defined_05_activity_id] [varchar](1000) NULL,
	[proj_defined_06_activity_id] [varchar](1000) NULL,
	[proj_defined_07_activity_id] [varchar](1000) NULL,
	[proj_defined_08_activity_id] [varchar](1000) NULL,
	[proj_defined_09_activity_id] [varchar](1000) NULL,
	[proj_defined_10_activity_id] [varchar](1000) NULL,
	[cost_code] [varchar](100) NULL,
	[dim_ent_prime_nk] [bigint] NULL,
	[dim_ent_sub_prime_nk] [bigint] NULL,
	[dim_ent_office_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_a7d3795aea0c45e6900648393ed26710] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_eng_del_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_eng_ven_close_task_register]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_eng_ven_close_task_register]
(
	[dim_entp_eng_ven_close_tr_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_eng_ven_close_tr_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[recipient] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[type_class] [varchar](50) NULL,
	[expedited_version] [int] NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [int] NULL,
	[current_revision] [varchar](50) NULL,
	[user_type] [varchar](50) NULL,
	[company] [varchar](1000) NULL,
	[expediting_start] [datetime] NULL,
	[expediting_due] [datetime] NULL,
	[expediting_forecast] [datetime] NULL,
	[expediting_actual] [datetime] NULL,
	[response_status] [varchar](1000) NULL,
	[client_return_date] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_ent_document_status_nk] [bigint] NULL,
	[expediting_id] [varchar](30) NULL,
 CONSTRAINT [Cnstr_9c370dfee51c46d79559c3c87a9d131f] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_eng_ven_close_tr_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_eng_ven_milestone]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_eng_ven_milestone]
(
	[dim_entp_eng_ven_ms_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_eng_ven_ms_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[milestone_id] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[milestone_order] [varchar](250) NULL,
	[ms_weight] [int] NULL,
	[scheduled_date] [datetime] NULL,
	[forecast_date] [datetime] NULL,
	[actual_date] [datetime] NULL,
	[type_class] [varchar](50) NULL,
	[scheduled_date_org] [datetime] NULL,
	[forecast_date_org] [datetime] NULL,
	[actual_date_org] [datetime] NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_ent_document_milestone_seq_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_f721466b6b724ad5bf68fee425a4cbe7] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_eng_ven_ms_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_eng_ven_open_task_register]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_eng_ven_open_task_register]
(
	[dim_entp_eng_ven_open_tr_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_eng_ven_open_tr_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[recipient] [varchar](100) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[deliverable] [varchar](10) NULL,
	[document_number] [varchar](100) NULL,
	[type_class] [varchar](50) NULL,
	[expedited_version] [int] NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [int] NULL,
	[current_revision] [varchar](50) NULL,
	[user_type] [varchar](50) NULL,
	[company] [varchar](1000) NULL,
	[expediting_start] [datetime] NULL,
	[expediting_due] [datetime] NULL,
	[expediting_forecast] [datetime] NULL,
	[expediting_actual] [datetime] NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_ent_document_status_nk] [bigint] NULL,
	[expediting_id] [varchar](30) NULL,
 CONSTRAINT [Cnstr_021f2774373a4b15b5e9ee88d6b2e447] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_eng_ven_open_tr_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_eng_ven_project_specific_attributes]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_eng_ven_project_specific_attributes]
(
	[dim_entp_eng_ven_proj_specific_att_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_eng_ven_proj_specific_att_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[client_name] [varchar](1000) NULL,
	[deliverable] [varchar](10) NULL,
	[type_class] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[proj_defined_02] [float] NULL,
	[proj_defined_03] [float] NULL,
	[proj_defined_04] [float] NULL,
	[proj_defined_05] [float] NULL,
	[proj_defined_06] [varchar](1000) NULL,
	[proj_defined_07] [varchar](500) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_ent_gac_nk] [bigint] NULL,
	[dim_entp_eng_del_nk] [bigint] NULL,
	[dim_entp_ven_del_nk] [bigint] NULL,
	[proj_defined_08] [varchar](500) NULL,
	[proj_defined_09] [varchar](1000) NULL,
	[proj_defined_10] [varchar](1000) NULL,
	[proj_defined_11] [varchar](1000) NULL,
	[proj_defined_12] [varchar](1000) NULL,
	[proj_defined_13] [varchar](1000) NULL,
	[proj_defined_14] [varchar](1000) NULL,
	[proj_defined_15] [varchar](1000) NULL,
	[proj_defined_01] [varchar](1000) NULL,
 CONSTRAINT [Cnstr_73faa03773e94a55979879d9a55bd4bc] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_eng_ven_proj_specific_att_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_ven_deliverables]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_ven_deliverables]
(
	[dim_entp_ven_del_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_ven_del_nk] [bigint] NOT NULL,
	[document_id] [varchar](50) NULL,
	[project_number] [varchar](120) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[deliverable] [varchar](10) NULL,
	[document_number] [varchar](500) NULL,
	[document_title] [varchar](1000) NULL,
	[revision_number] [varchar](500) NULL,
	[revision_date] [datetime] NULL,
	[client_name] [varchar](1000) NULL,
	[supplier_name] [varchar](1000) NULL,
	[req_po_number] [varchar](100) NULL,
	[type_class] [varchar](50) NULL,
	[supplier_doc_number] [varchar](500) NULL,
	[supplier_revision] [varchar](50) NULL,
	[received_date] [datetime] NULL,
	[return_date] [datetime] NULL,
	[document_class] [varchar](500) NULL,
	[sdr_code] [varchar](300) NULL,
	[total_current_progress] [int] NULL,
	[superseded_by] [varchar](1000) NULL,
	[facility_plant_unit] [varchar](500) NULL,
	[ewp] [varchar](10) NULL,
	[cwa] [varchar](50) NULL,
	[holds] [varchar](50) NULL,
	[tag_equipment_number] [varchar](300) NULL,
	[requisition_engineer] [varchar](100) NULL,
	[reason_for_change] [varchar](1000) NULL,
	[expeditor] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_entp_cwp_nk] [bigint] NULL,
	[dim_ent_discipline_nk] [bigint] NULL,
	[dim_ent_document_status_nk] [bigint] NULL,
	[office_location] [varchar](500) NULL,
	[idocs_folder] [varchar](500) NULL,
	[idocs_url] [nvarchar](500) NULL,
	[supplier_received_activity_id] [varchar](1000) NULL,
	[approved_wcomments_activity_id] [varchar](1000) NULL,
	[approved_activity_id] [varchar](1000) NULL,
	[dim_ent_office_nk] [bigint] NULL,
 CONSTRAINT [Cnstr_b9c42aac25474be89f45900bd44747f0] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_ven_del_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_Closed_Master]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_Closed_Master]
(
	[stage_idoc_ClosedMaster_id] [int] IDENTITY(1,1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[project_id] [varchar](50) NULL,
	[project_name] [varchar](255) NULL,
	[document_id] [varchar](50) NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[document_status] [varchar](50) NULL,
	[type_class] [varchar](30) NULL,
	[expedited_version] [varchar](30) NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [varchar](30) NULL,
	[current_revision] [varchar](100) NULL,
	[user_type] [varchar](100) NULL,
	[recipient] [varchar](500) NULL,
	[company] [varchar](500) NULL,
	[expediting_start] [varchar](30) NULL,
	[expediting_due] [varchar](30) NULL,
	[expediting_forecast] [varchar](30) NULL,
	[expediting_actual] [varchar](30) NULL,
	[response_status] [varchar](1000) NULL,
	[client_return_date] [varchar](100) NULL,
	[expediting_id] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_Doc_Eng]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_Doc_Eng]
(
	[stage_idoc_doc_eng_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_TYPE] [varchar](500) NULL,
	[DOCUMENT_NUMBER] [varchar](500) NULL,
	[ALTERNATE_DOC_NUMBER] [varchar](500) NULL,
	[Title] [varchar](1000) NULL,
	[Issue_State] [varchar](100) NULL,
	[Revision] [varchar](50) NULL,
	[Revision_Date] [varchar](30) NULL,
	[DISCIPLINE] [varchar](300) NULL,
	[FACILITY_PLANT_UNIT] [varchar](500) NULL,
	[OFFICE_LOCATION] [varchar](500) NULL,
	[TOTAL_CURRENT_PROGRESS] [varchar](50) NULL,
	[EWP] [varchar](500) NULL,
	[CWA] [varchar](500) NULL,
	[CWP] [varchar](300) NULL,
	[HOLDS] [varchar](100) NULL,
	[TAG_EQUIPMENT_NUMBER] [varchar](300) NULL,
	[WORK_PACKAGE] [varchar](100) NULL,
	[cost_code] [varchar](100) NULL,
	[approver] [varchar](1000) NULL,
	[checker] [varchar](1000) NULL,
	[Reason_for_change] [varchar](1000) NULL,
	[ISO_LINU] [varchar](1000) NULL,
	[ISO_NAME] [varchar](1000) NULL,
	[SUPERSEDED_BY] [varchar](300) NULL,
	[IDOCS_FOLDER] [varchar](500) NULL,
	[IDOCS_URL] [nvarchar](500) NULL,
	[START_ACTIVITY_ID] [varchar](1000) NULL,
	[IDC_ACTIVITY_ID] [varchar](1000) NULL,
	[IFI_ACTIVITY_ID] [varchar](1000) NULL,
	[IFR_ACTIVITY_ID] [varchar](1000) NULL,
	[IFA_ACTIVITY_ID] [varchar](1000) NULL,
	[ICA_ACTIVITY_ID] [varchar](1000) NULL,
	[IFB_ACTIVITY_ID] [varchar](1000) NULL,
	[TBE_ACTIVITY_ID] [varchar](1000) NULL,
	[IFP_ACTIVITY_ID] [varchar](1000) NULL,
	[AFD_ACTIVITY_ID] [varchar](1000) NULL,
	[AFC_FINAL_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_01_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_02_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_03_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_04_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_05_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_06_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_07_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_08_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_09_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_10_ACTIVITY_ID] [varchar](1000) NULL,
	[dim_ent_office_nk] [bigint] NULL,
	[prime_code] [varchar](20) NULL,
	[sub_prime_code] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_Doc_Ven]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_Doc_Ven]
(
	[stage_idoc_doc_ven_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[SUPPLIER_NAME] [varchar](1000) NULL,
	[REQ_PO_NUMBER] [varchar](100) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](500) NULL,
	[SUPPLIER_DOC_NUMBER] [varchar](500) NULL,
	[Title] [varchar](1000) NULL,
	[Revision_Number] [varchar](500) NULL,
	[SUPPLIER_REVISION] [varchar](50) NULL,
	[Received_Date] [varchar](30) NULL,
	[Return_Date] [varchar](30) NULL,
	[Revision_Date] [varchar](30) NULL,
	[Issue_State] [varchar](100) NULL,
	[DISCIPLINE] [varchar](300) NULL,
	[OFFICE_LOCATION] [varchar](300) NULL,
	[DOCUMENT_CLASS] [varchar](500) NULL,
	[SDR_Code] [varchar](300) NULL,
	[TOTAL_CURRENT_PROGRESS] [varchar](50) NULL,
	[SUPERSEDED_BY] [varchar](300) NULL,
	[FACILITY_PLANT_UNIT] [varchar](500) NULL,
	[EWP] [varchar](10) NULL,
	[CWA] [varchar](100) NULL,
	[CWP] [varchar](300) NULL,
	[HOLDS] [varchar](100) NULL,
	[TAG_EQUIPMENT_NUMBER] [varchar](300) NULL,
	[REQUISITION_ENGINEER] [varchar](100) NULL,
	[Reason_for_change] [varchar](1000) NULL,
	[EXPEDITOR] [varchar](100) NULL,
	[IDOCS_FOLDER] [varchar](500) NULL,
	[IDOCS_URL] [nvarchar](500) NULL,
	[WORK_PACKAGE] [varchar](100) NULL,
	[SUPPLIER_RECEIVED_ACTIVITY_ID] [varchar](1000) NULL,
	[APPROVED_WCOMMENTS_ACTIVITY_ID] [varchar](1000) NULL,
	[APPROVED_ACTIVITY_ID] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_MS_Master]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_MS_Master]
(
	[stage_idoc_MSMaster_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NAME] [varchar](1000) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](100) NULL,
	[TYPE_CLASS] [varchar](100) NULL,
	[MS_ORDER] [varchar](250) NULL,
	[MS_ID] [varchar](100) NULL,
	[MS_GATE_NAME] [varchar](100) NULL,
	[MS_WEIGHT] [varchar](30) NULL,
	[SCHEDULED_DATE] [varchar](30) NULL,
	[SCHEDULED_DATE_ORIGINAL] [varchar](30) NULL,
	[FORECAST_DATE] [varchar](30) NULL,
	[FORECAST_DATE_ORIGINAL] [varchar](30) NULL,
	[ACTUAL_DATE] [varchar](30) NULL,
	[ACTUAL_DATE_ORIGINAL] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_Open_Expedit]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_Open_Expedit]
(
	[stage_idoc_openexp_id] [int] IDENTITY(1,1) NOT NULL,
	[project_number] [varchar](120) NULL,
	[project_id] [varchar](50) NULL,
	[project_name] [varchar](500) NULL,
	[document_id] [varchar](50) NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[document_status] [varchar](100) NULL,
	[type_class] [varchar](30) NULL,
	[expedited_version] [varchar](30) NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [varchar](30) NULL,
	[current_revision] [varchar](50) NULL,
	[user_type] [varchar](50) NULL,
	[recipient] [varchar](500) NULL,
	[company] [varchar](1000) NULL,
	[expediting_start] [varchar](30) NULL,
	[expediting_due] [varchar](30) NULL,
	[expediting_forecast] [varchar](30) NULL,
	[expediting_actual] [varchar](30) NULL,
	[expediting_id] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[iDocs_ProjectSpec]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[iDocs_ProjectSpec]
(
	[stage_idoc_proj_spec_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[DOC_ID] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](100) NULL,
	[PROJ_DEFINED_01] [varchar](1000) NULL,
	[PROJ_DEFINED_02] [float] NULL,
	[PROJ_DEFINED_03] [float] NULL,
	[PROJ_DEFINED_04] [float] NULL,
	[PROJ_DEFINED_05] [float] NULL,
	[PROJ_DEFINED_06] [varchar](1000) NULL,
	[PROJ_DEFINED_07] [varchar](500) NULL,
	[PROJ_DEFINED_08] [varchar](500) NULL,
	[PROJ_DEFINED_09] [varchar](1000) NULL,
	[PROJ_DEFINED_10] [varchar](1000) NULL,
	[PROJ_DEFINED_11] [varchar](1000) NULL,
	[PROJ_DEFINED_12] [varchar](1000) NULL,
	[PROJ_DEFINED_13] [varchar](1000) NULL,
	[PROJ_DEFINED_14] [varchar](1000) NULL,
	[PROJ_DEFINED_15] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_eng_deliv]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_eng_deliv]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_TYPE] [varchar](500) NULL,
	[DOCUMENT_NUMBER] [varchar](500) NULL,
	[ALTERNATE_DOC_NUMBER] [varchar](500) NULL,
	[Title] [varchar](1000) NULL,
	[Issue_State] [varchar](100) NULL,
	[Revision] [varchar](50) NULL,
	[Revision_Date] [varchar](30) NULL,
	[DISCIPLINE] [varchar](300) NULL,
	[FACILITY_PLANT_UNIT] [varchar](500) NULL,
	[OFFICE_LOCATION] [varchar](500) NULL,
	[TOTAL_CURRENT_PROGRESS] [varchar](50) NULL,
	[EWP] [varchar](500) NULL,
	[CWA] [varchar](500) NULL,
	[CWP] [varchar](300) NULL,
	[HOLDS] [varchar](100) NULL,
	[TAG_EQUIPMENT_NUMBER] [varchar](300) NULL,
	[WORK_PACKAGE] [varchar](100) NULL,
	[cost_code] [varchar](100) NULL,
	[approver] [varchar](1000) NULL,
	[checker] [varchar](1000) NULL,
	[Reason_for_change] [varchar](1000) NULL,
	[ISO_LINU] [varchar](1000) NULL,
	[ISO_NAME] [varchar](1000) NULL,
	[SUPERSEDED_BY] [varchar](300) NULL,
	[IDOCS_FOLDER] [varchar](500) NULL,
	[IDOCS_URL] [nvarchar](500) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[START_ACTIVITY_ID] [varchar](1000) NULL,
	[IDC_ACTIVITY_ID] [varchar](1000) NULL,
	[IFI_ACTIVITY_ID] [varchar](1000) NULL,
	[IFR_ACTIVITY_ID] [varchar](1000) NULL,
	[IFA_ACTIVITY_ID] [varchar](1000) NULL,
	[ICA_ACTIVITY_ID] [varchar](1000) NULL,
	[IFB_ACTIVITY_ID] [varchar](1000) NULL,
	[TBE_ACTIVITY_ID] [varchar](1000) NULL,
	[IFP_ACTIVITY_ID] [varchar](1000) NULL,
	[AFD_ACTIVITY_ID] [varchar](1000) NULL,
	[AFC_FINAL_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_01_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_02_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_03_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_04_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_05_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_06_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_07_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_08_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_09_ACTIVITY_ID] [varchar](1000) NULL,
	[PROJ_DEFINED_10_ACTIVITY_ID] [varchar](1000) NULL,
	[dim_ent_office_nk] [bigint] NULL,
	[prime_code] [varchar](20) NULL,
	[sub_prime_code] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_eng_ven_close_task]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_eng_ven_close_task]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[project_number] [varchar](120) NULL,
	[project_id] [varchar](50) NULL,
	[project_name] [varchar](255) NULL,
	[document_id] [varchar](50) NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[document_status] [varchar](50) NULL,
	[type_class] [varchar](30) NULL,
	[expedited_version] [varchar](30) NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [varchar](30) NULL,
	[current_revision] [varchar](100) NULL,
	[user_type] [varchar](100) NULL,
	[recipient] [varchar](500) NULL,
	[company] [varchar](500) NULL,
	[expediting_start] [varchar](30) NULL,
	[expediting_due] [varchar](30) NULL,
	[expediting_forecast] [varchar](30) NULL,
	[expediting_actual] [varchar](30) NULL,
	[response_status] [varchar](1000) NULL,
	[client_return_date] [varchar](100) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[expediting_id] [varchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_eng_ven_milestone]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_eng_ven_milestone]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PROJECT_NAME] [varchar](1000) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](100) NULL,
	[TYPE_CLASS] [varchar](100) NULL,
	[MS_ORDER] [varchar](250) NULL,
	[MS_ID] [varchar](100) NULL,
	[MS_GATE_NAME] [varchar](100) NULL,
	[MS_WEIGHT] [varchar](30) NULL,
	[SCHEDULED_DATE] [varchar](30) NULL,
	[SCHEDULED_DATE_ORIGINAL] [varchar](30) NULL,
	[FORECAST_DATE] [varchar](30) NULL,
	[FORECAST_DATE_ORIGINAL] [varchar](30) NULL,
	[ACTUAL_DATE] [varchar](30) NULL,
	[ACTUAL_DATE_ORIGINAL] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_eng_ven_open_task]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_eng_ven_open_task]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[project_number] [varchar](120) NULL,
	[project_id] [varchar](50) NULL,
	[project_name] [varchar](500) NULL,
	[document_id] [varchar](50) NULL,
	[deliverable] [varchar](50) NULL,
	[document_number] [varchar](100) NULL,
	[document_status] [varchar](100) NULL,
	[type_class] [varchar](30) NULL,
	[expedited_version] [varchar](30) NULL,
	[expedited_revision] [varchar](50) NULL,
	[current_version] [varchar](30) NULL,
	[current_revision] [varchar](50) NULL,
	[user_type] [varchar](50) NULL,
	[recipient] [varchar](500) NULL,
	[company] [varchar](1000) NULL,
	[expediting_start] [varchar](30) NULL,
	[expediting_due] [varchar](30) NULL,
	[expediting_forecast] [varchar](30) NULL,
	[expediting_actual] [varchar](30) NULL,
	[expediting_id] [varchar](30) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_eng_ven_projspec]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_eng_ven_projspec]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[DOC_ID] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](100) NULL,
	[PROJ_DEFINED_01] [varchar](1000) NULL,
	[PROJ_DEFINED_02] [float] NULL,
	[PROJ_DEFINED_03] [float] NULL,
	[PROJ_DEFINED_04] [float] NULL,
	[PROJ_DEFINED_05] [float] NULL,
	[PROJ_DEFINED_06] [varchar](1000) NULL,
	[PROJ_DEFINED_07] [varchar](500) NULL,
	[PROJ_DEFINED_08] [varchar](500) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[PROJ_DEFINED_09] [varchar](1000) NULL,
	[PROJ_DEFINED_10] [varchar](1000) NULL,
	[PROJ_DEFINED_11] [varchar](1000) NULL,
	[PROJ_DEFINED_12] [varchar](1000) NULL,
	[PROJ_DEFINED_13] [varchar](1000) NULL,
	[PROJ_DEFINED_14] [varchar](1000) NULL,
	[PROJ_DEFINED_15] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_ven_deliv]    Script Date: 5/9/2022 12:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_ven_deliv]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[PROJECT_NAME] [varchar](500) NULL,
	[PROJECT_NUMBER] [varchar](120) NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[CLIENT_NAME] [varchar](1000) NULL,
	[SUPPLIER_NAME] [varchar](1000) NULL,
	[REQ_PO_NUMBER] [varchar](100) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DELIVERABLE] [varchar](50) NULL,
	[TYPE_CLASS] [varchar](50) NULL,
	[DOCUMENT_NUMBER] [varchar](500) NULL,
	[SUPPLIER_DOC_NUMBER] [varchar](500) NULL,
	[Title] [varchar](1000) NULL,
	[Revision_Number] [varchar](500) NULL,
	[SUPPLIER_REVISION] [varchar](50) NULL,
	[Received_Date] [varchar](30) NULL,
	[Return_Date] [varchar](30) NULL,
	[Revision_Date] [varchar](30) NULL,
	[Issue_State] [varchar](100) NULL,
	[DISCIPLINE] [varchar](300) NULL,
	[OFFICE_LOCATION] [varchar](500) NULL,
	[DOCUMENT_CLASS] [varchar](500) NULL,
	[SDR_Code] [varchar](300) NULL,
	[TOTAL_CURRENT_PROGRESS] [varchar](50) NULL,
	[SUPERSEDED_BY] [varchar](300) NULL,
	[FACILITY_PLANT_UNIT] [varchar](500) NULL,
	[EWP] [varchar](10) NULL,
	[CWA] [varchar](100) NULL,
	[CWP] [varchar](300) NULL,
	[HOLDS] [varchar](100) NULL,
	[TAG_EQUIPMENT_NUMBER] [varchar](300) NULL,
	[REQUISITION_ENGINEER] [varchar](100) NULL,
	[Reason_for_change] [varchar](1000) NULL,
	[EXPEDITOR] [varchar](100) NULL,
	[IDOCS_FOLDER] [varchar](500) NULL,
	[IDOCS_URL] [nvarchar](500) NULL,
	[WORK_PACKAGE] [varchar](100) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[SUPPLIER_RECEIVED_ACTIVITY_ID] [varchar](1000) NULL,
	[APPROVED_WCOMMENTS_ACTIVITY_ID] [varchar](1000) NULL,
	[APPROVED_ACTIVITY_ID] [varchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Index [ind1]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_eng_ven_close_task_register]
(
	[dim_entp_eng_ven_close_tr_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_eng_ven_close_task_register]
(
	[dim_entp_eng_ven_close_tr_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_eng_ven_close_task_register]
(
	[document_id] ASC,
	[recipient] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_eng_ven_close_task_register]
(
	[document_id] ASC,
	[recipient] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_eng_ven_milestone]
(
	[dim_entp_eng_ven_ms_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_eng_ven_milestone]
(
	[dim_entp_eng_ven_ms_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_eng_ven_milestone]
(
	[document_id] ASC,
	[milestone_id] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_eng_ven_milestone]
(
	[document_id] ASC,
	[milestone_id] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_eng_ven_open_task_register]
(
	[dim_entp_eng_ven_open_tr_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_eng_ven_open_task_register]
(
	[dim_entp_eng_ven_open_tr_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_eng_ven_open_task_register]
(
	[document_id] ASC,
	[recipient] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_eng_ven_open_task_register]
(
	[document_id] ASC,
	[recipient] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_eng_ven_project_specific_attributes]
(
	[dim_entp_eng_ven_proj_specific_att_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_eng_ven_project_specific_attributes]
(
	[dim_entp_eng_ven_proj_specific_att_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_eng_ven_project_specific_attributes]
(
	[document_id] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_eng_ven_project_specific_attributes]
(
	[document_id] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind1]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[dim_entp_ven_deliverables]
(
	[dim_entp_ven_del_sk] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[dim_entp_ven_deliverables]
(
	[dim_entp_ven_del_nk] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_ven_deliverables]
(
	[document_id] ASC,
	[project_number] ASC,
	[start_date] ASC,
	[end_date] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind4]    Script Date: 5/9/2022 12:17:52 AM ******/
CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_ven_deliverables]
(
	[document_id] ASC,
	[project_number] ASC,
	[active] ASC
)WITH (DROP_EXISTING = OFF)
GO
