DROP VIEW [dbo].[fact_pmr_MCPM_Offshore_v]
GO

CREATE VIEW [dbo].[fact_pmr_MCPM_Offshore_v]
AS select 
fact_entp_sk
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk
,dim_ent_geac_coa_nk
,[transaction_date]
,transaction_quantity
,[created_date_time]
,isnull(x.[transaction_quantity],0) - isnull(lag(isnull(x.transaction_quantity,0), 1) over (partition by  
x.[dim_entp_function_nk]
,x.[dim_entp_project_nk]
,x.[dim_entp_phase_nk]
,x.[dim_entp_work_unit_nk]
,x.[dim_entp_work_area_nk]
,x.[dim_entp_cwp_nk]
,x.dim_entp_schedule_resource_nk
,x.[dim_entp_activity_nk]
,x.[dim_entp_iwp_nk]
,x.[dim_entp_pim_nk]
,x.[dim_entp_roc_nk]
,x.[dim_entp_data_sub_class_nk]
,x.dim_entp_data_class_nk
,x.[dim_entp_sub_source_nk]
,x.dim_entp_source_nk
,x.[dim_entp_unit_of_measure_nk]
,x.[dim_ent_employee_nk]
,x.dim_ent_jde_coa_nk
order by x.[transaction_date]),0) current_month_transaction_quantity
,group_code
,dim_ent_prime_nk
,coa_key
from
(select k.* from (
select max(z.fact_entp_sk)  fact_entp_sk
,z.[dim_entp_function_nk]
,z.[dim_entp_project_nk]
,z.[dim_entp_phase_nk]
,z.[dim_entp_work_unit_nk]
,z.[dim_entp_work_area_nk]
,z.[dim_entp_cwp_nk]
,z.dim_entp_schedule_resource_nk
,z.[dim_entp_activity_nk]
,z.[dim_entp_iwp_nk]
,z.[dim_entp_pim_nk]
,z.[dim_entp_roc_nk]
,z.[dim_entp_data_sub_class_nk]
,z.dim_entp_data_class_nk
,z.[dim_entp_sub_source_nk]
,z.dim_entp_source_nk
,z.[dim_entp_unit_of_measure_nk]
,z.[dim_ent_employee_nk]
,z.dim_ent_jde_coa_nk
,z.dim_ent_geac_coa_nk
,z.[transaction_date]
,sum(isnull(z.[transaction_quantity],0)) transaction_quantity
,z.[created_date_time]
,f.dim_ent_prime_nk
,'GEAC-' + convert(varchar(50),z.dim_ent_geac_coa_nk) coa_key
,'' as group_code
from [dbo].[fact_ops] z
left outer join [dbo].[dim_ent_geac_coa_active_v] c on c.dim_ent_geac_coa_nk = z.dim_ent_geac_coa_nk
left outer join [dbo].[dim_ent_prime_active_v] f on f.dim_ent_prime_nk = c.dim_ent_prime_nk
group by z.[dim_entp_function_nk]
,z.[dim_entp_project_nk]
,z.[dim_entp_phase_nk]
,z.[dim_entp_work_unit_nk]
,z.[dim_entp_work_area_nk]
,z.[dim_entp_cwp_nk]
,z.dim_entp_schedule_resource_nk
,z.[dim_entp_activity_nk]
,z.[dim_entp_iwp_nk]
,z.[dim_entp_pim_nk]
,z.[dim_entp_roc_nk]
,z.[dim_entp_data_sub_class_nk]
,z.dim_entp_data_class_nk
,z.[dim_entp_sub_source_nk]
,z.dim_entp_source_nk
,z.[dim_entp_unit_of_measure_nk]
,z.[dim_ent_employee_nk]
,z.dim_ent_jde_coa_nk
,z.dim_ent_geac_coa_nk
,z.[transaction_date]
,z.[created_date_time]
,f.dim_ent_prime_nk
) k,

(select [dim_entp_project_nk],dim_entp_data_class_nk,[dim_entp_data_sub_class_nk],dim_entp_source_nk,[dim_entp_sub_source_nk],[transaction_date],
max([created_date_time]) [created_date_time]   from [dbo].[fact_ops]
where dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Offshore'))
and dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from [dbo].[dim_ent_data_sub_class] where data_sub_class_name not like 'Progress Module%')
group by[dim_entp_project_nk],dim_entp_data_class_nk,[dim_entp_data_sub_class_nk],dim_entp_source_nk,[dim_entp_sub_source_nk],[transaction_date]) g
where k.dim_entp_project_nk  = g.dim_entp_project_nk
and k.dim_entp_data_class_nk = g.dim_entp_data_class_nk
and k.dim_entp_data_sub_class_nk = g.dim_entp_data_sub_class_nk
and k.dim_entp_source_nk = g.dim_entp_source_nk
and k.dim_entp_sub_source_nk = g.dim_entp_sub_source_nk
and k.transaction_date = g.transaction_date
and k.created_date_time = g.created_date_time
and k.dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('MCPM Offshore'))
and k.dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from [dbo].[dim_ent_data_sub_class] where data_sub_class_name not like 'Progress Module%')
and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = k.dim_entp_project_nk and
  r.dim_ent_sub_source_nk = k.dim_entp_sub_source_nk and
  r.dim_ent_data_sub_class_nk = k.dim_entp_data_sub_class_nk and
  k.[transaction_date] between r.[start_date] and r.[end_date]) = 0
) x;
GO


-----------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [dbo].[dim_ent_global_phase_alternative_v]
GO


CREATE VIEW [dbo].[dim_ent_global_phase_alternative_v] AS select dim_ent_global_phase_sk,dim_ent_global_phase_nk,phase_code,phase_name,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,psrlevel1_code,psrlevel2_code,
	value as alternative_phase_code from [dbo].[dim_ent_global_phase]
	CROSS APPLY STRING_SPLIT(phase_alternative, '|') where  isnull(trim(value),'') <> '' and active=1;
GO





-----------------------------------------------------------------------------------------------------------------------------------------


/****** Object:  View [dbo].[fact_ops_MCPM_Legacy_Offshore_v]    Script Date: 8/7/2024 6:29:22 PM ******/
DROP VIEW [dbo].[fact_ops_MCPM_Legacy_Offshore_v]
GO

CREATE VIEW [dbo].[fact_ops_MCPM_Legacy_Offshore_v]
AS select 
'GEAC-' + convert(varchar(50),dim_ent_geac_coa_nk) coa_key
,fact_entp_sk	  
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
,[transaction_date]
,isnull([transaction_quantity],0) transaction_quantity
,[created_date_time]
,isnull(transaction_quantity, 0) - isnull(previous_transaction_quantity, 0) current_month_transaction_quantity,
		binary_checksum(trim(isnull(trim(str([dim_entp_function_nk])), '~')),
						trim(isnull(trim(str([dim_entp_project_nk])), '~')),
						trim(isnull(trim(str([dim_entp_discipline_nk])), '~')),
						trim(isnull(trim(str([dim_ent_office_nk])), '~')),
						trim(isnull(trim(str([dim_entp_phase_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_unit_nk])), '~')),
						trim(isnull(trim(str([dim_entp_work_area_nk])), '~')),
						trim(isnull(trim(str([dim_entp_cwp_nk])), '~')),
						trim(isnull(trim(str(dim_entp_schedule_resource_nk)), '~')),
						trim(isnull(trim(str([dim_entp_activity_nk])), '~')),
						trim(isnull(trim(str([dim_entp_iwp_nk])), '~')),
						trim(isnull(trim(str([dim_entp_pim_nk])), '~')),
						trim(isnull(trim(str([dim_entp_roc_nk])), '~')),
						trim(isnull(trim(str([dim_entp_data_sub_class_nk])), '~')),
						trim(isnull(trim(str(dim_entp_data_class_nk)), '~')),
						trim(isnull(trim(str([dim_entp_sub_source_nk])), '~')),
						trim(isnull(trim(str(dim_entp_source_nk)), '~')),
						trim(isnull(trim(str([dim_entp_unit_of_measure_nk])), '~')),
						trim(isnull(trim(str([dim_ent_employee_nk])), '~')),
						trim(isnull(trim(str(dim_ent_jde_coa_nk )), '~')),
						trim(isnull(trim(str(dim_ent_geac_coa_nk)), '~'))) group_code
from (
select first_value(fact_entp_sk) over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
,[transaction_date]
							order by [created_date_time]) initial_fact_entp_sk, 
		row_number() over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
