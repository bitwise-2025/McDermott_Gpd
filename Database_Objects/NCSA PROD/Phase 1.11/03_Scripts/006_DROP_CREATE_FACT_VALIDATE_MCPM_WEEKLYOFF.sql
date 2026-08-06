/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_weekly_offshore_validate]    Script Date: 6/7/2024 8:41:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[load_NCSA_fact_MCPM_weekly_offshore_validate] AS
BEGIN

begin try
   
SET NOCOUNT ON

declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int

	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);
    
DECLARE @Date DATETIME;
SET @Date = GETDATE();

/*-------------------------------------------------------------------------------------------------------------------------------
Change Log : 
Date		 |  Developer | Change Description/User Story
---------------------------------------------------------------------------------------------------------------------------------
10/03/2022 ;	Satish		; Initial Development
-------------------------------------------------------------------------------------------------------------------------------
08/12/2022 ;    Aditya      ;  Addition of Unit, PSRLevel1, PSRLevel2, PSRL1Description, PSRL2Description  columns into stage table
04/01/2023 ;    Abhijit     :  Addition of coadesc  column into stage table and replace geaccoa ident2 with coadesc
-------------------------------------------------------------------------------------------------------------------------------*/

	----------------------------------------------------------------------------------------------------------------
	-- Step 1: Precheck and get things ready
	----------------------------------------------------------------------------------------------------------------


--Pre-Check data upload

UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
set load_date_time = @Date

--10/03/2022: Satish -- Adding the Data_sub_class entries since ADF is not configured with parameters correctly
Update [gpd].[NCSA_MCPM_weekly_offshore]
set [sub_class_PrevWeeklyEarnedQty] = 'Progress Module Previous Earned Quantity'
,[sub_class_PrevWeeklyEarnedHrs] = 'Progress Module Previous Earned Hours'
,[sub_class_WeeklyTakeOffQty] = 'Progress Module TakeOff Quantity'
,[sub_class_WeeklyTakeOffHrs] = 'Progress Module TakeOff Hours'
,[sub_class_WeeklyProgressBaseQty] = 'Progress Module Progress Base Quantity'
,[sub_class_WeeklyProgressBaseHrs] = 'Progress Module Progress Base Hours'
,[sub_class_WeeklyProgressBaseAmt] = 'Progress Module Progress Base Amount'
,[sub_class_WeeklyActualHrs] = 'Progress Module Actual Hours'
,[sub_class_WeeklyActualAmt] = 'Progress Module Actual Amount'
,[sub_class_WeeklyOriginalHrs] = 'Progress Module Original Hours'
,[sub_class_WeeklyOriginalQty] = 'Progress Module Original Quantity'
,[sub_class_WeeklyOriginalAmt] = 'Progress Module Original Amount'

-- Added the update statement to push in default values in case activity is not mentioned.

Update [gpd].[NCSA_MCPM_weekly_offshore]
set [activity_code]='ZZZ'
where LEN(activity_code)=0 OR activity_code IS NULL

-- Added the update statement to populate GEAC_COA value using the values from NCSA_MCPM_weekly_Offshore table
	UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	set GEAC_COA = concat('GEAC.', RIGHT(Contract,4), '.0100','.',WorkARea,'.',CostCode,'.',costtype);

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_project_sk','dim_ent_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'Domain','project_number','FL',null;

	--------------------------------------------------------------------------------------
	--Step 3: Insert the additional GEAC COA into DIM_ENT_GEAC_COA from MCPM Offshore data as these entries are not coming from MCPM stream
	--------------------------------------------------------------------------------------

	
truncate table [gpd].[dim_ent_geac_coa_MCPM_Off];

--Insert missing chart of account_code


insert into [gpd].[dim_ent_geac_coa_MCPM_Off]
	  ([coa_value]
      ,[entity_id]
      ,[account_code]
      ,[ident1_code]
      ,[ident2_code]
      ,[ident3_code]
      ,[coa_type]
      ,[ident1_description]
      ,[ident2_description]
      ,[ident3_description]
      ,[classification_id]
      ,[coa_status]
      ,[contract_id]
      ,[entity_description]
      ,[account_description]
      ,[contract_description]
      ,[ident1_status]
      ,[ident1_start_date]
      ,[ident1_end_date]
      ,[ident2_status]
      ,[ident2_start_date]
      ,[ident2_end_date]
      ,[sub_source_name]
      ,[source_name]
      ,[PSRLevel1]
      ,[PSRLevel2]
      ,[PSRL1Description]
      ,[PSRL2Description]
      ,[measurable]
	  ,[Domain]
	  ,[SummaryCostType]
	  ,[Prime]
	  ,[SubPrime])

select GEAC_COA  as coa_value, 
--CoA,b.coa_value, --Testing only
right(Contract,4) as entity_id,
substring(CoA,11,4) as account_code,
substring(CoA,16,5) as ident1_code,
substring(CoA,21,5) as ident2_code,
right('0000' + CostType,4) as ident3_code,
'Project' as coa_type,
COALESCE(b.ident1_description, '') as ident1_description,
COALESCE(a.coadesc, '') as ident2_description,
COALESCE(b.ident3_description, '') as ident3_description,
ISNULL(a.Phase,NULL) as classification_id,
'Active' as coa_status,
left(Contract,5) as contract_id,
c.entity_name as entity_description,
COALESCE(b.account_description, '') as account_description,
COALESCE(b.contract_description, Domain) as contract_description,
'Active' as ident1_status,
'1900-01-01 00:00:00.000' as ident1_start_date,
'2999-12-31 00:00:00.000' as ident1_end_date,
'Active' as ident2_status,
'1900-01-01 00:00:00.000' as ident2_start_date,
'2999-12-31 00:00:00.000' as ident2_end_date,
'MCPM Offshore' as sub_source_name,
'System' as source_name,
ISNULL(a.PSRLevel1,NULL) as PSRLevel1,
ISNULL(a.PSRLevel2,NULL) as PSRLevel2,
ISNULL(a.PSRL1Description,NULL) as PSRL1Description,
ISNULL(a.PSRL2Description,NULL) as PSRL2Description,
ISNULL(Measurable,NULL) as measurable,
Domain as Domain,
SummaryCostType,
Prime,
SubPrime
from [gpd].NCSA_MCPM_weekly_offshore a
left join (select * from [dbo].[dim_ent_entity] where active = 1) c
on right(Contract,4) = c.entity_id 
LEFT JOIN dim_ent_geac_coa_active_v b
ON a.GEAC_COA=b.coa_value
WHERE a.GEAC_COA NOT IN (SELECT DISTINCT coa_value from dim_ent_geac_coa_active_v ) ;

--Insert for updating PSRLevel1 and PSRLevel2

insert into [gpd].[dim_ent_geac_coa_MCPM_Off]
	  ([coa_value]
      ,[entity_id]
      ,[account_code]
      ,[ident1_code]
      ,[ident2_code]
      ,[ident3_code]
      ,[coa_type]
      ,[ident1_description]
      ,[ident2_description]
      ,[ident3_description]
      ,[classification_id]
      ,[coa_status]
      ,[contract_id]
      ,[entity_description]
      ,[account_description]
      ,[contract_description]
      ,[ident1_status]
      ,[ident1_start_date]
      ,[ident1_end_date]
      ,[ident2_status]
      ,[ident2_start_date]
      ,[ident2_end_date]
      ,[sub_source_name]
      ,[source_name]
      ,[PSRLevel1]
      ,[PSRLevel2]
      ,[PSRL1Description]
      ,[PSRL2Description]
      ,[measurable]
	  ,[Domain]
	  ,[SummaryCostType]
	  ,[Prime]
	  ,[SubPrime])

select GEAC_COA  as coa_value, 
--CoA,b.coa_value, --Testing only
right(Contract,4) as entity_id,
substring(CoA,11,4) as account_code,
substring(CoA,16,5) as ident1_code,
substring(CoA,21,5) as ident2_code,
right('0000' + CostType,4) as ident3_code,
'Project' as coa_type,
COALESCE(b.ident1_description, '') as ident1_description,
COALESCE(a.coadesc, '') as ident2_description,
COALESCE(b.ident3_description, '') as ident3_description,
ISNULL(a.Phase,NULL) as classification_id,
'Active' as coa_status,
left(Contract,5) as contract_id,
c.entity_name as entity_description,
COALESCE(b.account_description, '') as account_description,
COALESCE(b.contract_description, Domain) as contract_description,
'Active' as ident1_status,
'1900-01-01 00:00:00.000' as ident1_start_date,
'2999-12-31 00:00:00.000' as ident1_end_date,
'Active' as ident2_status,
'1900-01-01 00:00:00.000' as ident2_start_date,
'2999-12-31 00:00:00.000' as ident2_end_date,
'MCPM Offshore' as sub_source_name,
'System' as source_name,
ISNULL(a.PSRLevel1,NULL) as PSRLevel1,
ISNULL(a.PSRLevel2,NULL) as PSRLevel2,
ISNULL(a.PSRL1Description,NULL) as PSRL1Description,
ISNULL(a.PSRL2Description,NULL) as PSRL2Description,
ISNULL(Measurable,NULL) as measurable,
Domain as Domain,
SummaryCostType,
Prime,
SubPrime
from [gpd].NCSA_MCPM_weekly_offshore a
left join (select * from [dbo].[dim_ent_entity] where active = 1) c
on right(Contract,4) = c.entity_id 
LEFT JOIN dim_ent_geac_coa_active_v b
ON a.GEAC_COA=b.coa_value
WHERE a.GEAC_COA IN (SELECT DISTINCT coa_value from dim_ent_geac_coa_active_v ) ;

execute [dbo].[generic_load_dim_v2 ] 'dim_ent_geac_coa_mcpm_offshore','Y','N','Y';





	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------

INSERT INTO [gpd].[NCSA_MCPM_weekly_offshore]
([Domain],	[KeyUoM],	[CutOff],	[CoA], [GEAC_COA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_geac_coa_sk],	[dim_ent_geac_coa_nk],
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
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk] ,[data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk], 
[sub_class_PrevWeeklyEarnedQty], [sub_class_PrevWeeklyEarnedHrs], [dim_ent_data_sub_class_prev_weekly_earned_qty_sk], [dim_ent_data_sub_class_prev_weekly_earned_qty_nk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk], [sub_class_WeeklyTakeOffQty], [sub_class_WeeklyTakeOffHrs], [dim_ent_data_sub_class_weekly_takeoff_qty_sk], [dim_ent_data_sub_class_weekly_takeoff_qty_nk], [dim_ent_data_sub_class_weekly_takeoff_hrs_sk], [dim_ent_data_sub_class_weekly_takeoff_hrs_nk], [sub_class_WeeklyProgressBaseQty], [sub_class_WeeklyProgressBaseHrs], [sub_class_WeeklyProgressBaseAmt], [dim_ent_data_sub_class_weekly_progress_base_qty_sk], [dim_ent_data_sub_class_weekly_progress_base_qty_nk], [dim_ent_data_sub_class_weekly_progress_base_hrs_sk], [dim_ent_data_sub_class_weekly_progress_base_hrs_nk], [dim_ent_data_sub_class_weekly_progress_base_amt_sk], [dim_ent_data_sub_class_weekly_progress_base_amt_nk], 
[sub_class_WeeklyActualHrs], [sub_class_WeeklyActualAmt], [dim_ent_data_sub_class_weekly_actual_hrs_sk], [dim_ent_data_sub_class_weekly_actual_hrs_nk], [dim_ent_data_sub_class_weekly_actual_amt_sk], [dim_ent_data_sub_class_weekly_actual_amt_nk], [sub_class_WeeklyOriginalHrs], [sub_class_WeeklyOriginalQty], [sub_class_WeeklyOriginalAmt], [dim_ent_data_sub_class_weekly_original_hrs_sk], [dim_ent_data_sub_class_weekly_original_hrs_nk], [dim_ent_data_sub_class_weekly_original_qty_sk], [dim_ent_data_sub_class_weekly_original_qty_nk], [dim_ent_data_sub_class_weekly_original_amt_sk], [dim_ent_data_sub_class_weekly_original_amt_nk],
[parent_rssk], [load_date_time], [Unit], [PSRLevel1], [PSRLevel2], [PSRL1Description], [PSRL2Description], [coadesc])

SELECT
[Domain],	[KeyUoM],	[CutOff],	[CoA], [GEAC_COA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],	
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_geac_coa_sk],	[dim_ent_geac_coa_nk],	
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
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk] ,[data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk], 
[sub_class_PrevWeeklyEarnedQty], [sub_class_PrevWeeklyEarnedHrs], [dim_ent_data_sub_class_prev_weekly_earned_qty_sk], [dim_ent_data_sub_class_prev_weekly_earned_qty_nk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk], [sub_class_WeeklyTakeOffQty], [sub_class_WeeklyTakeOffHrs], [dim_ent_data_sub_class_weekly_takeoff_qty_sk], [dim_ent_data_sub_class_weekly_takeoff_qty_nk], [dim_ent_data_sub_class_weekly_takeoff_hrs_sk], [dim_ent_data_sub_class_weekly_takeoff_hrs_nk], [sub_class_WeeklyProgressBaseQty], [sub_class_WeeklyProgressBaseHrs], [sub_class_WeeklyProgressBaseAmt], [dim_ent_data_sub_class_weekly_progress_base_qty_sk], [dim_ent_data_sub_class_weekly_progress_base_qty_nk], [dim_ent_data_sub_class_weekly_progress_base_hrs_sk], [dim_ent_data_sub_class_weekly_progress_base_hrs_nk], [dim_ent_data_sub_class_weekly_progress_base_amt_sk], [dim_ent_data_sub_class_weekly_progress_base_amt_nk],
[sub_class_WeeklyActualHrs], [sub_class_WeeklyActualAmt], [dim_ent_data_sub_class_weekly_actual_hrs_sk], [dim_ent_data_sub_class_weekly_actual_hrs_nk], [dim_ent_data_sub_class_weekly_actual_amt_sk], [dim_ent_data_sub_class_weekly_actual_amt_nk], [sub_class_WeeklyOriginalHrs], [sub_class_WeeklyOriginalQty], [sub_class_WeeklyOriginalAmt], [dim_ent_data_sub_class_weekly_original_hrs_sk], [dim_ent_data_sub_class_weekly_original_hrs_nk], [dim_ent_data_sub_class_weekly_original_qty_sk], [dim_ent_data_sub_class_weekly_original_qty_nk], [dim_ent_data_sub_class_weekly_original_amt_sk], [dim_ent_data_sub_class_weekly_original_amt_nk],
ISNULL([parent_rssk],[rssk]), [created_date_time], [Unit], [PSRLevel1], [PSRLevel2], [PSRL1Description], [PSRL2Description],[coadesc]
FROM 
[gpd].[reprocess_NCSA_MCPM_weekly_offshore]


DELETE FROM [gpd].[reprocess_NCSA_MCPM_weekly_offshore]

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_project_sk','dim_ent_project_nk','dim_entp_project','dim_entp_project_sk','dim_entp_project_nk', 
       'Domain','project_number','FL',null;

----Inserting Missing activity entries----------
		truncate table gpd.tmp_NCSA_Activity

		insert into gpd.tmp_NCSA_Activity (activity, Description, ExecutedByType, Project, IsOnCriticalPath, ScheduleWorkArea, CWP, ScheduleResource,dim_entp_project_nk,Prime,SubPrime)
		SELECT distinct a.activity_code, a.activity_code, NULL as Global_Executed_By_Type, Domain, 0, WorkArea,'ZZZ', 'ZZZ',a.dim_ent_project_nk,a.Prime,a.SubPrime
		FROM [gpd].[NCSA_MCPM_weekly_offshore] a
		LEFT JOIN [dbo].[dim_entp_activity] d ON d.activity_code = a.activity_code and d.dim_entp_project_nk=a.dim_ent_project_nk
		WHERE d.activity_code IS NULL
		

	
		exec generic_load_dim_v2 'dim_entp_temp_activity', 'Y', 'N', 'Y'

		truncate table gpd.tmp_NCSA_Activity
		truncate table [gpd].[tmpreprocess_NCSA_Activity]




	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

--------------------------------------------------------------------------
/*   		 
--Update CoA
update [gpd].[NCSA_MCPM_weekly_offshore]
set dim_ent_geac_coa_sk = b.dim_ent_geac_coa_sk,
dim_ent_geac_coa_nk = b.dim_ent_geac_coa_nk
from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.DIM_ENT_JDE_COA b
where LTRIM(RTRIM(b.account_code)) = a.CoA
and b.active = 1

*/

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 'dim_ent_geac_coa_sk', 'dim_ent_geac_coa_nk',
            'DIM_ENT_GEAC_COA', 'dim_ent_geac_coa_sk', 'dim_ent_geac_coa_nk', 'GEAC_COA', 'coa_value', 'FL',NULL ;

--Update Work Unit 
update  [gpd].[NCSA_MCPM_weekly_offshore]
	set dim_ent_work_unit_sk = wu.dim_entp_work_unit_sk,
	dim_ent_work_unit_nk = wu.dim_entp_work_unit_nk
	from [gpd].[NCSA_MCPM_weekly_offshore] mp,
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
update [gpd].[NCSA_MCPM_weekly_offshore]
set dim_ent_work_area_sk = b.dim_entp_work_area_sk,
dim_ent_work_area_nk = b.dim_entp_work_area_nk
from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_work_area b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.WorkArea = b.work_area_code
and b.active = 1


-- Update Phase
/*----- Shifting the logic to start using Phase directly from Source ----
update [gpd].[NCSA_MCPM_weekly_offshore] 
	set dim_entp_phase_sk = d.dim_entp_phase_sk,
	dim_entp_phase_nk = d.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_work_area b
	,[dbo].[dim_entp_phase] d
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.WorkArea = b.work_area_code
	and b.dim_entp_phase_nk  = d.dim_entp_phase_nk
	and b.active = 1
	and d.active = 1
--------------*/


	update [gpd].[NCSA_MCPM_weekly_offshore]
	set dim_entp_phase_sk = b.dim_entp_phase_sk,
	dim_entp_phase_nk = b.dim_entp_phase_nk
	from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_phase b
	where a.dim_ent_project_nk = b.dim_entp_project_nk
	and a.Phase = b.phase_code
	and b.active = 1



execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_function_sk','dim_ent_function_nk','dim_ent_function','dim_ent_function_sk','dim_ent_function_nk', 
       'function_code','function_code','FL',null;


--Update CWP 
/*
UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
set dim_entp_cwp_sk = b.dim_entp_cwp_sk,
dim_entp_cwp_nk = b.dim_entp_cwp_nk
from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_cwp b
where a.dim_ent_project_nk = b.dim_entp_project_nk
and a.cwp_code = b.cwp_code
and b.active = 1
*/

execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 'dim_entp_cwp', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'cwp_code', 'cwp_code',NULL,NULL,NULL,NULL,NULL,NULL,'F',NULL ;

		

--Update Schedule Resource 
	--UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_entp_schedule_resource_sk = b.dim_entp_schedule_resource_sk,
	--dim_entp_schedule_resource_nk = b.dim_entp_schedule_resource_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_schedule_resource b
	--where a.dim_ent_project_nk = b.dim_entp_project_nk
	--and a.schedule_resource_code = b.schedule_resource_code
	--and b.active = 1

execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 'dim_entp_schedule_resource', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'schedule_resource_code', 'schedule_resource_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

--Update Activity
	--UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_entp_activity_sk = b.dim_entp_activity_sk,
	--dim_entp_activity_nk = b.dim_entp_activity_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_activity b
	--where a.dim_ent_project_nk = b.dim_entp_project_nk
	--and a.activity_code = b.activity_code
	--and b.active = 1

execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_activity_sk', 'dim_entp_activity_nk', 'dim_entp_activity', 'dim_entp_activity_sk', 'dim_entp_activity_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'activity_code', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;


--Update IWP
	--UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_entp_iwp_sk = b.dim_entp_iwp_sk,
	--dim_entp_iwp_nk = b.dim_entp_iwp_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_iwp b
	--where a.dim_ent_project_nk = b.dim_entp_project_nk
	--and a.iwp_codE = b.iwp_code
	--and b.active = 1

execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 'dim_entp_iwp', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'iwp_code', 'iwp_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

--Update PIM
	--UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_entp_pim_sk = b.dim_entp_pim_sk,
	--dim_entp_pim_nk = b.dim_entp_pim_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_pim b
	--where a.dim_ent_project_nk = b.dim_entp_project_nk
	--and a.pim_code = b.pim_code
	--and b.active = 1

execute [stage].[fact_lookup_based_on_many_key]
		'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_pim_sk', 'dim_entp_pim_nk', 'dim_entp_pim', 'dim_entp_pim_sk', 'dim_entp_pim_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'pim_code', 'pim_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

--Update ROC
	--UPDATE [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_entp_roc_sk = b.dim_entp_roc_sk,
	--dim_entp_roc_nk = b.dim_entp_roc_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_entp_roc b
	--where a.dim_ent_project_nk = b.dim_entp_project_nk
	--and a.roc_code = b.roc_code
	----and a.step = b.rocs_step
	--and b.active = 1

execute [stage].[fact_lookup_based_on_many_key]
		'gpd.NCSA_MCPM_weekly_offshore', 'gpd.NCSA_MCPM_weekly_offshore',  'stage_ncsa_mcpm_weekly_offshore_id', 
		'dim_entp_roc_sk', 'dim_entp_roc_nk', 'dim_entp_roc', 'dim_entp_roc_sk', 'dim_entp_roc_nk', 
		'dim_ent_project_nk', 'dim_entp_project_nk',
		'roc_code', 'roc_code',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;


--Update Data Class for Quantity

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_class_quantity_sk','dim_ent_data_class_quantity_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_quantity_code','data_class_name','F',null;

--Update Data Class for Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_class_amount_sk','dim_ent_data_class_amount_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_amount_code','data_class_name',NULL,null;
			
--Update Data Class for Hours
		
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_class_hours_sk','dim_ent_data_class_hours_nk','dim_ent_data_class','dim_ent_data_class_sk','dim_ent_data_class_nk', 
       'data_class_hours_code','data_class_name','L',null;


--Update Data Sub Class -  Variance Earned Quantity
	--update [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_ent_data_sub_class_variance_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
	--dim_ent_data_sub_class_variance_earned_quantity_nk = b.dim_ent_data_sub_class_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
	--where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	--and a.sub_class_earned_variance_quantity_code = b.data_sub_class_name
	--and b.active = 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_variance_earned_quantity_sk','dim_ent_data_sub_class_variance_earned_quantity_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_earned_variance_quantity_code','data_sub_class_name','F',null;


--Update Data Sub Class - Variance Earned Hours
	--update [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_ent_data_sub_class_variance_earned_hours_sk = b.dim_ent_data_sub_class_sk,
	--dim_ent_data_sub_class_variance_earned_hours_nk = b.dim_ent_data_sub_class_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
	--where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	--and a.sub_class_earned_variance_hours_code = b.data_sub_class_name
	--and b.active = 1
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_variance_earned_hours_sk','dim_ent_data_sub_class_variance_earned_hours_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_earned_variance_hours_code','data_sub_class_name',NULL,null;



--Update Data Sub Class - Cumulative Earned Quantity
	--update [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_ent_data_sub_class_earned_quantity_sk = b.dim_ent_data_sub_class_sk,
	--dim_ent_data_sub_class_earned_quantity_nk = b.dim_ent_data_sub_class_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
	--where a.dim_ent_data_class_quantity_nk = b.dim_ent_data_class_nk
	--and a.sub_class_earned_quantity_code = b.data_sub_class_name
	--and b.active = 1
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_earned_quantity_sk','dim_ent_data_sub_class_earned_quantity_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_earned_quantity_code','data_sub_class_name',NULL,null;

--Update Data Sub Class - Cumulative Earned Hours
--update [gpd].[NCSA_MCPM_weekly_offshore]
--set dim_ent_data_sub_class_earned_hours_sk = b.dim_ent_data_sub_class_sk,
--dim_ent_data_sub_class_earned_hours_nk = b.dim_ent_data_sub_class_nk
--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
--where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
--and a.sub_class_earned_hours_code = b.data_sub_class_name
--and b.active = 1
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_earned_hours_sk','dim_ent_data_sub_class_earned_hours_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_earned_hours_code','data_sub_class_name',NULL,null;


--Update Data Sub Class - Variance Actual Amount
	--update [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_ent_data_sub_class_variance_actual_amt_sk = b.dim_ent_data_sub_class_sk,
	--dim_ent_data_sub_class_variance_actual_amt_nk = b.dim_ent_data_sub_class_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
	--where a.dim_ent_data_class_amount_nk = b.dim_ent_data_class_nk
	--and a.sub_class_variance_actual_amount_code = b.data_sub_class_name
	--and b.active = 1
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_variance_actual_amt_sk','dim_ent_data_sub_class_variance_actual_amt_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_variance_actual_amount_code','data_sub_class_name',NULL,null;

--Update Data Sub Class - Variance Actual Hours
	--update [gpd].[NCSA_MCPM_weekly_offshore]
	--set dim_ent_data_sub_class_variance_actual_hours_sk = b.dim_ent_data_sub_class_sk,
	--dim_ent_data_sub_class_variance_actual_hours_nk = b.dim_ent_data_sub_class_nk
	--from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_data_sub_class b
	--where a.dim_ent_data_class_hours_nk = b.dim_ent_data_class_nk
	--and a.sub_class_variance_actual_hours_code = b.data_sub_class_name
	--and b.active = 1
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_variance_actual_hours_sk','dim_ent_data_sub_class_variance_actual_hours_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_variance_actual_hours_code','data_sub_class_name',NULL,null;



--PrevWeeklyEarnedQty
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_prev_weekly_earned_qty_sk','dim_ent_data_sub_class_prev_weekly_earned_qty_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_PrevWeeklyEarnedQty','data_sub_class_name',NULL,null;

--PrevWeeklyEarnedhrs
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_prev_weekly_earned_hrs_sk','dim_ent_data_sub_class_prev_weekly_earned_hrs_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_PrevWeeklyEarnedHrs','data_sub_class_name',NULL,null;

--WeeklyTakeOffQty
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_takeoff_qty_sk','dim_ent_data_sub_class_weekly_takeoff_qty_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyTakeOffQty','data_sub_class_name',NULL,null;

--WeeklyTakeOffHrs	   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_takeoff_hrs_sk','dim_ent_data_sub_class_weekly_takeoff_hrs_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyTakeOffHrs','data_sub_class_name',NULL,null;

-- WeeklyProgressBaseQty 
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_progress_base_qty_sk','dim_ent_data_sub_class_weekly_progress_base_qty_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyProgressBaseQty','data_sub_class_name',NULL,null;

--WeeklyProgressBaseHrs   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_progress_base_hrs_sk','dim_ent_data_sub_class_weekly_progress_base_hrs_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyProgressBaseHrs','data_sub_class_name',NULL,null;

--WeeklyProgressBaseAmt   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_progress_base_amt_sk','dim_ent_data_sub_class_weekly_progress_base_amt_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyProgressBaseAmt','data_sub_class_name',NULL,null;
	   
--WeeklyActualHrs   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_actual_hrs_sk','dim_ent_data_sub_class_weekly_actual_hrs_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyActualHrs','data_sub_class_name',NULL,null;

--WeeklyActualAmt   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_actual_amt_sk','dim_ent_data_sub_class_weekly_actual_amt_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyActualAmt','data_sub_class_name',NULL,null;


--WeeklyOriginalHrs  
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_original_hrs_sk','dim_ent_data_sub_class_weekly_original_hrs_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyOriginalHrs','data_sub_class_name',NULL,null;


--WeeklyOriginalQty   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_original_qty_sk','dim_ent_data_sub_class_weekly_original_qty_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyOriginalQty','data_sub_class_name',NULL,null;


--WeeklyOriginalAmt	   
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_data_sub_class_weekly_original_amt_sk','dim_ent_data_sub_class_weekly_original_amt_nk',
	   'dim_ent_data_sub_class','dim_ent_data_sub_class_sk','dim_ent_data_sub_class_nk', 
       'sub_class_WeeklyOriginalAmt','data_sub_class_name','L',null;

--Update Source

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_source_sk','dim_ent_source_nk','dim_ent_source','dim_ent_source_sk','dim_ent_source_nk', 
       'source_code','source_name','FL',null;


--Update sub_soure
	update [gpd].[NCSA_MCPM_weekly_offshore]
	set dim_ent_sub_source_sk = b.dim_ent_sub_source_sk,
	dim_ent_sub_source_nk = b.dim_ent_sub_source_nk
	from [gpd].[NCSA_MCPM_weekly_offshore] a,dbo.dim_ent_sub_source b
	where a.dim_ent_source_nk = b.dim_ent_source_nk
	and a.sub_source_code = b.sub_source_name
	and b.active = 1

/*---- ----- Temporarily blocking the UOM SK/NK Allocation to allow for direct load compare with UOM----------------		
--Update Unit of Measure - Quantity
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--			'gpd.NCSA_MCPM_weekly_offshore', 'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk', 
--			'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 'unit_of_measure_code_quantity', 'unit_of_measure_code', 
--			'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_quantity_sk','dim_ent_unit_of_measure_quantity_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_quantity','unit_of_measure_code','F',null;

--Update Unit of Measure - Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_amount_sk','dim_ent_unit_of_measure_amount_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_amount','unit_of_measure_code',NULL,null;


--Update Unit of Measure - Hours
--execute [Stage].[usp_derive_dim_keys_single_keycol_no_eaf_load] 
--			'gpd.NCSA_MCPM_weekly_offshore', 'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk', 
--			'dim_ent_unit_of_measure_sk','dim_ent_unit_of_measure_nk', 'unit_of_measure_code_hours', 'unit_of_measure_code', 
--			'load_date_time', 'fact_ops', 1

execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_hours_sk','dim_ent_unit_of_measure_hours_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'unit_of_measure_code_hours','unit_of_measure_code','L',null;
-----------------------*/


--Update Unit of Measure - Quantity
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_quantity_sk','dim_ent_unit_of_measure_quantity_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code','F',null;

--Update Unit of Measure - Amount
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_amount_sk','dim_ent_unit_of_measure_amount_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code',NULL,null;

--Update Unit of Measure - Hours
execute [stage].[fact_lookup_based_on_one_key] 
       'gpd.NCSA_MCPM_weekly_offshore','gpd.NCSA_MCPM_weekly_offshore','stage_ncsa_mcpm_weekly_offshore_id', 
       'dim_ent_unit_of_measure_hours_sk','dim_ent_unit_of_measure_hours_nk','dim_ent_unit_of_measure','dim_ent_unit_of_measure_sk',
	   'dim_ent_unit_of_measure_nk', 'KeyUoM','unit_of_measure_code','L',null;


--Count of all bad records
SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_MCPM_weekly_offshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_geac_coa_sk IS NULL   
or dim_ent_geac_coa_nk IS NULL
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

OR [dim_ent_data_sub_class_prev_weekly_earned_qty_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_qty_nk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_nk] IS NULL


	

--Count of all good records	
SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_MCPM_weekly_offshore]
WHERE  dim_ent_project_sk IS NOT NULL
and dim_ent_project_nk IS NOT NULL
and dim_ent_geac_coa_sk IS NOT NULL   
and dim_ent_geac_coa_nk IS NOT NULL
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

AND [dim_ent_data_sub_class_prev_weekly_earned_qty_sk] IS NOT NULL
AND [dim_ent_data_sub_class_prev_weekly_earned_qty_nk] IS NOT NULL
AND [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk] IS NOT NULL
AND [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_takeoff_qty_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_takeoff_qty_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_takeoff_hrs_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_takeoff_hrs_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_qty_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_qty_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_hrs_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_hrs_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_amt_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_progress_base_amt_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_actual_hrs_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_actual_hrs_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_actual_amt_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_actual_amt_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_hrs_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_hrs_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_qty_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_qty_nk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_amt_sk] IS NOT NULL
AND [dim_ent_data_sub_class_weekly_original_amt_nk] IS NOT NULL


--Insert bad records into reprocess table
INSERT INTO [gpd].[reprocess_NCSA_MCPM_weekly_offshore]
([Domain],	[KeyUoM],	[CutOff],	[CoA], [GEAC_COA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs] ,[VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],	
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_geac_coa_sk],	[dim_ent_geac_coa_nk],	
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
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk], [data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk],
[sub_class_PrevWeeklyEarnedQty], [sub_class_PrevWeeklyEarnedHrs], [dim_ent_data_sub_class_prev_weekly_earned_qty_sk], [dim_ent_data_sub_class_prev_weekly_earned_qty_nk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk], [sub_class_WeeklyTakeOffQty], [sub_class_WeeklyTakeOffHrs], [dim_ent_data_sub_class_weekly_takeoff_qty_sk], [dim_ent_data_sub_class_weekly_takeoff_qty_nk], [dim_ent_data_sub_class_weekly_takeoff_hrs_sk], [dim_ent_data_sub_class_weekly_takeoff_hrs_nk], [sub_class_WeeklyProgressBaseQty], [sub_class_WeeklyProgressBaseHrs], [sub_class_WeeklyProgressBaseAmt], [dim_ent_data_sub_class_weekly_progress_base_qty_sk], [dim_ent_data_sub_class_weekly_progress_base_qty_nk], [dim_ent_data_sub_class_weekly_progress_base_hrs_sk], [dim_ent_data_sub_class_weekly_progress_base_hrs_nk], [dim_ent_data_sub_class_weekly_progress_base_amt_sk], [dim_ent_data_sub_class_weekly_progress_base_amt_nk], 
[sub_class_WeeklyActualHrs], [sub_class_WeeklyActualAmt], [dim_ent_data_sub_class_weekly_actual_hrs_sk], [dim_ent_data_sub_class_weekly_actual_hrs_nk], [dim_ent_data_sub_class_weekly_actual_amt_sk], [dim_ent_data_sub_class_weekly_actual_amt_nk], [sub_class_WeeklyOriginalHrs], [sub_class_WeeklyOriginalQty], [sub_class_WeeklyOriginalAmt], [dim_ent_data_sub_class_weekly_original_hrs_sk], [dim_ent_data_sub_class_weekly_original_hrs_nk], [dim_ent_data_sub_class_weekly_original_qty_sk], [dim_ent_data_sub_class_weekly_original_qty_nk], [dim_ent_data_sub_class_weekly_original_amt_sk], [dim_ent_data_sub_class_weekly_original_amt_nk],
[parent_rssk], [created_date_time], [Unit], [PSRLevel1], [PSRLevel2], [PSRL1Description], [PSRL2Description],[coadesc])

SELECT 	
[Domain],	[KeyUoM],	[CutOff],	[CoA], [GEAC_COA],	[EarnedQty],	[EarnedHrs],	[PrevEarnedQty],	[PrevEarnedHrs],	[VarianceEarnedQty],
[VarianceEarnedHrs],	[TakeOffQty],	[TakeOffHrs],	[ProgressBaseQty],	[ProgressBaseHrs],	[ProgressBaseAmt],	[ActualHrs],
[ActualAmt], [VarianceActualHrs], [VarianceActualAmt],	[Phase],	[Prime],	[SubPrime],	[CostCode],	[Contract],	[WorkArea],	[SummaryCostType],	[CostType],	[OriginalHrs],
[OriginalQty],	[OriginalAmt],	[dim_ent_project_sk],	[dim_ent_project_nk],	[dim_ent_geac_coa_sk],	[dim_ent_geac_coa_nk],
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
[unit_of_measure_code_hours],	[data_class_quantity_code],	[data_class_hours_code],[sub_class_earned_quantity_code] , [sub_class_earned_hours_code] , [dim_ent_data_sub_class_earned_quantity_sk] , [dim_ent_data_sub_class_earned_quantity_nk] , [dim_ent_data_sub_class_earned_hours_sk] , [dim_ent_data_sub_class_earned_hours_nk], [data_class_amount_code], [unit_of_measure_code_amount], [dim_ent_data_class_amount_sk], [dim_ent_data_class_amount_nk], [dim_ent_unit_of_measure_amount_sk], [dim_ent_unit_of_measure_amount_nk], [sub_class_variance_actual_amount_code], [sub_class_variance_actual_hours_code], [dim_ent_data_sub_class_variance_actual_amt_sk], [dim_ent_data_sub_class_variance_actual_amt_nk], [dim_ent_data_sub_class_variance_actual_hours_sk], [dim_ent_data_sub_class_variance_actual_hours_nk],
[sub_class_PrevWeeklyEarnedQty], [sub_class_PrevWeeklyEarnedHrs], [dim_ent_data_sub_class_prev_weekly_earned_qty_sk], [dim_ent_data_sub_class_prev_weekly_earned_qty_nk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk], [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk], [sub_class_WeeklyTakeOffQty], [sub_class_WeeklyTakeOffHrs], [dim_ent_data_sub_class_weekly_takeoff_qty_sk], [dim_ent_data_sub_class_weekly_takeoff_qty_nk], [dim_ent_data_sub_class_weekly_takeoff_hrs_sk], [dim_ent_data_sub_class_weekly_takeoff_hrs_nk], [sub_class_WeeklyProgressBaseQty], [sub_class_WeeklyProgressBaseHrs], [sub_class_WeeklyProgressBaseAmt], [dim_ent_data_sub_class_weekly_progress_base_qty_sk], [dim_ent_data_sub_class_weekly_progress_base_qty_nk], [dim_ent_data_sub_class_weekly_progress_base_hrs_sk], [dim_ent_data_sub_class_weekly_progress_base_hrs_nk], [dim_ent_data_sub_class_weekly_progress_base_amt_sk], [dim_ent_data_sub_class_weekly_progress_base_amt_nk], 
[sub_class_WeeklyActualHrs], [sub_class_WeeklyActualAmt], [dim_ent_data_sub_class_weekly_actual_hrs_sk], [dim_ent_data_sub_class_weekly_actual_hrs_nk], [dim_ent_data_sub_class_weekly_actual_amt_sk], [dim_ent_data_sub_class_weekly_actual_amt_nk], [sub_class_WeeklyOriginalHrs], [sub_class_WeeklyOriginalQty], [sub_class_WeeklyOriginalAmt], [dim_ent_data_sub_class_weekly_original_hrs_sk], [dim_ent_data_sub_class_weekly_original_hrs_nk], [dim_ent_data_sub_class_weekly_original_qty_sk], [dim_ent_data_sub_class_weekly_original_qty_nk], [dim_ent_data_sub_class_weekly_original_amt_sk], [dim_ent_data_sub_class_weekly_original_amt_nk],
[parent_rssk], [load_date_time], [Unit], [PSRLevel1], [PSRLevel2], [PSRL1Description], [PSRL2Description],[coadesc]
FROM [gpd].[NCSA_MCPM_weekly_offshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_geac_coa_sk IS NULL   
or dim_ent_geac_coa_nk IS NULL
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

OR [dim_ent_data_sub_class_prev_weekly_earned_qty_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_qty_nk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_nk] IS NULL


--Update the reason of bad records
update  [gpd].[reprocess_NCSA_MCPM_weekly_offshore]
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
	
		case when dim_entp_phase_nk is null then 'Missing Phase - ' + isnull(Phase,'') + ',' else '' end +
		
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
	
		case when dim_ent_data_sub_class_prev_weekly_earned_qty_nk is null then 'Missing Data Sub Class PrevWeeklyEarnedQty - ' +  + isnull(sub_class_PrevWeeklyEarnedQty,'') + ',' else '' end +
		case when dim_ent_data_sub_class_prev_weekly_earned_hrs_nk is null then 'Missing Data Sub Class PrevWeeklyEarnedHrs - ' +  + isnull(sub_class_PrevWeeklyEarnedHrs,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_takeoff_qty_nk is null then 'Missing Data Sub Class WeeklyTakeOffQty - ' +  + isnull(sub_class_WeeklyTakeOffQty,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_takeoff_hrs_nk is null then 'Missing Data Sub Class WeeklyTakeOffHrs - ' +  + isnull(sub_class_WeeklyTakeOffHrs,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_progress_base_qty_nk is null then 'Missing Data Sub Class WeeklyProgressBaseQty - ' +  + isnull(sub_class_WeeklyProgressBaseQty,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_progress_base_hrs_nk is null then 'Missing Data Sub Class WeeklyProgressBaseHrs - ' +  + isnull(sub_class_WeeklyProgressBaseHrs,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_progress_base_amt_nk is null then 'Missing Data Sub Class WeeklyProgressBaseAmt - ' +  + isnull(sub_class_WeeklyProgressBaseAmt,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_actual_hrs_nk is null then 'Missing Data Sub Class WeeklyActualHrs - ' +  + isnull(sub_class_WeeklyActualHrs,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_actual_amt_nk is null then 'Missing Data Sub Class WeeklyActualAmt - ' +  + isnull(sub_class_WeeklyActualAmt,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_original_hrs_nk is null then 'Missing Data Sub Class WeeklyOriginalHrs - ' +  + isnull(sub_class_WeeklyOriginalHrs,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_original_qty_nk is null then 'Missing Data Sub Class WeeklyOriginalQty - ' +  + isnull(sub_class_WeeklyOriginalQty,'') + ',' else '' end +
		case when dim_ent_data_sub_class_weekly_original_amt_nk is null then 'Missing Data Sub Class WeeklyOriginalAmt - ' +  + isnull(sub_class_WeeklyOriginalAmt,'') + ',' else '' end +
		case when dim_ent_geac_coa_nk is null then 'Missing GEAC COA - ' +  + isnull(GEAC_CoA,'') + ',' else '' end

--Remove the bad records from the stage table so that only good records can be pushed into fact ops table
DELETE FROM [gpd].[NCSA_MCPM_weekly_offshore]
WHERE  dim_ent_project_sk IS NULL
or dim_ent_project_nk IS NULL
or dim_ent_geac_coa_sk IS NULL   
or dim_ent_geac_coa_nk IS NULL
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
--09/19/2022: Satish -- Adding new Data_sub_class sk/nk
OR [dim_ent_data_sub_class_prev_weekly_earned_qty_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_qty_nk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_prev_weekly_earned_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_takeoff_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_progress_base_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_actual_amt_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_hrs_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_qty_nk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_sk] IS NULL
OR [dim_ent_data_sub_class_weekly_original_amt_nk] IS NULL



	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------
	--exec populate_reprocess_history 'pl_mcpmdata_offshore_weekly_master_pipeline', 'gpd.NCSA_MCPM_weekly_offshore', 'gpd.reprocess_NCSA_MCPM_weekly_offshore', 'dbo.fact_ops','rssk';

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
		select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
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
	end;
end catch;


END
