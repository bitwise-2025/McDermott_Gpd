/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Legacy_Onshore_validate]    Script Date: 8/3/2023 2:19:22 PM ******/
IF    OBJECT_ID('[dbo].[load_NCSA_fact_MCPM_Legacy_Onshore_validate]','P') IS NOT NULL
DROP PROCEDURE [dbo].[load_NCSA_fact_MCPM_Legacy_Onshore_validate]
GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_MCPM_Legacy_Onshore_validate]    Script Date: 8/3/2023 2:19:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_MCPM_Legacy_Onshore_validate] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();
/*-----------------------------------------------------------------------------------------------------
Change Log : 
Date		 |  Developer | Change Description/User Story
-------------------------------------------------------------------------------------------------------
[07/31/2023] | [Abhijit Kharat]	| [UserStory - 1623 - MCPM Legacy Cost Hours - Onshore Manual Excel File Ingestion]
[07/26/2023] | [Abhijit Kharat]	| [UserStory - 973 - MCPM Legacy Cost Hours - Manual Excel File Ingestion]

-----------------------------------------------------------------------------------------------------*/


	--------------------------------------------------------------------------------------
	-- Step 1: Filter the data in Synapse gpd based on project id and set the load_date for remaining records.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry

	--clean any string NULL records from source data to proper NULL value
			UPDATE [gpd].[NCSA_MCPM_Legacy] SET
		ACTIVITY_CODE=NULLIF(ACTIVITY_CODE,'NULL'),
		[Job_Number_Description]=NULLIF([Job_Number_Description],'NULL'),
		[Work_Area_Description]=NULLIF([Work_Area_Description],'NULL'),
		ActualAmt=NULLIF(ActualAmt,'NULL'),
		ActualHrs=NULLIF(ActualHrs,'NULL'),
		ActualRate=NULLIF(ActualRate,'NULL'),
		CBAmt=NULLIF(CBAmt,'NULL'),
		CBHrs=NULLIF(CBHrs,'NULL'),
		CBQty=NULLIF(CBQty,'NULL'),
		CoA=NULLIF(CoA,'NULL'),
		CommittedAmt=NULLIF(CommittedAmt,'NULL'),
		CommittedHrs=NULLIF(CommittedHrs,'NULL'),
		ContractNo=NULLIF(ContractNo,'NULL'),
		CostCode=NULLIF(CostCode,'NULL'),
		CostType=NULLIF(CostType,'NULL'),
		Currency=NULLIF(Currency,'NULL'),
		CutOff=NULLIF(CutOff,'NULL'),
		CWP_CODE=NULLIF(CWP_CODE,'NULL'),
		data_class_amount_code=NULLIF(data_class_amount_code,'NULL'),
		data_class_hours_code=NULLIF(data_class_hours_code,'NULL'),
		data_class_precentage_code=NULLIF(data_class_precentage_code,'NULL'),
		data_class_quantity_code=NULLIF(data_class_quantity_code,'NULL'),
		data_class_rate_code=NULLIF(data_class_rate_code,'NULL'),
		Discipline=NULLIF(Discipline,'NULL'),
		Domain=NULLIF(Domain,'NULL'),
		DomainName=NULLIF(DomainName,'NULL'),
		EACAmt=NULLIF(EACAmt,'NULL'),
		EACHrs=NULLIF(EACHrs,'NULL'),
		EarnedAmt=NULLIF(EarnedAmt,'NULL'),
		EarnedHrs=NULLIF(EarnedHrs,'NULL'),
		EarnedQty=NULLIF(EarnedQty,'NULL'),
		ETCAmt=NULLIF(ETCAmt,'NULL'),
		ETCHrs=NULLIF(ETCHrs,'NULL'),
		ETCRate=NULLIF(ETCRate,'NULL'),
		ForecastAmt=NULLIF(ForecastAmt,'NULL'),
		ForecastHrs=NULLIF(ForecastHrs,'NULL'),
		ForecastQty=NULLIF(ForecastQty,'NULL'),
		ForecastRate=NULLIF(ForecastRate,'NULL'),
		FUNCTION_CODE=NULLIF(FUNCTION_CODE,'NULL'),
		GEAC_COA=NULLIF(GEAC_COA,'NULL'),
		JDE_COA=NULLIF(JDE_COA,'NULL'),
		IWP_CODE=NULLIF(IWP_CODE,'NULL'),
		Measurable=NULLIF(Measurable,'NULL'),
		OBAmt=NULLIF(OBAmt,'NULL'),
		OBHrs=NULLIF(OBHrs,'NULL'),
		OBQty=NULLIF(OBQty,'NULL'),
		OBRate=NULLIF(OBRate,'NULL'),
		PBAmt=NULLIF(PBAmt,'NULL'),
		PBHrs=NULLIF(PBHrs,'NULL'),
		PBQty=NULLIF(PBQty,'NULL'),
		PctComplete=NULLIF(PctComplete,'NULL'),
		Phase=NULLIF(Phase,'NULL'),
		PIM_CODE=NULLIF(PIM_CODE,'NULL'),
		Prime=NULLIF(Prime,'NULL'),
		ProgressType=NULLIF(ProgressType,'NULL'),
		PSRL1Description=NULLIF(PSRL1Description,'NULL'),
		PSRL2Description=NULLIF(PSRL2Description,'NULL'),
		PSRLevel1=NULLIF(PSRLevel1,'NULL'),
		PSRLevel2=NULLIF(PSRLevel2,'NULL'),
		ROC_CODE=NULLIF(ROC_CODE,'NULL'),
		SCHEDULE_RESOURCE_CODE=NULLIF(SCHEDULE_RESOURCE_CODE,'NULL'),
		source_code=NULLIF(source_code,'NULL'),
		sub_class_actual_amount_code=NULLIF(sub_class_actual_amount_code,'NULL'),
		sub_class_actual_hours_code=NULLIF(sub_class_actual_hours_code,'NULL'),
		sub_class_actual_rate_code=NULLIF(sub_class_actual_rate_code,'NULL'),
		sub_class_committed_amount_code=NULLIF(sub_class_committed_amount_code,'NULL'),
		sub_class_committed_hours_code=NULLIF(sub_class_committed_hours_code,'NULL'),
		sub_class_current_budget_amount_code=NULLIF(sub_class_current_budget_amount_code,'NULL'),
		sub_class_current_budget_hours_code=NULLIF(sub_class_current_budget_hours_code,'NULL'),
		sub_class_current_budget_quantity_code=NULLIF(sub_class_current_budget_quantity_code,'NULL'),
		sub_class_earned_amount_code=NULLIF(sub_class_earned_amount_code,'NULL'),
		sub_class_earned_hours_code=NULLIF(sub_class_earned_hours_code,'NULL'),
		sub_class_earned_quantity_code=NULLIF(sub_class_earned_quantity_code,'NULL'),
		sub_class_estimated_completion_amount_code=NULLIF(sub_class_estimated_completion_amount_code,'NULL'),
		sub_class_estimated_completion_hours_code=NULLIF(sub_class_estimated_completion_hours_code,'NULL'),
		sub_class_estimated_take_of_completion_amount_code=NULLIF(sub_class_estimated_take_of_completion_amount_code,'NULL'),
		sub_class_estimated_take_of_completion_hours_code=NULLIF(sub_class_estimated_take_of_completion_hours_code,'NULL'),
		sub_class_estimated_take_of_completion_rate_code=NULLIF(sub_class_estimated_take_of_completion_rate_code,'NULL'),
		sub_class_forecast_amount_code=NULLIF(sub_class_forecast_amount_code,'NULL'),
		sub_class_forecast_hours_code=NULLIF(sub_class_forecast_hours_code,'NULL'),
		sub_class_forecast_quantity_code=NULLIF(sub_class_forecast_quantity_code,'NULL'),
		sub_class_forecast_rate_code=NULLIF(sub_class_forecast_rate_code,'NULL'),
		sub_class_original_budget_amount_code=NULLIF(sub_class_original_budget_amount_code,'NULL'),
		sub_class_original_budget_hours_code=NULLIF(sub_class_original_budget_hours_code,'NULL'),
		sub_class_original_budget_quantity_code=NULLIF(sub_class_original_budget_quantity_code,'NULL'),
		sub_class_original_budget_rate_code=NULLIF(sub_class_original_budget_rate_code,'NULL'),
		sub_class_percentage_complete_code=NULLIF(sub_class_percentage_complete_code,'NULL'),
		sub_class_progress_budget_amount_code=NULLIF(sub_class_progress_budget_amount_code,'NULL'),
		sub_class_progress_budget_hours_code=NULLIF(sub_class_progress_budget_hours_code,'NULL'),
		sub_class_progress_budget_quantity_code=NULLIF(sub_class_progress_budget_quantity_code,'NULL'),
		sub_class_take_off_hours_code=NULLIF(sub_class_take_off_hours_code,'NULL'),
		sub_class_take_off_quantity_code=NULLIF(sub_class_take_off_quantity_code,'NULL'),
		sub_source_code=NULLIF(sub_source_code,'NULL'),
		SubPrime=NULLIF(SubPrime,'NULL'),
		SummaryCostType=NULLIF(SummaryCostType,'NULL'),
		TakeOffHrs=NULLIF(TakeOffHrs,'NULL'),
		TakeOffQty=NULLIF(TakeOffQty,'NULL'),
		Title=NULLIF(Title,'NULL'),
		Unit=NULLIF(Unit,'NULL'),
		unit_of_measure_code_amount=NULLIF(unit_of_measure_code_amount,'NULL'),
		unit_of_measure_code_hours=NULLIF(unit_of_measure_code_hours,'NULL'),
		unit_of_measure_code_precentage=NULLIF(unit_of_measure_code_precentage,'NULL'),
		unit_of_measure_code_quantity=NULLIF(unit_of_measure_code_quantity,'NULL'),
		UoM=NULLIF(UoM,'NULL'),
		WorkArea=NULLIF(WorkArea,'NULL'),
		[PM_Earned_Quantity]=NULLIF([PM_Earned_Quantity],'NULL'),
		[PM_Earned_Hours]=NULLIF([PM_Earned_Hours],'NULL'),
		[PM_Previous_Earned_Quantity]=NULLIF([PM_Previous_Earned_Quantity],'NULL'),
		[PM_Previous_Earned_Hours]=NULLIF([PM_Previous_Earned_Hours],'NULL'),
		[PM_Variance_Earned_Quantity]=NULLIF([PM_Variance_Earned_Quantity],'NULL'),
		[PM_Variance_Earned_Hours]=NULLIF([PM_Variance_Earned_Hours],'NULL'),
		[PM_TakeOff_Quantity]=NULLIF([PM_TakeOff_Quantity],'NULL'),
		[PM_TakeOff_Hours]=NULLIF([PM_TakeOff_Hours],'NULL'),
		[PM_Progress_Base_Quantity]=NULLIF([PM_Progress_Base_Quantity],'NULL'),
		[PM_Progress_Base_Hours]=NULLIF([PM_Progress_Base_Hours],'NULL'),
		[PM_Progress_Base_Amount]=NULLIF([PM_Progress_Base_Amount],'NULL'),
		[PM_Actual_Hours]=NULLIF([PM_Actual_Hours],'NULL'),
		[PM_Actual_Amount]=NULLIF([PM_Actual_Amount],'NULL'),
		[PM_Original_Hours]=NULLIF([PM_Original_Hours],'NULL'),
		[PM_Original_Quantity]=NULLIF([PM_Original_Quantity],'NULL'),
		[PM_Original_Amount]=NULLIF([PM_Original_Amount],'NULL'),
		[PM_Variance_Actual_Hours]=NULLIF([PM_Variance_Actual_Hours],'NULL'),
		[PM_Variance_Actual_Amount]=NULLIF([PM_Variance_Actual_Amount],'NULL')





		UPDATE [gpd].[NCSA_MCPM_Legacy] SET
		ACTIVITY_CODE=NULLIF(ACTIVITY_CODE,''),
		[Job_Number_Description]=NULLIF([Job_Number_Description],''),
		[Work_Area_Description]=NULLIF([Work_Area_Description],''),
		ActualAmt=NULLIF(ActualAmt,''),
		ActualHrs=NULLIF(ActualHrs,''),
		ActualRate=NULLIF(ActualRate,''),
		CBAmt=NULLIF(CBAmt,''),
		CBHrs=NULLIF(CBHrs,''),
		CBQty=NULLIF(CBQty,''),
		CoA=NULLIF(CoA,''),
		CommittedAmt=NULLIF(CommittedAmt,''),
		CommittedHrs=NULLIF(CommittedHrs,''),
		ContractNo=NULLIF(ContractNo,''),
		CostCode=NULLIF(CostCode,''),
		CostType=NULLIF(CostType,''),
		Currency=NULLIF(Currency,''),
		CutOff=NULLIF(CutOff,''),
		CWP_CODE=NULLIF(CWP_CODE,''),
		data_class_amount_code=NULLIF(data_class_amount_code,''),
		data_class_hours_code=NULLIF(data_class_hours_code,''),
		data_class_precentage_code=NULLIF(data_class_precentage_code,''),
		data_class_quantity_code=NULLIF(data_class_quantity_code,''),
		data_class_rate_code=NULLIF(data_class_rate_code,''),
		Discipline=NULLIF(Discipline,''),
		Domain=NULLIF(Domain,''),
		DomainName=NULLIF(DomainName,''),
		EACAmt=NULLIF(EACAmt,''),
		EACHrs=NULLIF(EACHrs,''),
		EarnedAmt=NULLIF(EarnedAmt,''),
		EarnedHrs=NULLIF(EarnedHrs,''),
		EarnedQty=NULLIF(EarnedQty,''),
		ETCAmt=NULLIF(ETCAmt,''),
		ETCHrs=NULLIF(ETCHrs,''),
		ETCRate=NULLIF(ETCRate,''),
		ForecastAmt=NULLIF(ForecastAmt,''),
		ForecastHrs=NULLIF(ForecastHrs,''),
		ForecastQty=NULLIF(ForecastQty,''),
		ForecastRate=NULLIF(ForecastRate,''),
		FUNCTION_CODE=NULLIF(FUNCTION_CODE,''),
		GEAC_COA=NULLIF(GEAC_COA,''),
		JDE_COA=NULLIF(JDE_COA,''),
		IWP_CODE=NULLIF(IWP_CODE,''),
		Measurable=NULLIF(Measurable,''),
		OBAmt=NULLIF(OBAmt,''),
		OBHrs=NULLIF(OBHrs,''),
		OBQty=NULLIF(OBQty,''),
		OBRate=NULLIF(OBRate,''),
		PBAmt=NULLIF(PBAmt,''),
		PBHrs=NULLIF(PBHrs,''),
		PBQty=NULLIF(PBQty,''),
		PctComplete=NULLIF(PctComplete,''),
		Phase=NULLIF(Phase,''),
		PIM_CODE=NULLIF(PIM_CODE,''),
		Prime=NULLIF(Prime,''),
		ProgressType=NULLIF(ProgressType,''),
		PSRL1Description=NULLIF(PSRL1Description,''),
		PSRL2Description=NULLIF(PSRL2Description,''),
		PSRLevel1=NULLIF(PSRLevel1,''),
		PSRLevel2=NULLIF(PSRLevel2,''),
		ROC_CODE=NULLIF(ROC_CODE,''),
		SCHEDULE_RESOURCE_CODE=NULLIF(SCHEDULE_RESOURCE_CODE,''),
		source_code=NULLIF(source_code,''),
		sub_class_actual_amount_code=NULLIF(sub_class_actual_amount_code,''),
		sub_class_actual_hours_code=NULLIF(sub_class_actual_hours_code,''),
		sub_class_actual_rate_code=NULLIF(sub_class_actual_rate_code,''),
		sub_class_committed_amount_code=NULLIF(sub_class_committed_amount_code,''),
		sub_class_committed_hours_code=NULLIF(sub_class_committed_hours_code,''),
		sub_class_current_budget_amount_code=NULLIF(sub_class_current_budget_amount_code,''),
		sub_class_current_budget_hours_code=NULLIF(sub_class_current_budget_hours_code,''),
		sub_class_current_budget_quantity_code=NULLIF(sub_class_current_budget_quantity_code,''),
		sub_class_earned_amount_code=NULLIF(sub_class_earned_amount_code,''),
		sub_class_earned_hours_code=NULLIF(sub_class_earned_hours_code,''),
		sub_class_earned_quantity_code=NULLIF(sub_class_earned_quantity_code,''),
		sub_class_estimated_completion_amount_code=NULLIF(sub_class_estimated_completion_amount_code,''),
		sub_class_estimated_completion_hours_code=NULLIF(sub_class_estimated_completion_hours_code,''),
		sub_class_estimated_take_of_completion_amount_code=NULLIF(sub_class_estimated_take_of_completion_amount_code,''),
		sub_class_estimated_take_of_completion_hours_code=NULLIF(sub_class_estimated_take_of_completion_hours_code,''),
		sub_class_estimated_take_of_completion_rate_code=NULLIF(sub_class_estimated_take_of_completion_rate_code,''),
		sub_class_forecast_amount_code=NULLIF(sub_class_forecast_amount_code,''),
		sub_class_forecast_hours_code=NULLIF(sub_class_forecast_hours_code,''),
		sub_class_forecast_quantity_code=NULLIF(sub_class_forecast_quantity_code,''),
		sub_class_forecast_rate_code=NULLIF(sub_class_forecast_rate_code,''),
		sub_class_original_budget_amount_code=NULLIF(sub_class_original_budget_amount_code,''),
		sub_class_original_budget_hours_code=NULLIF(sub_class_original_budget_hours_code,''),
		sub_class_original_budget_quantity_code=NULLIF(sub_class_original_budget_quantity_code,''),
		sub_class_original_budget_rate_code=NULLIF(sub_class_original_budget_rate_code,''),
		sub_class_percentage_complete_code=NULLIF(sub_class_percentage_complete_code,''),
		sub_class_progress_budget_amount_code=NULLIF(sub_class_progress_budget_amount_code,''),
		sub_class_progress_budget_hours_code=NULLIF(sub_class_progress_budget_hours_code,''),
		sub_class_progress_budget_quantity_code=NULLIF(sub_class_progress_budget_quantity_code,''),
		sub_class_take_off_hours_code=NULLIF(sub_class_take_off_hours_code,''),
		sub_class_take_off_quantity_code=NULLIF(sub_class_take_off_quantity_code,''),
		sub_source_code=NULLIF(sub_source_code,''),
		SubPrime=NULLIF(SubPrime,''),
		SummaryCostType=NULLIF(SummaryCostType,''),
		TakeOffHrs=NULLIF(TakeOffHrs,''),
		TakeOffQty=NULLIF(TakeOffQty,''),
		Title=NULLIF(Title,''),
		Unit=NULLIF(Unit,''),
		unit_of_measure_code_amount=NULLIF(unit_of_measure_code_amount,''),
		unit_of_measure_code_hours=NULLIF(unit_of_measure_code_hours,''),
		unit_of_measure_code_precentage=NULLIF(unit_of_measure_code_precentage,''),
		unit_of_measure_code_quantity=NULLIF(unit_of_measure_code_quantity,''),
		UoM=NULLIF(UoM,''),
		WorkArea=NULLIF(WorkArea,''),
		[PM_Earned_Quantity]=NULLIF([PM_Earned_Quantity],''),
		[PM_Earned_Hours]=NULLIF([PM_Earned_Hours],''),
		[PM_Previous_Earned_Quantity]=NULLIF([PM_Previous_Earned_Quantity],''),
		[PM_Previous_Earned_Hours]=NULLIF([PM_Previous_Earned_Hours],''),
		[PM_Variance_Earned_Quantity]=NULLIF([PM_Variance_Earned_Quantity],''),
		[PM_Variance_Earned_Hours]=NULLIF([PM_Variance_Earned_Hours],''),
		[PM_TakeOff_Quantity]=NULLIF([PM_TakeOff_Quantity],''),
		[PM_TakeOff_Hours]=NULLIF([PM_TakeOff_Hours],''),
		[PM_Progress_Base_Quantity]=NULLIF([PM_Progress_Base_Quantity],''),
		[PM_Progress_Base_Hours]=NULLIF([PM_Progress_Base_Hours],''),
		[PM_Progress_Base_Amount]=NULLIF([PM_Progress_Base_Amount],''),
		[PM_Actual_Hours]=NULLIF([PM_Actual_Hours],''),
		[PM_Actual_Amount]=NULLIF([PM_Actual_Amount],''),
		[PM_Original_Hours]=NULLIF([PM_Original_Hours],''),
		[PM_Original_Quantity]=NULLIF([PM_Original_Quantity],''),
		[PM_Original_Amount]=NULLIF([PM_Original_Amount],''),
		[PM_Variance_Actual_Hours]=NULLIF([PM_Variance_Actual_Hours],''),
		[PM_Variance_Actual_Amount]=NULLIF([PM_Variance_Actual_Amount],'')

 

		
		Update [gpd].[NCSA_MCPM_Legacy]
		set	[pm_earned_quantity_code] = 'Progress Module Earned Quantity'        
		,[pm_earned_hours_code]  = 'Progress Module Earned Hours'          
		,[pm_previous_earned_quantity_code] = 'Progress Module Previous Earned Quantity'
		,[pm_previous_earned_hours_code]  = 'Progress Module Previous Earned Hours' 
		,[pm_variance_earned_quantity_code] = 'Progress Module Variance Earned Quantity'
		,[pm_variance_earned_hours_code]  = 'Progress Module Variance Earned Hours' 
		,[pm_takeoff_quantity_code] = 'Progress Module TakeOff Quantity'       
		,[pm_takeoff_hours_code] = 'Progress Module TakeOff Hours'          
		,[pm_progress_base_quantity_code]  = 'Progress Module Progress Base Quantity'
		,[pm_progress_base_hours_code]  = 'Progress Module Progress Base Hours'   
		,[pm_progress_base_amount_code] = 'Progress Module Progress Base Amount'   
		,[pm_actual_hours_code]  = 'Progress Module Actual Hours'          
		,[pm_actual_amount_code] = 'Progress Module Actual Amount'          
		,[pm_original_hours_code]  = 'Progress Module Original Hours'        
		,[pm_original_quantity_code] = 'Progress Module Original Quantity'      
		,[pm_original_amount_code]  = 'Progress Module Original Amount'       
		,[pm_variance_actual_hours_code]  = 'Progress Module Variance Actual Hours' 
		,[pm_variance_actual_amount_code] = 'Progress Module Variance Actual Amount' 
		

	UPDATE [gpd].[NCSA_MCPM_Legacy]
	set load_date_time = @Date


	UPDATE [gpd].[NCSA_MCPM_Legacy]
	set sub_source_code='Excel_MCPM_Onshore_Cost'


	--[03/25/2022 Abhijit Kharat]: To handle MCPM ONSHORE AND OFFSHORE PROJECTS - ONSHORE PROJECTS APPEND 99 in start.
	
	UPDATE [gpd].[NCSA_MCPM_Legacy]
	SET DOMAIN=CASE
					WHEN LEN(TRIM(DOMAIN)) > 5 THEN '99'+TRIM(DOMAIN)
				    ELSE TRIM(DOMAIN)
	               END

	--[03/17/2022 Abhijit Kharat]: Added the update statement to populate GEAC_COA value using the values from NCSA_MCPM_Legacy_Offshore table

	/*
	UPDATE [gpd].[NCSA_MCPM_Legacy]
	set GEAC_COA = concat('GEAC.', RIGHT(ContractNo,4), '.0100','.',WorkARea,'.',CostCode,'.',costtype);
	*/

	UPDATE [gpd].[NCSA_MCPM_Legacy]
	set JDE_COA = 'JDE.' + '00' + left(ltrim(rtrim(ContractNo)),3) + '.' + CoA

	--[03/24/2022 Abhijit Kharat]---------if discipline columns is NULL OR BLANK, REFER costcode column to lookup discipline codes else refer discipline column values
	UPDATE [gpd].[NCSA_MCPM_Legacy]
	SET computed_discipline_code= 
			CASE WHEN (discipline IS NULL OR discipline = '') THEN (select discipline_code from dim_ent_discipline where active=1 and discipline_name in (select discipline from dim_ent_subfunction where active=1 and sub_function_code=costcode ))
	        WHEN (discipline IS NOT NULL OR discipline != '') THEN discipline
			ELSE NULL
			END 


	-------------------EXTRACT entity id from COA to refer office location from dim_ent_entity.----------
	--correct this logic
	
	UPDATE [gpd].[NCSA_MCPM_Legacy]
	SET office_entity='00' + left(ltrim(rtrim(ContractNo)),3)

	SELECT * from [gpd].[NCSA_MCPM_Legacy]
	

	--[03/24/2022 Abhijit Kharat]----------------EXTRACT office code based on entity id from office alternative view--------------------
	UPDATE [gpd].[NCSA_MCPM_Legacy]
	SET computed_office_location=
			CASE WHEN (CoA IS NOT NULL OR CoA != '')  THEN (select max(alternative_office_code) from [dbo].[dim_ent_office_alternative_v] where active=1 and alternative_office_code in (select max(location) from dim_entp_contract_entity where active=1 and entity=office_entity ))
			ELSE NULL
			END
	
	--------------------------------------------------------------------------------------
	--Step 2: get the Project ID related SK/NK
	--------------------------------------------------------------------------------------


	execute [stage].[fact_lookup_based_on_one_key]
                'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_project_sk', 'dim_ent_project_nk',
                'dim_entp_project', 'dim_entp_project_sk', 'dim_entp_project_nk', 'Domain', 'project_number', 'FL',NULL ;




	--Code1: new mcpm onshore logic for jde coa

	--Step i: Clear unwanted records--

				--Truncate table gpd.NCSA_MCPM_dim_ent_jde_coa

		--Step ii: Collect data from MCPM and reprocess to be updated into DIM_ENT_JDE_COA--

		/*
				INSERT INTO [gpd].[NCSA_MCPM_dim_ent_jde_coa]
							([CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable])
				SELECT DISTINCT [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable] 
				FROM 
				(SELECT [CoA],[Domain] ,[PSRLevel1] as MCPM_PSRLevel1 ,[PSRLevel2] as MCPM_PSRLevel2, [PSRL1Description] as MCPM_PSRL1Description ,[PSRL2Description] as MCPM_PSRL2Description ,[dim_ent_project_nk] AS dim_entp_project_nk, measurable 
				FROM gpd.NCSA_MCPM_Legacy
				--WHERE [PSRLevel1]<>'' AND PSRLevel2 <> '' AND PSRL1Description <>'' AND [PSRL2Description] <>''
				UNION ALL
				SELECT [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk], [measurable]  
				FROM gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa
				) A
		*/

		--Step iii : Call the SPU to generic_load_dim_v2 to load the DIM data.--

				-- select * from gpd.MCPM_coa_v  --debugging statement only

			--	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_jde_coa_MCPM','Y','N','Y'

		--Step iv: Truncate reprocess_NCSA_MCPM_dim_ent_jde_coa and update with missing records to be reprocessed for next run.--

			--	TRUNCATE TABLE gpd.reprocess_NCSA_MCPM_dim_ent_jde_coa

				--DECLARE @Date DATETIME;  --debugging  only
				--SET @Date = GETDATE();    --debugging only
		/*
				INSERT INTO [gpd].[reprocess_NCSA_MCPM_dim_ent_jde_coa]
							([CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk],[measurable],[created_date_time])
				SELECT DISTINCT  [CoA],[Domain] ,[MCPM_PSRLevel1] ,[MCPM_PSRLevel2] ,[MCPM_PSRL1Description] ,[MCPM_PSRL2Description] ,[dim_entp_project_nk], [measurable], @Date 
				FROM gpd.NCSA_MCPM_dim_ent_jde_coa A
				WHERE A.CoA not in ( SELECT DISTINCT TRIM(account_code) FROM [gpd].[MCPM_coa_v] )
		*/

	--combine data from reprocess table for current run


	--Code1: new mcpm onshore logic for jde coa

	--------------------------------------------------------------------------------------
	--New Step x: Based on work area code and description, make new entries to existing work area dimension 
	--[Abhijit Kharat] - to update work area description
	--------------------------------------------------------------------------------------
	truncate table [gpd].[NCSA_WorkArea_MCPM_Legacy_offshore];

	insert into [gpd].[NCSA_WorkArea_MCPM_Legacy_offshore](Code ,Description ,project_id ,phase_code,work_unit_code,dim_entp_project_nk)
	SELECT [Code],MAX([Description]),project_id,MAX(ISNULL(phase_code,'ZZZ')),MAX(ISNULL(work_unit_code,'ZZZ')),[dim_ent_project_nk]
	FROM 
			(SELECT DISTINCT x.[WorkArea] as Code,COALESCE(x.[Work_Area_Description], y.work_area_name,x.WorkArea) as [Description],x.[DOMAIN] as project_id,x.[dim_ent_project_nk]
			,x.[Unit] work_unit_code
			,x.Phase phase_code
			,y.dim_entp_project_nk dim_entp_project_nk_l
			FROM
			[gpd].[NCSA_MCPM_Legacy] x
			LEFT JOIN dbo.dim_entp_work_area y
			ON x.WorkArea = y.work_area_code
			AND x.dim_ent_project_nk=y.dim_entp_project_nk
			AND y.active=1 
			) t
			GROUP BY [Code],project_id,[dim_ent_project_nk]

	execute [dbo].[generic_load_dim_v2 ] 'dim_entp_work_area_mcpm_legacy_offshore','Y','N','Y'; 

	--------------------------------------------------------------------------------------
	--Step 4: Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
	INSERT INTO [gpd].[NCSA_MCPM_Legacy]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[Discipline],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[ForecastQty],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_forecast_quantity_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk],[dim_ent_office_sk],[dim_ent_office_nk],[computed_discipline_code],[office_entity],[computed_office_location],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_forecast_quantity_sk],[dim_ent_data_sub_class_forecast_quantity_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time],[JDE_COA],[PM_Earned_Quantity],[pm_earned_quantity_code],[PM_Earned_Hours],[pm_earned_hours_code],[PM_Previous_Earned_Quantity],[pm_previous_earned_quantity_code],[PM_Previous_Earned_Hours],[pm_previous_earned_hours_code],[PM_Variance_Earned_Quantity],[pm_variance_earned_quantity_code],[PM_Variance_Earned_Hours],[pm_variance_earned_hours_code],[PM_TakeOff_Quantity],[pm_takeoff_quantity_code],[PM_TakeOff_Hours],[pm_takeoff_hours_code],[PM_Progress_Base_Quantity],[pm_progress_base_quantity_code],[PM_Progress_Base_Hours],[pm_progress_base_hours_code],[PM_Progress_Base_Amount],[pm_progress_base_amount_code],[PM_Actual_Hours],[pm_actual_hours_code],[PM_Actual_Amount],[pm_actual_amount_code],[PM_Original_Hours],[pm_original_hours_code],[PM_Original_Quantity],[pm_original_quantity_code],[PM_Original_Amount],[pm_original_amount_code],[PM_Variance_Actual_Hours],[pm_variance_actual_hours_code],[PM_Variance_Actual_Amount],[pm_variance_actual_amount_code],[dim_ent_data_sub_class_pm_earned_quantity_sk],[dim_ent_data_sub_class_pm_earned_quantity_nk],[dim_ent_data_sub_class_pm_earned_hours_sk],[dim_ent_data_sub_class_pm_earned_hours_nk],[dim_ent_data_sub_class_pm_previous_earned_quantity_sk],[dim_ent_data_sub_class_pm_previous_earned_quantity_nk],[dim_ent_data_sub_class_pm_previous_earned_hours_sk],[dim_ent_data_sub_class_pm_previous_earned_hours_nk],[dim_ent_data_sub_class_pm_variance_earned_quantity_sk],[dim_ent_data_sub_class_pm_variance_earned_quantity_nk],[dim_ent_data_sub_class_pm_variance_earned_hours_sk],[dim_ent_data_sub_class_pm_variance_earned_hours_nk],[dim_ent_data_sub_class_pm_takeoff_quantity_sk],[dim_ent_data_sub_class_pm_takeoff_quantity_nk],[dim_ent_data_sub_class_pm_takeoff_hours_sk],[dim_ent_data_sub_class_pm_takeoff_hours_nk],[dim_ent_data_sub_class_pm_progress_base_quantity_sk],[dim_ent_data_sub_class_pm_progress_base_quantity_nk],[dim_ent_data_sub_class_pm_progress_base_hours_sk],[dim_ent_data_sub_class_pm_progress_base_hours_nk],[dim_ent_data_sub_class_pm_progress_base_amount_sk],[dim_ent_data_sub_class_pm_progress_base_amount_nk],[dim_ent_data_sub_class_pm_actual_hours_sk],[dim_ent_data_sub_class_pm_actual_hours_nk],[dim_ent_data_sub_class_pm_actual_amount_sk],[dim_ent_data_sub_class_pm_actual_amount_nk],[dim_ent_data_sub_class_pm_original_hours_sk],[dim_ent_data_sub_class_pm_original_hours_nk],[dim_ent_data_sub_class_pm_original_quantity_sk],[dim_ent_data_sub_class_pm_original_quantity_nk],[dim_ent_data_sub_class_pm_original_amount_sk],[dim_ent_data_sub_class_pm_original_amount_nk],[dim_ent_data_sub_class_pm_variance_actual_hours_sk],[dim_ent_data_sub_class_pm_variance_actual_hours_nk],[dim_ent_data_sub_class_pm_variance_actual_amount_sk],[dim_ent_data_sub_class_pm_variance_actual_amount_nk])
	
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[Discipline],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[ForecastQty],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_forecast_quantity_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk],[dim_ent_office_sk],[dim_ent_office_nk],[computed_discipline_code],[office_entity],[computed_office_location],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_forecast_quantity_sk],[dim_ent_data_sub_class_forecast_quantity_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],ISNULL([parent_rssk],[rssk]),[created_date_time],[JDE_COA],[PM_Earned_Quantity],[pm_earned_quantity_code],[PM_Earned_Hours],[pm_earned_hours_code],[PM_Previous_Earned_Quantity],[pm_previous_earned_quantity_code],[PM_Previous_Earned_Hours],[pm_previous_earned_hours_code],[PM_Variance_Earned_Quantity],[pm_variance_earned_quantity_code],[PM_Variance_Earned_Hours],[pm_variance_earned_hours_code],[PM_TakeOff_Quantity],[pm_takeoff_quantity_code],[PM_TakeOff_Hours],[pm_takeoff_hours_code],[PM_Progress_Base_Quantity],[pm_progress_base_quantity_code],[PM_Progress_Base_Hours],[pm_progress_base_hours_code],[PM_Progress_Base_Amount],[pm_progress_base_amount_code],[PM_Actual_Hours],[pm_actual_hours_code],[PM_Actual_Amount],[pm_actual_amount_code],[PM_Original_Hours],[pm_original_hours_code],[PM_Original_Quantity],[pm_original_quantity_code],[PM_Original_Amount],[pm_original_amount_code],[PM_Variance_Actual_Hours],[pm_variance_actual_hours_code],[PM_Variance_Actual_Amount],[pm_variance_actual_amount_code],[dim_ent_data_sub_class_pm_earned_quantity_sk],[dim_ent_data_sub_class_pm_earned_quantity_nk],[dim_ent_data_sub_class_pm_earned_hours_sk],[dim_ent_data_sub_class_pm_earned_hours_nk],[dim_ent_data_sub_class_pm_previous_earned_quantity_sk],[dim_ent_data_sub_class_pm_previous_earned_quantity_nk],[dim_ent_data_sub_class_pm_previous_earned_hours_sk],[dim_ent_data_sub_class_pm_previous_earned_hours_nk],[dim_ent_data_sub_class_pm_variance_earned_quantity_sk],[dim_ent_data_sub_class_pm_variance_earned_quantity_nk],[dim_ent_data_sub_class_pm_variance_earned_hours_sk],[dim_ent_data_sub_class_pm_variance_earned_hours_nk],[dim_ent_data_sub_class_pm_takeoff_quantity_sk],[dim_ent_data_sub_class_pm_takeoff_quantity_nk],[dim_ent_data_sub_class_pm_takeoff_hours_sk],[dim_ent_data_sub_class_pm_takeoff_hours_nk],[dim_ent_data_sub_class_pm_progress_base_quantity_sk],[dim_ent_data_sub_class_pm_progress_base_quantity_nk],[dim_ent_data_sub_class_pm_progress_base_hours_sk],[dim_ent_data_sub_class_pm_progress_base_hours_nk],[dim_ent_data_sub_class_pm_progress_base_amount_sk],[dim_ent_data_sub_class_pm_progress_base_amount_nk],[dim_ent_data_sub_class_pm_actual_hours_sk],[dim_ent_data_sub_class_pm_actual_hours_nk],[dim_ent_data_sub_class_pm_actual_amount_sk],[dim_ent_data_sub_class_pm_actual_amount_nk],[dim_ent_data_sub_class_pm_original_hours_sk],[dim_ent_data_sub_class_pm_original_hours_nk],[dim_ent_data_sub_class_pm_original_quantity_sk],[dim_ent_data_sub_class_pm_original_quantity_nk],[dim_ent_data_sub_class_pm_original_amount_sk],[dim_ent_data_sub_class_pm_original_amount_nk],[dim_ent_data_sub_class_pm_variance_actual_hours_sk],[dim_ent_data_sub_class_pm_variance_actual_hours_nk],[dim_ent_data_sub_class_pm_variance_actual_amount_sk],[dim_ent_data_sub_class_pm_variance_actual_amount_nk]
	
	FROM [gpd].[reprocess_NCSA_MCPM_Onshore_Legacy]

	DELETE FROM [gpd].[reprocess_NCSA_MCPM_Onshore_Legacy]


	--Code2:
	--Insert Missing COA to dim_ent_jde_coa table - Modified By Johnson 2/25/2021 --updated by Satish 05/05/21 converted stage to gpd schema --updated by Satish 09/29/21 new column 'measureable'
	truncate table gpd.coa_MCPM

	insert into gpd.coa_MCPM
	(coa_value,coa_type,project,
	   projectname,account,contract,contractdesc,contract_entity,
	  contract_entity_desc,contract_status,project_entity,project_entity_description,
	  areaunit,areadesc,costcode,costdescription,costtype,coa_status,source_name,
	  sub_source_name,load_date,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description,measurable)
	select 'JDE.' + '00' + left(ltrim(rtrim(ContractNo)),3) + '.' + CoA as coa_value,'Project' as coa_type,Domain as project,
	   DomainName as projectname,'   ' + ltrim(rtrim(CoA)) as account ,ContractNo as contract,'' as contractdesc,'00' + left(ltrim(rtrim(ContractNo)),3) as contract_entity,
	   '' as contract_entity_desc,'Active' as contract_status ,'00' + left(ltrim(rtrim(ContractNo)),3) as project_entity,'' as project_entity_description,
	   WorkArea as areaunit,'' as areadesc,costcode,'' as costdescription,costtype,'Active' as coa_status,'MANUAL' as source_name,
	   'Excel_MCPM_Onshore_Cost' as sub_source_name,getdate() as load_date,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description,measurable
     from [gpd].[NCSA_MCPM_Legacy] x
	

	 --Delete if the chart of acocunt exist in JDE Coa table
	 delete gpd.coa_MCPM
	 from gpd.coa_MCPM a,
	 dim_ent_jde_coa b
	 where a.coa_value = b.coa_value
	 and b.Active = 1

	--Run the Generic routine to insert the missing values
	
	update gpd.coa_MCPM set areaunit = '000' where areaunit = '0'

	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_mcpm_coa','Y','N','Y'
	
	--Insert int Combined COA Table
	
	truncate table gpd.coa_MCPM_combined

	insert into gpd.coa_MCPM_combined
	(coa_value,coa_type,project,
	   projectname,account,contract,contractdesc,contract_entity,
	  contract_entity_desc,contract_status,project_entity,project_entity_description,
	  areaunit,areadesc,costcode,costdescription,costtype,coa_status,source_name,
	  sub_source_name,load_date)
	select 'JDE.' + '00' + left(ltrim(rtrim(ContractNo)),3) + '.' + CoA as coa_value,'Project' as coa_type,Domain as project,
	   DomainName as projectname,'   ' + ltrim(rtrim(CoA)) as account ,ContractNo as contract,'' as contractdesc,'00' + left(ltrim(rtrim(ContractNo)),3) as contract_entity,
	   '' as contract_entity_desc,'Active' as contract_status ,'00' + left(ltrim(rtrim(ContractNo)),3) as project_entity,'' as project_entity_description,
	   WorkArea as areaunit,'' as areadesc,costcode,'' as costdescription,costtype,'Active' as coa_status,'MANUAL' as source_name,
	   'Excel_MCPM_Onshore_Cost' as sub_source_name,getdate() as load_date
     from [gpd].[NCSA_MCPM_Legacy]

	 --Delete if the chart of acocunt exist in JDE Coa table
	 delete gpd.coa_MCPM_combined
	 from gpd.coa_MCPM_combined a,
	 dim_ent_jde_coa b
	 where a.coa_value = b.coa_value
	 and b.Active = 1
	
	--RUn the Generic routine to insert the missing values
	update gpd.coa_MCPM_combined set areaunit = '000' where areaunit = '0'


	execute [dbo].[generic_load_dim_v2 ] 'dim_ent_mcpm_coa_combined','Y','N','Y'

	--Code2:

	-----------------------------------------------------------------
	--Step 5: Update the SK/NK values within the Synapse table.
	-----------------------------------------------------------------

	
	update [gpd].[NCSA_MCPM_Legacy]
	set dim_ent_function_sk = b.dim_ent_function_sk,
	dim_ent_function_nk = b.dim_ent_function_nk
	from [gpd].[NCSA_MCPM_Legacy] a,dbo.dim_ent_function_alternative_v b
	where b.alternative_function_name = a.PSRL1Description
	and b.active = 1

	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_quantity_sk', 'dim_ent_data_class_quantity_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_quantity_code', 'data_class_name', 'F',NULL ;



	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_amount_sk', 'dim_ent_data_class_amount_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_amount_code', 'data_class_name', NULL,NULL ;
			


	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_hours_sk', 'dim_ent_data_class_hours_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_hours_code', 'data_class_name', NULL,NULL ;



	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_rate_sk', 'dim_ent_data_class_rate_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_rate_code', 'data_class_name', NULL,NULL ;


	
	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_class_percentage_sk', 'dim_ent_data_class_percentage_nk',
            'dim_ent_data_class', 'dim_ent_data_class_sk', 'dim_ent_data_class_nk', 'data_class_precentage_code', 'data_class_name', NULL,NULL ;

		

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_source_sk', 'dim_ent_source_nk',
            'dim_ent_source', 'dim_ent_source_sk', 'dim_ent_source_nk', 'source_code', 'source_name',  NULL, NULL ;


	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk',
            'dim_ent_discipline', 'dim_ent_discipline_sk', 'dim_ent_discipline_nk', 'computed_discipline_code', 'discipline_code',  NULL, NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_office_sk', 'dim_ent_office_nk',
            'dim_ent_office_alternative_v', 'dim_ent_office_sk', 'dim_ent_office_nk', 'computed_office_location', 'alternative_office_code',  NULL, NULL ;

	