,[transaction_date]
						order by [created_date_time] desc) rn, 
		lag(isnull(transaction_quantity,0), 1) over (partition by  
[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
							order	by [transaction_date]) previous_transaction_quantity,	 					
	   fact_entp_sk
,[dim_entp_function_nk]
,[dim_entp_project_nk]
,[dim_entp_discipline_nk]
,[dim_ent_office_nk]
,[dim_entp_phase_nk]
,[dim_entp_work_unit_nk]
,[dim_entp_work_area_nk]
,[dim_entp_cwp_nk]
,dim_entp_schedule_resource_nk
,[dim_entp_activity_nk]
,[dim_entp_iwp_nk]
,[dim_entp_pim_nk]
,[dim_entp_roc_nk]
,[dim_entp_data_sub_class_nk]
,dim_entp_data_class_nk
,[dim_entp_sub_source_nk]
,dim_entp_source_nk
,[dim_entp_unit_of_measure_nk]
,[dim_ent_employee_nk]
,dim_ent_jde_coa_nk 
,dim_ent_geac_coa_nk
,[transaction_date]
,[created_date_time]
,isnull([transaction_quantity],0) [transaction_quantity]
				from [dbo].[fact_ops]) a 
				where 
				dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('Excel_MCPM_Cost'))
				AND 
				rn = 1
				and (select count(*) from [dbo].[dim_ent_data_sub_class_exception_by_projet] r where r.dim_entp_project_nk = a.dim_entp_project_nk and 
				   r.dim_ent_sub_source_nk = a.dim_entp_sub_source_nk and 
				   r.dim_ent_data_sub_class_nk =a.dim_entp_data_sub_class_nk and 
				   a.[transaction_date] between r.[start_date] and r.[end_date]) = 0;
GO






-----------------------------------------------------------------------------------------------------------------------------------------


DROP VIEW [dbo].[dim_entp_plm_risk_active_v]
GO

CREATE VIEW [dbo].[dim_entp_plm_risk_active_v]
AS select dim_entp_plm_rpn_nk,dim_entp_project_nk,ID,json_attribute_for_view,Project,Project_Number,RPN_ID,dim_entp_plm_risk_sk,dim_entp_plm_risk_nk,JSON_VALUE(json_attribute_for_view, '$."ABATEMENT_PLAN"') ABATEMENT_PLAN,JSON_VALUE(json_attribute_for_view, '$."ACTUAL_END_DATE"') ACTUAL_END_DATE,JSON_VALUE(json_attribute_for_view, '$."ACTUAL_RISK_FACTOR_COLOR"') ACTUAL_RISK_FACTOR_COLOR,JSON_VALUE(json_attribute_for_view, '$."ACTUAL_RISK_FACTOR_LEVEL"') ACTUAL_RISK_FACTOR_LEVEL,JSON_VALUE(json_attribute_for_view, '$."ACTUAL_START_DATE"') ACTUAL_START_DATE,JSON_VALUE(json_attribute_for_view, '$."DELETED"') DELETED,JSON_VALUE(json_attribute_for_view, '$."DESCRIPTION"') DESCRIPTION,JSON_VALUE(json_attribute_for_view, '$."ESTIMATED_COST"') ESTIMATED_COST,JSON_VALUE(json_attribute_for_view, '$."ESTIMATED_END_DATE"') ESTIMATED_END_DATE,JSON_VALUE(json_attribute_for_view, '$."ESTIMATED_START_DATE"') ESTIMATED_START_DATE,JSON_VALUE(json_attribute_for_view, '$."INCLUDE_RISK_PROJECT"') INCLUDE_RISK_PROJECT,JSON_VALUE(json_attribute_for_view, '$."MAXIMUM_ACTUAL_CONSEQUENCE_VALUE"') MAXIMUM_ACTUAL_CONSEQUENCE_VALUE,JSON_VALUE(json_attribute_for_view, '$."MAXIMUM_ACTUAL_LIKELIHOOD_VALUE"') MAXIMUM_ACTUAL_LIKELIHOOD_VALUE,JSON_VALUE(json_attribute_for_view, '$."MDR_CONSEQUENCE"') MDR_CONSEQUENCE,JSON_VALUE(json_attribute_for_view, '$."MDR_RISKFUNCTION"') MDR_RISKFUNCTION,JSON_VALUE(json_attribute_for_view, '$."MDR_SCHEDULE_IMPACT"') MDR_SCHEDULE_IMPACT,JSON_VALUE(json_attribute_for_view, '$."MDR_SUBCATEGORY"') MDR_SUBCATEGORY,JSON_VALUE(json_attribute_for_view, '$."MEASURE_OF_SUCCESS"') MEASURE_OF_SUCCESS,JSON_VALUE(json_attribute_for_view, '$."NAME"') NAME,JSON_VALUE(json_attribute_for_view, '$."ORIGINATED"') ORIGINATED,JSON_VALUE(json_attribute_for_view, '$."ORIGINATOR"') ORIGINATOR,JSON_VALUE(json_attribute_for_view, '$."POLICY"') POLICY,JSON_VALUE(json_attribute_for_view, '$."RISK_CONTROL_BOARD_ACTIVITY_LEVEL"') RISK_CONTROL_BOARD_ACTIVITY_LEVEL,JSON_VALUE(json_attribute_for_view, '$."RISK_CONTROL_BOARD_MEETING_DATE"') RISK_CONTROL_BOARD_MEETING_DATE,JSON_VALUE(json_attribute_for_view, '$."RISK_COST"') RISK_COST,JSON_VALUE(json_attribute_for_view, '$."RISK_FACTOR"') RISK_FACTOR,JSON_VALUE(json_attribute_for_view, '$."RISK_HANDLING_PLAN_TECHNIQUE"') RISK_HANDLING_PLAN_TECHNIQUE,JSON_VALUE(json_attribute_for_view, '$."RISK_HANDLING_PLAN_TECHNIQUE_DESCRIPTION"') RISK_HANDLING_PLAN_TECHNIQUE_DESCRIPTION,JSON_VALUE(json_attribute_for_view, '$."RISK_IMPACT"') RISK_IMPACT,JSON_VALUE(json_attribute_for_view, '$."RISK_PROBABILITY"') RISK_PROBABILITY,JSON_VALUE(json_attribute_for_view, '$."RISK_TIME_FRAME"') RISK_TIME_FRAME,JSON_VALUE(json_attribute_for_view, '$."RISK_TYPE"') RISK_TYPE,JSON_VALUE(json_attribute_for_view, '$."RISK_VISIBILITY"') RISK_VISIBILITY,JSON_VALUE(json_attribute_for_view, '$."RPN_NUMBER"') RPN_NUMBER,JSON_VALUE(json_attribute_for_view, '$."STATE"') STATE,JSON_VALUE(json_attribute_for_view, '$."TIMESTAMP"') TIMESTAMP,JSON_VALUE(json_attribute_for_view, '$."TITLE"') TITLE,JSON_VALUE(json_attribute_for_view, '$."WATCH_LIST"') WATCH_LIST from dbo.dim_entp_plm_risk where active = 1;
GO




