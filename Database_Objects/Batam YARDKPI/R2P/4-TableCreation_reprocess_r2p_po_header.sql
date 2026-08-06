/****** Object:  Table [yardkpi].[reprocess_r2p_po_header]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP TABLE [yardkpi].[reprocess_r2p_po_header]

CREATE TABLE [yardkpi].[reprocess_r2p_po_header]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_name] [varchar](50) NULL,
	[sub_source_name] [varchar](50) NULL,
	[project_number] [varchar](300) NULL,
	[project_name] [varchar](8000) NULL,
	[requisition_bu] [varchar](300) NULL,
	[requisition_no] [varchar](500) NULL,
	[requisition_originator] [varchar](8000) NULL,
	[req_submission_date] [datetime] NULL,
	[req_approved_date] [datetime] NULL,
	[purchaser_or_requester] [varchar](8000) NULL,
	[po_no] [varchar](8000) NULL,
	[source_poh_id] [varchar](30) NULL,
	[source_base_poh_id] [varchar](30) NULL,
	[req_start_date] [datetime] NULL,
	[req_end_date] [datetime] NULL,
	[smat_rev_no] [varchar](300) NULL,
	[po_rev] [varchar](100) NULL,
	[po_description] [varchar](8000) NULL,
	[po_status] [varchar](100) NULL,
	[po_creation_date] [datetime] NULL,
	[po_approved_date] [datetime] NULL,
	[first_po_version_amount] [DECIMAL](20,5) NULL,
	[first_po_version_receive_date] [datetime] NULL,
	[acknowledgement_date] [datetime] NULL,
	[po_currency] [varchar](100) NULL,
	[payment_terms] [varchar](300) NULL,
	[incoterm] [varchar](8000) NULL,
	[selection_code] [varchar](300) NULL,
	[mpp_po] [varchar](300) NULL,
	[original_po_amount] [DECIMAL](20,5) NULL,
	[po_amount_in_usd] [DECIMAL](20,5) NULL,
	[charge_account] [varchar](8000) NULL,
	[supplier] [varchar](8000) NULL,
	[supplier_num] [varchar](300) NULL,
	[supplier_site] [varchar](300) NULL,
	[supplier_type] [varchar](300) NULL,
	[supplier_country] [varchar](300) NULL,
	[buyer] [varchar](500) NULL,
	[po_approver] [varchar](500) NULL,
	[po_closed_date] [datetime] NULL,
	[agreement_number] [varchar](500) NULL,
	[material_work_group] [varchar](500) NULL,
	[source_po] [varchar](500) NULL,
	[buyer_email_id] [varchar](500) NULL,
	[requester_email_id] [varchar](500) NULL,
	[last_update_date][datetime] NULL,
	[hash_code] [varchar](8000) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO