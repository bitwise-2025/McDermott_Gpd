IF	OBJECT_ID('[dbo].[dim_ent_supplier]','U') IS NOT NULL
DROP TABLE [dbo].[dim_ent_supplier]
GO


/****** Object:  Table [dbo].[dim_ent_supplier]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_supplier]
(
	[dim_ent_supplier_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_supplier_nk] [int] NOT NULL,
	[supplier_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[supplier_name] [varchar](1000) NULL,
	[dim_ent_country_nk] [int] NULL,
 CONSTRAINT [Cnstr_ca019e0e1a2e4b2cbbc1403083af1391] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_supplier_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_expediting_level]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_expediting_level]
(
	[dim_entp_expediting_level_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_expediting_level_nk] [int] NOT NULL,
	[expediting_level] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[expediting_level_desc] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_c9b058f6064a4a44b0e54c628ea0e435] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_expediting_level_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_freight_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_freight_detail]
(
	[dim_entp_freight_detail_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_freight_detail_nk] [bigint] NULL,
	[item_ship_id] [varchar](100) NULL,
	[sli_no] [varchar](100) NULL,
	[awb_number] [varchar](100) NULL,
	[voy_flt_num] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
 CONSTRAINT [Cnstr_freight_detail_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_freight_detail_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_inspection_level]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_inspection_level]
(
	[dim_entp_inspection_level_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_inspection_level_nk] [int] NOT NULL,
	[inspection_level] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[inspection_level_desc] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_c41598b63d62446598e8561639314eb0] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_inspection_level_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_item]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_item]
(
	[dim_entp_item_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_item_nk] [int] NOT NULL,
	[ident_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[item_description] [varchar](8000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_c0d4cf25e6c54701a7b49f7a3552aeae] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_item_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_mrr_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_mrr_detail]
(
	[dim_entp_mrr_detail_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_mrr_detail_nk] [bigint] NULL,
	[item_ship_id] [varchar](100) NULL,
	[mrr_number] [varchar](100) NULL,
	[mrr_created_date] [datetime] NULL,
	[mrr_posted_date] [datetime] NULL,
	[actual_recv_onsite_or_whs_date] [datetime] NULL,
	[mrr_quantity] [float] NULL,
	[project_number] [varchar](100) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
 CONSTRAINT [Cnstr_mrr_detail_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_mrr_detail_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_osd_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_osd_detail]
(
	[dim_entp_osd_detail_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_osd_detail_nk] [bigint] NULL,
	[osd_number] [varchar](100) NULL,
	[osd_type] [varchar](100) NULL,
	[osd_closed_date] [datetime] NULL,
	[osd_created_date] [datetime] NULL,
	[osd_qty] [float] NULL,
	[osd_request_action] [varchar](1000) NULL,
	[osd_action_taken] [varchar](8000) NULL,
	[balance_rn_qty] [float] NULL,
	[balance_mrr_qty] [float] NULL,
	[project_number] [varchar](100) NULL,
	[dim_entp_mrr_detail_nk] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[item_ship_id] [varchar](100) NULL,
 CONSTRAINT [Cnstr_osd_detail_sk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_osd_detail_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_po]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_po]
(
	[dim_entp_po_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_po_nk] [int] NOT NULL,
	[po_number] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[package_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_316b7cd8f02f4ad1938e83cc5a806cfb] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_po_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_po_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_po_detail]
(
	[dim_entp_po_detail_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_po_detail_nk] [bigint] NULL,
	[po_line_item] [int] NULL,
	[po_item_sub] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[po_qty] [float] NULL,
	[requisition] [varchar](3000) NULL,
	[ident_code] [varchar](3000) NULL,
	[tag_number] [varchar](100) NULL,
	[uom] [varchar](10) NULL,
	[expediting_level] [varchar](100) NULL,
	[inspection_level] [varchar](100) NULL,
	[item_ship_pos] [float] NULL,
	[item_ship_sub] [float] NULL,
	[item_shipment_qty] [float] NULL,
	[item_ship_weight] [float] NULL,
	[total_ish_weight] [float] NULL,
	[weight_unit] [varchar](50) NULL,
	[contractual_promise_dd] [datetime] NULL,
	[incoterm] [varchar](50) NULL,
	[incoterm_delivery_place] [varchar](300) NULL,
	[routing_method] [varchar](300) NULL,
	[transit_clearance_days] [int] NULL,
	[forecasted_delivery_date] [datetime] NULL,
	[pred_on_site_date] [datetime] NULL,
	[arvl_on_site_forecasted_date] [datetime] NULL,
	[actual_recv_onsite_or_whs_date] [datetime] NULL,
	[delivery_designation] [varchar](300) NULL,
	[ros_date] [datetime] NULL,
	[ros_float] [float] NULL,
	[irc_no] [varchar](100) NULL,
	[irc_qty] [float] NULL,
	[irc_approved_date] [datetime] NULL,
	[release_note_no] [varchar](1000) NULL,
	[release_note_qty] [float] NULL,
	[release_note_appr_date] [datetime] NULL,
	[balance_irc_qty] [float] NULL,
	[sli_no] [varchar](50) NULL,
	[awb_number] [varchar](100) NULL,
	[voy_flt_num] [varchar](50) NULL,
	[etd_date] [datetime] NULL,
	[atd_date] [datetime] NULL,
	[eta_date] [datetime] NULL,
	[ata_date] [datetime] NULL,
	[mrr_number] [varchar](100) NULL,
	[mrr_created_date] [datetime] NULL,
	[mrr_posted_date] [datetime] NULL,
	[mrr_quantity] [float] NULL,
	[osd_number] [varchar](100) NULL,
	[osd_created_date] [datetime] NULL,
	[osd_qty] [float] NULL,
	[osd_type] [varchar](100) NULL,
	[osd_request_action] [varchar](1000) NULL,
	[osd_action_taken] [varchar](8000) NULL,
	[osd_closed_date] [datetime] NULL,
	[balance_rn_qty] [float] NULL,
	[balance_mrr_qty] [float] NULL,
	[buyer_usr_id] [varchar](100) NULL,
	[buyer] [varchar](100) NULL,
	[expediter_usr_id] [varchar](100) NULL,
	[expediter] [varchar](100) NULL,
	[package_manager] [varchar](100) NULL,
	[item_comment] [varchar](1000) NULL,
	[header_comment] [varchar](8000) NULL,
	[agent_1_lt_comment] [varchar](8000) NULL,
	[agent_2_lt_comment] [varchar](8000) NULL,
	[the_color] [varchar](100) NULL,
	[is_master_tag] [varchar](100) NULL,
	[currency] [varchar](100) NULL,
	[total_price] [float] NULL,
	[dim_entp_po_header_nk] [int] NULL,
	[dim_ent_uom_nk] [int] NULL,
	[dim_entp_inspection_level_nk] [int] NULL,
	[dim_entp_expediting_level_nk] [int] NULL,
	[dim_entp_requisition_nk] [int] NULL,
	[dim_entp_item_nk] [int] NULL,
	[dim_ent_currency_iso_nk] [int] NULL,
	[item_ship_id] [varchar](20) NULL,
 CONSTRAINT [Cnstr_0bb2383caa364454a96c80a0e7ddd8ea] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_po_detail_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_po_header]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_po_header]
(
	[dim_entp_po_header_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_po_header_nk] [bigint] NULL,
	[po_number] [varchar](100) NULL,
	[po_revision] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[hash_code] [varchar](5000) NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NULL,
	[project_id] [varchar](100) NULL,
	[po_description] [varchar](1000) NULL,
	[po_issue_date] [datetime] NULL,
	[po_status] [varchar](100) NULL,
	[po_date] [datetime] NULL,
	[supplier_name] [varchar](1000) NULL,
	[discipline] [varchar](100) NULL,
	[dim_entp_project_nk] [bigint] NULL,
	[dim_ent_supplier_nk] [bigint] NULL,
	[dim_ent_discipline_nk] [bigint] NULL,
	[requisition] [varchar](200) NULL,
 CONSTRAINT [Cnstr_083a3e73e37d4fff8fc7bc2dcc83cd81] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_po_header_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[dim_entp_requisition]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_entp_requisition]
(
	[dim_entp_requisition_sk] [bigint] IDENTITY(1,1) NOT NULL,
	[dim_entp_requisition_nk] [int] NOT NULL,
	[requisition_code] [varchar](100) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[requisition_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
 CONSTRAINT [Cnstr_23c83911c89d401d805e0d30af2accf5] PRIMARY KEY NONCLUSTERED 
	(
		[dim_entp_requisition_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]
(
	[stage_smat_po_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJ_ID] [varchar](30) NOT NULL,
	[DISCIPLINE] [varchar](100) NULL,
	[REQUISITION_NO] [varchar](100) NULL,
	[REQUISITION_DESC] [varchar](500) NULL,
	[PO_NUMBER] [varchar](100) NULL,
	[PO_REVISION] [varchar](20) NULL,
	[PO_DATE] [varchar](30) NULL,
	[PO_ISSUE_DATE] [varchar](30) NULL,
	[PO_STATUS] [varchar](100) NULL,
	[SUPPLIER_CODE] [varchar](30) NULL,
	[SUPPLIER_NAME] [varchar](200) NULL,
	[SUPPLIER_COUNTRY] [varchar](100) NULL,
	[MANUFACTURING_LOCATION] [varchar](100) NULL,
	[PACKAGE_DESCRIPTION] [varchar](200) NULL,
	[ITEM_DESCRIPTION] [varchar](8000) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[PO_LINE_ITEM] [varchar](200) NULL,
	[PO_ITEM_SUB] [varchar](200) NULL,
	[PO_QTY] [varchar](30) NULL,
	[UOM] [varchar](100) NULL,
	[TOTAL_PRICE] [varchar](100) NULL,
	[CURRENCY] [varchar](100) NULL,
	[EXPEDITING_LEVEL] [varchar](100) NULL,
	[INSPECTION_LEVEL] [varchar](100) NULL,
	[EXPEDITING_LEVEL_DESC] [varchar](200) NULL,
	[INSPECTION_LEVEL_DESC] [varchar](200) NULL,
	[ITEM_SHIP_POS] [varchar](30) NULL,
	[ITEM_SHIP_SUB] [varchar](30) NULL,
	[ITEM_SHIPMENT_QTY] [varchar](30) NULL,
	[ITEM_SHIP_WEIGHT] [varchar](30) NULL,
	[TOTAL_ISH_WEIGHT] [varchar](100) NULL,
	[WEIGHT_UNIT] [varchar](100) NULL,
	[CONTRACTUAL_PROMISE_DD] [varchar](30) NULL,
	[INCOTERM] [varchar](30) NULL,
	[DELIVERY_PLACE] [varchar](100) NULL,
	[ROUTING_METHOD] [varchar](300) NULL,
	[TRANSIT_CLEARANCE_DAYS] [varchar](30) NULL,
	[FORECASTED_DELIVERY_DATE] [varchar](30) NULL,
	[PRED_ON_SITE_DATE] [varchar](30) NULL,
	[ARVL_ON_SITE_FORECASTED_DATE] [varchar](30) NULL,
	[ACTUAL_RECV_ONSITE_OR_WHS_DATE] [varchar](30) NULL,
	[DELIVERY_DESIGNATION] [varchar](300) NULL,
	[ROS_DATE] [varchar](40) NULL,
	[FLOAT_DAYS] [varchar](40) NULL,
	[IRC_NO] [varchar](100) NULL,
	[IRC_QTY] [varchar](40) NULL,
	[IRC_APPROVED_DATE] [varchar](40) NULL,
	[RELEASE_NOTE_NO] [varchar](200) NULL,
	[RELEASE_NOTE_QTY] [varchar](30) NULL,
	[RELEASE_NOTE_APPR_DATE] [varchar](30) NULL,
	[BALANCE_IRC_QTY] [varchar](30) NULL,
	[SLI_NO] [varchar](100) NULL,
	[AWB_NUMBER] [varchar](100) NULL,
	[VOY_FLT_NUM] [varchar](100) NULL,
	[ETD_DATE] [varchar](30) NULL,
	[ATD_DATE] [varchar](30) NULL,
	[ETA_DATE] [varchar](30) NULL,
	[ATA_DATE] [varchar](30) NULL,
	[MRR_NUMBER] [varchar](100) NULL,
	[MRR_CREATED_DATE] [varchar](30) NULL,
	[MRR_POSTED_DATE] [varchar](30) NULL,
	[MRR_QUANTITY] [varchar](30) NULL,
	[OSD_NUMBER] [varchar](100) NULL,
	[OSD_CREATED_DATE] [varchar](30) NULL,
	[OSD_QTY] [varchar](30) NULL,
	[OSD_TYPE] [varchar](100) NULL,
	[OSD_REQUEST_ACTION] [varchar](800) NULL,
	[OSD_ACTION_TAKEN] [varchar](8000) NULL,
	[OSD_CLOSED_DATE] [varchar](30) NULL,
	[BALANCE_RN_QTY] [varchar](30) NULL,
	[BALANCE_MRR_QTY] [varchar](30) NULL,
	[BUYER] [varchar](100) NULL,
	[EXPEDITOR] [varchar](100) NULL,
	[BUYER_USR_ID] [varchar](100) NULL,
	[EXPEDITOR_USR_ID] [varchar](100) NULL,
	[PACKAGE_MANAGER] [varchar](100) NULL,
	[ITEM_COMMENT] [varchar](1000) NULL,
	[HEADER_COMMENT] [varchar](8000) NULL,
	[AGENT_1_LT_COMMENT] [varchar](8000) NULL,
	[AGENT_2_LT_COMMENT] [varchar](8000) NULL,
	[THE_COLOR] [varchar](100) NULL,
	[IS_MASTER_TAG] [varchar](100) NULL,
	[LMOD] [varchar](30) NULL,
	[dim_ent_country_nk] [int] NULL,
	[project_number] [varchar](100) NULL,
	[ITEM_SHIP_ID] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_ent_supplier_SMAT]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_ent_supplier_SMAT]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[supplier_code] [varchar](100) NOT NULL,
	[supplier_name] [varchar](1000) NULL,
	[supplier_country] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_expediting_level]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_expediting_level]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[expediting_level] [varchar](100) NULL,
	[expediting_level_desc] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_freight_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_freight_detail]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[ITEM_SHIP_ID] [varchar](100) NULL,
	[SLI_NO] [varchar](100) NULL,
	[AWB_NUMBER] [varchar](100) NULL,
	[VOY_FLT_NUM] [varchar](100) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_inspection_level]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_inspection_level]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[inspection_level] [varchar](100) NULL,
	[inspection_level_desc] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_item]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_item]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[ident_code] [varchar](100) NOT NULL,
	[item_description] [varchar](8000) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_mrr_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_mrr_detail]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[item_ship_id] [varchar](100) NULL,
	[MRR_NUMBER] [varchar](100) NULL,
	[MRR_CREATED_DATE] [varchar](30) NULL,
	[ACTUAL_RECV_ONSITE_OR_WHS_DATE] [varchar](30) NULL,
	[MRR_POSTED_DATE] [varchar](30) NULL,
	[MRR_QUANTITY] [varchar](30) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_osd_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_osd_detail]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[ITEM_SHIP_ID] [varchar](100) NULL,
	[OSD_NUMBER] [varchar](100) NULL,
	[MRR_NUMBER] [varchar](100) NULL,
	[OSD_CREATED_DATE] [varchar](30) NULL,
	[OSD_QTY] [varchar](30) NULL,
	[OSD_TYPE] [varchar](100) NULL,
	[OSD_REQUEST_ACTION] [varchar](800) NULL,
	[OSD_ACTION_TAKEN] [varchar](8000) NULL,
	[OSD_CLOSED_DATE] [varchar](30) NULL,
	[BALANCE_RN_QTY] [float] NULL,
	[BALANCE_MRR_QTY] [float] NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_po]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_po]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[po_number] [varchar](100) NOT NULL,
	[package_description] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_po_detail]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_po_detail]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[po_line_item] [int] NOT NULL,
	[po_item_sub] [int] NOT NULL,
	[po_qty] [float] NULL,
	[tag_number] [varchar](100) NULL,
	[uom] [varchar](100) NULL,
	[expediting_level] [varchar](100) NULL,
	[inspection_level] [varchar](100) NULL,
	[item_ship_pos] [float] NULL,
	[item_ship_sub] [float] NULL,
	[item_shipment_qty] [float] NULL,
	[item_ship_weight] [float] NULL,
	[total_ish_weight] [float] NULL,
	[weight_unit] [varchar](50) NULL,
	[contractual_promise_dd] [datetime] NULL,
	[incoterm] [varchar](50) NULL,
	[delivery_place] [varchar](300) NULL,
	[routing_method] [varchar](300) NULL,
	[transit_clearance_days] [int] NULL,
	[forecasted_delivery_date] [datetime] NULL,
	[pred_on_site_date] [datetime] NULL,
	[arvl_on_site_forecasted_date] [datetime] NULL,
	[actual_recv_onsite_or_whs_date] [datetime] NULL,
	[delivery_designation] [varchar](300) NULL,
	[ros_date] [datetime] NULL,
	[float_days] [float] NULL,
	[irc_no] [varchar](100) NULL,
	[irc_qty] [float] NULL,
	[irc_approved_date] [datetime] NULL,
	[release_note_no] [varchar](1000) NULL,
	[release_note_qty] [float] NULL,
	[release_note_appr_date] [datetime] NULL,
	[balance_irc_qty] [float] NULL,
	[sli_no] [varchar](50) NULL,
	[awb_number] [varchar](100) NULL,
	[voy_flt_num] [varchar](50) NULL,
	[etd_date] [datetime] NULL,
	[atd_date] [datetime] NULL,
	[eta_date] [datetime] NULL,
	[ata_date] [datetime] NULL,
	[mrr_number] [varchar](100) NULL,
	[mrr_created_date] [datetime] NULL,
	[mrr_posted_date] [datetime] NULL,
	[mrr_quantity] [float] NULL,
	[osd_number] [varchar](100) NULL,
	[osd_created_date] [datetime] NULL,
	[osd_qty] [float] NULL,
	[osd_type] [varchar](100) NULL,
	[osd_request_action] [varchar](1000) NULL,
	[osd_action_taken] [varchar](8000) NULL,
	[osd_closed_date] [datetime] NULL,
	[balance_rn_qty] [float] NULL,
	[balance_mrr_qty] [float] NULL,
	[buyer_usr_id] [varchar](100) NULL,
	[buyer] [varchar](100) NULL,
	[expeditor_usr_id] [varchar](100) NULL,
	[expeditor] [varchar](100) NULL,
	[package_manager] [varchar](100) NULL,
	[item_comment] [varchar](1000) NULL,
	[header_comment] [varchar](8000) NULL,
	[agent_1_lt_comment] [varchar](8000) NULL,
	[agent_2_lt_comment] [varchar](8000) NULL,
	[the_color] [varchar](100) NULL,
	[is_master_tag] [varchar](100) NULL,
	[currency] [varchar](100) NULL,
	[total_price] [float] NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[requisition_no] [varchar](100) NULL,
	[ident_code] [varchar](200) NULL,
	[po_number] [varchar](50) NULL,
	[po_revision] [varchar](20) NULL,
	[item_ship_id] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_po_header]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_po_header]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[po_number] [varchar](200) NOT NULL,
	[po_revision] [int] NOT NULL,
	[package_description] [varchar](3000) NULL,
	[po_issue_date] [datetime] NULL,
	[po_status] [varchar](200) NULL,
	[po_date] [datetime] NULL,
	[supplier_name] [varchar](1000) NULL,
	[supplier_code] [varchar](30) NULL,
	[discipline] [varchar](200) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[REQUISITION_NO] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_dim_entp_requisition]    Script Date: 6/24/2022 2:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gpd].[reprocess_dim_entp_requisition]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[requisition_no] [varchar](100) NOT NULL,
	[requisition_desc] [varchar](1000) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [gpd].[reprocess_NCSA_SMAT_PO_EXTRACT_NEW]    Script Date: 7/25/2022 2:40:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[reprocess_NCSA_SMAT_PO_EXTRACT_NEW]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[PROJ_ID] [varchar](30) NOT NULL,
	[DISCIPLINE] [varchar](100) NULL,
	[REQUISITION_NO] [varchar](100) NULL,
	[REQUISITION_DESC] [varchar](500) NULL,
	[PO_NUMBER] [varchar](100) NULL,
	[PO_REVISION] [varchar](20) NULL,
	[PO_DATE] [varchar](30) NULL,
	[PO_ISSUE_DATE] [varchar](30) NULL,
	[PO_STATUS] [varchar](100) NULL,
	[SUPPLIER_CODE] [varchar](30) NULL,
	[SUPPLIER_NAME] [varchar](200) NULL,
	[SUPPLIER_COUNTRY] [varchar](100) NULL,
	[MANUFACTURING_LOCATION] [varchar](100) NULL,
	[PACKAGE_DESCRIPTION] [varchar](200) NULL,
	[ITEM_DESCRIPTION] [varchar](8000) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[PO_LINE_ITEM] [varchar](200) NULL,
	[PO_ITEM_SUB] [varchar](200) NULL,
	[PO_QTY] [varchar](30) NULL,
	[UOM] [varchar](100) NULL,
	[TOTAL_PRICE] [varchar](100) NULL,
	[CURRENCY] [varchar](100) NULL,
	[EXPEDITING_LEVEL] [varchar](100) NULL,
	[INSPECTION_LEVEL] [varchar](100) NULL,
	[EXPEDITING_LEVEL_DESC] [varchar](200) NULL,
	[INSPECTION_LEVEL_DESC] [varchar](200) NULL,
	[ITEM_SHIP_POS] [varchar](30) NULL,
	[ITEM_SHIP_SUB] [varchar](30) NULL,
	[ITEM_SHIPMENT_QTY] [varchar](30) NULL,
	[ITEM_SHIP_WEIGHT] [varchar](30) NULL,
	[TOTAL_ISH_WEIGHT] [varchar](100) NULL,
	[WEIGHT_UNIT] [varchar](100) NULL,
	[CONTRACTUAL_PROMISE_DD] [varchar](30) NULL,
	[INCOTERM] [varchar](30) NULL,
	[DELIVERY_PLACE] [varchar](100) NULL,
	[ROUTING_METHOD] [varchar](300) NULL,
	[TRANSIT_CLEARANCE_DAYS] [varchar](30) NULL,
	[FORECASTED_DELIVERY_DATE] [varchar](30) NULL,
	[PRED_ON_SITE_DATE] [varchar](30) NULL,
	[ARVL_ON_SITE_FORECASTED_DATE] [varchar](30) NULL,
	[ACTUAL_RECV_ONSITE_OR_WHS_DATE] [varchar](30) NULL,
	[DELIVERY_DESIGNATION] [varchar](300) NULL,
	[ROS_DATE] [varchar](40) NULL,
	[FLOAT_DAYS] [varchar](40) NULL,
	[IRC_NO] [varchar](100) NULL,
	[IRC_QTY] [varchar](40) NULL,
	[IRC_APPROVED_DATE] [varchar](30) NULL,
	[RELEASE_NOTE_NO] [varchar](200) NULL,
	[RELEASE_NOTE_QTY] [varchar](30) NULL,
	[RELEASE_NOTE_APPR_DATE] [varchar](30) NULL,
	[BALANCE_IRC_QTY] [varchar](30) NULL,
	[SLI_NO] [varchar](100) NULL,
	[AWB_NUMBER] [varchar](100) NULL,
	[VOY_FLT_NUM] [varchar](100) NULL,
	[ETD_DATE] [varchar](30) NULL,
	[ATD_DATE] [varchar](30) NULL,
	[ETA_DATE] [varchar](30) NULL,
	[ATA_DATE] [varchar](30) NULL,
	[MRR_NUMBER] [varchar](100) NULL,
	[MRR_CREATED_DATE] [varchar](30) NULL,
	[MRR_POSTED_DATE] [varchar](30) NULL,
	[MRR_QUANTITY] [varchar](30) NULL,
	[OSD_NUMBER] [varchar](100) NULL,
	[OSD_CREATED_DATE] [varchar](30) NULL,
	[OSD_QTY] [varchar](30) NULL,
	[OSD_TYPE] [varchar](100) NULL,
	[OSD_REQUEST_ACTION] [varchar](800) NULL,
	[OSD_ACTION_TAKEN] [varchar](8000) NULL,
	[OSD_CLOSED_DATE] [varchar](30) NULL,
	[BALANCE_RN_QTY] [varchar](30) NULL,
	[BALANCE_MRR_QTY] [varchar](30) NULL,
	[BUYER] [varchar](100) NULL,
	[EXPEDITOR] [varchar](100) NULL,
	[BUYER_USR_ID] [varchar](50) NULL,
	[EXPEDITOR_USR_ID] [varchar](50) NULL,
	[PACKAGE_MANAGER] [varchar](100) NULL,
	[ITEM_COMMENT] [varchar](1000) NULL,
	[HEADER_COMMENT] [varchar](8000) NULL,
	[AGENT_1_LT_COMMENT] [varchar](8000) NULL,
	[AGENT_2_LT_COMMENT] [varchar](8000) NULL,
	[THE_COLOR] [varchar](100) NULL,
	[IS_MASTER_TAG] [varchar](100) NULL,
	[LMOD] [varchar](30) NULL,
	[project_number] [varchar](100) NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[ITEM_SHIP_ID] [varchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO