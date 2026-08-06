/****** Object:  View [dbo].[dim_entp_ven_openclose_task_register_active_v22]    Script Date: 10/11/2023 3:22:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter VIEW [dbo].[dim_entp_ven_openclose_task_register_active_v22]
AS select  [dim_entp_eng_ven_close_tr_nk] as [dim_entp_eng_ven_tr_nk]
      ,[document_id]
      ,[recipient]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[project_number]
      ,[deliverable]
      ,[document_number]
      ,[type_class]
      ,[expedited_version]
      ,[expedited_revision]
      ,[current_version]
      ,[current_revision]
      ,[user_type]
      ,[company]
      ,[expediting_start]
      ,[expediting_due]
      ,[expediting_forecast]
      ,[expediting_actual]
      ,[response_status]
      ,[client_return_date]
      ,[dim_entp_project_nk]
      ,[dim_entp_ven_del_nk]
      ,[dim_entp_eng_del_nk]
      ,[dim_ent_document_status_nk]
      ,[expediting_id]
	,type_class + convert(varchar(500),dim_entp_ven_del_nk) key_ven_del
  FROM  [dbo].[dim_entp_eng_ven_close_task_register] CT
  WHERE CT.ACTIVE=1 and CT.[project_number] in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO

GO

alter VIEW [dbo].[dim_entp_eng_ven_deliverables_active_v2]
AS select z.*,oa.dim_ent_office_nk from(
select
[dim_entp_eng_del_sk]
      ,[dim_entp_eng_del_nk]
,NULL as  [dim_entp_ven_del_sk]
,NULL as  [dim_entp_ven_del_nk]
      ,[document_id]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[project_number]
      ,[deliverable]
      ,[document_number]
      ,[document_title]
      ,[revision] as revision_number
      ,[revision_date]
      ,[holds]
      ,[cwa]
      ,[client_name]
      ,[type_class]
      ,[document_type]
      ,[alternate_doc_number]
      ,[facility_plant_unit]
      ,[total_current_progress]
      ,[ewp]
 ,[cost_code]
      ,[tag_equipment_number]
      ,[approver]
      ,[checker]
      ,[reason_for_change]
      ,[iso_linu]
      ,[iso_name]
      ,NULL as [supplier_name]
      ,NULL as [req_po_number]
      ,NULL as [supplier_doc_number]
      ,NULL as [supplier_revision]
      ,NULL as [received_date]
      ,NULL as [return_date]
      ,NULL as [document_class]
      ,NULL as [sdr_code]
      ,NULL as [requisition_engineer]
      ,NULL as [expeditor]

      ,[superseded_by]
      ,[office_location]
      ,[dim_entp_project_nk]
      ,[dim_entp_cwp_nk]
      ,[dim_ent_discipline_nk]
      ,[dim_ent_document_status_nk]
      ,[dim_ent_sub_function_nk]
      ,[idocs_folder]
      ,[idocs_url]
 ,NULL as [supplier_received_activity_id]
 ,NULL as [approved_wcomments_activity_id]
 ,NULL as [approved_activity_id]
 ,[start_activity_id]
,[idc_activity_id]
,[ifi_activity_id]
,[ifr_activity_id]
,[ifa_activity_id]
,[ica_activity_id]
,[ifb_activity_id]
,[tbe_activity_id]
,[ifp_activity_id]
,[afd_activity_id]
,[afc_final_activity_id]
,[proj_defined_01_activity_id]
,[proj_defined_02_activity_id]
,[proj_defined_03_activity_id]
,[proj_defined_04_activity_id]
,[proj_defined_05_activity_id]
,[proj_defined_06_activity_id]
,[proj_defined_07_activity_id]
,[proj_defined_08_activity_id]
,[proj_defined_09_activity_id]
,[proj_defined_10_activity_id]
,[contract_no]
,[deliverable_type]
,'ENG' as Phase_code,
type_class + convert(varchar(500),dim_entp_eng_del_nk) key_eng_vend_del
from [dbo].[dim_entp_eng_deliverables] ED
where ED.active = 1 and ED.[project_number] in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1))

UNION

SELECT
NULL as [dim_entp_eng_del_sk]
      ,NULL as [dim_entp_eng_del_nk]
      ,[dim_entp_ven_del_sk]
      ,[dim_entp_ven_del_nk]
      ,[document_id]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[project_number]
      ,[deliverable]
      ,[document_number]
      ,[document_title]
      ,[revision_number]
      ,[revision_date]
      ,[holds]
      ,[cwa]
      ,[client_name]
      ,[type_class]
,NULL as [document_type]
,NULL as [alternate_doc_number]
      ,[facility_plant_unit]
      ,[total_current_progress]
      ,[ewp]
 ,NULL as [cost_code]
      ,[tag_equipment_number]
      ,NULL as [approver]
      ,NULL as [checker]
      ,[reason_for_change]
      ,NULL as [iso_linu]
      ,NULL as [iso_name]
      ,[supplier_name]
      ,[req_po_number]
      ,[supplier_doc_number]
      ,[supplier_revision]
      ,[received_date]
      ,[return_date]
      ,[document_class]
      ,[sdr_code]
      ,[requisition_engineer]
      ,[expeditor]

 ,[superseded_by]
      ,[office_location]
      ,[dim_entp_project_nk]
      ,[dim_entp_cwp_nk]
      ,[dim_ent_discipline_nk]
      ,[dim_ent_document_status_nk]
,NULL as [dim_ent_sub_function_nk]
      ,[idocs_folder]
      ,[idocs_url]
 ,[supplier_received_activity_id]
 ,[approved_wcomments_activity_id]
      ,[approved_activity_id]

 ,NULL as [start_activity_id]
,NULL as [idc_activity_id]
,NULL as [ifi_activity_id]
,NULL as [ifr_activity_id]
,NULL as [ifa_activity_id]
,NULL as [ica_activity_id]
,NULL as [ifb_activity_id]
,NULL as [tbe_activity_id]
,NULL as [ifp_activity_id]
,NULL as [afd_activity_id]
,NULL as [afc_final_activity_id]
,NULL as [proj_defined_01_activity_id]
,NULL as [proj_defined_02_activity_id]
,NULL as [proj_defined_03_activity_id]
,NULL as [proj_defined_04_activity_id]
,NULL as [proj_defined_05_activity_id]
,NULL as [proj_defined_06_activity_id]
,NULL as [proj_defined_07_activity_id]
,NULL as [proj_defined_08_activity_id]
,NULL as [proj_defined_09_activity_id]
,NULL as [proj_defined_10_activity_id]
,[contract_no]
,NULL as [deliverable_type]
,'ENG' as Phase_code,
type_class + convert(varchar(500),dim_entp_ven_del_nk) key_eng_vend_del
 FROM [dbo].[dim_entp_ven_deliverables] VD
 WHERE  VD.active=1 and VD.[project_number] in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1)) ) z
 left outer join [dbo].[dim_ent_office_alternative_v] oa on oa.alternative_office_code = z.office_location;

GO
alter VIEW [dbo].[dim_entp_eng_ven_milestone_active_v2] AS SELECT m.*,
ISNULL(cast(floor(cast(ed.revision_date as float)) as datetime),cast(floor(cast(vd.revision_date as float)) as datetime)) as revision_date,
ISNULL(ed.[dim_ent_document_status_nk],vd.[dim_ent_document_status_nk]) as [dim_ent_document_status_nk],
ISNULL(ed.[dim_ent_discipline_nk],vd.[dim_ent_discipline_nk]) as [dim_ent_discipline_nk],
ISNULL(ed.[dim_entp_cwp_nk],vd.[dim_entp_cwp_nk]) as [dim_entp_cwp_nk],
ed.dim_ent_sub_function_nk
FROM [dbo].[dim_entp_eng_ven_milestone] m
LEFT JOIN [dbo].[dim_entp_eng_deliverables] ed ON m.[dim_entp_eng_del_nk]=ed.[dim_entp_eng_del_nk] and ed.active=1
LEFT JOIN [dbo].[dim_entp_ven_deliverables] vd ON m.[dim_entp_ven_del_nk]=vd.[dim_entp_ven_del_nk] and vd.active=1 
WHERE m.active = 1 and m.project_number in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
go