-----------------------------------------------------------------------------------------------------------------------------------------


DROP VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_V]
GO


CREATE VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_V]
AS select rssk, convert(money, case when [ACTUAL %] in ('NULL', '')  then NULL else [Actual %] end ) as [Actual %],convert(date, case when [ACTUAL AWARD DATE] in ('NULL', '')  then NULL else [Actual Award Date] end ) as [Actual Award Date],convert(money, case when [APPROVED CHANGE AMOUNT/ BUDGET SHIFT] in ('NULL', '')  then NULL else [Approved Change Amount/ Budget Shift] end ) as [Approved Change Amount/ Budget Shift],convert(money, case when [BUDGET AMOUNT] in ('NULL', '')  then NULL else [Budget Amount] end ) as [Budget Amount],convert(money, case when [COMMITTED AMOUNT] in ('NULL', '')  then NULL else [Committed Amount] end ) as [Committed Amount],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(varchar(max), case when [CONTRACT TYPE] in ('NULL', '')  then NULL else [Contract Type] end ) as [Contract Type],convert(varchar(max), case when [COST CODE] in ('NULL', '')  then NULL else [Cost Code] end ) as [Cost Code],convert(money, case when [CURRENT BUDGET] in ('NULL', '')  then NULL else [Current Budget] end ) as [Current Budget],convert(varchar(max), case when [DISCIPLINE] in ('NULL', '')  then NULL else [Discipline] end ) as [Discipline],convert(money, case when [EAC AMOUNT] in ('NULL', '')  then NULL else [EAC Amount] end ) as [EAC Amount],convert(varchar(max), case when [ENTITY] in ('NULL', '')  then NULL else [Entity] end ) as [Entity],convert(money, case when [FORECAST] in ('NULL', '')  then NULL else [Forecast] end ) as [Forecast],convert(varchar(max), case when [JOB NUMBER] in ('NULL', '')  then NULL else [Job Number] end ) as [Job Number],convert(varchar(max), case when [LOCATION] in ('NULL', '')  then NULL else [Location] end ) as [Location],convert(date, case when [MONTH END DATE] in ('NULL', '')  then NULL else [Month End Date] end ) as [Month End Date],convert(money, case when [ORIGINAL BUDGET] in ('NULL', '')  then NULL else [Original Budget] end ) as [Original Budget],convert(money, case when [PLAN %] in ('NULL', '')  then NULL else [Plan %] end ) as [Plan %],convert(date, case when [PLANNED AWARD DATE] in ('NULL', '')  then NULL else [Planned Award Date] end ) as [Planned Award Date],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(varchar(max), case when [SCOPE] in ('NULL', '')  then NULL else [Scope] end ) as [Scope],convert(varchar(max), case when [SUBCONTRACT NUMBER] in ('NULL', '')  then NULL else [Subcontract Number] end ) as [Subcontract Number],convert(varchar(max), case when [SUBCONTRACTOR (BID)] in ('NULL', '')  then NULL else [Subcontractor (Bid)] end ) as [Subcontractor (Bid)],convert(money, case when [VARIANCE TO CURRENT BUDGET] in ('NULL', '')  then NULL else [Variance to Current Budget] end ) as [Variance to Current Budget],convert(money, case when [VARIANCE TO PREVIOUS MONTH] in ('NULL', '')  then NULL else [Variance to Previous Month] end ) as [Variance to Previous Month],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo]  
	from (
	SELECT rssk, [Actual %],[Actual Award Date],[Approved Change Amount/ Budget Shift],[Budget Amount],[Committed Amount],[Contract Number],[Contract Type],[Cost Code],[Current Budget],[Discipline],[EAC Amount],[Entity],[Forecast],[Job Number],[Location],[Month End Date],[Original Budget],[Plan %],[Planned Award Date],[Project Number],[Scope],[Subcontract Number],[Subcontractor (Bid)],[Variance to Current Budget],[Variance to Previous Month],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Major_Subcontract_Cost_Status_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Actual %],[Actual Award Date],[Approved Change Amount/ Budget Shift],[Budget Amount],[Committed Amount],[Contract Number],[Contract Type],[Cost Code],[Current Budget],[Discipline],[EAC Amount],[Entity],[Forecast],[Job Number],[Location],[Month End Date],[Original Budget],[Plan %],[Planned Award Date],[Project Number],[Scope],[Subcontract Number],[Subcontractor (Bid)],[Variance to Current Budget],[Variance to Previous Month],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Actual %], 'N') = 1 and dbo.isNumericCustom([Approved Change Amount/ Budget Shift], 'N') = 1 and dbo.isNumericCustom([Budget Amount], 'N') = 1 and dbo.isNumericCustom([Committed Amount], 'N') = 1 and dbo.isNumericCustom([Current Budget], 'N') = 1 and dbo.isNumericCustom([EAC Amount], 'N') = 1 and dbo.isNumericCustom([Forecast], 'N') = 1 and dbo.isNumericCustom([Original Budget], 'N') = 1 and dbo.isNumericCustom([Plan %], 'N') = 1 and dbo.isNumericCustom([Variance to Current Budget], 'N') = 1 and dbo.isNumericCustom([Variance to Previous Month], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([Actual Award Date], 23) = 1 and dbo.isDateCustom([Month End Date], 23) = 1 and dbo.isDateCustom([Planned Award Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO



------------------------------------------------------------------------------------------------------------------------------------------------


DROP VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_v]
GO

CREATE VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[Actual %],
v.[Actual Award Date],
v.[Approved Change Amount/ Budget Shift],
v.[Budget Amount],
v.[Committed Amount],
v.[Contract Number],
v.[Contract Type],
v.[Cost Code],
v.[Current Budget],
v.[Discipline],
v.[EAC Amount],
v.[Entity],
v.[Forecast],
v.[Job Number],
v.[Location],
v.[Month End Date],
v.[Original Budget],
v.[Plan %],
v.[Planned Award Date],
v.[Project Number],
v.[rssk],
v.[Scope],
v.[Subcontract Number],
v.[Subcontractor (Bid)],
v.[Variance to Current Budget],
v.[Variance to Previous Month],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]  
FROM gpd.Major_Subcontract_Cost_Status_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE 
zVersionNo = (select max(zVersionNo) from gpd.Major_Subcontract_Cost_Status_JSON_v z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Month End Date] = v.[Month End Date]);
GO