-------03/17/22 Abhijit :  Unit of measure is derieved based on UoM column instead of hardcoded column such as unit_of_measure_code_hours
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_unit_of_measure_quantity_sk', 'dim_ent_unit_of_measure_quantity_nk',
        'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', 'L',NULL ;
		
--[03/17/2022 Abhijit Kharat]: Commented the other UOM below and kept only one above

/* 	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_amount_sk', 'dim_ent_unit_of_measure_amount_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_hours_sk', 'dim_ent_unit_of_measure_hours_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', NULL,NULL ;

	execute [stage].[fact_lookup_based_on_one_key]
            'gpd.NCSA_MCPM_Onshore', 'gpd.NCSA_MCPM_Onshore',  'stage_ncsa_mcpm_onshore_id', 'dim_ent_unit_of_measure_percentage_sk', 'dim_ent_unit_of_measure_percentage_nk',
            'dim_ent_unit_of_measure', 'dim_ent_unit_of_measure_sk', 'dim_ent_unit_of_measure_nk', 'UoM', 'unit_of_measure_code', 'L',NULL ;

*/	

--[03/17/2022 Abhijit Kharat]: Using fact_lookup_based_on_many_key stored procedure instead of regular update for better performance
-- Update Sub Class
	--Update Data Sub Class - Original Budget Quantity

	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_quantity_sk', 'dim_ent_data_sub_class_original_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, 'F',NULL ;
		
		
	--Update Data Sub Class - Original Budget hours


	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_hours_sk', 'dim_ent_data_sub_class_original_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;

	--Update Data Sub Class - Original Budget Amount

	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_amount_sk', 'dim_ent_data_sub_class_original_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL ;
	
	--Update Data Sub Class - Original Budget Rate

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_original_budget_rate_sk', 'dim_ent_data_sub_class_original_budget_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_original_budget_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Current Budget Quantity

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_quantity_sk', 'dim_ent_data_sub_class_current_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Current Budget Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_hours_sk', 'dim_ent_data_sub_class_current_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Current Budget Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_current_budget_amount_sk', 'dim_ent_data_sub_class_current_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_current_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Progress Budget Quantity

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_quantity_sk', 'dim_ent_data_sub_class_progress_budget_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Progress Budget Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_hours_sk', 'dim_ent_data_sub_class_progress_budget_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
	--Update Data Sub Class - Progress Budget Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_progress_budget_amount_sk', 'dim_ent_data_sub_class_progress_budget_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_progress_budget_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimated at Completion Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_at_completion_hours_sk', 'dim_ent_data_sub_class_estimated_at_completion_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_completion_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Estimated at Completion Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_at_completion_amount_sk', 'dim_ent_data_sub_class_estimated_at_completion_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_completion_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_hours_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_amount_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Estimate to Completion Rate

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_estimated_take_of_completion_rate_sk', 'dim_ent_data_sub_class_estimated_take_of_completion_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_estimated_take_of_completion_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class - Committed amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_committed_amount_sk', 'dim_ent_data_sub_class_committed_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_committed_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	 --Update Data Sub Class -  Committed Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_committed_hours_sk', 'dim_ent_data_sub_class_committed_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_committed_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Additional Subclass entries for potential more data from fact columns
 
	--Update Data Sub Class -  Actual Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_hours_sk', 'dim_ent_data_sub_class_actual_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class -  Actual Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_amount_sk', 'dim_ent_data_sub_class_actual_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data Sub Class -  Actual Rate

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_actual_rate_sk', 'dim_ent_data_sub_class_actual_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_actual_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
	 --Update Data Sub Class -  Earned Quantity

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_quantity_sk', 'dim_ent_data_sub_class_earned_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Earned Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_hours_sk', 'dim_ent_data_sub_class_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Earned Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_earned_amount_sk', 'dim_ent_data_sub_class_earned_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_earned_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class - Take Off Quantity

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_take_off_quantity_sk', 'dim_ent_data_sub_class_take_off_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_take_off_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Data sub Class - Take Off Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_take_off_hours_sk', 'dim_ent_data_sub_class_take_off_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_take_off_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data sub Class - Forecast Hours

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_hours_sk', 'dim_ent_data_sub_class_forecast_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_hours_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_hours_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Forecast Amount

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_amount_sk', 'dim_ent_data_sub_class_forecast_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_amount_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_amount_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update Data Sub Class -  Forecast Rate


	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_rate_sk', 'dim_ent_data_sub_class_forecast_rate_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_rate_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_rate_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;


	--updating Data sub class - Forecast Quantity Code

		execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_forecast_quantity_sk', 'dim_ent_data_sub_class_forecast_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_quantity_nk', 'dim_ent_data_class_nk',
		'sub_class_forecast_quantity_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;


	--Update Data Sub Class -  Precentage Complete



	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_percentage_complete_sk', 'dim_ent_data_sub_class_percentage_complete_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk', 'dim_ent_data_class_percentage_nk', 'dim_ent_data_class_nk',
		'sub_class_percentage_complete_code', 'data_sub_class_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		

		
	--Update other NK/SK
	--Update Work Unit

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_work_unit_sk', 'dim_ent_work_unit_nk',
        'dim_entp_work_unit', 'dim_entp_work_unit_sk', 'dim_entp_work_unit_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'Unit', 'work_unit_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	-- Update Work ARea

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_work_area_sk', 'dim_ent_work_area_nk',
        'dim_entp_work_area', 'dim_entp_work_area_sk', 'dim_entp_work_area_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'WorkArea', 'work_area_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	-- Update Phase

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_phase_sk', 'dim_entp_phase_nk',
        'dim_entp_phase', 'dim_entp_phase_sk', 'dim_entp_phase_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'phase', 'phase_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update CWP

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk',
        'dim_entp_cwp', 'dim_entp_cwp_sk', 'dim_entp_cwp_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'CWP_CODE', 'cwp_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Schedule Resource

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk',
        'dim_entp_schedule_resource', 'dim_entp_schedule_resource_sk', 'dim_entp_schedule_resource_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'SCHEDULE_RESOURCE_CODE', 'schedule_resource_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update Activity
	
	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_activity_sk', 'dim_entp_activity_nk',
        'dim_entp_activity', 'dim_entp_activity_sk', 'dim_entp_activity_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'ACTIVITY_CODE', 'activity_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;

	--Update IWP

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk',
        'dim_entp_iwp', 'dim_entp_iwp_sk', 'dim_entp_iwp_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'IWP_CODE', 'iwp_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update PIM

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_pim_sk', 'dim_entp_pim_nk',
        'dim_entp_pim', 'dim_entp_pim_sk', 'dim_entp_pim_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'PIM_CODE', 'pim_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update ROC

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_entp_roc_sk', 'dim_entp_roc_nk',
        'dim_entp_roc', 'dim_entp_roc_sk', 'dim_entp_roc_nk', 'dim_ent_project_nk', 'dim_entp_project_nk',
		'ROC_CODE', 'roc_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL ;
		
	--Update sub_soure

	execute [stage].[fact_lookup_based_on_many_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk',
        'dim_ent_sub_source', 'dim_ent_sub_source_sk', 'dim_ent_sub_source_nk', 'dim_ent_source_nk', 'dim_ent_source_nk',
		'sub_source_code', 'sub_source_name',NULL,NULL,NULL,NULL,NULL,NULL,'L',NULL ;

--[03/17/2022 Abhijit Kharat]:] Commented the jde_coa SK/NK update and used geac_coa 	sk/nk	


	--update jde coa sk/nk
	update [gpd].[NCSA_MCPM_Legacy]
	set dim_ent_jde_coa_sk = b.dim_ent_jde_coa_sk,
	dim_ent_jde_coa_nk = b.dim_ent_jde_coa_nk
	from [gpd].[NCSA_MCPM_Legacy] a,dbo.DIM_ENT_JDE_COA b
	where LTRIM(RTRIM(b.account_code)) = a.CoA
	and b.active = 1

	--Updated by Aditya - New Progress Module Entries


	--Update Data Sub Class - Progress Module Earned Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_earned_quantity_sk', 'dim_ent_data_sub_class_pm_earned_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_earned_quantity_code', 'data_sub_class_name','FL',null;
	
	--Update Data Sub Class - Progress Module Earned Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_earned_hours_sk', 'dim_ent_data_sub_class_pm_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_earned_hours_code', 'data_sub_class_name','FL',null; 
	
	--Update Data Sub Class - Progress Module Previous Earned Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_previous_earned_quantity_sk', 'dim_ent_data_sub_class_pm_previous_earned_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_previous_earned_quantity_code', 'data_sub_class_name','FL',null; 
	
	--Update Data Sub Class - Progress Module Previous Earned Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_previous_earned_hours_sk', 'dim_ent_data_sub_class_pm_previous_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_previous_earned_hours_code', 'data_sub_class_name','FL',null; 
	
		

	--Update Data Sub Class - Progress Module Variance Earned Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_variance_earned_quantity_sk', 'dim_ent_data_sub_class_pm_variance_earned_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_variance_earned_quantity_code', 'data_sub_class_name','FL',null; 
		
	
	--Update Data Sub Class - Progress Module Variance Earned Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_variance_earned_hours_sk', 'dim_ent_data_sub_class_pm_variance_earned_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_variance_earned_hours_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module TakeOff Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_takeoff_quantity_sk', 'dim_ent_data_sub_class_pm_takeoff_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_takeoff_quantity_code', 'data_sub_class_name','FL',null; 
		
		
	--Update Data Sub Class - Progress Module TakeOff Hours	
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_takeoff_hours_sk', 'dim_ent_data_sub_class_pm_takeoff_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_takeoff_hours_code', 'data_sub_class_name','FL',null; 
		

	--Update Data Sub Class - Progress Module Progress Base Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_progress_base_quantity_sk', 'dim_ent_data_sub_class_pm_progress_base_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_progress_base_quantity_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Progress Base Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_progress_base_hours_sk', 'dim_ent_data_sub_class_pm_progress_base_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_progress_base_hours_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Progress Base Amount
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_progress_base_amount_sk', 'dim_ent_data_sub_class_pm_progress_base_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_progress_base_amount_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Actual Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_actual_hours_sk', 'dim_ent_data_sub_class_pm_actual_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_actual_hours_code', 'data_sub_class_name','FL',null; 
		
		
	--Update Data Sub Class - Progress Module Actual Amount
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_actual_amount_sk', 'dim_ent_data_sub_class_pm_actual_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_actual_amount_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Original Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_original_hours_sk', 'dim_ent_data_sub_class_pm_original_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_original_hours_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Original Quantity
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_original_quantity_sk', 'dim_ent_data_sub_class_pm_original_quantity_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_original_quantity_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Original Amount
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_original_amount_sk', 'dim_ent_data_sub_class_pm_original_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_original_amount_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Variance Actual Hours
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_variance_actual_hours_sk', 'dim_ent_data_sub_class_pm_variance_actual_hours_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_variance_actual_hours_code', 'data_sub_class_name','FL',null; 
		
	--Update Data Sub Class - Progress Module Variance Actual Amount
	
	execute [stage].[fact_lookup_based_on_one_key]
        'gpd.NCSA_MCPM_Legacy', 'gpd.NCSA_MCPM_Legacy',  'stage_ncsa_mcpm_offshore_id', 'dim_ent_data_sub_class_pm_variance_actual_amount_sk', 'dim_ent_data_sub_class_pm_variance_actual_amount_nk',
        'dim_ent_data_sub_class', 'dim_ent_data_sub_class_sk', 'dim_ent_data_sub_class_nk',
		'pm_variance_actual_amount_code', 'data_sub_class_name','FL',null; 



	-----------------------------------------------------------------
	--Step 6: Checking for null entries for NK/SK; Isolating those records into reprocess tables.
	-----------------------------------------------------------------


	SELECT @unprocessed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Legacy]
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
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_office_sk IS NULL
	or dim_ent_office_nk IS NULL
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
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_forecast_quantity_sk IS NULL 
	or dim_ent_data_sub_class_forecast_quantity_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	
	
	
	or dim_ent_data_sub_class_pm_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_nk IS NULL

	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL



	SELECT @processed_count  = count(*)  FROM [gpd].[NCSA_MCPM_Legacy]
	WHERE dim_ent_project_sk IS NOT NULL
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
	and dim_ent_discipline_sk IS NOT NULL
	and dim_ent_discipline_nk IS NOT NULL
	and dim_ent_office_sk IS NOT NULL
	and dim_ent_office_nk IS NOT NULL
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
	and dim_ent_data_class_amount_sk IS NOT NULL
	and dim_ent_data_class_amount_nk IS NOT NULL
	and dim_ent_data_class_rate_sk IS NOT NULL
	and dim_ent_data_class_rate_nk IS NOT NULL
	and dim_ent_data_class_percentage_sk IS NOT NULL
	and dim_ent_data_class_percentage_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_original_budget_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_current_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_progress_budget_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_committed_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_committed_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_committed_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_committed_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_actual_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_actual_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_earned_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_earned_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_take_off_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_take_off_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_take_off_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_take_off_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_rate_sk IS NOT NULL
	and dim_ent_data_sub_class_forecast_rate_nk IS NOT NULL
	and dim_ent_data_sub_class_forecast_quantity_sk IS NOT NULL 
	and dim_ent_data_sub_class_forecast_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_percentage_complete_sk IS NOT NULL
	and dim_ent_data_sub_class_percentage_complete_nk IS NOT NULL
	and dim_ent_source_sk IS NOT NULL
	and dim_ent_source_nk IS NOT NULL
	and dim_ent_sub_source_sk IS NOT NULL
	and dim_ent_sub_source_nk IS NOT NULL
	and dim_ent_unit_of_measure_quantity_sk IS NOT NULL
	and dim_ent_unit_of_measure_quantity_nk IS NOT NULL
	
	
	and dim_ent_data_sub_class_pm_earned_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_earned_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_earned_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_earned_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_previous_earned_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_previous_earned_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_previous_earned_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_previous_earned_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_earned_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_earned_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_earned_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_earned_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_takeoff_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_takeoff_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_takeoff_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_takeoff_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_progress_base_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_actual_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_actual_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_actual_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_actual_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_quantity_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_quantity_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_original_amount_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_actual_hours_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_actual_hours_nk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_actual_amount_sk IS NOT NULL
	and dim_ent_data_sub_class_pm_variance_actual_amount_nk IS NOT NULL
	
	
	--and dim_ent_unit_of_measure_hours_sk IS NOT NULL
	--and dim_ent_unit_of_measure_hours_nk IS NOT NULL
	--and dim_ent_unit_of_measure_amount_sk IS NOT NULL
	--and dim_ent_unit_of_measure_amount_nk IS NOT NULL
	--and dim_ent_unit_of_measure_percentage_sk IS NOT NULL
	--and dim_ent_unit_of_measure_percentage_nk IS NOT NULL


	

	INSERT INTO [gpd].[reprocess_NCSA_MCPM_Onshore_Legacy]
	([Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[Discipline],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[ForecastQty],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_forecast_quantity_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk],[dim_ent_office_sk],[dim_ent_office_nk],[computed_discipline_code],[office_entity],[computed_office_location],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_forecast_quantity_sk],[dim_ent_data_sub_class_forecast_quantity_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[created_date_time],[JDE_COA],[PM_Earned_Quantity],[pm_earned_quantity_code],[PM_Earned_Hours],[pm_earned_hours_code],[PM_Previous_Earned_Quantity],[pm_previous_earned_quantity_code],[PM_Previous_Earned_Hours],[pm_previous_earned_hours_code],[PM_Variance_Earned_Quantity],[pm_variance_earned_quantity_code],[PM_Variance_Earned_Hours],[pm_variance_earned_hours_code],[PM_TakeOff_Quantity],[pm_takeoff_quantity_code],[PM_TakeOff_Hours],[pm_takeoff_hours_code],[PM_Progress_Base_Quantity],[pm_progress_base_quantity_code],[PM_Progress_Base_Hours],[pm_progress_base_hours_code],[PM_Progress_Base_Amount],[pm_progress_base_amount_code],[PM_Actual_Hours],[pm_actual_hours_code],[PM_Actual_Amount],[pm_actual_amount_code],[PM_Original_Hours],[pm_original_hours_code],[PM_Original_Quantity],[pm_original_quantity_code],[PM_Original_Amount],[pm_original_amount_code],[PM_Variance_Actual_Hours],[pm_variance_actual_hours_code],[PM_Variance_Actual_Amount],[pm_variance_actual_amount_code],[dim_ent_data_sub_class_pm_earned_quantity_sk],[dim_ent_data_sub_class_pm_earned_quantity_nk],[dim_ent_data_sub_class_pm_earned_hours_sk],[dim_ent_data_sub_class_pm_earned_hours_nk],[dim_ent_data_sub_class_pm_previous_earned_quantity_sk],[dim_ent_data_sub_class_pm_previous_earned_quantity_nk],[dim_ent_data_sub_class_pm_previous_earned_hours_sk],[dim_ent_data_sub_class_pm_previous_earned_hours_nk],[dim_ent_data_sub_class_pm_variance_earned_quantity_sk],[dim_ent_data_sub_class_pm_variance_earned_quantity_nk],[dim_ent_data_sub_class_pm_variance_earned_hours_sk],[dim_ent_data_sub_class_pm_variance_earned_hours_nk],[dim_ent_data_sub_class_pm_takeoff_quantity_sk],[dim_ent_data_sub_class_pm_takeoff_quantity_nk],[dim_ent_data_sub_class_pm_takeoff_hours_sk],[dim_ent_data_sub_class_pm_takeoff_hours_nk],[dim_ent_data_sub_class_pm_progress_base_quantity_sk],[dim_ent_data_sub_class_pm_progress_base_quantity_nk],[dim_ent_data_sub_class_pm_progress_base_hours_sk],[dim_ent_data_sub_class_pm_progress_base_hours_nk],[dim_ent_data_sub_class_pm_progress_base_amount_sk],[dim_ent_data_sub_class_pm_progress_base_amount_nk],[dim_ent_data_sub_class_pm_actual_hours_sk],[dim_ent_data_sub_class_pm_actual_hours_nk],[dim_ent_data_sub_class_pm_actual_amount_sk],[dim_ent_data_sub_class_pm_actual_amount_nk],[dim_ent_data_sub_class_pm_original_hours_sk],[dim_ent_data_sub_class_pm_original_hours_nk],[dim_ent_data_sub_class_pm_original_quantity_sk],[dim_ent_data_sub_class_pm_original_quantity_nk],[dim_ent_data_sub_class_pm_original_amount_sk],[dim_ent_data_sub_class_pm_original_amount_nk],[dim_ent_data_sub_class_pm_variance_actual_hours_sk],[dim_ent_data_sub_class_pm_variance_actual_hours_nk],[dim_ent_data_sub_class_pm_variance_actual_amount_sk],[dim_ent_data_sub_class_pm_variance_actual_amount_nk])
		
	SELECT
	[Domain],[DomainName],[CutOff],[Currency],[CoA],[Title],[ProgressType],[ContractNo],[SummaryCostType],[Discipline],[CostType],[Unit],[WorkArea],[Prime],[SubPrime],[CostCode],[Measurable],[Phase],[PSRLevel1],[PSRLevel2],[PSRL1Description],[PSRL2Description],[UoM],[OBQty],[OBHrs],[OBAmt],[OBRate],[CBQty],[CBHrs],[CBAmt],[PBQty],[PBHrs],[PBAmt],[ActualHrs],[ActualAmt],[ActualRate],[CommittedHrs],[CommittedAmt],[EarnedQty],[EarnedHrs],[EarnedAmt],[TakeOffQty],[TakeOffHrs],[PctComplete],[EACHrs],[EACAmt],[ETCHrs],[ETCAmt],[ETCRate],[ForecastHrs],[ForecastAmt],[ForecastRate],[ForecastQty],[CWP_CODE],[SCHEDULE_RESOURCE_CODE],[ACTIVITY_CODE],[IWP_CODE],[PIM_CODE],[ROC_CODE],[FUNCTION_CODE],[data_class_quantity_code],[data_class_hours_code],[data_class_amount_code],[data_class_rate_code],[data_class_precentage_code],[sub_class_original_budget_quantity_code],[sub_class_original_budget_hours_code],[sub_class_original_budget_amount_code],[sub_class_original_budget_rate_code],[sub_class_current_budget_quantity_code],[sub_class_current_budget_hours_code],[sub_class_current_budget_amount_code],[sub_class_progress_budget_quantity_code],[sub_class_progress_budget_hours_code],[sub_class_progress_budget_amount_code],[sub_class_estimated_completion_hours_code],[sub_class_estimated_completion_amount_code],[sub_class_estimated_take_of_completion_hours_code],[sub_class_estimated_take_of_completion_amount_code],[sub_class_estimated_take_of_completion_rate_code],[sub_class_committed_amount_code],[sub_class_committed_hours_code],[sub_class_actual_hours_code],[sub_class_actual_amount_code],[sub_class_actual_rate_code],[sub_class_earned_quantity_code],[sub_class_earned_hours_code],[sub_class_earned_amount_code],[sub_class_take_off_quantity_code],[sub_class_take_off_hours_code],[sub_class_forecast_hours_code],[sub_class_forecast_amount_code],[sub_class_forecast_rate_code],[sub_class_forecast_quantity_code],[sub_class_percentage_complete_code],[source_code],[sub_source_code],[unit_of_measure_code_quantity],[unit_of_measure_code_hours],[unit_of_measure_code_amount],[unit_of_measure_code_precentage],[dim_ent_project_sk],[dim_ent_project_nk],[dim_ent_jde_coa_sk],[dim_ent_jde_coa_nk],[dim_ent_work_unit_sk],[dim_ent_work_unit_nk],[dim_ent_work_area_sk],[dim_ent_work_area_nk],[dim_entp_phase_sk],[dim_entp_phase_nk],[dim_ent_function_sk],[dim_ent_function_nk],[dim_ent_discipline_sk],[dim_ent_discipline_nk],[dim_ent_office_sk],[dim_ent_office_nk],[computed_discipline_code],[office_entity],[computed_office_location],[dim_entp_cwp_sk],[dim_entp_cwp_nk],[dim_entp_schedule_resource_sk],[dim_entp_schedule_resource_nk],[dim_entp_activity_sk],[dim_entp_activity_nk],[dim_entp_iwp_sk],[dim_entp_iwp_nk],[dim_entp_pim_sk],[dim_entp_pim_nk],[dim_entp_roc_sk],[dim_entp_roc_nk],[dim_ent_data_class_quantity_sk],[dim_ent_data_class_quantity_nk],[dim_ent_data_class_hours_sk],[dim_ent_data_class_hours_nk],[dim_ent_data_class_amount_sk],[dim_ent_data_class_amount_nk],[dim_ent_data_class_rate_sk],[dim_ent_data_class_rate_nk],[dim_ent_data_class_percentage_sk],[dim_ent_data_class_percentage_nk],[dim_ent_data_sub_class_original_budget_quantity_sk],[dim_ent_data_sub_class_original_budget_quantity_nk],[dim_ent_data_sub_class_original_budget_hours_sk],[dim_ent_data_sub_class_original_budget_hours_nk],[dim_ent_data_sub_class_original_budget_amount_sk],[dim_ent_data_sub_class_original_budget_amount_nk],[dim_ent_data_sub_class_original_budget_rate_sk],[dim_ent_data_sub_class_original_budget_rate_nk],[dim_ent_data_sub_class_current_budget_quantity_sk],[dim_ent_data_sub_class_current_budget_quantity_nk],[dim_ent_data_sub_class_current_budget_hours_sk],[dim_ent_data_sub_class_current_budget_hours_nk],[dim_ent_data_sub_class_current_budget_amount_sk],[dim_ent_data_sub_class_current_budget_amount_nk],[dim_ent_data_sub_class_progress_budget_quantity_sk],[dim_ent_data_sub_class_progress_budget_quantity_nk],[dim_ent_data_sub_class_progress_budget_hours_sk],[dim_ent_data_sub_class_progress_budget_hours_nk],[dim_ent_data_sub_class_progress_budget_amount_sk],[dim_ent_data_sub_class_progress_budget_amount_nk],[dim_ent_data_sub_class_estimated_at_completion_hours_sk],[dim_ent_data_sub_class_estimated_at_completion_hours_nk],[dim_ent_data_sub_class_estimated_at_completion_amount_sk],[dim_ent_data_sub_class_estimated_at_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_sk],[dim_ent_data_sub_class_estimated_take_of_completion_hours_nk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_sk],[dim_ent_data_sub_class_estimated_take_of_completion_amount_nk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_sk],[dim_ent_data_sub_class_estimated_take_of_completion_rate_nk],[dim_ent_data_sub_class_committed_amount_sk],[dim_ent_data_sub_class_committed_amount_nk],[dim_ent_data_sub_class_committed_hours_sk],[dim_ent_data_sub_class_committed_hours_nk],[dim_ent_data_sub_class_actual_hours_sk],[dim_ent_data_sub_class_actual_hours_nk],[dim_ent_data_sub_class_actual_amount_sk],[dim_ent_data_sub_class_actual_amount_nk],[dim_ent_data_sub_class_actual_rate_sk],[dim_ent_data_sub_class_actual_rate_nk],[dim_ent_data_sub_class_earned_quantity_sk],[dim_ent_data_sub_class_earned_quantity_nk],[dim_ent_data_sub_class_earned_hours_sk],[dim_ent_data_sub_class_earned_hours_nk],[dim_ent_data_sub_class_earned_amount_sk],[dim_ent_data_sub_class_earned_amount_nk],[dim_ent_data_sub_class_take_off_quantity_sk],[dim_ent_data_sub_class_take_off_quantity_nk],[dim_ent_data_sub_class_take_off_hours_sk],[dim_ent_data_sub_class_take_off_hours_nk],[dim_ent_data_sub_class_forecast_hours_sk],[dim_ent_data_sub_class_forecast_hours_nk],[dim_ent_data_sub_class_forecast_amount_sk],[dim_ent_data_sub_class_forecast_amount_nk],[dim_ent_data_sub_class_forecast_rate_sk],[dim_ent_data_sub_class_forecast_rate_nk],[dim_ent_data_sub_class_forecast_quantity_sk],[dim_ent_data_sub_class_forecast_quantity_nk],[dim_ent_data_sub_class_percentage_complete_sk],[dim_ent_data_sub_class_percentage_complete_nk],[dim_ent_source_sk],[dim_ent_source_nk],[dim_ent_sub_source_sk],[dim_ent_sub_source_nk],[dim_ent_unit_of_measure_quantity_sk],[dim_ent_unit_of_measure_quantity_nk],[dim_ent_unit_of_measure_hours_sk],[dim_ent_unit_of_measure_hours_nk],[dim_ent_unit_of_measure_amount_sk],[dim_ent_unit_of_measure_amount_nk],[dim_ent_unit_of_measure_percentage_sk],[dim_ent_unit_of_measure_percentage_nk],[parent_rssk],[load_date_time],[JDE_COA],[PM_Earned_Quantity],[pm_earned_quantity_code],[PM_Earned_Hours],[pm_earned_hours_code],[PM_Previous_Earned_Quantity],[pm_previous_earned_quantity_code],[PM_Previous_Earned_Hours],[pm_previous_earned_hours_code],[PM_Variance_Earned_Quantity],[pm_variance_earned_quantity_code],[PM_Variance_Earned_Hours],[pm_variance_earned_hours_code],[PM_TakeOff_Quantity],[pm_takeoff_quantity_code],[PM_TakeOff_Hours],[pm_takeoff_hours_code],[PM_Progress_Base_Quantity],[pm_progress_base_quantity_code],[PM_Progress_Base_Hours],[pm_progress_base_hours_code],[PM_Progress_Base_Amount],[pm_progress_base_amount_code],[PM_Actual_Hours],[pm_actual_hours_code],[PM_Actual_Amount],[pm_actual_amount_code],[PM_Original_Hours],[pm_original_hours_code],[PM_Original_Quantity],[pm_original_quantity_code],[PM_Original_Amount],[pm_original_amount_code],[PM_Variance_Actual_Hours],[pm_variance_actual_hours_code],[PM_Variance_Actual_Amount],[pm_variance_actual_amount_code],[dim_ent_data_sub_class_pm_earned_quantity_sk],[dim_ent_data_sub_class_pm_earned_quantity_nk],[dim_ent_data_sub_class_pm_earned_hours_sk],[dim_ent_data_sub_class_pm_earned_hours_nk],[dim_ent_data_sub_class_pm_previous_earned_quantity_sk],[dim_ent_data_sub_class_pm_previous_earned_quantity_nk],[dim_ent_data_sub_class_pm_previous_earned_hours_sk],[dim_ent_data_sub_class_pm_previous_earned_hours_nk],[dim_ent_data_sub_class_pm_variance_earned_quantity_sk],[dim_ent_data_sub_class_pm_variance_earned_quantity_nk],[dim_ent_data_sub_class_pm_variance_earned_hours_sk],[dim_ent_data_sub_class_pm_variance_earned_hours_nk],[dim_ent_data_sub_class_pm_takeoff_quantity_sk],[dim_ent_data_sub_class_pm_takeoff_quantity_nk],[dim_ent_data_sub_class_pm_takeoff_hours_sk],[dim_ent_data_sub_class_pm_takeoff_hours_nk],[dim_ent_data_sub_class_pm_progress_base_quantity_sk],[dim_ent_data_sub_class_pm_progress_base_quantity_nk],[dim_ent_data_sub_class_pm_progress_base_hours_sk],[dim_ent_data_sub_class_pm_progress_base_hours_nk],[dim_ent_data_sub_class_pm_progress_base_amount_sk],[dim_ent_data_sub_class_pm_progress_base_amount_nk],[dim_ent_data_sub_class_pm_actual_hours_sk],[dim_ent_data_sub_class_pm_actual_hours_nk],[dim_ent_data_sub_class_pm_actual_amount_sk],[dim_ent_data_sub_class_pm_actual_amount_nk],[dim_ent_data_sub_class_pm_original_hours_sk],[dim_ent_data_sub_class_pm_original_hours_nk],[dim_ent_data_sub_class_pm_original_quantity_sk],[dim_ent_data_sub_class_pm_original_quantity_nk],[dim_ent_data_sub_class_pm_original_amount_sk],[dim_ent_data_sub_class_pm_original_amount_nk],[dim_ent_data_sub_class_pm_variance_actual_hours_sk],[dim_ent_data_sub_class_pm_variance_actual_hours_nk],[dim_ent_data_sub_class_pm_variance_actual_amount_sk],[dim_ent_data_sub_class_pm_variance_actual_amount_nk]
	
	FROM [gpd].[NCSA_MCPM_Legacy]
	WHERE dim_ent_project_sk IS NULL
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
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_office_sk IS NULL
	or dim_ent_office_nk IS NULL
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
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_forecast_quantity_sk IS NULL 
	or dim_ent_data_sub_class_forecast_quantity_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	
	or dim_ent_data_sub_class_pm_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_nk IS NULL	
	
	
	
	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL


	--------------------------------------------------------------------------------------
	--Change: Add logic to populate the 'rk_failure_info' info column with details of missing SK/NK
	--------------------------------------------------------------------------------------

	

	update [gpd].[reprocess_NCSA_MCPM_Onshore_Legacy]
		 set rk_failure_info = 
		case when dim_ent_project_nk is null then 'Missing Project Number : ' + isnull(Domain,'') + ',' else '' end +
		case when dim_ent_jde_coa_nk is null then 'Missing JDE CoA : ' + isnull(JDE_COA,'') + ',' else '' end +
		case when dim_ent_work_unit_nk is null then 'Missing Work Unit : ' + isnull(Unit,'') + ',' else '' end +
		case when dim_ent_work_area_nk is null then 'Missing Work Area : ' + isnull(WorkArea,'') + ',' else '' end +
		case when dim_entp_phase_nk is null then 'Missing Phase : ' + isnull(Phase,'') + ',' else '' end +
		case when dim_ent_function_nk is null then 'Missing Function : ' + isnull(function_code,'') + ',' else '' end +
		case when dim_ent_discipline_nk is null then 'Missing Discipline computed from Discipline(if present) or CostCode column(refer CostCode if Discipline not present) for subfunction '+ CostCode +': ' + isnull(computed_discipline_code,'') + ',' else '' end +
		case when dim_ent_office_nk is null then 'Missing Office Location generated from dim_ent_entity ' + office_entity + ': ' + isnull(computed_office_location,'') + ',' else '' end +
		case when dim_entp_cwp_nk is null then 'Missing CWP Code : ' + isnull(CWP_CODE,'') + ',' else '' end +
		case when dim_entp_schedule_resource_nk is null then 'Missing Schedule Resource : ' + isnull(SCHEDULE_RESOURCE_CODE,'') + ',' else '' end +
		case when dim_entp_activity_nk is null then 'Missing Activity Code : ' + isnull(ACTIVITY_CODE,'') + ',' else '' end +
		case when dim_entp_iwp_nk is null then 'Missing IWP Code : ' + isnull(IWP_CODE,'') + ',' else '' end +
		case when dim_entp_pim_nk is null then 'Missing PMID : ' + isnull(PIM_CODE,'') + ',' else '' end +
		case when dim_entp_roc_nk is null then 'Missing ROC : ' + isnull(ROC_CODE,'') + ',' else '' end +
		case when dim_ent_data_class_quantity_nk is null then 'Missing Data Class - Quantity : ' + isnull(data_class_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_class_hours_nk is null then 'Missing Data Class - Hours : ' + isnull(data_class_hours_code,'') + ',' else '' end +
		case when dim_ent_data_class_amount_nk is null then 'Missing Data Class - Amount : ' + isnull(data_class_amount_code,'') + ',' else '' end +
		case when dim_ent_data_class_rate_nk is null then 'Missing Data Class - Rate : ' + isnull(data_class_rate_code,'') + ',' else '' end +
		case when dim_ent_data_class_percentage_nk is null then 'Missing Data Class - Percentage : ' + isnull(data_class_precentage_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_quantity_nk is null then 'Missing Data Sub Class - Original Budget Quantity : ' + isnull(sub_class_original_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_hours_nk is null then 'Missing Data Sub Class - Original Budget Hours : ' + isnull(sub_class_original_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_amount_nk is null then 'Missing Data Sub Class - Original Budget Amount : ' + isnull(sub_class_original_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_original_budget_rate_nk is null then 'Missing Data Sub Class - Original Budget Rate : ' + isnull(sub_class_original_budget_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_quantity_nk is null then 'Missing Data Sub Class - Current Budget Quantity : ' + isnull(sub_class_current_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_hours_nk is null then 'Missing Data Sub Class - Current Budget Hours : ' + isnull(sub_class_current_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_current_budget_amount_nk is null then 'Missing Data Sub Class - Current Budget Amount : ' + isnull(sub_class_current_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_quantity_nk is null then 'Missing Data Sub Class - Progress Base Quantity : ' + isnull(sub_class_progress_budget_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_hours_nk is null then 'Missing Data Sub Class - Progress Base Hours : ' + isnull(sub_class_progress_budget_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_progress_budget_amount_nk is null then 'Missing Data Sub Class - Progress Base Amount : ' + isnull(sub_class_progress_budget_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_at_completion_hours_nk is null then 'Missing Data Sub Class - Estimate At Completion Hours : ' + isnull(sub_class_estimated_completion_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_at_completion_amount_nk is null then 'Missing Data Sub Class - Estimate At Completion Amount : ' + isnull(sub_class_estimated_completion_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_hours_nk is null then 'Missing Data Sub Class - Estimate To Complete Hours : ' + isnull(sub_class_estimated_take_of_completion_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_amount_nk is null then 'Missing Data Sub Class - Estimate To Complete Amount : ' + isnull(sub_class_estimated_take_of_completion_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_estimated_take_of_completion_rate_nk is null then 'Missing Data Sub Class - Estimate To Complete Rate : ' + isnull(sub_class_estimated_take_of_completion_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_committed_amount_nk is null then 'Missing Data Sub Class - Committed Amount : ' + isnull(sub_class_committed_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_committed_hours_nk is null then 'Missing Data Sub Class - Committed Hours : ' + isnull(sub_class_committed_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_hours_nk is null then 'Missing Data Sub Class - Actual Hours : ' + isnull(sub_class_actual_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_amount_nk is null then 'Missing Data Sub Class - Actual Amount : ' + isnull(sub_class_actual_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_actual_rate_nk is null then 'Missing Data Sub Class - Actual Rate : ' + isnull(sub_class_actual_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_quantity_nk is null then 'Missing Data Sub Class - Earned Quantity : ' + isnull(sub_class_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_hours_nk is null then 'Missing Data Sub Class - Earned Hours : ' + isnull(sub_class_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_earned_amount_nk is null then 'Missing Data Sub Class - Earned Amount : ' + isnull(sub_class_earned_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_take_off_quantity_nk is null then 'Missing Data Sub Class - Take-Off Quantity : ' + isnull(sub_class_take_off_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_take_off_hours_nk is null then 'Missing Data Sub Class - Take-Off Hours : ' + isnull(sub_class_take_off_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_hours_nk is null then 'Missing Data Sub Class - Forecast Hours : ' + isnull(sub_class_forecast_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_amount_nk is null then 'Missing Data Sub Class - Forecast Amount : ' + isnull(sub_class_forecast_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_rate_nk is null then 'Missing Data Sub Class - Forecast Rate : ' + isnull(sub_class_forecast_rate_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_forecast_quantity_nk is null then 'Missing Data Sub Class - Forecast Quantity : ' + isnull(sub_class_forecast_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_percentage_complete_nk is null then 'Missing Data Sub Class - Percentage Complete : ' + isnull(sub_class_percentage_complete_code,'') + ',' else '' end +
		case when dim_ent_source_nk is null then 'Missing Source : ' + isnull(source_code,'') + ',' else '' end +
		case when dim_ent_sub_source_nk is null then 'Missing Sub Source : ' + isnull(sub_source_code,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_quantity_nk is null then 'Missing UOM - Quantity : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_hours_nk is null then 'Missing UOM - Hours : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM - Amount : ' + isnull(UoM,'') + ',' else '' end +
		--case when dim_ent_unit_of_measure_percentage_nk is null then 'Missing UOM - Percentage : ' + isnull(UoM,'') + ',' else '' end
		--case when dim_ent_unit_of_measure_quantity_nk is null OR dim_ent_unit_of_measure_percentage_nk is null OR dim_ent_unit_of_measure_hours_nk is null OR  dim_ent_unit_of_measure_amount_nk is null then 'Missing UOM : ' + isnull(UoM,'') + ',' else '' end
		case when dim_ent_unit_of_measure_quantity_nk is null then 'Missing UOM : ' + isnull(UoM,'') + ',' else '' end +
		
		
		case when dim_ent_data_sub_class_pm_earned_quantity_nk is null then 'Missing Data Sub Class - Progress Module Earned Quantity : ' + isnull(pm_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_earned_hours_nk is null then 'Missing Data Sub Class - Progress Module Earned Hours : ' + isnull(pm_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_previous_earned_quantity_nk is null then 'Missing Data Sub Class - Progress Module Previous Earned Quantity : ' + isnull(pm_previous_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_previous_earned_hours_nk is null then 'Missing Data Sub Class - Progress Module Previous Earned Hours : ' + isnull(pm_previous_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_variance_earned_quantity_nk is null then 'Missing Data Sub Class - Progress Module Variance Earned Quantity : ' + isnull(pm_variance_earned_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_variance_earned_hours_nk is null then 'Missing Data Sub Class - Progress Module Variance Earned Hours : ' + isnull(pm_variance_earned_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_takeoff_quantity_nk is null then 'Missing Data Sub Class - Progress Module TakeOff Quantity : ' + isnull(pm_takeoff_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_takeoff_hours_nk is null then 'Missing Data Sub Class - Progress Module TakeOff Hours : ' + isnull(pm_takeoff_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_progress_base_quantity_nk is null then 'Missing Data Sub Class - Progress Module Progress Base Quantity : ' + isnull(pm_progress_base_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_progress_base_hours_nk is null then 'Missing Data Sub Class - Progress Module Progress Base Hours : ' + isnull(pm_progress_base_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_progress_base_amount_nk is null then 'Missing Data Sub Class - Progress Module Progress Base Amount : ' + isnull(pm_progress_base_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_actual_hours_nk is null then 'Missing Data Sub Class - Progress Module Actual Hours : ' + isnull(pm_actual_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_actual_amount_nk is null then 'Missing Data Sub Class - Progress Module Actual Amount : ' + isnull(pm_actual_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_original_hours_nk is null then 'Missing Data Sub Class - Progress Module Original Hours : ' + isnull(pm_original_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_original_quantity_nk is null then 'Missing Data Sub Class - Progress Module Original Quantity : ' + isnull(pm_original_quantity_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_original_amount_nk is null then 'Missing Data Sub Class - Progress Module Original Amount : ' + isnull(pm_original_amount_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_variance_actual_hours_nk is null then 'Missing Data Sub Class - Progress Module Variance Actual Hours : ' + isnull(pm_variance_actual_hours_code,'') + ',' else '' end +
		case when dim_ent_data_sub_class_pm_variance_actual_amount_nk is null then 'Missing Data Sub Class - Progress Module Variance Actual Amount : ' + isnull(pm_variance_actual_amount_code,'') + ',' else '' end
		
		
		
		

		
		
	DELETE FROM [gpd].[NCSA_MCPM_Legacy]
	WHERE dim_ent_project_sk IS NULL
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
	or dim_ent_discipline_sk IS NULL
	or dim_ent_discipline_nk IS NULL
	or dim_ent_office_sk IS NULL
	or dim_ent_office_nk IS NULL
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
	or dim_ent_data_class_amount_sk IS NULL
	or dim_ent_data_class_amount_nk IS NULL
	or dim_ent_data_class_rate_sk IS NULL
	or dim_ent_data_class_rate_nk IS NULL
	or dim_ent_data_class_percentage_sk IS NULL
	or dim_ent_data_class_percentage_nk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_original_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_original_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_original_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_sk IS NULL
	or dim_ent_data_sub_class_original_budget_rate_nk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_current_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_current_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_current_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_quantity_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_hours_nk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_sk IS NULL
	or dim_ent_data_sub_class_progress_budget_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_at_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_hours_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_amount_nk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_sk IS NULL
	or dim_ent_data_sub_class_estimated_take_of_completion_rate_nk IS NULL
	or dim_ent_data_sub_class_committed_amount_sk IS NULL
	or dim_ent_data_sub_class_committed_amount_nk IS NULL
	or dim_ent_data_sub_class_committed_hours_sk IS NULL
	or dim_ent_data_sub_class_committed_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_actual_rate_sk IS NULL
	or dim_ent_data_sub_class_actual_rate_nk IS NULL
	or dim_ent_data_sub_class_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_earned_amount_sk IS NULL
	or dim_ent_data_sub_class_earned_amount_nk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_sk IS NULL
	or dim_ent_data_sub_class_take_off_quantity_nk IS NULL
	or dim_ent_data_sub_class_take_off_hours_sk IS NULL
	or dim_ent_data_sub_class_take_off_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_hours_sk IS NULL
	or dim_ent_data_sub_class_forecast_hours_nk IS NULL
	or dim_ent_data_sub_class_forecast_amount_sk IS NULL
	or dim_ent_data_sub_class_forecast_amount_nk IS NULL
	or dim_ent_data_sub_class_forecast_rate_sk IS NULL
	or dim_ent_data_sub_class_forecast_rate_nk IS NULL
	or dim_ent_data_sub_class_forecast_quantity_nk IS NULL
	or dim_ent_data_sub_class_forecast_quantity_nk IS NULL
	or dim_ent_data_sub_class_percentage_complete_sk IS NULL
	or dim_ent_data_sub_class_percentage_complete_nk IS NULL
	or dim_ent_source_sk IS NULL
	or dim_ent_source_nk IS NULL
	or dim_ent_sub_source_sk IS NULL
	or dim_ent_sub_source_nk IS NULL
	or dim_ent_unit_of_measure_quantity_sk IS NULL
	or dim_ent_unit_of_measure_quantity_nk IS NULL
	
	
	or dim_ent_data_sub_class_pm_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_previous_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_earned_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_takeoff_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_progress_base_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_actual_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_original_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_sk IS NULL
	or dim_ent_data_sub_class_pm_original_quantity_nk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_original_amount_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_hours_nk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_sk IS NULL
	or dim_ent_data_sub_class_pm_variance_actual_amount_nk IS NULL	
	
	
	--or dim_ent_unit_of_measure_hours_sk IS NULL
	--or dim_ent_unit_of_measure_hours_nk IS NULL
	--or dim_ent_unit_of_measure_amount_sk IS NULL
	--or dim_ent_unit_of_measure_amount_nk IS NULL
	--or dim_ent_unit_of_measure_percentage_sk IS NULL
	--or dim_ent_unit_of_measure_percentage_nk IS NULL
	

	---------------------------------------------------------------------------
	--Call stored procedure to add/update reprocess records to reprocess history table.
	---------------------------------------------------------------------------

	
	exec populate_reprocess_history 'pl_mcpmdata_cost_hours_master_pipeline', 'gpd.NCSA_MCPM_Legacy', 'gpd.reprocess_NCSA_MCPM_Onshore_Legacy', 'dbo.fact_ops','rssk';




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

--End of Stored Procedure
END
GO


