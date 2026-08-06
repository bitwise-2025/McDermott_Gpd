/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_ProgressItem_validate]    Script Date: 11/8/2021 3:26:09 AM ******/
DROP PROCEDURE [dbo].[load_NCSA_fact_MCPM_ProgressItem_validate]
GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_ProgressItem_validate]    Script Date: 11/8/2021 3:26:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_MCPM_ProgressItem_validate] AS
BEGIN
   
SET NOCOUNT ON

declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int

    
DECLARE @Date DATETIME;
SET @Date = GETDATE();

/*-----------------------------------------------------------------------------------------------------
Change Log : 
Date		 |  Developer | Change Description/User Story
-------------------------------------------------------------------------------------------------------
05/05/2021 ;	Satish		; Change: Add Logic to insert missing CoA into the DIM JDE CoA table -------------------------------- 
06/30/2021 ;	Satish		; Change: Add logic to pull Earned Quantity and Earned Hours from source and prep for FACT load -------------------------------- 
07/12/2021 ;	Satish		; Change: Add logic to pull variance Actual Amount and Variance Actual Hrs for FACT load -------------------------------- 
09/29/2021 ;	Satish		; Change: Shifting Phase/UOM to MCMP source dim tables; 	
-----------------------------------------------------------------------------------------------------*/



UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set load_date_time = @Date


--Update Project
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--	'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_entp_project', 'dim_ent_project_sk', 'dim_ent_project_nk', 'dim_entp_project_sk', 
--	'dim_entp_project_nk', 'Domain', 'project_number', 'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_project_sk','dim_ent_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'Domain','project_number','FL',null;



--Pull records from reprocess into main stage table and clear the reprocess table.

INSERT INTO [gpd].[NCSA_MCPM_ProgressItems_Onshore]
([Domain],	[KeyUoM],	[CutOff],	[CoA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_jde_coa_sk],	[dim_ent_jde_coa_nk],
[dim_ent_work_unit_sk],	[dim_ent_work_unit_nk],	[dim_ent_work_area_sk],	[dim_ent_work_area_nk],	[dim_entp_phase_sk],	[dim_entp_phase_nk],
[dim_ent_function_sk],	[dim_ent_function_nk],	[dim_entp_cwp_sk],	[dim_entp_cwp_nk],	[dim_entp_schedule_resource_sk],
[dim_entp_schedule_resource_nk],	[dim_entp_activity_sk],	[dim_entp_activity_nk],	[dim_entp_iwp_sk],	[dim_entp_iwp_nk],
[dim_entp_pim_sk],	[dim_entp_pim_nk],	[dim_entp_roc_sk],	[dim_entp_roc_nk],	[dim_ent_data_class_quantity_sk],
[dim_ent_data_class_quantity_nk],	[dim_ent_data_class_hours_sk],	[dim_ent_data_class_hours_nk],	[dim_ent_source_sk],
[dim_ent_source_nk],	[dim_ent_sub_source_sk],	[dim_ent_sub_source_nk],	[dim_ent_unit_of_measure_quantity_sk],
[dim_ent_unit_of_measure_quantity_nk],	[dim_ent_unit_of_measure_hours_sk],	[dim_ent_unit_of_measure_hours_nk],
[cwp_code],	[schedule_resource_code],	[activity_code],	[iwp_code],	[pim_code],	[roc_code],	[function_code],	[source_code],
[sub_source_code],	[dim_ent_data_sub_class_variance_earned_quantity_sk],	[dim_ent_data_sub_class_variance_earned_quantity_nk],
[dim_ent_data_sub_class_variance_earned_hours_sk],	[dim_ent_data_sub_class_variance_earned_hours_nk],
[sub_class_earned_variance_quantity_code],	[sub_class_earned_variance_hours_code],	[unit_of_measure_code_quantity],
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk] ,[data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk] ,[parent_rssk], [load_date_time])

SELECT
[Domain],	[KeyUoM],	[CutOff],	[CoA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],	
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_jde_coa_sk],	[dim_ent_jde_coa_nk],	
[dim_ent_work_unit_sk],	[dim_ent_work_unit_nk],	[dim_ent_work_area_sk],	[dim_ent_work_area_nk],	[dim_entp_phase_sk],	[dim_entp_phase_nk],	
[dim_ent_function_sk],	[dim_ent_function_nk],	[dim_entp_cwp_sk],	[dim_entp_cwp_nk],	[dim_entp_schedule_resource_sk],	
[dim_entp_schedule_resource_nk],	[dim_entp_activity_sk],	[dim_entp_activity_nk],	[dim_entp_iwp_sk],	[dim_entp_iwp_nk],	
[dim_entp_pim_sk],	[dim_entp_pim_nk],	[dim_entp_roc_sk],	[dim_entp_roc_nk],	[dim_ent_data_class_quantity_sk],
[dim_ent_data_class_quantity_nk],	[dim_ent_data_class_hours_sk],	[dim_ent_data_class_hours_nk],	[dim_ent_source_sk],
[dim_ent_source_nk],	[dim_ent_sub_source_sk],	[dim_ent_sub_source_nk],	[dim_ent_unit_of_measure_quantity_sk],
[dim_ent_unit_of_measure_quantity_nk],	[dim_ent_unit_of_measure_hours_sk],	[dim_ent_unit_of_measure_hours_nk],
[cwp_code],	[schedule_resource_code],	[activity_code],	[iwp_code],	[pim_code],	[roc_code],	[function_code],	[source_code],	
[sub_source_code],	[dim_ent_data_sub_class_variance_earned_quantity_sk],	[dim_ent_data_sub_class_variance_earned_quantity_nk],	
[dim_ent_data_sub_class_variance_earned_hours_sk],	[dim_ent_data_sub_class_variance_earned_hours_nk],	
[sub_class_earned_variance_quantity_code],	[sub_class_earned_variance_hours_code],[unit_of_measure_code_quantity],
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk] ,[data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk] ,ISNULL([parent_rssk],[rssk]), [created_date_time]
FROM 
[gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]


DELETE FROM [gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]




-------------------------------------------------------Logic for inserting missing CoA into the JDE CoA table--------------------------------



TRUNCATE table gpd.coa_MCPM_PI

INSERT into gpd.coa_MCPM_PI
	(coa_value,coa_type,project,
	   projectname,account,contract,contractdesc,contract_entity,
	  contract_entity_desc,contract_status,project_entity,project_entity_description,
	  areaunit,areadesc,costcode,costdescription,costtype,coa_status,source_name,
	  sub_source_name,load_date)
select DISTINCT 'JDE.' + '00' + left(ltrim(rtrim(Contract)),3) + '.' + CoA as coa_value,'Project' as coa_type,Domain as project,
	  '' as projectname,
	   '   ' + ltrim(rtrim(CoA)) as account ,Contract as contract,'' as contractdesc,'00' + left(ltrim(rtrim(Contract)),3) as contract_entity,
	   '' as contract_entity_desc,'Active' as contract_status ,'00' + left(ltrim(rtrim(Contract)),3) as project_entity,'' as project_entity_description,
	   WorkArea as areaunit,'' as areadesc,costcode,'' as costdescription,costtype,'Active' as coa_status,'System' as source_name,
	   'MCPM Onshore' as sub_source_name,getdate() as load_date
     from gpd.NCSA_MCPM_ProgressItems_Onshore

--DELETE CoA records that already exist the JDE CoA table. 

	 DELETE  gpd.coa_MCPM_PI
	 FROM gpd.coa_MCPM_PI a,
	 dim_ent_jde_coa b
	 WHERE a.coa_value = b.coa_value
	 and b.Active = 1

--Update Missing data

	UPDATE gpd.coa_MCPM_PI set areaunit = '000' where areaunit = '0'
	
	UPDATE gpd.coa_MCPM_PI
	set  projectname = b.project_name
	FROM gpd.coa_MCPM_PI a
	JOIN dbo.dim_entp_project b ON a.project = b.project_number


--Run the Generic routine to insert the missing values
	
	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_mcpm_coa_pi','Y','N','Y'


--------------------------------------------------------------------------
	   		 
--Update CoA
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_jde_coa_sk = b.dim_ent_jde_coa_sk,
dim_ent_jde_coa_nk = b.dim_ent_jde_coa_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.DIM_ENT_JDE_COA b
where LTRIM(RTRIM(b.account_code)) = a.CoA
and b.active = 1


--Update Work Unit 
update  [gpd].[NCSA_MCPM_ProgressItems_Onshore]
	set dim_ent_work_unit_sk = wu.dim_entp_work_unit_sk,
	dim_ent_work_unit_nk = wu.dim_entp_work_unit_nk
	from [gpd].[NCSA_MCPM_ProgressItems_Onshore] mp,
	[dbo].[dim_entp_work_unit] wu,
	[dbo].[dim_entp_work_area] wa
	where wa.active  = 1
	and wa.active = 1
	and wa.dim_entp_project_nk = mp.dim_ent_project_nk
	and wu.dim_entp_project_nk = mp.dim_ent_project_nk
	and wa.work_area_code = mp.workarea
	and wu.dim_entp_work_unit_nk = wa.dim_entp_work_unit_nk
	--and isnull(work_unit,'') = ''


-- Update Work ARea
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_work_area_sk = b.dim_entp_work_area_sk,
dim_ent_work_area_nk = b.dim_entp_work_area_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_work_area b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.WorkArea = b.work_area_code
and b.active = 1


-- Update Phase
/*----- Shifting the logic to start using Phase directly from Source ----
update [gpd].[NCSA_MCPM_ProgressItems_Onshore] 
	set dim_entp_phase_sk = d.dim_entp_phase_sk,
	dim_entp_phase_nk = d.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_work_area b
	,[dbo].[dim_entp_phase] d
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.WorkArea = b.work_area_code
	and b.dim_entp_phase_nk  = d.dim_entp_phase_nk
	and b.active = 1
	and d.active = 1
--------------*/
-------09/29/21 Satish :  Phase SK/NK is derieved based on Phase column instead via WorkArea

	update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
	set dim_entp_phase_sk = b.dim_entp_phase_sk,
	dim_entp_phase_nk = b.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_phase b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.Phase = b.phase_code
	and b.active = 1


-- Update Function
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--			'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_ent_function', 'dim_ent_function_sk', 'dim_ent_function_nk', 'dim_ent_function_sk', 
--			'dim_ent_function_nk', 'function_code', 'function_code', 'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_function_sk','dim_ent_function_nk','dim_ent_function','dim_ent_function_sk','dim_ent_function_nk', 
       'function_code','function_code','FL',null;


--Update CWP 
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_cwp_sk = b.dim_entp_cwp_sk,
dim_entp_cwp_nk = b.dim_entp_cwp_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_cwp b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.cwp_code = b.cwp_code
and b.active = 1
		

--Update Schedule Resource 
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_schedule_resource_sk = b.dim_entp_schedule_resource_sk,
dim_entp_schedule_resource_nk = b.dim_entp_schedule_resource_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_schedule_resource b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.schedule_resource_code = b.schedule_resource_code
and b.active = 1


--Update Activity
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_activity_sk = b.dim_entp_activity_sk,
dim_entp_activity_nk = b.dim_entp_activity_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_activity b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.activity_code = b.activity_code
and b.active = 1


--Update IWP
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_iwp_sk = b.dim_entp_iwp_sk,
dim_entp_iwp_nk = b.dim_entp_iwp_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_iwp b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.iwp_codE = b.iwp_code
and b.active = 1


--Update PIM
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_pim_sk = b.dim_entp_pim_sk,
dim_entp_pim_nk = b.dim_entp_pim_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_pim b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.pim_code = b.pim_code
and b.active = 1


--Update ROC
UPDATE [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_entp_roc_sk = b.dim_entp_roc_sk,
dim_entp_roc_nk = b.dim_entp_roc_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_entp_roc b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.roc_code = b.roc_code
--and a.step = b.rocs_step
and b.active = 1


--Update Data Class for Quantity
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--		'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_ent_data_class', 'dim_ent_data_class_quantity_sk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_sk', 
--		'dim_ent_data_class_nk', 'data_class_quantity_code', 'data_class_name', 'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_data_class_quantity_sk','dim_ent_data_class_quantity_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_quantity_code','data_class_name','F',null;

--Update Data Class for Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_data_class_amount_sk','dim_ent_data_class_amount_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_amount_code','data_class_name',NULL,null;
			
--Update Data Class for Hours
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--		'gpd.NCSA_MCPM_ProgressItems_Onshore','dim_ent_data_class','dim_ent_data_class_hours_sk','dim_ent_data_class_hours_nk','dim_ent_data_class_sk', 
--		'dim_ent_data_class_nk','data_class_hours_code', 'data_class_name','load_date_time', 'fact_ops', 1
		
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_data_class_hours_sk','dim_ent_data_class_hours_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_hours_code','data_class_name','L',null;


--Update Data Sub Class -  Variance Earned Quantity
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_variance_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_variance_earned_quantity_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
and a.sub_class_earned_variance_quantity_code = b.data_sub_class_name
and b.active = 1


--Update Data Sub Class - Variance Earned Hours
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_variance_earned_hours_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_variance_earned_hours_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
and a.sub_class_earned_variance_hours_code = b.data_sub_class_name
and b.active = 1


--Update Data Sub Class - Cumulative Earned Quantity
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_earned_quantity_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
and a.sub_class_earned_quantity_code = b.data_sub_class_name
and b.active = 1

--Update Data Sub Class - Cumulative Earned Hours
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_earned_hours_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_earned_hours_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
and a.sub_class_earned_hours_code = b.data_sub_class_name
and b.active = 1


--Update Data Sub Class - Variance Actual Amount
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_variance_actual_amt_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_variance_actual_amt_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
and a.sub_class_variance_actual_amount_code = b.data_sub_class_name
and b.active = 1

--Update Data Sub Class - Variance Actual Hours
update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
set dim_ent_data_sub_class_variance_actual_hours_sk = b.dim_ent_data_sub_class_sk,
dim_ent_data_sub_class_variance_actual_hours_nk = b.dim_ent_data_sub_class_nk
from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_data_sub_class b
where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
and a.sub_class_variance_actual_hours_code = b.data_sub_class_name
and b.active = 1


--Update Source
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--		'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'dim_ent_source_sk', 
--		'dim_ent_source_nk', 'source_code', 'source_name', 'load_date_time', 'fact_ops', 1


execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_source_sk','dim_ent_source_nk','dim_ent_source','dim_ent_source_sk','dim_ent_source_nk', 
       'source_code','source_name','FL',null;


--Update sub_soure
	update [gpd].[NCSA_MCPM_ProgressItems_Onshore]
	set dim_ent_sub_source_sk = b.dim_ent_sub_source_sk,
	dim_ent_sub_source_nk = b.dim_ent_sub_source_nk
	from [gpd].[NCSA_MCPM_ProgressItems_Onshore] a,dbo.dim_ent_sub_source b
	where a.dim_ent_source_nk = b.dim_ent_source_nk
	and a.sub_source_code = b.sub_source_name
	and b.active = 1

/*---- ----- Temporarily blocking the UOM SK/NK Allocation to allow for direct load compare with UOM----------------		
--Update Unit of Measure - Quantity
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--			'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk', 
--			'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 'unit_of_measure_code_quantity', 'unit_of_measure_code', 
--			'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_quantity_sk','dim_ent_unit_of_measure_quantity_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_quantity','unit_of_measure_code','F',null;

--Update Unit of Measure - Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_amount_sk','dim_ent_unit_of_measure_amount_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_amount','unit_of_measure_code',NULL,null;


--Update Unit of Measure - Hours
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--			'gpd.NCSA_MCPM_ProgressItems_Onshore', 'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk', 
--			'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 'unit_of_measure_code_hours', 'unit_of_measure_code', 
--			'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_hours_sk','dim_ent_unit_of_measure_hours_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_hours','unit_of_measure_code','L',null;
-----------------------*/

-------09/29/21 Satish :  Unit of measure is derieved based on UoM column instead of hardcoded column such as unit_of_measure_code_hours
--Update Unit of Measure - Quantity
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_quantity_sk','dim_ent_unit_of_measure_quantity_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code','F',null;

--Update Unit of Measure - Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_amount_sk','dim_ent_unit_of_measure_amount_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code',NULL,null;

--Update Unit of Measure - Hours
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_ProgressItems_Onshore','gpd.NCSA_MCPM_ProgressItems_Onshore','stage_ncsa_mcpm_progress_items_onshore_id', 
       'dim_ent_unit_of_measure_hours_sk','dim_ent_unit_of_measure_hours_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code','L',null;


--Count of all bad records
SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_MCPM_ProgressItems_Onshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_jde_coa_sk IS NULL   
or dim_ent_jde_coa_nk IS NULL
or dim_ent_work_unit_sk IS NULL
or dim_ent_work_unit_nk IS NULL
or dim_ent_work_area_sk IS NULL
or dim_ent_work_area_nk IS NULL
or dim_entp_phase_sk IS NULL
or dim_entp_phase_nk IS NULL
or dim_ent_function_sk IS NULL
or dim_ent_function_nk IS NULL
or dim_entp_cwp_sk IS NULL
or dim_entp_cwp_nk IS NULL
or dim_entp_schedule_resource_sk IS NULL
or dim_entp_schedule_resource_nk IS NULL
or dim_entp_activity_sk IS NULL
or dim_entp_activity_nk IS NULL
or dim_entp_iwp_sk IS NULL
or dim_entp_iwp_nk IS NULL
or dim_entp_pim_sk IS NULL
or dim_entp_pim_nk IS NULL
or dim_entp_roc_sk IS NULL
or dim_entp_roc_nk IS NULL
or dim_ent_data_class_quantity_sk IS NULL
or dim_ent_data_class_quantity_nk IS NULL
or dim_ent_data_class_hours_sk IS NULL
or dim_ent_data_class_hours_nk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_sk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_nk IS NULL
or dim_ent_source_sk IS NULL
or dim_ent_source_nk IS NULL
or dim_ent_sub_source_sk IS NULL
or dim_ent_sub_source_nk IS NULL
or dim_ent_unit_of_measure_quantity_sk IS NULL
or dim_ent_unit_of_measure_quantity_nk IS NULL
or dim_ent_unit_of_measure_hours_sk IS NULL
or dim_ent_unit_of_measure_hours_nk IS NULL
or dim_ent_data_sub_class_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_earned_hours_sk IS NULL
or dim_ent_data_sub_class_earned_hours_nk IS NULL
or dim_ent_data_class_amount_sk IS NULL
or dim_ent_data_class_amount_nk IS NULL
or dim_ent_unit_of_measure_amount_sk IS NULL
or dim_ent_unit_of_measure_amount_nk IS NULL	
or dim_ent_data_sub_class_variance_actual_amt_sk IS NULL
or dim_ent_data_sub_class_variance_actual_amt_nk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_sk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_nk IS NULL


	

--Count of all good records	
SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_MCPM_ProgressItems_Onshore]
WHERE  dim_ent_project_sk IS NOT NULL
and dim_ent_project_nk IS NOT NULL
and dim_ent_jde_coa_sk IS NOT NULL   
and dim_ent_jde_coa_nk IS NOT NULL
and dim_ent_work_unit_sk IS NOT NULL
and dim_ent_work_unit_nk IS NOT NULL
and dim_ent_work_area_sk IS NOT NULL
and dim_ent_work_area_nk IS NOT NULL
and dim_entp_phase_sk IS NOT NULL
and dim_entp_phase_nk IS NOT NULL
and dim_ent_function_sk IS NOT NULL
and dim_ent_function_nk IS NOT NULL
and dim_entp_cwp_sk IS NOT NULL
and dim_entp_cwp_nk IS NOT NULL
and dim_entp_schedule_resource_sk IS NOT NULL
and dim_entp_schedule_resource_nk IS NOT NULL
and dim_entp_activity_sk IS NOT NULL
and dim_entp_activity_nk IS NOT NULL
and dim_entp_iwp_sk IS NOT NULL
and dim_entp_iwp_nk IS NOT NULL
and dim_entp_pim_sk IS NOT NULL
and dim_entp_pim_nk IS NOT NULL
and dim_entp_roc_sk IS NOT NULL
and dim_entp_roc_nk IS NOT NULL
and dim_ent_data_class_quantity_sk IS NOT NULL
and dim_ent_data_class_quantity_nk IS NOT NULL
and dim_ent_data_class_hours_sk IS NOT NULL
and dim_ent_data_class_hours_nk IS NOT NULL
and dim_ent_data_sub_class_variance_earned_quantity_sk IS NOT NULL
and dim_ent_data_sub_class_variance_earned_quantity_nk IS NOT NULL
and dim_ent_data_sub_class_variance_earned_hours_sk IS NOT NULL
and dim_ent_data_sub_class_variance_earned_hours_nk IS NOT NULL
and dim_ent_source_sk IS NOT NULL
and dim_ent_source_nk IS NOT NULL
and dim_ent_sub_source_sk IS NOT NULL
and dim_ent_sub_source_nk IS NOT NULL
and dim_ent_unit_of_measure_quantity_sk IS NOT NULL
and dim_ent_unit_of_measure_quantity_nk IS NOT NULL
and dim_ent_unit_of_measure_hours_sk IS NOT NULL
and dim_ent_unit_of_measure_hours_nk IS NOT NULL
and dim_ent_data_sub_class_earned_quantity_sk IS NOT NULL
and dim_ent_data_sub_class_earned_quantity_nk IS NOT NULL
and dim_ent_data_sub_class_earned_hours_sk IS NOT NULL
and dim_ent_data_sub_class_earned_hours_nk IS NOT NULL
and dim_ent_data_class_amount_sk IS NOT NULL
and dim_ent_data_class_amount_nk IS NOT NULL
and dim_ent_unit_of_measure_amount_sk IS NOT NULL
and dim_ent_unit_of_measure_amount_nk IS NOT NULL	
and dim_ent_data_sub_class_variance_actual_amt_sk IS NOT NULL
and dim_ent_data_sub_class_variance_actual_amt_nk IS NOT NULL
and dim_ent_data_sub_class_variance_actual_hours_sk IS NOT NULL
and dim_ent_data_sub_class_variance_actual_hours_nk IS NOT NULL


