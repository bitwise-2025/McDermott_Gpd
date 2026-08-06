IF	OBJECT_ID('dbo.dim_entp_contract_entity_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_contract_entity_active_v 
GO
IF	OBJECT_ID('dbo.dim_ent_global_phase_alternative_v','V') IS NOT NULL 
DROP VIEW dbo.dim_ent_global_phase_alternative_v 
GO
IF	OBJECT_ID('dbo.dim_entp_phase_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_phase_v 
GO
IF	OBJECT_ID('dbo.transaction_statistics_v','V') IS NOT NULL 
DROP VIEW dbo.transaction_statistics_v 
GO
IF	OBJECT_ID('dbo.dim_ent_geac_project_coa_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_ent_geac_project_coa_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_eng_ven_project_specific_attributes_active_v','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_eng_ven_project_specific_attributes_active_v 
GO
IF	OBJECT_ID('dbo.dim_entp_eng_ven_deliverables_active_v2','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_eng_ven_deliverables_active_v2 
GO
IF	OBJECT_ID('dbo.dim_entp_ven_openclose_task_register_active_v22','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_ven_openclose_task_register_active_v22 
GO
IF	OBJECT_ID('dbo.dim_entp_eng_openclose_task_register_active_v21','V') IS NOT NULL 
DROP VIEW dbo.dim_entp_eng_openclose_task_register_active_v21 
GO
IF	OBJECT_ID('dbo.dim_ent_date_v','V') IS NOT NULL 
DROP VIEW dbo.dim_ent_date_v 
GO




/****** Object:  View [dbo].[dim_entp_eng_ven_deliverables_active_v2]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_eng_ven_deliverables_active_v2]
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
		,'ENG' as Phase_code,
		type_class + convert(varchar(500),dim_entp_eng_del_nk) key_eng_vend_del
from [dbo].[dim_entp_eng_deliverables] ED
where ED.active = 1

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
		,'ENG' as Phase_code,
		type_class + convert(varchar(500),dim_entp_ven_del_nk) key_eng_vend_del
	  FROM [dbo].[dim_entp_ven_deliverables] VD
	  WHERE  VD.active=1 ) z
	  left outer join [dbo].[dim_ent_office_alternative_v] oa on oa.alternative_office_code = z.office_location;
GO
/****** Object:  View [dbo].[dim_entp_eng_openclose_task_register_active_v21]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_eng_openclose_task_register_active_v21]
AS SELECT  [dim_entp_eng_ven_tr_nk]
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
/****** Object:  View [dbo].[dim_entp_eng_ven_project_specific_attributes_active_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_eng_ven_project_specific_attributes_active_v]
AS select *,type_class + convert(varchar(500),dim_entp_eng_del_nk) key_eng_del from [dbo].[dim_entp_eng_ven_project_specific_attributes]
where active = 1;
GO
/****** Object:  View [dbo].[transaction_statistics_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[transaction_statistics_v] ([dim_entp_project_nk], [source_name], [sub_source_name], [data_class_name], [data_sub_class_name], [transaction_date], [measure_count]) AS with cte1 (pnk, s, ss, c, sc, td) as (
select         b.[dim_entp_project_nk]
              ,b.[dim_entp_source_nk]
              ,b.[dim_entp_sub_source_nk]
              ,b.[dim_entp_data_class_nk]
              ,b.[dim_entp_data_sub_class_nk]
              ,b.[transaction_date]
from (select   a.[dim_entp_project_nk]
              ,a.[dim_entp_source_nk]
              ,a.[dim_entp_sub_source_nk]
              ,a.[dim_entp_data_class_nk]
              ,a.[dim_entp_data_sub_class_nk]
              ,a.[transaction_date]
              ,dense_rank() over(partition by a.temp_hash_key, a.dim_entp_data_class_nk,  a.dim_entp_data_sub_class_nk, a.transaction_date order by a.created_date_time desc) dr
              ,row_number() over(partition by a.temp_hash_key, a.dim_entp_data_class_nk, a.dim_entp_data_sub_class_nk, a.transaction_date order by a.created_date_time desc) rn
	  from [dbo].[fact_ops_v1] a) b
where dr = 1
and rn = 1),
cte2 (pnk, s, ss, c, sc, td) as (
select		  a.dim_ent_project_nk,
              a.dim_ent_source_sk,
              a.dim_ent_sub_source_sk,
              a.dim_ent_data_class_sk,
              a.dim_ent_data_sub_class_sk,
              cast(a.process_date As Date)
from fact_project_xd a),
cte3 (pnk, s, ss, c, sc, td) as (
select		  a.dim_entp_project_nk,
			  a.dim_entp_source_sk,
			  a.dim_entp_sub_source_sk,
              a.dim_entp_data_class_sk,
              a.dim_entp_data_sub_class_sk,
              cast(a.transaction_date As Date)
from fact_ops_man_hour_histogram a),
cte4 (pnk, s, ss, c, sc, td) as (
select		  b.dim_ent_project_nk ,
              a.dim_ent_source_sk,
              a.dim_ent_sub_source_sk,
              a.dim_ent_data_class_sk,
              a.dim_ent_data_sub_class_sk,
              cast(a.created_date_time As Date)
from fact_ent_time a, dim_ent_contract b
where a.dim_ent_contract_sk = b.dim_ent_contract_sk),
cte5 (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -1,
              -1,
              -1,
              cast(a.created_date_time As Date)
from		dim_entp_eng_ven_milestone_active_v2 a,
            dim_entp_project_v b
where  a.dim_entp_project_nk = b.dim_entp_project_nk),
cte11 (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -1,
              -1,
              -2,
              cast(a.created_date_time As Date)
from		dim_entp_eng_ven_deliverables_active_v2 a,
            dim_entp_project_v b
where		a.dim_entp_project_nk = b.dim_entp_project_nk),
cte12 (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -1,
              -1,
              -3,
              cast(a.created_date_time As Date)
from		  dim_entp_eng_ven_project_specific_attributes_active_v a,
              dim_entp_project_v b
where		  a.dim_entp_project_nk = b.dim_entp_project_nk),
cte13 (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -1,
              -1,
              -5,
              cast(a.created_date_time As Date)
from		  dim_entp_eng_openclose_task_register_active_v21 a,
              dim_entp_project_v b
where		  a.dim_entp_project_nk = b.dim_entp_project_nk),
cte14  (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -4,
              -1,
              -6,
              cast(a.created_date_time As Date)
from		  dim_entp_po_header_active_v a,
              dim_entp_project_v b
where		  a.dim_entp_project_nk = b.dim_entp_project_nk),
cte15 (pnk, s, ss, c, sc, td) as (
select		   b.dim_entp_project_nk,
              -1,
              -2,
              -2,
              -4,
              cast(a.created_date_time As Date)
from		  dim_ent_geac_coa_active_v a, 
              dim_ent_contract_v b
where		  a.contract_id = b.contract_number),
cte21 (pnk, s, ss, c, sc, td) as (
select        b.dim_entp_project_nk,
              c.dim_ent_source_nk,
              d.dim_ent_sub_source_nk,
              -2,
              -4,
              cast(a.created_date_time As Date)
from          dim_ent_jde_coa_active_v a,
              dim_entp_project_v b,
              dim_ent_source_active_v c,
              dim_ent_sub_source_active_v d
where		  a.project = b.project_number
and           a.source_name = c.source_name
and           a.source_name = d.source_name
and           a.sub_source_name = d.sub_source_name),
cte10 (pnk, s, ss, c, sc, td) as (
select		   -999,
              -1,
              -3,
              -1,
              -4,
               a.created_date_time
from		  dim_ent_employee_active_v a),
cte_all (pnk, s, ss, c, sc, td) as (
select pnk, s, ss, c, sc, td from cte1
union all
select pnk, s, ss, c, sc, td from cte2
union all
select pnk, s, ss, c, sc, td from cte3
union all
select pnk, s, ss, c, sc, td from cte4
union all
select pnk, s, ss, c, sc, td from cte5
union all
select pnk, s, ss, c, sc, td from cte11
union all
select pnk, s, ss, c, sc, td from cte12
union all
select pnk, s, ss, c, sc, td from cte13
union all
select pnk, s, ss, c, sc, td from cte14
union all
select pnk, s, ss, c, sc, td from cte15
union all
select pnk, s, ss, c, sc, td from cte21),
cte_final (pnk, s, ss, c, sc, td, tot) as (
select pnk, s, ss, c, sc, td, count(*) 
from   cte_all
group by pnk, s, ss, c, sc, td), 
cte_final_ps (pnk, sdesc, ss, c, sc, td, tot) as (
select		  a.pnk,
              b.source_name,
              a.ss,
              a.c,
              a.sc,
              a.td,
              a.tot
from		 cte_final a,
              (select dim_ent_source_sk, source_name from dim_ent_source 
              union all 
              select -1, 'SYSTEM') b
where  a.s = b.dim_ent_source_sk), 
cte_final_pss (pnk, sdesc, ssdesc, c, sc, td, tot) as (
select		 a.pnk,
              a.sdesc,
              b.sub_source_name,
              a.c,
              a.sc,
              a.td,
              a.tot
from   cte_final_ps a,
              (select dim_ent_sub_source_sk, sub_source_name
              from dim_ent_sub_source 
               union all
              select -1, 'IDOCS'
              union all
              select -2, 'GEAC'
              union all
              select -3, 'JDE'
			  union all
              select -4, 'CO-CONSOL') b
where  a.ss = b.dim_ent_sub_source_sk), 
cte_final_pssc (pnk, sdesc, ssdesc, cdesc, sc, td, tot) as (
select  a.pnk,
              a.sdesc,
              a.ssdesc,
              b.data_class_name,
              a.sc,
              a.td,
              a.tot
from   cte_final_pss a,
              (select dim_ent_data_class_sk, data_class_name from dim_ent_data_class 
               union all
              select -1, 'COUNT'
              union all
              select -2, 'COA') b
where  a.c = b.dim_ent_data_class_sk), 
cte_final_psscsc (pnk, sdesc, ssdesc, cdesc, scdesc, td, tot) as (
select  a.pnk,
              a.sdesc,
              a.ssdesc,
              a.cdesc,
              b.data_sub_class_name,
              a.td,
              a.tot
from   cte_final_pssc a,
              (select dim_ent_data_sub_class_sk, data_sub_class_name from dim_ent_data_sub_class
              union all
              select -1, 'ENGINEERING VENDOR MILESTONE'
              union all 
               select -2, 'ENGINEERING VENDOR DELIVERABLES'
              union all 
               select -3, 'PROJECT SPECIFIC ATTRIBUTES'
              union all
              select -4, 'COA COUNT'
			  union all
              select -5, 'ENGINEERING TASK REGISTER'
			  union all
              select -6, 'PURCHASE ORDER'
			  union all
              select -7, 'COMMISSIONING A & B SHEET'
			  union all
              select -8, 'COMMISSIONING SUB SYSTEMS'
			  union all
              select -9, 'COMMISSIONING SYSTEMS'
			  union all
              select -10, 'COMMISSIONING TAGS') b
where  a.sc = b.dim_ent_data_sub_class_sk)
select * from cte_final_psscsc;
GO
/****** Object:  View [dbo].[dim_ent_date_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_date_v]
AS select * from [dbo].[dim_ent_date];
GO
/****** Object:  View [dbo].[dim_ent_geac_project_coa_active_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_geac_project_coa_active_v]
AS select *,isnull(contract_id,'') + isnull(entity_id,'') contract_entity from [dbo].[dim_ent_geac_coa] 
where active = 1 and coa_type = 'Project';
GO
/****** Object:  View [dbo].[dim_ent_global_phase_alternative_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_global_phase_alternative_v] AS select dim_ent_global_phase_sk,dim_ent_global_phase_nk,phase_code,phase_name,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,
	value as alternative_phase_code from [dbo].[dim_ent_global_phase]
	CROSS APPLY STRING_SPLIT(phase_alternative, '|') where  isnull(trim(value),'') <> '' and active = 1;
GO
/****** Object:  View [dbo].[dim_entp_contract_entity_active_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_contract_entity_active_v] AS select  case when len(project_number) = 4 then ltrim(rtrim(project_number)) + entity else contract_no end  contract_entity,max(location) location from dbo.dim_entp_contract_entity
where active=1
group by case when len(project_number) = 4 then ltrim(rtrim(project_number)) + entity else contract_no end;
GO
/****** Object:  View [dbo].[dim_entp_phase_v]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_phase_v] AS select * from [dbo].[dim_entp_phase]
where active = 1;
GO
/****** Object:  View [dbo].[dim_entp_ven_openclose_task_register_active_v22]    Script Date: 6/24/2022 3:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_ven_openclose_task_register_active_v22]
AS SELECT  [dim_entp_eng_ven_tr_nk]
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
	  type_class + convert(varchar(500),dim_entp_ven_del_nk) key_ven_del
  FROM [dbo].[dim_entp_eng_ven_openclose_task_register_active_v2]
  where type_class = 'Vendor';
GO