------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_error_v]
GO

CREATE VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_error_v]
AS select rssk,(select error_message from gpd.Major_Subcontract_Cost_Status_JSON_active_error_v_error_message x where x.rssk = q.rssk) as error_message, [Actual %] as [Actual %],[Actual Award Date] as [Actual Award Date],[Approved Change Amount/ Budget Shift] as [Approved Change Amount/ Budget Shift],[Budget Amount] as [Budget Amount],[Committed Amount] as [Committed Amount],[Contract Number] as [Contract Number],[Contract Type] as [Contract Type],[Cost Code] as [Cost Code],[Current Budget] as [Current Budget],[Discipline] as [Discipline],[EAC Amount] as [EAC Amount],[Entity] as [Entity],[Forecast] as [Forecast],[Job Number] as [Job Number],[Location] as [Location],[Month End Date] as [Month End Date],[Original Budget] as [Original Budget],[Plan %] as [Plan %],[Planned Award Date] as [Planned Award Date],[Project Number] as [Project Number],[Scope] as [Scope],[Subcontract Number] as [Subcontract Number],[Subcontractor (Bid)] as [Subcontractor (Bid)],[Variance to Current Budget] as [Variance to Current Budget],[Variance to Previous Month] as [Variance to Previous Month],[zCreatedDateTime] as [zCreatedDateTime],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo] 
	from (
	SELECT rssk, [Actual %],[Actual Award Date],[Approved Change Amount/ Budget Shift],[Budget Amount],[Committed Amount],[Contract Number],[Contract Type],[Cost Code],[Current Budget],[Discipline],[EAC Amount],[Entity],[Forecast],[Job Number],[Location],[Month End Date],[Original Budget],[Plan %],[Planned Award Date],[Project Number],[Scope],[Subcontract Number],[Subcontractor (Bid)],[Variance to Current Budget],[Variance to Previous Month],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Major_Subcontract_Cost_Status_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Actual %],[Actual Award Date],[Approved Change Amount/ Budget Shift],[Budget Amount],[Committed Amount],[Contract Number],[Contract Type],[Cost Code],[Current Budget],[Discipline],[EAC Amount],[Entity],[Forecast],[Job Number],[Location],[Month End Date],[Original Budget],[Plan %],[Planned Award Date],[Project Number],[Scope],[Subcontract Number],[Subcontractor (Bid)],[Variance to Current Budget],[Variance to Previous Month],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Actual %], 'N') != 1 or dbo.isNumericCustom([Approved Change Amount/ Budget Shift], 'N') != 1 or dbo.isNumericCustom([Budget Amount], 'N') != 1 or dbo.isNumericCustom([Committed Amount], 'N') != 1 or dbo.isNumericCustom([Current Budget], 'N') != 1 or dbo.isNumericCustom([EAC Amount], 'N') != 1 or dbo.isNumericCustom([Forecast], 'N') != 1 or dbo.isNumericCustom([Original Budget], 'N') != 1 or dbo.isNumericCustom([Plan %], 'N') != 1 or dbo.isNumericCustom([Variance to Current Budget], 'N') != 1 or dbo.isNumericCustom([Variance to Previous Month], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([Actual Award Date], 23) != 1 or dbo.isDateCustom([Month End Date], 23) != 1 or dbo.isDateCustom([Planned Award Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO



------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_v]
GO

CREATE VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_v]
AS select rssk, convert(money, case when [PLAN CUMULATIVE EARLY] in ('NULL', '')  then NULL else [Plan Cumulative Early] end ) as [Plan Cumulative Early],convert(varchar(max), case when [PSRL2CODE] in ('NULL', '')  then NULL else [PSRL2Code] end ) as [PSRL2Code],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo],convert(money, case when [PLAN INCREMENTAL LATE] in ('NULL', '')  then NULL else [Plan Incremental Late] end ) as [Plan Incremental Late],convert(money, case when [FORECAST CUMULATIVE MID] in ('NULL', '')  then NULL else [Forecast Cumulative Mid] end ) as [Forecast Cumulative Mid],convert(money, case when [PLAN CUMULATIVE MID] in ('NULL', '')  then NULL else [Plan Cumulative Mid] end ) as [Plan Cumulative Mid],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(money, case when [PLAN INCREMENTAL MID] in ('NULL', '')  then NULL else [Plan Incremental Mid] end ) as [Plan Incremental Mid],convert(varchar(max), case when [PSRL1CODE] in ('NULL', '')  then NULL else [PSRL1Code] end ) as [PSRL1Code],convert(money, case when [VALUE] in ('NULL', '')  then NULL else [Value] end ) as [Value],convert(date, case when [DATE] in ('NULL', '')  then NULL else [Date] end ) as [Date],convert(varchar(max), case when [PLAN TYPE] in ('NULL', '')  then NULL else [Plan Type] end ) as [Plan Type],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(money, case when [PLAN CUMULATIVE LATE] in ('NULL', '')  then NULL else [Plan Cumulative Late] end ) as [Plan Cumulative Late],convert(money, case when [ACTUAL INCREMENTAL] in ('NULL', '')  then NULL else [Actual Incremental] end ) as [Actual Incremental],convert(money, case when [ACTUAL CUMULATIVE] in ('NULL', '')  then NULL else [Actual Cumulative] end ) as [Actual Cumulative],convert(money, case when [CUMM - PLAN] in ('NULL', '')  then NULL else [Cumm - Plan] end ) as [Cumm - Plan],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(money, case when [FORECAST INCREMENTAL MID] in ('NULL', '')  then NULL else [Forecast Incremental Mid] end ) as [Forecast Incremental Mid],convert(money, case when [PLAN INCREMENTAL] in ('NULL', '')  then NULL else [Plan Incremental] end ) as [Plan Incremental],convert(varchar(max), case when [PHASE_FUNCTION] in ('NULL', '')  then NULL else [Phase_Function] end ) as [Phase_Function],convert(money, case when [FORECAST CUMULATIVE LATE] in ('NULL', '')  then NULL else [Forecast Cumulative Late] end ) as [Forecast Cumulative Late],convert(money, case when [PLAN INCREMENTAL EARLY] in ('NULL', '')  then NULL else [Plan Incremental Early] end ) as [Plan Incremental Early],convert(money, case when [FORECAST INCREMENTAL LATE] in ('NULL', '')  then NULL else [Forecast Incremental Late] end ) as [Forecast Incremental Late],convert(money, case when [FORECAST CUMULATIVE EARLY] in ('NULL', '')  then NULL else [Forecast Cumulative Early] end ) as [Forecast Cumulative Early],convert(money, case when [FORECAST INCREMENTAL EARLY] in ('NULL', '')  then NULL else [Forecast Incremental Early] end ) as [Forecast Incremental Early]  
	from (
	SELECT rssk, [Plan Cumulative Early],[PSRL2Code],[zSourceFileName],[zVersionNo],[Plan Incremental Late],[Forecast Cumulative Mid],[Plan Cumulative Mid],[Contract Number],[Plan Incremental Mid],[PSRL1Code],[Value],[Date],[Plan Type],[zCreatedDateTime],[Plan Cumulative Late],[Actual Incremental],[Actual Cumulative],[Cumm - Plan],[Project Number],[Forecast Incremental Mid],[Plan Incremental],[Phase_Function],[Forecast Cumulative Late],[Plan Incremental Early],[Forecast Incremental Late],[Forecast Cumulative Early],[Forecast Incremental Early] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Progress_Curve_HUC_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Plan Cumulative Early],[PSRL2Code],[zSourceFileName],[zVersionNo],[Plan Incremental Late],[Forecast Cumulative Mid],[Plan Cumulative Mid],[Contract Number],[Plan Incremental Mid],[PSRL1Code],[Value],[Date],[Plan Type],[zCreatedDateTime],[Plan Cumulative Late],[Actual Incremental],[Actual Cumulative],[Cumm - Plan],[Project Number],[Forecast Incremental Mid],[Plan Incremental],[Phase_Function],[Forecast Cumulative Late],[Plan Incremental Early],[Forecast Incremental Late],[Forecast Cumulative Early],[Forecast Incremental Early] )) as p) q 
	where dbo.isNumericCustom([Plan Cumulative Early], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isNumericCustom([Plan Incremental Late], 'N') = 1 and dbo.isNumericCustom([Forecast Cumulative Mid], 'N') = 1 and dbo.isNumericCustom([Plan Cumulative Mid], 'N') = 1 and dbo.isNumericCustom([Plan Incremental Mid], 'N') = 1 and dbo.isNumericCustom([Value], 'N') = 1 and dbo.isNumericCustom([Plan Cumulative Late], 'N') = 1 and dbo.isNumericCustom([Actual Incremental], 'N') = 1 and dbo.isNumericCustom([Actual Cumulative], 'N') = 1 and dbo.isNumericCustom([Cumm - Plan], 'N') = 1 and dbo.isNumericCustom([Forecast Incremental Mid], 'N') = 1 and dbo.isNumericCustom([Plan Incremental], 'N') = 1 and dbo.isNumericCustom([Forecast Cumulative Late], 'N') = 1 and dbo.isNumericCustom([Plan Incremental Early], 'N') = 1 and dbo.isNumericCustom([Forecast Incremental Late], 'N') = 1 and dbo.isNumericCustom([Forecast Cumulative Early], 'N') = 1 and dbo.isNumericCustom([Forecast Incremental Early], 'N') = 1 and dbo.isDateCustom([Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO



------------------------------------------------------------------------------------------------------------------------------------------------




DROP VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_v]
GO

CREATE VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[Actual Cumulative],
v.[Actual Incremental],
v.[Contract Number],
v.[Date],
v.[Forecast Cumulative Early],
v.[Forecast Cumulative Late],
v.[Forecast Cumulative Mid],
v.[Forecast Incremental Early],
v.[Forecast Incremental Late],
v.[Forecast Incremental Mid],
v.[Plan Cumulative Early],
v.[Plan Cumulative Late],
v.[Plan Cumulative Mid],
v.[Plan Incremental],
v.[Plan Incremental Early],
v.[Plan Incremental Late],
v.[Plan Incremental Mid],
v.[Plan Type],
v.[Project Number],
v.[PSRL1Code],
v.[PSRL2Code],
v.[rssk],
v.[Value],
v.[Phase_Function],
v.[Cumm - Plan],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo] 
from gpd.Progress_Curve_HUC_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where zVersionNo = (select max(zVersionNo) from gpd.Progress_Curve_HUC_PMR_JSON_v z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Date] = v.[Date]);
GO