--Insert bad records into reprocess table
INSERT INTO [gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]
([Domain],	[KeyUoM],	[CutOff],	[CoA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs] ,[VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],	
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_jde_coa_sk],	[dim_ent_jde_coa_nk],	
[dim_ent_work_unit_sk],	[dim_ent_work_unit_nk],	[dim_ent_work_area_sk],	[dim_ent_work_area_nk],	[dim_entp_phase_sk],	[dim_entp_phase_nk],	
[dim_ent_function_sk],	[dim_ent_function_nk],	[dim_entp_cwp_sk],	[dim_entp_cwp_nk],	[dim_entp_schedule_resource_sk],	
[dim_entp_schedule_resource_nk],	[dim_entp_activity_sk],	[dim_entp_activity_nk],	[dim_entp_iwp_sk],	[dim_entp_iwp_nk],	
[dim_entp_pim_sk],	[dim_entp_pim_nk],	[dim_entp_roc_sk],	[dim_entp_roc_nk],	[dim_ent_data_class_quantity_sk],
[dim_ent_data_class_quantity_nk],	[dim_ent_data_class_hours_sk],	[dim_ent_data_class_hours_nk],	[dim_ent_source_sk],
[dim_ent_source_nk],	[dim_ent_sub_source_sk],	[dim_ent_sub_source_nk],	[dim_ent_unit_of_measure_quantity_sk],
[dim_ent_unit_of_measure_quantity_nk],	[dim_ent_unit_of_measure_hours_sk],	[dim_ent_unit_of_measure_hours_nk],
[cwp_code],	[schedule_resource_code],	[activity_code],	[iwp_code],	[pim_code],	[roc_code],	[function_code],	[source_code],	
[sub_source_code],	[dim_ent_data_sub_class_variance_earned_quantity_sk],	[dim_ent_data_sub_class_variance_earned_quantity_nk],	
[dim_ent_data_sub_class_variance_earned_hours_sk],	[dim_ent_data_sub_class_variance_earned_hours_nk],	
[sub_class_earned_variance_quantity_code],	[sub_class_earned_variance_hours_code],[unit_of_measure_code_quantity],
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk], [data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk],[parent_rssk], [created_date_time])

