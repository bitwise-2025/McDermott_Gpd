IF	OBJECT_ID('gpd.NCSA_SMAT_Suppliers_BothSources_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_Suppliers_BothSources_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_ExpeditingLevel_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_ExpeditingLevel_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_FreightDetail_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_FreightDetail_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_InspectionLevel_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_InspectionLevel_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_PO_EXTRACT_NEW','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_PO_EXTRACT_NEW 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_MrrDetail_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_MrrDetail_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_OsdDetail_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_OsdDetail_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_PO_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_PO_v 
GO
IF	OBJECT_ID('dbo.dim_entp_po_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_po_active_v 
GO
IF	OBJECT_ID('dbo.dim_ent_supplier_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_ent_supplier_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_requisition_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_requisition_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_osd_detail_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_osd_detail_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_mrr_detail_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_mrr_detail_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_item_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_item_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_inspection_level_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_inspection_level_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_expediting_level_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_expediting_level_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_freight_detail_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_freight_detail_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_po_detail_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_po_detail_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_po_header_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_po_header_active_v 
GO
IF	OBJECT_ID('gpd.NCSA_SMAT_PO_Detail_v','V') IS NOT NULL 
DROP VIEW gpd.NCSA_SMAT_PO_Detail_v 
GO
/****** Object:  View [dbo].[dim_ent_supplier_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_supplier_active_v]
AS select * from [dbo].[dim_ent_supplier]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_expediting_level_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_expediting_level_active_v]
AS select * from [dbo].[dim_entp_expediting_level]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_freight_detail_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_freight_detail_active_v]
AS select * from [dbo].[dim_entp_freight_detail]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_inspection_level_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_inspection_level_active_v]
AS select * from [dbo].[dim_entp_inspection_level]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_item_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_item_active_v]
AS select * from [dbo].[dim_entp_item]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_mrr_detail_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_mrr_detail_active_v]
AS select * from [dbo].[dim_entp_mrr_detail]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_osd_detail_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_osd_detail_active_v]
AS select * from [dbo].[dim_entp_osd_detail]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_po_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_po_active_v]
AS select * from [dbo].[dim_entp_po]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_po_detail_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_po_detail_active_v]
AS select * from [dbo].[dim_entp_po_detail]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_po_header_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_po_header_active_v]
AS select * from [dbo].[dim_entp_po_header]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_requisition_active_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_requisition_active_v]
AS select * from [dbo].[dim_entp_requisition]
where active = 1;
GO
/****** Object:  View [gpd].[NCSA_SMAT_ExpeditingLevel_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_ExpeditingLevel_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
A.project_number as project_number,
A.EXPEDITING_LEVEL as EXPEDITING_LEVEL,
A.EXPEDITING_LEVEL_DESC as EXPEDITING_LEVEL_DESC
from (
SELECT distinct
N.project_number as project_number,
N.EXPEDITING_LEVEL as EXPEDITING_LEVEL,
N.EXPEDITING_LEVEL_DESC as EXPEDITING_LEVEL_DESC
from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] N
where N.EXPEDITING_LEVEL IS NOT NULL AND N.project_number IS NOT NULL) A;
GO
/****** Object:  View [gpd].[NCSA_SMAT_FreightDetail_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_FreightDetail_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
A.project_number as project_number,
A.ITEM_SHIP_ID as item_ship_id,
A.SLI_NO as sli_no,
A.AWB_NUMBER as awb_number,
A.VOY_FLT_NUM as voy_flt_num
from (
SELECT distinct
N.project_number as project_number,
N.ITEM_SHIP_ID as item_ship_id,
N.SLI_NO as sli_no,
N.AWB_NUMBER as awb_number,
N.VOY_FLT_NUM as voy_flt_num
from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] N
where N.SLi_NO IS NOT NULL AND  N.project_number IS NOT NULL ) A;
GO
/****** Object:  View [gpd].[NCSA_SMAT_InspectionLevel_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_InspectionLevel_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
A.project_number as project_number,
A.INSPECTION_LEVEL as INSPECTION_LEVEL,
A.INSPECTION_LEVEL_DESC as INSPECTION_LEVEL_DESC
from (
SELECT distinct
N.project_number as project_number,
N.INSPECTION_LEVEL as INSPECTION_LEVEL,
N.INSPECTION_LEVEL_DESC as INSPECTION_LEVEL_DESC
from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] N
where N.INSPECTION_LEVEL IS NOT NULL AND N.project_number IS NOT NULL) A;
GO
/****** Object:  View [gpd].[NCSA_SMAT_MrrDetail_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_MrrDetail_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
A.project_number as project_number,
A.ITEM_SHIP_ID as item_ship_id,
A.MRR_NUMBER as mrr_number,
A.ACTUAL_RECV_ONSITE_OR_WHS_DATE as actual_recv_onsite_or_whs_date,
A.MRR_POSTED_DATE as mrr_posted_date,
A.MRR_QUANTITY as mrr_quantity,
A.MRR_CREATED_DATE as mrr_created_date
from (
SELECT distinct
N.project_number as project_number,
N.ITEM_SHIP_ID as item_ship_id,
N.MRR_NUMBER as mrr_number,
N.ACTUAL_RECV_ONSITE_OR_WHS_DATE as actual_recv_onsite_or_whs_date,
N.MRR_POSTED_DATE as mrr_posted_date,
N.MRR_QUANTITY as mrr_quantity,
N.MRR_CREATED_DATE as mrr_created_date
from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] N
where N.MRR_NUMBER IS NOT NULL AND N.project_number IS NOT NULL) A;
GO
/****** Object:  View [gpd].[NCSA_SMAT_OsdDetail_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_OsdDetail_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
A.project_number as project_number,
A.ITEM_SHIP_ID as item_ship_id,
A.MRR_Number as mrr_number,
A.OSD_NUMBER as osd_number,
A.OSD_TYPE as osd_type,
A.OSD_ACTION_TAKEN as osd_action_taken,
A.OSD_REQUEST_ACTION as osd_request_action,
A.OSD_CREATED_DATE as osd_created_date,
A.OSD_QTY as osd_qty,
A.OSD_CLOSED_DATE as osd_closed_date,
A.BALANCE_RN_QTY as balance_rn_qty,
A.BALANCE_MRR_QTY as balance_mrr_qty
from (
SELECT distinct
N.project_number as project_number,
N.ITEM_SHIP_ID as item_ship_id,
N.MRR_Number as mrr_number,
N.OSD_NUMBER as osd_number,
N.OSD_TYPE as osd_type,
N.OSD_ACTION_TAKEN as osd_action_taken,
N.OSD_REQUEST_ACTION as osd_request_action,
N.OSD_CREATED_DATE as osd_created_date,
N.OSD_QTY as osd_qty,
N.OSD_CLOSED_DATE as osd_closed_date,
N.BALANCE_RN_QTY as balance_rn_qty,
N.BALANCE_MRR_QTY as balance_mrr_qty
from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] N
where N.MRR_Number IS NOT NULL AND N.OSD_NUMBER IS NOT NULL AND N.project_number IS NOT NULL) A;
GO
/****** Object:  View [gpd].[NCSA_SMAT_PO_Detail_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_PO_Detail_v]
AS select 
proj.project_number,
po.dim_entp_po_detail_sk,
po.dim_entp_po_detail_nk,
po.po_line_item,
po.po_item_sub,
po.active,
po.created_date_time,
po.modified_date_time,
po.po_qty,
po.requisition,
po.ident_code,
po.tag_number,
po.uom,
po.item_ship_pos,
po.item_ship_sub,
po.item_shipment_qty,
po.item_ship_weight,
po.total_ish_weight,
po.weight_unit,
po.contractual_promise_dd,
po.incoterm,
po.incoterm_delivery_place,
po.routing_method,
po.transit_clearance_days,
po.forecasted_delivery_date,
po.pred_on_site_date,
po.arvl_on_site_forecasted_date,
mrr.actual_recv_onsite_or_whs_date,
po.delivery_designation,
po.ros_date,
po.ros_float,
po.irc_no,
po.irc_qty,
po.irc_approved_date,
po.release_note_no,
po.release_note_qty,
po.release_note_appr_date,
po.balance_irc_qty,
f.sli_no,
f.awb_number,
f.voy_flt_num,
po.etd_date,
po.atd_date,
po.eta_date,
po.ata_date,
mrr.mrr_number,
mrr.mrr_created_date,
mrr.mrr_posted_date,
mrr.mrr_quantity,
osd.osd_number,
osd.osd_created_date,
osd.osd_qty,
osd.osd_type,
osd.osd_request_action,
osd.osd_action_taken,
osd.osd_closed_date,
osd.balance_rn_qty,
osd.balance_mrr_qty,
po.buyer_usr_id,
po.buyer,
po.expediter_usr_id,
po.expediter,
po.package_manager,
po.item_comment,
po.header_comment,
po.agent_1_lt_comment,
po.agent_2_lt_comment,
po.the_color,
po.is_master_tag,
po.currency,
po.total_price,
po.dim_entp_po_header_nk,
po.dim_ent_uom_nk,
po.dim_entp_inspection_level_nk,
po.dim_entp_expediting_level_nk,
po.dim_entp_requisition_nk,
po.dim_entp_item_nk,
po.dim_ent_currency_iso_nk,
po.item_ship_id,
poh.dim_entp_po_header_sk,
poh.po_number,
poh.po_revision,
poh.project_id,
poh.po_description,
poh.po_issue_date,
poh.po_status,
poh.po_date,
poh.supplier_name,
poh.discipline,
poh.dim_entp_project_nk,
poh.dim_ent_supplier_nk,
poh.dim_ent_discipline_nk
from dim_Entp_po_detail po
left outer join dim_entp_po_header poh on (poh.dim_entp_po_header_nk=po.dim_entp_po_header_nk and poh.active=1 )
left outer join dim_entp_item i on (i.dim_entp_item_nk=po.dim_entp_item_nk and i.active=1)
left outer join dim_entp_inspection_level il on (il.dim_entp_inspection_level_nk=po.dim_entp_inspection_level_nk and il.active=1)
left outer join dim_entp_expediting_level el on (el.dim_entp_expediting_level_nk=po.dim_entp_expediting_level_nk and el.active=1)
left outer join dim_entp_requisition r on (r.dim_entp_requisition_nk=po.dim_entp_requisition_nk and r.active=1)
left outer join dim_ent_unit_of_measure_active_v u on (u.dim_ent_unit_of_measure_nk=po.dim_ent_uom_nk)
left outer join dim_ent_currency_iso_active_v ciso on (ciso.dim_ent_currency_iso_nk=po.dim_ent_currency_iso_nk)
left outer join dim_ent_discipline_active_v d on (d.dim_ent_discipline_nk=poh.dim_ent_discipline_nk)
left outer join dim_ent_supplier s on (s.dim_ent_supplier_nk=poh.dim_ent_supplier_nk and s.active=1)
left outer join dim_entp_project proj on (proj.dim_entp_project_nk=poh.dim_entp_project_nk and proj.active=1)
left outer join dim_entp_freight_detail f on (f.item_ship_id=po.item_ship_id and f.active=1)
full outer join dim_entp_mrr_detail mrr on (mrr.item_ship_id=po.item_ship_id and mrr.active=1)
full outer join dim_entp_osd_detail osd on (osd.dim_entp_mrr_detail_nk=mrr.dim_entp_mrr_detail_nk and osd.active=1)
where po.active=1;
GO
/****** Object:  View [gpd].[NCSA_SMAT_PO_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_PO_v]
AS WITH NCSA_SMAT_PO_VIEW AS
(
SELECT
    ROW_NUMBER() OVER(order by (select 0) ) as stage_smat_po_id,
	A.project_number as project_number,
	A.PO_NUMBER as PO_NUMBER,
	A.PACKAGE_DESCRIPTION as PACKAGE_DESCRIPTION,
	A.PO_REVISION as PO_REVISION,
	ROW_NUMBER() OVER(PARTITION BY PO_NUMBER ORDER BY PO_NUMBER,PO_REVISION DESC) AS CountNum
    FROM [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] A
	where A.PO_NUMBER IS NOT NULL AND A.project_number IS NOT NULL
)
SELECT stage_smat_po_id,project_number, PO_NUMBER, PACKAGE_DESCRIPTION
FROM NCSA_SMAT_PO_VIEW
WHERE CountNum=1;
GO
/****** Object:  View [gpd].[NCSA_SMAT_Suppliers_BothSources_v]    Script Date: 6/24/2022 3:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_SMAT_Suppliers_BothSources_v]
AS SELECT ROW_NUMBER() OVER(
                         ORDER BY
                           (SELECT 0)) AS stage_smat_po_id,
       A.SUPPLIER_CODE AS SUPPLIER_CODE,
       A.SUPPLIER_NAME AS SUPPLIER_NAME,
       A.country_code_alpha2 AS SUPPLIER_COUNTRY,
	   A.dim_ent_country_iso_nk as dim_ent_country_nk
FROM
  (SELECT DISTINCT a.SUPPLIER_CODE,
                   a.SUPPLIER_NAME,
                   b.country_code_alpha2,
				   b.dim_ent_country_iso_nk
   FROM [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] a
   JOIN dim_ent_country_iso b ON a.supplier_country=b.country_code_alpha3
   WHERE b.active=1
   UNION SELECT DISTINCT a.SUPPLIER_CODE,
                         a.SUPPLIER_NAME,
                         b.country_code_alpha2,
						 b.dim_ent_country_iso_nk
   FROM [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] a
   JOIN dim_ent_country_iso b ON a.supplier_country=b.country_code_alpha2
   WHERE b.active=1) A;
GO
