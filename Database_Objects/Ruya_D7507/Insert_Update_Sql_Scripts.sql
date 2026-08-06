/****** Object:  Table [epr].[MTO_SPMAT_Electrical_and_instrument_All_Projects]    Script Date: 2/10/2025 12:09:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MTO_SPMAT_Electrical_and_instrument_All_Projects]
(
	[LP_ID] [varchar](200) NULL,
	[LN_ID] [varchar](200) NULL,
	[LST_ID] [varchar](200) NULL,
	[STAT_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[DP_ID] [varchar](200) NULL,
	[PROJ_ID] [varchar](200) NULL,
	[LIST_STATUS] [varchar](200) NULL,
	[ISSUE_STATUS] [varchar](200) NULL,
	[POS] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](6000) NULL,
	[QUANTITY] [varchar](1000) NULL,
	[UNIT] [varchar](1000) NULL,
	[ITEM_TYPE] [varchar](1000) NULL,
	[CG_GROUP_CODE] [varchar](1000) NULL,
	[PART_CODE] [varchar](1000) NULL,
	[COMMODITY_CODE] [varchar](1000) NULL,
	[TAG_DESCRIPTION] [varchar](6000) NULL,
	[UNIT_WGHT] [varchar](1000) NULL,
	[DWG_DESCRIPTION] [varchar](1000) NULL,
	[BOM_CNTNO] [varchar](1000) NULL,
	[BOM_SFI] [varchar](1000) NULL,
	[BOM_FIM] [varchar](1000) NULL,
	[BOM_HOLD] [varchar](1000) NULL,
	[UNIT_WGHT_UOM] [varchar](1000) NULL,
	[MTO_WEIGHT] [varchar](1000) NULL,
	[REMARKS] [varchar](1000) NULL,
	[XS_TYPE] [varchar](1000) NULL,
	[XS_ACTIVITY_CODE] [varchar](1000) NULL,
	[XS_ACTIVITY_DESC] [varchar](1000) NULL,
	[MP_REQ_NO] [varchar](1000) NULL,
	[MP_SELECT_PRIO] [varchar](1000) NULL,
	[MP_DELV_DESIG] [varchar](1000) NULL,
	[MP_ROS_DATE] [varchar](1000) NULL,
	[MP_SELECT_CWA] [varchar](1000) NULL,
	[MP_SELECT_CWP] [varchar](1000) NULL,
	[MP_SELECT_WBS] [varchar](1000) NULL,
	[MP_SELECT_IWP] [varchar](1000) NULL,
	[MP_SEQ_NO] [varchar](1000) NULL,
	[DISCIPLINE] [varchar](1000) NULL,
	[TYPE] [varchar](1000) NULL,
	[UNIT_MODULE_GROUP] [varchar](1000) NULL,
	[AREA_CWA_DECK] [varchar](1000) NULL,
	[ELEMENT] [varchar](1000) NULL,
	[BOM_DRAWING_NO] [varchar](1000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Discipline_description] [varchar](500) NULL,
	[created_date_time] [datetime] NULL,
	[month_end_date] [datetime] NULL,
	[MP_FAB_LOCATION] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[MTO_SPMAT_Mechanical_All_Projects]    Script Date: 2/10/2025 12:11:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MTO_SPMAT_Mechanical_All_Projects]
(
	[LP_ID] [varchar](200) NULL,
	[LN_ID] [varchar](200) NULL,
	[LST_ID] [varchar](200) NULL,
	[STAT_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[DP_ID] [varchar](200) NULL,
	[PROJ_ID] [varchar](200) NULL,
	[LIST_STATUS] [varchar](200) NULL,
	[ISSUE_STATUS] [varchar](200) NULL,
	[POS] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](6000) NULL,
	[QUANTITY] [varchar](1000) NULL,
	[UNIT] [varchar](1000) NULL,
	[TAG_SHORT_DES] [varchar](4000) NULL,
	[TAG_LONG_DES] [varchar](4000) NULL,
	[BOM_SFI] [varchar](1000) NULL,
	[BOM_CNTNO] [varchar](1000) NULL,
	[BOM_HOLD] [varchar](1000) NULL,
	[BOM_FIM] [varchar](1000) NULL,
	[CLIMATE_CONTROL] [varchar](1000) NULL,
	[PRESERVATION] [varchar](1000) NULL,
	[ITEM_TYPE] [varchar](1000) NULL,
	[XS_TYPE] [varchar](1000) NULL,
	[XS_ACTIVITY_CODE] [varchar](1000) NULL,
	[XS_ACTIVITY_DESC] [varchar](1000) NULL,
	[MP_REQ_NO] [varchar](1000) NULL,
	[MP_SELECT_PRIO] [varchar](1000) NULL,
	[MP_DELV_DESIG] [varchar](1000) NULL,
	[MP_ROS_DATE] [varchar](1000) NULL,
	[MP_SELECT_CWA] [varchar](1000) NULL,
	[MP_SELECT_CWP] [varchar](1000) NULL,
	[MP_SELECT_WBS] [varchar](1000) NULL,
	[MP_SELECT_IWP] [varchar](1000) NULL,
	[REMARKS] [varchar](1000) NULL,
	[MP_SEQ_NO] [varchar](1000) NULL,
	[DISCIPLINE] [varchar](1000) NULL,
	[TYPE] [varchar](1000) NULL,
	[UNIT_MODULE_GROUP] [varchar](1000) NULL,
	[AREA_CWA_DECK] [varchar](1000) NULL,
	[ELEMENT] [varchar](1000) NULL,
	[BOM_DRAWING_NO] [varchar](1000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Discipline_description] [varchar](500) NULL,
	[created_date_time] [datetime] NULL,
	[month_end_date] [datetime] NULL,
	[MP_FAB_LOCATION] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[MTO_SPMAT_Piping_All_Projects]    Script Date: 2/10/2025 12:13:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MTO_SPMAT_Piping_All_Projects]
(
	[LP_ID] [varchar](200) NULL,
	[LST_ID] [varchar](200) NULL,
	[STAT_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[DP_ID] [varchar](200) NULL,
	[LN_ID] [varchar](200) NULL,
	[SPEC_HEADER_ID] [varchar](200) NULL,
	[PROJ_ID] [varchar](200) NULL,
	[LIST_STATUS] [varchar](200) NULL,
	[ISSUE_STATUS] [varchar](200) NULL,
	[POS] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](1000) NULL,
	[IDENT_DESCRIPTION] [varchar](6000) NULL,
	[QUANTITY] [varchar](1000) NULL,
	[SHORT_CODE] [varchar](1000) NULL,
	[OPTION_CODE] [varchar](1000) NULL,
	[SPEC_CODE] [varchar](1000) NULL,
	[SIZE1] [varchar](1000) NULL,
	[SIZE2] [varchar](1000) NULL,
	[SIZE3] [varchar](1000) NULL,
	[UNIT] [varchar](1000) NULL,
	[UNIT_WGHT] [varchar](1000) NULL,
	[BOM_CNTNO] [varchar](1000) NULL,
	[BOM_SFI] [varchar](1000) NULL,
	[BOM_HOLD] [varchar](1000) NULL,
	[BOM_PRESERVATION] [varchar](1000) NULL,
	[BOM_CLIMATE_CONTROL] [varchar](1000) NULL,
	[CLIENT_PRICE_BREAKDOWN] [varchar](1000) NULL,
	[UNIT_WGHT_UOM] [varchar](1000) NULL,
	[REMARKS] [varchar](6000) NULL,
	[XS_TYPE] [varchar](1000) NULL,
	[MP_SIZE1] [varchar](1000) NULL,
	[MP_SIZE2] [varchar](1000) NULL,
	[MP_SIZE3] [varchar](1000) NULL,
	[MP_SIZE4] [varchar](1000) NULL,
	[MP_SIZE5] [varchar](1000) NULL,
	[XS_ACTIVITY_CODE] [varchar](1000) NULL,
	[XS_ACTIVITY_DESC] [varchar](6000) NULL,
	[MP_SELECT_PRIO] [varchar](1000) NULL,
	[MP_DELV_DESIG] [varchar](1000) NULL,
	[MP_ROS_DATE] [varchar](1000) NULL,
	[MP_FAB_LOCATION] [varchar](1000) NULL,
	[MP_SELECT_CWA] [varchar](1000) NULL,
	[MP_SELECT_CWP] [varchar](500) NULL,
	[MP_SELECT_WBS] [varchar](500) NULL,
	[MP_SELECT_IWP] [varchar](500) NULL,
	[MP_PROCESS_LINE] [varchar](500) NULL,
	[XS_DRAWING_NUMBER] [varchar](500) NULL,
	[MP_DRWG_NAME] [varchar](5000) NULL,
	[DRAWING_REV] [varchar](500) NULL,
	[MP_SEQ_NO] [varchar](500) NULL,
	[DISCIPLINE] [varchar](500) NULL,
	[TYPE] [varchar](500) NULL,
	[UNIT_MODULE_GROUP] [varchar](500) NULL,
	[AREA_CWA_DECK] [varchar](500) NULL,
	[ELEMENT] [varchar](500) NULL,
	[BOM_DRAWING_NO] [varchar](2000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Discipline_description] [varchar](500) NULL,
	[created_date_time] [datetime] NULL,
	[month_end_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[MTO_SPMAT_Structural_All_Projects]    Script Date: 2/10/2025 12:15:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MTO_SPMAT_Structural_All_Projects]
(
	[LP_ID] [varchar](200) NULL,
	[LN_ID] [varchar](200) NULL,
	[LST_ID] [varchar](200) NULL,
	[STAT_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[DP_ID] [varchar](200) NULL,
	[PROJ_ID] [varchar](200) NULL,
	[LIST_STATUS] [varchar](200) NULL,
	[ISSUE_STATUS] [varchar](200) NULL,
	[POS] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](6000) NULL,
	[QUANTITY] [varchar](1000) NULL,
	[QTY_UNIT] [varchar](1000) NULL,
	[ITEM_TYPE] [varchar](1000) NULL,
	[CG_GROUP_CODE] [varchar](1000) NULL,
	[PART_CODE] [varchar](1000) NULL,
	[COMMODITY_CODE] [varchar](1000) NULL,
	[SIZE1] [varchar](1000) NULL,
	[SIZE2] [varchar](1000) NULL,
	[SIZE3] [varchar](1000) NULL,
	[POS_TAG_LO] [varchar](1000) NULL,
	[POS_TAG_SH] [varchar](1000) NULL,
	[UNIT_WGHT] [varchar](1000) NULL,
	[DWG_DESCRIPTION] [varchar](1000) NULL,
	[BOM_CNTNO] [varchar](1000) NULL,
	[STRUCTURE_CODE] [varchar](1000) NULL,
	[ACTIVITY_CODE] [varchar](1000) NULL,
	[STR_ACTIVITY_DESC] [varchar](1000) NULL,
	[BID_ELEMENT] [varchar](1000) NULL,
	[LEVEL_] [varchar](1000) NULL,
	[MEMBER_DESC] [varchar](1000) NULL,
	[LOCATION] [varchar](1000) NULL,
	[MATL_CLASSIFICATION] [varchar](1000) NULL,
	[PIECE_MARK] [varchar](1000) NULL,
	[NO_PC_REQD] [varchar](1000) NULL,
	[DIM1] [varchar](1000) NULL,
	[DIM2] [varchar](1000) NULL,
	[ROLL_PLATE_Y_N] [varchar](1000) NULL,
	[MATL_STATUS] [varchar](1000) NULL,
	[DIM_X] [varchar](1000) NULL,
	[DIM_Y] [varchar](1000) NULL,
	[BOM_SFI] [varchar](1000) NULL,
	[BOM_FIM] [varchar](1000) NULL,
	[BOM_HOLD] [varchar](1000) NULL,
	[UNIT_WGHT_UOM] [varchar](1000) NULL,
	[MTO_WEIGHT_MT] [varchar](1000) NULL,
	[UNIT_PA] [varchar](1000) NULL,
	[TOTAL_PA] [varchar](1000) NULL,
	[REMARKS] [varchar](1000) NULL,
	[MP_REQ_NO] [varchar](1000) NULL,
	[MP_SEQ_NO] [varchar](1000) NULL,
	[XS_COMPONENT] [varchar](1000) NULL,
	[XS_VENDOR_NAME] [varchar](1000) NULL,
	[XS_ORDERING_OPTION] [varchar](1000) NULL,
	[MP_SELECT_PRIO] [varchar](1000) NULL,
	[MP_DELV_DESIG] [varchar](1000) NULL,
	[MP_SELECT_CWP] [varchar](1000) NULL,
	[MP_ROS_DATE] [varchar](1000) NULL,
	[MP_FAB_LOCATION] [varchar](1000) NULL,
	[MP_DRWG_NAME] [varchar](1000) NULL,
	[MP_SERVICE] [varchar](1000) NULL,
	[MP_SFI] [varchar](1000) NULL,
	[MP_CATEGORY] [varchar](1000) NULL,
	[MP_WEIGHT] [varchar](1000) NULL,
	[XS_STRUC_CODE] [varchar](1000) NULL,
	[POS_ITR] [varchar](1000) NULL,
	[DISCIPLINE] [varchar](1000) NULL,
	[MTO_TYPE] [varchar](1000) NULL,
	[UNIT] [varchar](1000) NULL,
	[AREA_CWA] [varchar](1000) NULL,
	[GROUP_NAME] [varchar](1000) NULL,
	[BOM_SHAPE_SPOOL] [varchar](1000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Discipline_description] [varchar](500) NULL,
	[created_date_time] [datetime] NULL,
	[month_end_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[MTO_SPMAT_Subsea_All_Projects]    Script Date: 2/10/2025 12:17:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MTO_SPMAT_Subsea_All_Projects]
(
	[LP_ID] [varchar](200) NULL,
	[LN_ID] [varchar](200) NULL,
	[LST_ID] [varchar](200) NULL,
	[STAT_ID] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[DP_ID] [varchar](200) NULL,
	[PROJ_ID] [varchar](200) NULL,
	[LIST_STATUS] [varchar](200) NULL,
	[ISSUE_STATUS] [varchar](200) NULL,
	[POS] [varchar](200) NULL,
	[IDENT_CODE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](6000) NULL,
	[QUANTITY] [varchar](1000) NULL,
	[UNIT] [varchar](1000) NULL,
	[BOM_CNTNO] [varchar](1000) NULL,
	[BOM_SFI] [varchar](1000) NULL,
	[BOM_HOLD] [varchar](1000) NULL,
	[BOM_PRESERVATION] [varchar](1000) NULL,
	[BOM_CLIMATE_CONTROL] [varchar](1000) NULL,
	[CLIENT_PRICE_BREAKDOWN] [varchar](1000) NULL,
	[UNIT_WGHT] [varchar](1000) NULL,
	[UNIT_WGHT_UOM] [varchar](1000) NULL,
	[REMARKS] [varchar](1000) NULL,
	[XS_TYPE] [varchar](1000) NULL,
	[XS_ACTIVITY_CODE] [varchar](1000) NULL,
	[XS_ACTIVITY_DESC] [varchar](1000) NULL,
	[ITEM_TYPE] [varchar](1000) NULL,
	[MP_REQ_NO] [varchar](1000) NULL,
	[MP_SELECT_PRIO] [varchar](1000) NULL,
	[MP_DELV_DESIG] [varchar](1000) NULL,
	[MP_ROS_DATE] [varchar](1000) NULL,
	[MP_SELECT_CWA] [varchar](1000) NULL,
	[MP_SELECT_CWP] [varchar](1000) NULL,
	[MP_SELECT_WBS] [varchar](1000) NULL,
	[MP_SELECT_IWP] [varchar](1000) NULL,
	[MP_SEQ_NO] [varchar](1000) NULL,
	[DISCIPLINE] [varchar](1000) NULL,
	[TYPE] [varchar](1000) NULL,
	[UNIT_MODULE_GROUP] [varchar](1000) NULL,
	[AREA_CWA_DECK] [varchar](1000) NULL,
	[ELEMENT] [varchar](1000) NULL,
	[BOM_DRAWING_NO] [varchar](1000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Discipline_description] [varchar](500) NULL,
	[created_date_time] [datetime] NULL,
	[month_end_date] [datetime] NULL,
	[MP_FAB_LOCATION] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[MR_Details_All_Projects]    Script Date: 2/10/2025 12:19:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[MR_Details_All_Projects]
(
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_TITLE] [varchar](2000) NULL,
	[R_ID] [varchar](500) NULL,
	[REQUISITION_NO] [varchar](500) NULL,
	[REQ_SHORT_DESC] [varchar](2000) NULL,
	[REQ_DESC] [varchar](2000) NULL,
	[REQ_REV] [varchar](500) NULL,
	[REQ_CREATED_DATE] [varchar](500) NULL,
	[RELEASED_TO_PROC] [varchar](500) NULL,
	[REQ_APPROVED_DATE] [varchar](500) NULL,
	[PROC_ACK_DATE] [varchar](500) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[planning_milestone_All_Projects]    Script Date: 2/10/2025 12:20:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[planning_milestone_All_Projects]
(
	[PROJECT] [varchar](20) NULL,
	[PSR_R_CODE] [varchar](600) NULL,
	[PSR_DESCRIPTION] [varchar](6000) NULL,
	[PSR_PO_NUMBER] [varchar](500) NULL,
	[PSR_SUB_FUNCTION] [varchar](100) NULL,
	[PSR_9COM_NUMBER] [varchar](100) NULL,
	[PSR_VENDOR_NAME] [varchar](2000) NULL,
	[PSR_SOURCE_LOCATION] [varchar](2000) NULL,
	[PSR_CRITICAL_PACKAGE] [varchar](600) NULL,
	[PSR_TAGGED_BULK] [varchar](600) NULL,
	[MC_CODE] [varchar](500) NULL,
	[MC_SEQ] [varchar](500) NULL,
	[PLANNED_DATE] [varchar](100) NULL,
	[FORECASTED_DATE] [varchar](100) NULL,
	[ACTUAL_DATE] [varchar](100) NULL,
	[PSR_ROS_DATE] [varchar](100) NULL,
	[PSET_ID] [varchar](500) NULL,
	[PSR_WEEKS_EXW] [varchar](500) NULL,
	[PSR_TRANSIT_TIME] [varchar](500) NULL,
	[PSR_FLOAT_MATERIALS] [varchar](500) NULL,
	[PSR_FLOAT_MATERIALS_P] [varchar](500) NULL,
	[PSR_REMARKS] [varchar](6000) NULL,
	[CreatedDateTime] [datetime] NULL,
	[week_end_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[PO_PR_Details_All_Projects]    Script Date: 2/10/2025 12:22:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[PO_PR_Details_All_Projects]
(
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_TITLE] [varchar](2000) NULL,
	[R_ID] [varchar](500) NULL,
	[REQUISITION_NO] [varchar](500) NULL,
	[REQ_SHORT_DESC] [varchar](2000) NULL,
	[REQ_DESC] [varchar](2000) NULL,
	[REQ_REV] [varchar](500) NULL,
	[REQ_CREATED_DATE] [varchar](500) NULL,
	[RELEASED_TO_PROC] [varchar](500) NULL,
	[REQ_APPROVED_DATE] [varchar](500) NULL,
	[PROC_ACK_DATE] [varchar](500) NULL,
	[PO_NUMBER] [varchar](500) NULL,
	[PO_REV] [varchar](500) NULL,
	[PO_TITLE] [varchar](5000) NULL,
	[PO_STATUS] [varchar](500) NULL,
	[STATUS_DATE] [varchar](500) NULL,
	[PO_APPROVED_DATE] [varchar](500) NULL,
	[PO_ISSUE_DATE] [varchar](500) NULL,
	[TOTAL_COST_PO] [varchar](500) NULL,
	[CURRENCY_PO] [varchar](500) NULL,
	[TOTAL_IN_USD] [varchar](500) NULL,
	[SUPPLIER_NAME] [varchar](2000) NULL,
	[SUPPLIER_CODE] [varchar](500) NULL,
	[SUPPLIER_LOCATION] [varchar](500) NULL,
	[ACCOUNT_CODE_PO] [varchar](500) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[PPE_Extract_All_Projects]    Script Date: 2/10/2025 12:23:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[PPE_Extract_All_Projects]
(
	[POH_ID] [varchar](200) NULL,
	[BASE_POH_ID] [varchar](200) NULL,
	[PROJECT] [varchar](200) NULL,
	[SUPPLIER_NAME] [varchar](4000) NULL,
	[SUPPLIER_CODE] [varchar](200) NULL,
	[PO_NUMBER] [varchar](200) NULL,
	[PO_SUPP] [varchar](200) NULL,
	[LAST_PO_ISSUE_DATE] [varchar](200) NULL,
	[UNIT_CODE] [varchar](200) NULL,
	[TOTAL_PRICE] [varchar](200) NULL,
	[TOTAL_PRICE_USD] [varchar](200) NULL,
	[REV0_ISSUE_DATE] [varchar](200) NULL,
	[PAYMENT_TYPE] [varchar](200) NULL,
	[PPE_SEQ_NR] [varchar](200) NULL,
	[PROG_PAY_EVENT] [varchar](200) NULL,
	[SHORT_DESC] [varchar](200) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[PLANNED_COMPLETION_DATE] [varchar](200) NULL,
	[PROG_PAY_PERCENT] [varchar](200) NULL,
	[COST_VALUE] [varchar](200) NULL,
	[COST_VALUE_USD] [varchar](200) NULL,
	[PW] [varchar](200) NULL,
	[PRED_PAY_DATE] [varchar](200) NULL,
	[ACTUAL_PAY_DATE] [varchar](200) NULL,
	[PAID] [varchar](200) NULL,
	[CREDIT_DAYS] [varchar](200) NULL,
	[PAYMENT_MODE_ORACLE] [varchar](200) NULL,
	[PAYMENT_TERM_JDE] [varchar](200) NULL,
	[week_end_date] [datetime] NULL,
	[CreatedDateTime] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[Vendor_Progress_All_Projects]    Script Date: 2/10/2025 12:25:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[Vendor_Progress_All_Projects]
(
	[POH_ID] [varchar](200) NULL,
	[PROJECT_NR] [varchar](100) NULL,
	[PROJECT_DESCRIPTION] [varchar](6000) NULL,
	[PO_NUMBER] [varchar](500) NULL,
	[DESCRIPTION] [varchar](6000) NULL,
	[SUPPLIER] [varchar](2000) NULL,
	[SUPPLIER_COUNTRY] [varchar](200) NULL,
	[EXPEDITER] [varchar](500) NULL,
	[ORDER_SEQ] [varchar](600) NULL,
	[MC_CODE] [varchar](2000) NULL,
	[PLANNED_START_DATE] [varchar](100) NULL,
	[PLANNED_END_DATE] [varchar](100) NULL,
	[FORECASTED_START_DATE] [varchar](100) NULL,
	[FORECASTED_END_DATE] [varchar](100) NULL,
	[ACTUAL_START_DATE] [varchar](100) NULL,
	[ACTUAL_END_DATE] [varchar](100) NULL,
	[ACTUAL_PROGRESS] [varchar](500) NULL,
	[LMOD] [varchar](100) NULL,
	[WEIGHT_FACTOR] [varchar](500) NULL,
	[ORDER_TOTAL] [varchar](500) NULL,
	[CURRENCY] [varchar](100) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[requisition_by_line_All_Projects]    Script Date: 2/10/2025 12:27:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[requisition_by_line_All_Projects]
(
	[PROJ_ID] [varchar](200) NULL,
	[R_CODE] [varchar](200) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[SUPPLEMENT] [varchar](200) NULL,
	[INQ_PUR_IND] [varchar](200) NULL,
	[ITEMNO] [varchar](200) NULL,
	[ITEMSUB] [varchar](200) NULL,
	[IDENT] [varchar](200) NULL,
	[COMMODITY_CODE] [varchar](200) NULL,
	[INPUT_1] [varchar](200) NULL,
	[INPUT_2] [varchar](200) NULL,
	[INPUT_3] [varchar](200) NULL,
	[INPUT_4] [varchar](200) NULL,
	[INPUT_5] [varchar](200) NULL,
	[IDENT_DESCRIPTION] [varchar](4000) NULL,
	[TOTAL_QTY] [varchar](200) NULL,
	[INCREASED_QTY] [varchar](4000) NULL,
	[UNIT_WEIGHT] [varchar](200) NULL,
	[WEIGHT_CODE] [varchar](200) NULL,
	[ACCOUNTCODE] [varchar](200) NULL,
	[QTY_UNIT] [varchar](200) NULL,
	[Delivery Designation] [varchar](200) NULL,
	[ROS_DATE] [varchar](200) NULL,
	[TAG_NUMBER] [varchar](200) NULL,
	[Long Description] [varchar](4000) NULL,
	[Comment] [varchar](4000) NULL,
	[CreatedDateTime] [varchar](200) NULL,
	[week_end_date] [datetime] NULL,
	[APPROVED_DATE] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


/****** Object:  Table [epr].[P10_MDR_Data_All_Projects]    Script Date: 2/10/2025 12:32:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[P10_MDR_Data_All_Projects]
(
	[File Name] [varchar](5000) NULL,
	[SFN Description] [varchar](2000) NULL,
	[PCM Input] [varchar](2000) NULL,
	[3rd Party ID] [varchar](2000) NULL,
	[Doc. Type] [varchar](2000) NULL,
	[Discipline] [varchar](2000) NULL,
	[CRS No.] [varchar](2000) NULL,
	[Yard Flag ID] [varchar](2000) NULL,
	[Profile Type] [varchar](5000) NULL,
	[Name] [varchar](5000) NULL,
	[Revision] [varchar](2000) NULL,
	[Revision Date] [varchar](2000) NULL,
	[State] [varchar](5000) NULL,
	[Deliverable Type] [varchar](5000) NULL,
	[Project Doc Type] [varchar](5000) NULL,
	[Project Doc Name] [varchar](5000) NULL,
	[Status] [varchar](5000) NULL,
	[Client Discipline] [varchar](5000) NULL,
	[Client Document Type] [varchar](5000) NULL,
	[Title] [varchar](5000) NULL,
	[Facility] [varchar](5000) NULL,
	[Client Completion Percentage] [varchar](2000) NULL,
	[Client Earned Value] [varchar](2000) NULL,
	[Completion Percentage] [varchar](2000) NULL,
	[Earned Value] [varchar](2000) NULL,
	[Client Return Code] [varchar](2000) NULL,
	[Client Return Date] [varchar](2000) NULL,
	[Client Expected Return] [varchar](5000) NULL,
	[Comments] [varchar](5000) NULL,
	[Location] [varchar](2000) NULL,
	[Voided Reason] [varchar](2000) NULL,
	[Thirty Percent Design Review] [varchar](2000) NULL,
	[Sixty Percent Design Review] [varchar](2000) NULL,
	[Ninety Percent Design Review] [varchar](2000) NULL,
	[Original Weight] [varchar](2000) NULL,
	[Planned Weight] [varchar](2000) NULL,
	[Forecast Weight] [varchar](2000) NULL,
	[Weighting 1] [varchar](2000) NULL,
	[Start Activity Id] [varchar](2000) NULL,
	[IDC Activity Id] [varchar](2000) NULL,
	[IDC Completed Activity ID] [varchar](2000) NULL,
	[IFR Activity ID] [varchar](2000) NULL,
	[IFR RCA Activity ID] [varchar](2000) NULL,
	[IFA Activity ID] [varchar](2000) NULL,
	[IFA RCA Activity ID] [varchar](2000) NULL,
	[IFA/IFR Activity Id] [varchar](2000) NULL,
	[CA Activity Id] [varchar](2000) NULL,
	[IFH Activity Id] [varchar](2000) NULL,
	[AFD Activity Id] [varchar](2000) NULL,
	[IFB Activity Id] [varchar](2000) NULL,
	[AFC(H) Activity Id] [varchar](2000) NULL,
	[AFC Activity Id] [varchar](2000) NULL,
	[AFC RCA Activity ID] [varchar](2000) NULL,
	[AFF Activity Id] [varchar](2000) NULL,
	[AFH Activity Id] [varchar](2000) NULL,
	[IFI Activity Id] [varchar](2000) NULL,
	[IFP Activity Id] [varchar](2000) NULL,
	[AFU Activity Id] [varchar](2000) NULL,
	[As-Built Activity Id] [varchar](2000) NULL,
	[Start Original] [varchar](2000) NULL,
	[Start Plan] [varchar](2000) NULL,
	[Start Forecast] [varchar](2000) NULL,
	[Start Actual] [varchar](2000) NULL,
	[IDC Original] [varchar](2000) NULL,
	[IDC Plan] [varchar](2000) NULL,
	[IDC Forecast] [varchar](2000) NULL,
	[IDC Actual] [varchar](2000) NULL,
	[IDC Complete Original] [varchar](2000) NULL,
	[IDC Complete Plan] [varchar](2000) NULL,
	[IDC Complete Forecast] [varchar](2000) NULL,
	[IDC Complete Actual] [varchar](2000) NULL,
	[IFR Original] [varchar](2000) NULL,
	[IFR Plan] [varchar](2000) NULL,
	[IFR Forecast] [varchar](2000) NULL,
	[IFR Actual] [varchar](2000) NULL,
	[RCA - IFR Original] [varchar](2000) NULL,
	[RCA - IFR Plan] [varchar](2000) NULL,
	[RCA - IFR Forecast] [varchar](2000) NULL,
	[RCA - IFR Actual] [varchar](2000) NULL,
	[IFA Original] [varchar](2000) NULL,
	[IFA Plan] [varchar](2000) NULL,
	[IFA Forecast] [varchar](2000) NULL,
	[IFA Actual] [varchar](2000) NULL,
	[RCA - IFA Original] [varchar](2000) NULL,
	[RCA - IFA Plan] [varchar](2000) NULL,
	[RCA - IFA Forecast] [varchar](2000) NULL,
	[RCA - IFA Actual] [varchar](2000) NULL,
	[AFD Original] [varchar](2000) NULL,
	[AFD Plan] [varchar](2000) NULL,
	[AFD Forecast] [varchar](2000) NULL,
	[AFD Actual] [varchar](2000) NULL,
	[IFB Original] [varchar](2000) NULL,
	[IFB Plan] [varchar](2000) NULL,
	[IFB Forecast] [varchar](2000) NULL,
	[IFB Actual] [varchar](2000) NULL,
	[AFC(H) Original] [varchar](2000) NULL,
	[AFC(H) Plan] [varchar](2000) NULL,
	[AFC(H) Forecast] [varchar](2000) NULL,
	[AFC(H) Actual] [varchar](2000) NULL,
	[AFC Original] [varchar](2000) NULL,
	[AFC Plan] [varchar](2000) NULL,
	[AFC Forecast] [varchar](2000) NULL,
	[AFC Actual] [varchar](2000) NULL,
	[RCA - AFC Original] [varchar](2000) NULL,
	[RCA - AFC Plan] [varchar](2000) NULL,
	[RCA - AFC Forecast] [varchar](2000) NULL,
	[RCA - AFC Actual] [varchar](2000) NULL,
	[IFI Original] [varchar](2000) NULL,
	[IFI Plan] [varchar](2000) NULL,
	[IFI Forecast] [varchar](2000) NULL,
	[IFI Actual] [varchar](2000) NULL,
	[RCA - IFI Original] [varchar](2000) NULL,
	[RCA - IFI Plan] [varchar](2000) NULL,
	[RCA - IFI Forecast] [varchar](2000) NULL,
	[RCA - IFI Actual] [varchar](2000) NULL,
	[IFP Original] [varchar](2000) NULL,
	[IFP Plan] [varchar](2000) NULL,
	[IFP Forecast] [varchar](2000) NULL,
	[IFP Actual] [varchar](2000) NULL,
	[As Built Original] [varchar](2000) NULL,
	[As Built Plan] [varchar](2000) NULL,
	[As Built Forecast] [varchar](2000) NULL,
	[As Built Actual] [varchar](2000) NULL,
	[Company Transmittal Number] [varchar](5000) NULL,
	[Company Return Date] [varchar](5000) NULL,
	[Review Return code] [varchar](5000) NULL,
	[Transmittal Number] [varchar](5000) NULL,
	[Transmittal Date] [varchar](5000) NULL,
	[Interface Document] [varchar](5000) NULL,
	[Originator] [varchar](2000) NULL,
	[Contract Code] [varchar](2000) NULL,
	[Contractor Originator Code] [varchar](2000) NULL,
	[Country] [varchar](2000) NULL,
	[Client Document Classification] [varchar](5000) NULL,
	[Equipment Class] [varchar](2000) NULL,
	[Equipment SubClass] [varchar](2000) NULL,
	[Field Operation Deliverable] [varchar](2000) NULL,
	[MDR Update Information] [varchar](2000) NULL,
	[Project Code] [varchar](2000) NULL,
	[Reason for Change-Engineering] [varchar](2000) NULL,
	[Recipient] [varchar](2000) NULL,
	[Sector Code] [varchar](2000) NULL,
	[Site Code] [varchar](2000) NULL,
	[Superseded by] [varchar](2000) NULL,
	[System Code] [varchar](2000) NULL,
	[Tag/Equipment No.] [varchar](2000) NULL,
	[Unique ID] [varchar](5000) NULL,
	[Sub-System] [varchar](2000) NULL,
	[Greenfield / Brownfield] [varchar](2000) NULL,
	[Work Unit] [varchar](2000) NULL,
	[Work Pack] [varchar](2000) NULL,
	[Put in iDocs] [varchar](2000) NULL,
	[Internal Transmittal No.] [varchar](5000) NULL,
	[Internal Transmittal Date] [varchar](2000) NULL,
	[Distribution Q Status] [varchar](2000) NULL,
	[DM Queue Date] [varchar](2000) NULL,
	[DM Queue Release Date] [varchar](2000) NULL,
	[Days Variance] [varchar](2000) NULL,
	[Published Revision] [varchar](2000) NULL,
	[Document Status] [varchar](2000) NULL,
	[HHI Transmittal No.] [varchar](2000) NULL,
	[HHI Transmittal Date] [varchar](2000) NULL,
	[Expediting Status] [varchar](2000) NULL,
	[UserType] [varchar](2000) NULL,
	[MOPEX Location] [varchar](2000) NULL,
	[As Built Required] [varchar](2000) NULL,
	[AWP Type] [varchar](2000) NULL,
	[AWP Applicable] [varchar](2000) NULL,
	[AWP Assigned Platform] [varchar](2000) NULL,
	[AWP Deck] [varchar](2000) NULL,
	[AWP CWA] [varchar](2000) NULL,
	[AWP Package] [varchar](2000) NULL,
	[EWP] [varchar](2000) NULL,
	[PWP] [varchar](2000) NULL,
	[CWP] [varchar](2000) NULL,
	[IWP] [varchar](2000) NULL,
	[GPCA Cost Code] [varchar](2000) NULL,
	[GPCA Cost Code Description] [varchar](5000) NULL,
	[GPCA Prime Description] [varchar](5000) NULL,
	[GPCA Sub Prime Description] [varchar](5000) NULL,
	[project_number] [varchar](2000) NULL,
	[file_name] [varchar](2000) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


update plp_parameter_value 
set parameter_value = 'MR_Details_All_Projects'
where pipeline_code = 'pl_MR_Details_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'Planning_Milestone_All_Projects'
where pipeline_code = 'pl_planning_milestone_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'PO_PR_Details_All_Projects'
where pipeline_code = 'pl_PO_PR_Details_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'PPE_Extract_All_Projects'
where pipeline_code = 'pl_PPE_Extract_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'Vendor_Progress_All_Projects'
where pipeline_code = 'pl_Vendor_Progress_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'requisition_by_line_All_Projects'
where pipeline_code = 'pl_requisition_by_line_Ruya11_D7507' and parameter_code= 'table_name'

update plp_parameter_value 
set parameter_value = 'MTO_SPMAT_Electrical_and_instrument_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507' and parameter_code= 'table_name2'

update plp_parameter_value 
set parameter_value = 'MTO_SPMAT_Mechanical_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507' and parameter_code= 'table_name4'

update plp_parameter_value 
set parameter_value = 'MTO_SPMAT_Piping_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507' and parameter_code= 'table_name5'

update plp_parameter_value 
set parameter_value = 'MTO_SPMAT_Structural_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507' and parameter_code= 'table_name1'

update plp_parameter_value 
set parameter_value = 'MTO_SPMAT_Subsea_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507' and parameter_code= 'table_name3'

update plp_parameter_value 
set parameter_value = 'P10_MDR_Data_All_Projects'
where pipeline_code = 'pl_P10_MDR_Data_Ruya11_D7507' and parameter_code= 'table_name'



select * from [dbo].[plp_pipeline] where pipeline_code ='pl_MTO_SPMAT_Ruya11_D7507'


update plp_pipeline 
set pipeline_code = 'pl_MR_Details_All_Projects'
where pipeline_code = 'pl_MR_Details_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_planning_milestone_All_Projects'
where pipeline_code = 'pl_planning_milestone_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_PO_PR_Details_All_Projects'
where pipeline_code = 'pl_PO_PR_Details_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_PPE_Extract_All_Projects'
where pipeline_code = 'pl_PPE_Extract_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_Vendor_Progress_All_Projects'
where pipeline_code = 'pl_Vendor_Progress_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_requisition_by_line_All_Projects'
where pipeline_code = 'pl_requisition_by_line_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_MTO_SPMAT_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507'

update plp_pipeline 
set pipeline_code = 'pl_P10_MDR_Data_All_Projects'
where pipeline_code = 'pl_P10_MDR_Data_Ruya11_D7507'

select * from [dbo].[plp_pipeline_parameter] where pipeline_code like '%pl_MTO_SPMAT_Ruya11_D7507%' order by display_order

update plp_pipeline_parameter 
set pipeline_code = 'pl_MR_Details_All_Projects'
where pipeline_code = 'pl_MR_Details_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_planning_milestone_All_Projects'
where pipeline_code = 'pl_planning_milestone_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_PO_PR_Details_All_Projects'
where pipeline_code = 'pl_PO_PR_Details_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_PPE_Extract_All_Projects'
where pipeline_code = 'pl_PPE_Extract_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_Vendor_Progress_All_Projects'
where pipeline_code = 'pl_Vendor_Progress_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_requisition_by_line_All_Projects'
where pipeline_code = 'pl_requisition_by_line_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_MTO_SPMAT_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507'

update plp_pipeline_parameter 
set pipeline_code = 'pl_P10_MDR_Data_All_Projects'
where pipeline_code = 'pl_P10_MDR_Data_Ruya11_D7507'

select * from plp_parameter_value where pipeline_code like '%pl_MR_Details_Ruya11_D7507%'

update plp_parameter_value 
set pipeline_code = 'pl_MR_Details_All_Projects'
where pipeline_code = 'pl_MR_Details_Ruya11_D7507'

update plp_parameter_value
set pipeline_code = 'pl_planning_milestone_All_Projects'
where pipeline_code = 'pl_planning_milestone_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_PO_PR_Details_All_Projects'
where pipeline_code = 'pl_PO_PR_Details_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_PPE_Extract_All_Projects'
where pipeline_code = 'pl_PPE_Extract_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_Vendor_Progress_All_Projects'
where pipeline_code = 'pl_Vendor_Progress_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_requisition_by_line_All_Projects'
where pipeline_code = 'pl_requisition_by_line_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_MTO_SPMAT_All_Projects'
where pipeline_code = 'pl_MTO_SPMAT_Ruya11_D7507'

update plp_parameter_value 
set pipeline_code = 'pl_P10_MDR_Data_All_Projects'
where pipeline_code = 'pl_P10_MDR_Data_Ruya11_D7507'

/****** Object:  View [epr].[MTO_SPMAT_All_Ruya11_D7507_v]    Script Date: 1/22/2025 10:07:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [epr].[MTO_SPMAT_All_Projects_v] AS select 
'' ACTIVITY_CODE,
'' AREA_CWA,
AREA_CWA_DECK,
'' BID_ELEMENT,
'' BOM_CLIMATE_CONTROL,
BOM_CNTNO,
BOM_DRAWING_NO,
BOM_FIM,
BOM_HOLD,
'' BOM_PRESERVATION,
BOM_SFI,
'' BOM_SHAPE_SPOOL,
'' CG_GROUP_CODE,
'' CLIENT_PRICE_BREAKDOWN,
CLIMATE_CONTROL,
'' COMMODITY_CODE,
CreatedDateTime,
'' DIM_X,
'' DIM_Y,
'' DIM1,
'' DIM2,
DISCIPLINE,
Discipline_description,
DP_ID,
'' DRAWING_REV,
'' DWG_DESCRIPTION,
ELEMENT,
'' GROUP_NAME,
IDENT,
IDENT_CODE,
IDENT_DESCRIPTION,
ISSUE_STATUS,
ITEM_TYPE,
'' LEVEL_,
LIST_STATUS,
LN_ID,
'' LOCATION,
LP_ID,
LST_ID,
'' MATL_CLASSIFICATION,
'' MATL_STATUS,
'' MEMBER_DESC,
'' MP_CATEGORY,
MP_DELV_DESIG,
'' MP_DRWG_NAME,
MP_FAB_LOCATION,
'' MP_PROCESS_LINE,
MP_REQ_NO,
MP_ROS_DATE,
MP_SELECT_CWA,
MP_SELECT_CWP,
MP_SELECT_IWP,
MP_SELECT_PRIO,
MP_SELECT_WBS,
MP_SEQ_NO,
'' MP_SERVICE,
'' MP_SFI,
'' MP_SIZE1,
'' MP_SIZE2,
'' MP_SIZE3,
'' MP_SIZE4,
'' MP_SIZE5,
'' MP_WEIGHT,
'' MTO_TYPE,
'' MTO_WEIGHT,
'' MTO_WEIGHT_MT,
'' NO_PC_REQD,
'' OPTION_CODE,
'' PART_CODE,
'' PIECE_MARK,
POS,
'' POS_ITR,
'' POS_TAG_LO,
'' POS_TAG_SH,
PRESERVATION,
PROJ_ID,
'' QTY_UNIT,
QUANTITY,
REMARKS,
'' ROLL_PLATE_Y_N,
'' SHORT_CODE,
'' SIZE1,
'' SIZE2,
'' SIZE3,
'' SPEC_CODE,
'' SPEC_HEADER_ID,
STAT_ID,
'' STR_ACTIVITY_DESC,
'' STRUCTURE_CODE,
'' TAG_DESCRIPTION,
TAG_LONG_DES,
TAG_NUMBER,
TAG_SHORT_DES,
'' TOTAL_PA,
TYPE,
UNIT,
UNIT_MODULE_GROUP,
'' UNIT_PA,
'' UNIT_WGHT,
'' UNIT_WGHT_UOM,
XS_ACTIVITY_CODE,
XS_ACTIVITY_DESC,
'' XS_COMPONENT,
'' XS_DRAWING_NUMBER,
'' XS_ORDERING_OPTION,
'' XS_STRUC_CODE,
XS_TYPE,
'' XS_VENDOR_NAME,
created_date_time,
month_end_date
from [epr].[MTO_SPMAT_Mechanical_All_Projects]
union all
select 
'' ACTIVITY_CODE,
'' AREA_CWA,
AREA_CWA_DECK,
'' BID_ELEMENT,
BOM_CLIMATE_CONTROL,
BOM_CNTNO,
BOM_DRAWING_NO,
'' BOM_FIM,
BOM_HOLD,
BOM_PRESERVATION,
BOM_SFI,
'' BOM_SHAPE_SPOOL,
'' CG_GROUP_CODE,
CLIENT_PRICE_BREAKDOWN,
'' CLIMATE_CONTROL,
'' COMMODITY_CODE,
CreatedDateTime,
'' DIM_X,
'' DIM_Y,
'' DIM1,
'' DIM2,
DISCIPLINE,
Discipline_description,
DP_ID,
DRAWING_REV,
'' DWG_DESCRIPTION,
ELEMENT,
'' GROUP_NAME,
IDENT,
IDENT_CODE,
IDENT_DESCRIPTION,
ISSUE_STATUS,
'' ITEM_TYPE,
'' LEVEL_,
LIST_STATUS,
LN_ID,
'' LOCATION,
LP_ID,
LST_ID,
'' MATL_CLASSIFICATION,
'' MATL_STATUS,
'' MEMBER_DESC,
'' MP_CATEGORY,
MP_DELV_DESIG,
MP_DRWG_NAME,
MP_FAB_LOCATION,
MP_PROCESS_LINE,
'' MP_REQ_NO,
MP_ROS_DATE,
MP_SELECT_CWA,
MP_SELECT_CWP,
MP_SELECT_IWP,
MP_SELECT_PRIO,
MP_SELECT_WBS,
MP_SEQ_NO,
'' MP_SERVICE,
'' MP_SFI,
MP_SIZE1,
MP_SIZE2,
MP_SIZE3,
MP_SIZE4,
MP_SIZE5,
'' MP_WEIGHT,
'' MTO_TYPE,
'' MTO_WEIGHT,
'' MTO_WEIGHT_MT,
'' NO_PC_REQD,
OPTION_CODE,
'' PART_CODE,
'' PIECE_MARK,
POS,
'' POS_ITR,
'' POS_TAG_LO,
'' POS_TAG_SH,
'' PRESERVATION,
PROJ_ID,
'' QTY_UNIT,
QUANTITY,
REMARKS,
'' ROLL_PLATE_Y_N,
SHORT_CODE,
SIZE1,
SIZE2,
SIZE3,
SPEC_CODE,
SPEC_HEADER_ID,
STAT_ID,
'' STR_ACTIVITY_DESC,
'' STRUCTURE_CODE,
'' TAG_DESCRIPTION,
'' TAG_LONG_DES,
TAG_NUMBER,
'' TAG_SHORT_DES,
'' TOTAL_PA,
TYPE,
UNIT,
UNIT_MODULE_GROUP,
'' UNIT_PA,
UNIT_WGHT,
UNIT_WGHT_UOM,
XS_ACTIVITY_CODE,
XS_ACTIVITY_DESC,
'' XS_COMPONENT,
XS_DRAWING_NUMBER,
'' XS_ORDERING_OPTION,
'' XS_STRUC_CODE,
XS_TYPE,
'' XS_VENDOR_NAME,
created_date_time,
month_end_date
from [epr].[MTO_SPMAT_Piping_All_Projects]
union all
select
'' ACTIVITY_CODE,
'' AREA_CWA,
AREA_CWA_DECK,
'' BID_ELEMENT,
'' BOM_CLIMATE_CONTROL,
BOM_CNTNO,
BOM_DRAWING_NO,
BOM_FIM,
BOM_HOLD,
'' BOM_PRESERVATION,
BOM_SFI,
'' BOM_SHAPE_SPOOL,
CG_GROUP_CODE,
'' CLIENT_PRICE_BREAKDOWN,
'' CLIMATE_CONTROL,
COMMODITY_CODE,
CreatedDateTime,
'' DIM_X,
'' DIM_Y,
'' DIM1,
'' DIM2,
DISCIPLINE,
Discipline_description,
DP_ID,
'' DRAWING_REV,
DWG_DESCRIPTION,
ELEMENT,
'' GROUP_NAME,
IDENT,
IDENT_CODE,
IDENT_DESCRIPTION,
ISSUE_STATUS,
ITEM_TYPE,
'' LEVEL_,
LIST_STATUS,
LN_ID,
'' LOCATION,
LP_ID,
LST_ID,
'' MATL_CLASSIFICATION,
'' MATL_STATUS,
'' MEMBER_DESC,
'' MP_CATEGORY,
MP_DELV_DESIG,
'' MP_DRWG_NAME,
MP_FAB_LOCATION,
'' MP_PROCESS_LINE,
MP_REQ_NO,
MP_ROS_DATE,
MP_SELECT_CWA,
MP_SELECT_CWP,
MP_SELECT_IWP,
MP_SELECT_PRIO,
MP_SELECT_WBS,
MP_SEQ_NO,
'' MP_SERVICE,
'' MP_SFI,
'' MP_SIZE1,
'' MP_SIZE2,
'' MP_SIZE3,
'' MP_SIZE4,
'' MP_SIZE5,
'' MP_WEIGHT,
'' MTO_TYPE,
MTO_WEIGHT,
'' MTO_WEIGHT_MT,
'' NO_PC_REQD,
'' OPTION_CODE,
PART_CODE,
'' PIECE_MARK,
POS,
'' POS_ITR,
'' POS_TAG_LO,
'' POS_TAG_SH,
'' PRESERVATION,
PROJ_ID,
'' QTY_UNIT,
QUANTITY,
REMARKS,
'' ROLL_PLATE_Y_N,
'' SHORT_CODE,
'' SIZE1,
'' SIZE2,
'' SIZE3,
'' SPEC_CODE,
'' SPEC_HEADER_ID,
STAT_ID,
'' STR_ACTIVITY_DESC,
'' STRUCTURE_CODE,
TAG_DESCRIPTION,
'' TAG_LONG_DES,
TAG_NUMBER,
'' TAG_SHORT_DES,
'' TOTAL_PA,
TYPE,
UNIT,
UNIT_MODULE_GROUP,
'' UNIT_PA,
UNIT_WGHT,
UNIT_WGHT_UOM,
XS_ACTIVITY_CODE,
XS_ACTIVITY_DESC,
'' XS_COMPONENT,
'' XS_DRAWING_NUMBER,
'' XS_ORDERING_OPTION,
'' XS_STRUC_CODE,
XS_TYPE,
'' XS_VENDOR_NAME,
created_date_time,
month_end_date
from [epr].[MTO_SPMAT_Electrical_and_instrument_All_Projects]
union all
select 
ACTIVITY_CODE,
AREA_CWA,
'' AREA_CWA_DECK,
BID_ELEMENT,
'' BOM_CLIMATE_CONTROL,
BOM_CNTNO,
'' BOM_DRAWING_NO,
BOM_FIM,
BOM_HOLD,
'' BOM_PRESERVATION,
BOM_SFI,
BOM_SHAPE_SPOOL,
CG_GROUP_CODE,
'' CLIENT_PRICE_BREAKDOWN,
'' CLIMATE_CONTROL,
COMMODITY_CODE,
CreatedDateTime,
DIM_X,
DIM_Y,
DIM1,
DIM2,
DISCIPLINE,
Discipline_description,
DP_ID,
'' DRAWING_REV,
DWG_DESCRIPTION,
'' ELEMENT,
GROUP_NAME,
IDENT,
IDENT_CODE,
IDENT_DESCRIPTION,
ISSUE_STATUS,
ITEM_TYPE,
LEVEL_,
LIST_STATUS,
LN_ID,
LOCATION,
LP_ID,
LST_ID,
MATL_CLASSIFICATION,
MATL_STATUS,
MEMBER_DESC,
MP_CATEGORY,
MP_DELV_DESIG,
MP_DRWG_NAME,
MP_FAB_LOCATION,
'' MP_PROCESS_LINE,
MP_REQ_NO,
MP_ROS_DATE,
'' MP_SELECT_CWA,
MP_SELECT_CWP,
'' MP_SELECT_IWP,
MP_SELECT_PRIO,
'' MP_SELECT_WBS,
MP_SEQ_NO,
MP_SERVICE,
MP_SFI,
'' MP_SIZE1,
'' MP_SIZE2,
'' MP_SIZE3,
'' MP_SIZE4,
'' MP_SIZE5,
MP_WEIGHT,
MTO_TYPE,
'' MTO_WEIGHT,
MTO_WEIGHT_MT,
NO_PC_REQD,
'' OPTION_CODE,
PART_CODE,
PIECE_MARK,
POS,
POS_ITR,
POS_TAG_LO,
POS_TAG_SH,
'' PRESERVATION,
PROJ_ID,
QTY_UNIT,
QUANTITY,
REMARKS,
ROLL_PLATE_Y_N,
'' SHORT_CODE,
SIZE1,
SIZE2,
SIZE3,
'' SPEC_CODE,
'' SPEC_HEADER_ID,
STAT_ID,
STR_ACTIVITY_DESC,
STRUCTURE_CODE,
'' TAG_DESCRIPTION,
'' TAG_LONG_DES,
TAG_NUMBER,
'' TAG_SHORT_DES,
TOTAL_PA,
'' TYPE,
UNIT,
'' UNIT_MODULE_GROUP,
UNIT_PA,
UNIT_WGHT,
UNIT_WGHT_UOM,
'' XS_ACTIVITY_CODE,
'' XS_ACTIVITY_DESC,
XS_COMPONENT,
'' XS_DRAWING_NUMBER,
XS_ORDERING_OPTION,
XS_STRUC_CODE,
'' XS_TYPE,
XS_VENDOR_NAME,
created_date_time,
month_end_date
from [epr].[MTO_SPMAT_Structural_All_Projects]
union all
select 
'' ACTIVITY_CODE,
'' AREA_CWA,
AREA_CWA_DECK,
'' BID_ELEMENT,
BOM_CLIMATE_CONTROL,
BOM_CNTNO,
BOM_DRAWING_NO,
'' BOM_FIM,
BOM_HOLD,
BOM_PRESERVATION,
BOM_SFI,
'' BOM_SHAPE_SPOOL,
'' CG_GROUP_CODE,
CLIENT_PRICE_BREAKDOWN,
'' CLIMATE_CONTROL,
'' COMMODITY_CODE,
CreatedDateTime,
'' DIM_X,
'' DIM_Y,
'' DIM1,
'' DIM2,
DISCIPLINE,
Discipline_description,
DP_ID,
'' DRAWING_REV,
'' DWG_DESCRIPTION,
ELEMENT,
'' GROUP_NAME,
IDENT,
IDENT_CODE,
IDENT_DESCRIPTION,
ISSUE_STATUS,
ITEM_TYPE,
'' LEVEL_,
LIST_STATUS,
LN_ID,
'' LOCATION,
LP_ID,
LST_ID,
'' MATL_CLASSIFICATION,
'' MATL_STATUS,
'' MEMBER_DESC,
'' MP_CATEGORY,
MP_DELV_DESIG,
'' MP_DRWG_NAME,
MP_FAB_LOCATION,
'' MP_PROCESS_LINE,
MP_REQ_NO,
MP_ROS_DATE,
MP_SELECT_CWA,
MP_SELECT_CWP,
MP_SELECT_IWP,
MP_SELECT_PRIO,
MP_SELECT_WBS,
MP_SEQ_NO,
'' MP_SERVICE,
'' MP_SFI,
'' MP_SIZE1,
'' MP_SIZE2,
'' MP_SIZE3,
'' MP_SIZE4,
'' MP_SIZE5,
'' MP_WEIGHT,
'' MTO_TYPE,
'' MTO_WEIGHT,
'' MTO_WEIGHT_MT,
'' NO_PC_REQD,
'' OPTION_CODE,
'' PART_CODE,
'' PIECE_MARK,
POS,
'' POS_ITR,
'' POS_TAG_LO,
'' POS_TAG_SH,
'' PRESERVATION,
PROJ_ID,
'' QTY_UNIT,
QUANTITY,
REMARKS,
'' ROLL_PLATE_Y_N,
'' SHORT_CODE,
'' SIZE1,
'' SIZE2,
'' SIZE3,
'' SPEC_CODE,
'' SPEC_HEADER_ID,
STAT_ID,
'' STR_ACTIVITY_DESC,
'' STRUCTURE_CODE,
'' TAG_DESCRIPTION,
'' TAG_LONG_DES,
TAG_NUMBER,
'' TAG_SHORT_DES,
'' TOTAL_PA,
TYPE,
'' UNIT,
UNIT_MODULE_GROUP,
'' UNIT_PA,
UNIT_WGHT,
UNIT_WGHT_UOM,
XS_ACTIVITY_CODE,
XS_ACTIVITY_DESC,
'' XS_COMPONENT,
'' XS_DRAWING_NUMBER,
'' XS_ORDERING_OPTION,
'' XS_STRUC_CODE,
XS_TYPE,
'' XS_VENDOR_NAME,
created_date_time,
month_end_date
from [epr].[MTO_SPMAT_Subsea_All_Projects];
GO


