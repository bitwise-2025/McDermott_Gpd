/****** Object:  View [dbo].[dim_entp_eng_ven_openclose_task_register_active_v2]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_eng_ven_openclose_task_register_active_v2] AS SELECT [dim_entp_eng_ven_open_tr_nk] as [dim_entp_eng_ven_tr_nk]
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
	  ,NULL as [response_status]
	  ,NUlL as [client_return_date]
      ,[dim_entp_project_nk]
      ,[dim_entp_ven_del_nk]
      ,[dim_entp_eng_del_nk]
      ,[dim_ent_document_status_nk]
      ,[expediting_id]

  FROM [dbo].[dim_entp_eng_ven_open_task_register] OT
  WHERE OT.ACTIVE=1
  --Records from the Open Task register
  UNION 
  --Combine with Closed Task register enuring the  column [dim_entp_eng_ven_tr_nk] does not contain duplicate values
  SELECT (SELECT MAX([dim_entp_eng_ven_open_tr_nk])+[dim_entp_eng_ven_close_tr_nk] FROM [dbo].[dim_entp_eng_ven_open_task_register]) as [dim_entp_eng_ven_tr_nk]
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
  FROM [dbo].[dim_entp_eng_ven_close_task_register] CT
  WHERE CT.ACTIVE=1;
GO
/****** Object:  View [dbo].[dim_entp_eng_openclose_task_register_active_v21]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_eng_openclose_task_register_active_v21] AS SELECT  [dim_entp_eng_ven_tr_nk]
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
      ,[expediting_id],
	  type_class + convert(varchar(500),dim_entp_eng_del_nk) key_eng_del
  FROM [dbo].[dim_entp_eng_ven_openclose_task_register_active_v2]
  where type_class IN ( 'Engineering', 'General');
GO
/****** Object:  View [dbo].[dim_ent_geac_coa_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_ent_geac_coa_active_v]
AS select *,isnull(contract_id,'') + isnull(entity_id,'') contract_entity from [dbo].[dim_ent_geac_coa] 
where active = 1;
GO
/****** Object:  View [dbo].[dim_ent_geac_project_coa_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_ent_geac_project_coa_active_v]
AS select *,isnull(contract_id,'') + isnull(entity_id,'') contract_entity,
(select b.dim_ent_contract_nk from dim_ent_contract_active_v b where b.contract_number = contract_id) dim_ent_contract_nk,
ltrim(rtrim(ident2_code)) + ltrim(rtrim(contract_id)) cost_code_key,'GEAC-' + convert(varchar(50),dim_ent_geac_coa_nk) coa_key from [dbo].[dim_ent_geac_coa] 
where active = 1 and coa_type = 'Project';
GO
/****** Object:  View [dbo].[dim_ent_geac_project_coa_pmr_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
ALTER VIEW [dbo].[dim_ent_geac_project_coa_pmr_active_v] AS select dim_ent_geac_coa_sk,dim_ent_geac_coa_nk,coa_value,entity_id,account_code,ident1_code,
ident2_code,ident3_code,start_date,end_date,hash_code,active,created_date_time,
modified_date_time,late_arrival_flag,coa_type,ident1_description,ident2_description,
ident3_description,classification_id,coa_status,contract_id,entity_description,
account_description,contract_description,ident1_status,ident1_start_date,
ident1_end_date,ident2_status,ident2_start_date,ident2_end_date,sub_source_name,
source_name,
(case when isnull(q.[OME PSR Level 1 Code],'') = '' then PSRLevel1 else q.[OME PSR Level 1 Code] end) PSRLevel1,
(case when isnull(q.[OME PSR Level 2 Code],'') = '' then PSRLevel2 else q.[OME PSR Level 2 Code] end) PSRLevel2,
(case when isnull(q.[OME PSR Level 1],'') = '' then PSRL1Description else q.[OME PSR Level 1] end) PSRL1Description,
(case when isnull(q.[OME PSR Level 2],'') = '' then PSRL2Description else q.[OME PSR Level 2] end) PSRL2Description,
measurable,dim_ent_prime_nk,
dim_ent_sub_prime_nk
,isnull(contract_id,'') + isnull(entity_id,'') contract_entity,
(select b.dim_ent_contract_nk from dim_ent_contract_active_v b 
where b.contract_number = contract_id) dim_ent_contract_nk,
ltrim(rtrim(ident2_code)) + ltrim(rtrim(contract_id)) cost_code_key,'GEAC-' + convert(varchar(50),
dim_ent_geac_coa_nk) coa_key,
(case when isnull(q.[OME PSR Level 3 Code],'') = '' then 'NA' else q.[OME PSR Level 3 Code] end) PSRLevel3,
(case when isnull(q.[OME PSR Level 3],'') = '' then 'NA' else q.[OME PSR Level 3] end) PSRL3Description ,
(case when isnull(q.[OME PSR Level 4 Code],'') = '' then 'NA' else q.[OME PSR Level 4 Code] end) PSRLevel4,
(case when isnull(q.[OME PSR Level 4],'') = '' then 'NA' else q.[OME PSR Level 4] end) PSRL4Description 
from [dbo].[dim_ent_geac_coa] g
Left Outer join gpd.Cost_Code_Exception_Offshore_PMR_JSON_active_v q on (q.contract = g.contract_id and 
q.Entity = g.entity_id and q.[Work Area] = g.ident1_code and q.[Cost Code] = g.ident2_code and q.[Cost Type]=g.ident3_code)
where active = 1 and coa_type = 'Project' and contract_id in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO
*/
/****** Object:  View [dbo].[dim_ent_jde_coa_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_ent_jde_coa_active_v]
AS select a.*,
left(cost_code,2) prime,
(select b.prime_description from dim_ent_prime_active_v b where b.project_number = a.project and  b.prime_code =  left(cost_code,2)) prime_description,
left(cost_code,3) Sub_prime,
(select b.sub_prime_description from dim_ent_sub_prime_active_v b where b.project_number = a.project and  b.sub_prime_code =  left(cost_code,3)) sub_prime_description,
left(cost_type,2) Summary_Cost_Type,
(select b.Summary_Cost_Type_description from dim_ent_summary_cost_type_active_v b where b.project_number = a.project and  b.summary_cost_type =  left(cost_type,2)) summary_cost_type_description,
(select b.dim_ent_contract_nk from dim_ent_contract_active_v b where b.contract_number = a.contract) dim_ent_contract_nk,
ltrim(rtrim(cost_code)) + ltrim(rtrim(project)) cost_code_key,'JDE-' + convert(varchar(50),dim_ent_jde_coa_nk) coa_key
from dim_ent_jde_coa  a where active = 1 
and coa_type = 'Project';
GO
/****** Object:  View [dbo].[dim_ent_jde_coa_pmr_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_ent_jde_coa_pmr_active_v]
AS select a.*,
left(cost_code,2) prime,
(select b.prime_description from dim_ent_prime_active_v b where b.project_number = a.project and  b.prime_code =  left(cost_code,2)) prime_description,
left(cost_code,3) Sub_prime,
(select b.sub_prime_description from dim_ent_sub_prime_active_v b where b.project_number = a.project and  b.sub_prime_code =  left(cost_code,3)) sub_prime_description,
left(cost_type,2) Summary_Cost_Type,
(select b.Summary_Cost_Type_description from dim_ent_summary_cost_type_active_v b where b.project_number = a.project and  b.summary_cost_type =  left(cost_type,2)) summary_cost_type_description,
(select b.dim_ent_contract_nk from dim_ent_contract_active_v b where b.contract_number = a.contract) dim_ent_contract_nk,
ltrim(rtrim(cost_code)) + ltrim(rtrim(project)) cost_code_key,'JDE-' + convert(varchar(50),dim_ent_jde_coa_nk) coa_key
from dim_ent_jde_coa  a where active = 1 
and coa_type = 'Project' and a.project in (
select p.project_number from [dbo].[dim_entp_project_week_closing_period_active_v] a
inner join dim_entp_project p on (p.dim_entp_project_nk=a.dim_entp_project_nk and p.active=1));
GO
/****** Object:  View [dbo].[dim_entp_eng_ven_deliverables_active_v2]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_eng_ven_deliverables_active_v2] AS select z.*,oa.dim_ent_office_nk from(
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
/****** Object:  View [dbo].[dim_entp_eng_ven_milestone_active_v2]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_eng_ven_milestone_active_v2] AS SELECT m.*,
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
GO
/****** Object:  View [dbo].[dim_entp_eng_ven_project_specific_attributes_active_v]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_eng_ven_project_specific_attributes_active_v] AS select *,type_class + convert(varchar(500),dim_entp_eng_del_nk) key_eng_del from [dbo].[dim_entp_eng_ven_project_specific_attributes]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_ven_openclose_task_register_active_v22]    Script Date: 2/15/2024 3:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_entp_ven_openclose_task_register_active_v22] AS select  [dim_entp_eng_ven_close_tr_nk] as [dim_entp_eng_ven_tr_nk]
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