SELECT 	
[Domain],	[KeyUoM],	[CutOff],	[CoA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_jde_coa_sk],	[dim_ent_jde_coa_nk],
[dim_ent_work_unit_sk],	[dim_ent_work_unit_nk],	[dim_ent_work_area_sk],	[dim_ent_work_area_nk],	[dim_entp_phase_sk],	[dim_entp_phase_nk],
[dim_ent_function_sk],	[dim_ent_function_nk],	[dim_entp_cwp_sk],	[dim_entp_cwp_nk],	[dim_entp_schedule_resource_sk],
[dim_entp_schedule_resource_nk],	[dim_entp_activity_sk],	[dim_entp_activity_nk],	[dim_entp_iwp_sk],	[dim_entp_iwp_nk],
[dim_entp_pim_sk],	[dim_entp_pim_nk],	[dim_entp_roc_sk],	[dim_entp_roc_nk],	[dim_ent_data_class_quantity_sk],
[dim_ent_data_class_quantity_nk],	[dim_ent_data_class_hours_sk],	[dim_ent_data_class_hours_nk],	[dim_ent_source_sk],
[dim_ent_source_nk],	[dim_ent_sub_source_sk],	[dim_ent_sub_source_nk],	[dim_ent_unit_of_measure_quantity_sk],
[dim_ent_unit_of_measure_quantity_nk],	[dim_ent_unit_of_measure_hours_sk],	[dim_ent_unit_of_measure_hours_nk],
[cwp_code],	[schedule_resource_code],	[activity_code],	[iwp_code],	[pim_code],	[roc_code],	[function_code],	[source_code],
[sub_source_code],	[dim_ent_data_sub_class_variance_earned_quantity_sk],	[dim_ent_data_sub_class_variance_earned_quantity_nk],
[dim_ent_data_sub_class_variance_earned_hours_sk],	[dim_ent_data_sub_class_variance_earned_hours_nk],
[sub_class_earned_variance_quantity_code],	[sub_class_earned_variance_hours_code],	[unit_of_measure_code_quantity],
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk], [data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk],[parent_rssk], [load_date_time]
FROM [gpd].[NCSA_MCPM_ProgressItems_Onshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_jde_coa_sk IS NULL   
or dim_ent_jde_coa_nk IS NULL
or dim_ent_work_unit_sk IS NULL
or dim_ent_work_unit_nk IS NULL
or dim_ent_work_area_sk IS NULL
or dim_ent_work_area_nk IS NULL
or dim_entp_phase_sk IS NULL
or dim_entp_phase_nk IS NULL
or dim_ent_function_sk IS NULL
or dim_ent_function_nk IS NULL
or dim_entp_cwp_sk IS NULL
or dim_entp_cwp_nk IS NULL
or dim_entp_schedule_resource_sk IS NULL
or dim_entp_schedule_resource_nk IS NULL
or dim_entp_activity_sk IS NULL
or dim_entp_activity_nk IS NULL
or dim_entp_iwp_sk IS NULL
or dim_entp_iwp_nk IS NULL
or dim_entp_pim_sk IS NULL
or dim_entp_pim_nk IS NULL
or dim_entp_roc_sk IS NULL
or dim_entp_roc_nk IS NULL
or dim_ent_data_class_quantity_sk IS NULL
or dim_ent_data_class_quantity_nk IS NULL
or dim_ent_data_class_hours_sk IS NULL
or dim_ent_data_class_hours_nk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_sk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_nk IS NULL
or dim_ent_source_sk IS NULL
or dim_ent_source_nk IS NULL
or dim_ent_sub_source_sk IS NULL
or dim_ent_sub_source_nk IS NULL
or dim_ent_unit_of_measure_quantity_sk IS NULL
or dim_ent_unit_of_measure_quantity_nk IS NULL
or dim_ent_unit_of_measure_hours_sk IS NULL
or dim_ent_unit_of_measure_hours_nk IS NULL
or dim_ent_data_sub_class_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_earned_hours_sk IS NULL
or dim_ent_data_sub_class_earned_hours_nk IS NULL
or dim_ent_data_class_amount_sk IS NULL
or dim_ent_data_class_amount_nk IS NULL
or dim_ent_unit_of_measure_amount_sk IS NULL
or dim_ent_unit_of_measure_amount_nk IS NULL	
or dim_ent_data_sub_class_variance_actual_amt_sk IS NULL
or dim_ent_data_sub_class_variance_actual_amt_nk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_sk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_nk IS NULL


--Update the reason of bad records
update  [gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]
		set rk_failure_info = 
		case when dim_ent_function_nk is null then 'Missing Function - ' + isnull(function_code,'') + ',' else '' end +
		case when dim_ent_project_nk is null then 'Missing Project Number - ' + isnull(Domain,'') + ',' else '' end +
		case when dim_ent_data_class_quantity_nk is null then 'Missing Data Class - Quantity' + isnull(data_class_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_class_hours_nk is null then 'Missing Data Class - Hours' + isnull(data_class_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_variance_earned_quantity_nk is null then 'Missing Data Sub Class - Variance Quantity - ' + isnull(sub_class_earned_variance_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_variance_earned_hours_nk is null then 'Missing Data Sub Class - Variance Hours - ' + isnull(sub_class_earned_variance_hours_code,'') + ',' else '' end +
		case when dim_ent_sub_source_nk is null then 'Missing Sub Source - ' + isnull(sub_source_code,'') + ',' else '' end +
		case when dim_ent_source_nk is null then 'Missing Source - ' + isnull(source_code,'') + ',' else '' end +
		case when dim_ent_unit_of_measure_quantity_sk is null OR dim_ent_unit_of_measure_hours_nk is null OR  dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM - ' + isnull(KEYUoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_quantity_sk is null then 'Missing UOM - Quantity - ' + isnull(unit_of_measure_code_quantity,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_hours_nk is null then 'Missing UOM - Hours - ' + isnull(unit_of_measure_code_hours,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM - Amount - ' + isnull(unit_of_measure_code_amount,'') + ',' else '' end +
		case when dim_entp_phase_nk is null then 'Missing Phase - ' + isnull(Phase,'') + ',' else '' end +
		--case when dim_entp_work_unit_nk is null then 'Missing Work Unit - ' +  + isnull(work_unit_code,'') + ',' else '' end +
		case when dim_ent_work_area_nk is null then 'Missing Work Area - ' +  + isnull(workarea,'') + ',' else '' end +
		case when dim_entp_cwp_nk is null then 'Missing CWP Code - ' +  + isnull(cwp_code,'') + ',' else '' end +  
		case when dim_entp_schedule_resource_nk is null then 'Missing Schedule Resource - ' +  + isnull(schedule_resource_code,'') + ',' else '' end +
		case when dim_entp_activity_nk is null then 'Missing Activity Code - ' +  + isnull(activity_code,'') + ',' else '' end +
		case when dim_entp_iwp_nk is null then 'Missing IWP Code - ' +  + isnull(iwp_code,'') + ',' else '' end +
		case when dim_entp_pim_sk is null then 'Missing PMID - ' +  + isnull(pim_code,'') + ',' else '' end +
		case when dim_entp_roc_nk is null then 'Missing ROC - ' +  + isnull(roc_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_quantity_nk is null then 'Missing Data Sub Class Earned Quantity - ' +  + isnull(sub_class_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_hours_nk is null then 'Missing Data Sub Class Earned Hours - ' +  + isnull(sub_class_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_class_amount_nk is null then 'Missing Data Class - Amount' + isnull(data_class_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_variance_actual_amt_nk is null then 'Missing Data Sub Class VarianceActual Amount - ' +  + isnull(sub_class_variance_actual_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_variance_actual_hours_nk is null then 'Missing Data Sub Class VarianceActual Hours - ' +  + isnull(sub_class_variance_actual_hours_code,'') + ',' else '' end +
		case when dim_ent_jde_coa_nk is null then 'Missing JDE COA - ' +  + isnull(CoA,'') + ',' else '' end

--Remove the bad records from the stage table so that only good records can be pushed into fact ops table
DELETE FROM [gpd].[NCSA_MCPM_ProgressItems_Onshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_jde_coa_sk IS NULL   
or dim_ent_jde_coa_nk IS NULL
or dim_ent_work_unit_sk IS NULL
or dim_ent_work_unit_nk IS NULL
or dim_ent_work_area_sk IS NULL
or dim_ent_work_area_nk IS NULL
or dim_entp_phase_sk IS NULL
or dim_entp_phase_nk IS NULL
or dim_ent_function_sk IS NULL
or dim_ent_function_nk IS NULL
or dim_entp_cwp_sk IS NULL
or dim_entp_cwp_nk IS NULL
or dim_entp_schedule_resource_sk IS NULL
or dim_entp_schedule_resource_nk IS NULL
or dim_entp_activity_sk IS NULL
or dim_entp_activity_nk IS NULL
or dim_entp_iwp_sk IS NULL
or dim_entp_iwp_nk IS NULL
or dim_entp_pim_sk IS NULL
or dim_entp_pim_nk IS NULL
or dim_entp_roc_sk IS NULL
or dim_entp_roc_nk IS NULL
or dim_ent_data_class_quantity_sk IS NULL
or dim_ent_data_class_quantity_nk IS NULL
or dim_ent_data_class_hours_sk IS NULL
or dim_ent_data_class_hours_nk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_variance_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_sk IS NULL
or dim_ent_data_sub_class_variance_earned_hours_nk IS NULL
or dim_ent_source_sk IS NULL
or dim_ent_source_nk IS NULL
or dim_ent_sub_source_sk IS NULL
or dim_ent_sub_source_nk IS NULL
or dim_ent_unit_of_measure_quantity_sk IS NULL
or dim_ent_unit_of_measure_quantity_nk IS NULL
or dim_ent_unit_of_measure_hours_sk IS NULL
or dim_ent_unit_of_measure_hours_nk IS NULL
or dim_ent_data_sub_class_earned_quantity_sk IS NULL
or dim_ent_data_sub_class_earned_quantity_nk IS NULL
or dim_ent_data_sub_class_earned_hours_sk IS NULL
or dim_ent_data_sub_class_earned_hours_nk IS NULL
or dim_ent_data_class_amount_sk IS NULL
or dim_ent_data_class_amount_nk IS NULL
or dim_ent_unit_of_measure_amount_sk IS NULL
or dim_ent_unit_of_measure_amount_nk IS NULL	
or dim_ent_data_sub_class_variance_actual_amt_sk IS NULL
or dim_ent_data_sub_class_variance_actual_amt_nk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_sk IS NULL
or dim_ent_data_sub_class_variance_actual_hours_nk IS NULL



	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------
	exec populate_reprocess_history 'pl_mcpmdata_progressitems_master_pipeline', 'gpd.NCSA_MCPM_ProgressItems_Onshore', 'gpd.reprocess_NCSA_MCPM_ProgressItems_Onshore', 'dbo.fact_ops','rssk';

	---------------------------------------------------------------------------


if isnull(@processed_count,0) > 0 
begin
	select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
end
select @error_message = isnull(@error_message,'')
if isnull(@unprocessed_count,0) > 0 
begin
	select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
end

	
if isnull(@unprocessed_count,0) = 0 --isnull(@error_message,'') = '' 
begin
	select 'Success'; 
end
else
begin
    DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
								  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
								  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
								  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
								  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
								  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
end

END
GO