------------------------------------------------------------------------------------------------------------------------------------------------


DROP VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_error_v]
GO


CREATE VIEW [gpd].[Progress_Curve_HUC_PMR_JSON_active_error_v]
AS select rssk, [Plan Cumulative Early] as [Plan Cumulative Early],[PSRL2Code] as [PSRL2Code],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo],[Plan Incremental Late] as [Plan Incremental Late],[Forecast Cumulative Mid] as [Forecast Cumulative Mid],[Plan Cumulative Mid] as [Plan Cumulative Mid],[Contract Number] as [Contract Number],[Plan Incremental Mid] as [Plan Incremental Mid],[PSRL1Code] as [PSRL1Code],[Value] as [Value],[Date] as [Date],[Plan Type] as [Plan Type],[zCreatedDateTime] as [zCreatedDateTime],[Plan Cumulative Late] as [Plan Cumulative Late],[Actual Incremental] as [Actual Incremental],[Actual Cumulative] as [Actual Cumulative],[Cumm - Plan] as [Cumm - Plan],[Project Number] as [Project Number],[Forecast Incremental Mid] as [Forecast Incremental Mid],[Plan Incremental] as [Plan Incremental],[Phase_Function] as [Phase_Function],[Forecast Cumulative Late] as [Forecast Cumulative Late],[Plan Incremental Early] as [Plan Incremental Early],[Forecast Incremental Late] as [Forecast Incremental Late],[Forecast Cumulative Early] as [Forecast Cumulative Early],[Forecast Incremental Early] as [Forecast Incremental Early] 
	from (
	SELECT rssk, [Plan Cumulative Early],[PSRL2Code],[zSourceFileName],[zVersionNo],[Plan Incremental Late],[Forecast Cumulative Mid],[Plan Cumulative Mid],[Contract Number],[Plan Incremental Mid],[PSRL1Code],[Value],[Date],[Plan Type],[zCreatedDateTime],[Plan Cumulative Late],[Actual Incremental],[Actual Cumulative],[Cumm - Plan],[Project Number],[Forecast Incremental Mid],[Plan Incremental],[Phase_Function],[Forecast Cumulative Late],[Plan Incremental Early],[Forecast Incremental Late],[Forecast Cumulative Early],[Forecast Incremental Early] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Progress_Curve_HUC_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Plan Cumulative Early],[PSRL2Code],[zSourceFileName],[zVersionNo],[Plan Incremental Late],[Forecast Cumulative Mid],[Plan Cumulative Mid],[Contract Number],[Plan Incremental Mid],[PSRL1Code],[Value],[Date],[Plan Type],[zCreatedDateTime],[Plan Cumulative Late],[Actual Incremental],[Actual Cumulative],[Cumm - Plan],[Project Number],[Forecast Incremental Mid],[Plan Incremental],[Phase_Function],[Forecast Cumulative Late],[Plan Incremental Early],[Forecast Incremental Late],[Forecast Cumulative Early],[Forecast Incremental Early] )) as p) q 
	where dbo.isNumericCustom([Plan Cumulative Early], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isNumericCustom([Plan Incremental Late], 'N') != 1 or dbo.isNumericCustom([Forecast Cumulative Mid], 'N') != 1 or dbo.isNumericCustom([Plan Cumulative Mid], 'N') != 1 or dbo.isNumericCustom([Plan Incremental Mid], 'N') != 1 or dbo.isNumericCustom([Value], 'N') != 1 or dbo.isNumericCustom([Plan Cumulative Late], 'N') != 1 or dbo.isNumericCustom([Actual Incremental], 'N') != 1 or dbo.isNumericCustom([Actual Cumulative], 'N') != 1 or dbo.isNumericCustom([Cumm - Plan], 'N') != 1 or dbo.isNumericCustom([Forecast Incremental Mid], 'N') != 1 or dbo.isNumericCustom([Plan Incremental], 'N') != 1 or dbo.isNumericCustom([Forecast Cumulative Late], 'N') != 1 or dbo.isNumericCustom([Plan Incremental Early], 'N') != 1 or dbo.isNumericCustom([Forecast Incremental Late], 'N') != 1 or dbo.isNumericCustom([Forecast Cumulative Early], 'N') != 1 or dbo.isNumericCustom([Forecast Incremental Early], 'N') != 1 or dbo.isDateCustom([Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO


------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE [gpd].[Major_Subcontract_Cost_Status_JSON_active_error_v_error_message]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[error_message] [varchar](8000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




