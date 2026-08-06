DROP PROCEDURE [promt].[sp_update_dimension_keys_for_promt_datalake_export_risk_snapshot]
GO

CREATE PROC [promt].[sp_update_dimension_keys_for_promt_datalake_export_risk_snapshot] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);



execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_promt_project_sk',
       'dim_ent_promt_project_nk',
       'promt.dim_ent_promt_project_snapshot',
       'dim_ent_promt_project_sk',
       'dim_ent_promt_project_nk',
	   'ss_id',
	   'ss_id',
       't_project_id', 
       't_project_id', 
       null,
       null,
	   null,
	   null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set ro_category='' where ro_category IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set ro_category_description='' where ro_category_description IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set sub_category='' where sub_category IS NULL


execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_risk_opportunity_category_sk',
       'dim_ent_risk_opportunity_category_nk',
       'promt.dim_ent_promt_risk_opportunity_category',
       'dim_ent_risk_opportunity_category_sk',
       'dim_ent_risk_opportunity_category_nk',
       'ro_category', 
       'ro_category', 
       'ro_category_description',
       'ro_category_description',
	   'sub_category',
	   'sub_category',
       null,
       null,
       null,
       null,
       'FL',null;
	   

update [promt].[stage_promt_datalake_export_risk_snapshot] set probability_range_percentage='' where probability_range_percentage IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set probability_range_percentage_description='' where probability_range_percentage_description IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set probability_range_percentage_display_order='' where probability_range_percentage_display_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_probability_range_percentage_sk',
       'dim_ent_probability_range_percentage_nk',
       'promt.dim_ent_promt_probability_range_percentage',
       'dim_ent_probability_range_percentage_sk',
       'dim_ent_probability_range_percentage_nk',
       'probability_range_percentage', 
       'probability_range_percentage', 
       'probability_range_percentage_description',
       'probability_range_percentage_description',
	   'probability_range_percentage_display_order',
	   'probability_range_percentage_display_order',
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set environment='' where environment IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set environment_description='' where environment_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_environment_sk',
       'dim_ent_environment_nk',
       'promt.dim_ent_promt_environment',
       'dim_ent_environment_sk',
       'dim_ent_environment_nk',
       'environment', 
       'environment', 
       'environment_description',
       'environment_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set health_safety_security='' where health_safety_security IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set health_safety_security_description='' where health_safety_security_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_health_safety_security_sk',
       'dim_ent_health_safety_security_nk',
       'promt.dim_ent_promt_health_safety_security',
       'dim_ent_health_safety_security_sk',
       'dim_ent_health_safety_security_nk',
       'health_safety_security', 
       'health_safety_security', 
       'health_safety_security_description',
       'health_safety_security_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set quality='' where quality IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set quality_description='' where quality_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_quality_sk',
       'dim_ent_quality_nk',
       'promt.dim_ent_promt_quality',
       'dim_ent_quality_sk',
       'dim_ent_quality_nk',
       'quality', 
       'quality', 
       'quality_description',
       'quality_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set reputation='' where reputation IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set reputation_description='' where reputation_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_reputation_sk',
       'dim_ent_reputation_nk',
       'promt.dim_ent_promt_reputation',
       'dim_ent_reputation_sk',
       'dim_ent_reputation_nk',
       'reputation', 
       'reputation', 
       'reputation_description',
       'reputation_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set social_culture='' where social_culture IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set social_culture_description='' where social_culture_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_social_culture_sk',
       'dim_ent_social_culture_nk',
       'promt.dim_ent_promt_social_culture',
       'dim_ent_social_culture_sk',
       'dim_ent_social_culture_nk',
       'social_culture', 
       'social_culture', 
       'social_culture_description',
       'social_culture_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 

update [promt].[stage_promt_datalake_export_risk_snapshot] set cost_impact_tcv_percentage='' where cost_impact_tcv_percentage IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set cost_impact_tcv_percentage_description='' where cost_impact_tcv_percentage_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_cost_impact_tcv_percentage_sk',
       'dim_ent_cost_impact_tcv_percentage_nk',
       'promt.dim_ent_promt_cost_impact_tcv_percentage',
       'dim_ent_cost_impact_tcv_percentage_sk',
       'dim_ent_cost_impact_tcv_percentage_nk',
       'cost_impact_tcv_percentage', 
       'cost_impact_tcv_percentage', 
       'cost_impact_tcv_percentage_description',
       'cost_impact_tcv_percentage_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set schedule='' where schedule IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set schedule_description='' where schedule_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_schedule_sk',
       'dim_ent_schedule_nk',
       'promt.dim_ent_promt_schedule',
       'dim_ent_schedule_sk',
       'dim_ent_schedule_nk',
       'schedule', 
       'schedule', 
       'schedule_description',
       'schedule_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   


update [promt].[stage_promt_datalake_export_risk_snapshot] set overall_impact='' where overall_impact IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set overall_impact_description='' where overall_impact_description IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set overall_impact_display_sort_order='' where overall_impact_display_sort_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_overall_impact_sk',
       'dim_ent_overall_impact_nk',
       'promt.dim_ent_promt_overall_impact',
       'dim_ent_overall_impact_sk',
       'dim_ent_overall_impact_nk',
       'overall_impact', 
       'overall_impact', 
       'overall_impact_description',
       'overall_impact_description',
	   'overall_impact_display_sort_order',
	   'overall_impact_display_sort_order',
       null,
       null,
       null,
       null,
       'FL',null;
		 


update [promt].[stage_promt_datalake_export_risk_snapshot] set risk_status='' where risk_status IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set risk_status_description='' where risk_status_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_risk_status_sk',
       'dim_ent_risk_status_nk',
       'promt.dim_ent_promt_risk_status',
       'dim_ent_risk_status_sk',
       'dim_ent_risk_status_nk',
       'risk_status', 
       'risk_status', 
       'risk_status_description',
       'risk_status_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set closing_justification='' where closing_justification IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set closing_justification_description='' where closing_justification_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_risk_closing_justification_sk',
       'dim_ent_risk_closing_justification_nk',
       'promt.dim_ent_promt_risk_closing_justification',
       'dim_ent_risk_closing_justification_sk',
       'dim_ent_risk_closing_justification_nk',
       'closing_justification', 
       'closing_justification', 
       'closing_justification_description',
       'closing_justification_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set strategy_pre_contract='' where strategy_pre_contract IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set strategy_pre_contract_description='' where strategy_pre_contract_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_strategy_pre_contract_sk',
       'dim_ent_strategy_pre_contract_nk',
       'promt.dim_ent_promt_strategy_pre_contract',
       'dim_ent_strategy_pre_contract_sk',
       'dim_ent_strategy_pre_contract_nk',
       'strategy_pre_contract', 
       'strategy_pre_contract', 
       'strategy_pre_contract_description',
       'strategy_pre_contract_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set strategy_execution='' where strategy_execution IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set strategy_execution_description='' where strategy_execution_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_strategy_execution_sk',
       'dim_ent_strategy_execution_nk',
       'promt.dim_ent_promt_strategy_execution',
       'dim_ent_strategy_execution_sk',
       'dim_ent_strategy_execution_nk',
       'strategy_execution', 
       'strategy_execution', 
       'strategy_execution_description',
       'strategy_execution_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set action_status='' where action_status IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set action_status_description='' where action_status_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_action_status_sk',
       'dim_ent_action_status_nk',
       'promt.dim_ent_promt_action_status',
       'dim_ent_action_status_sk',
       'dim_ent_action_status_nk',
       'action_status', 
       'action_status', 
       'action_status_description',
       'action_status_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_probability_range_percentage='' where mit_probability_range_percentage IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_probability_range_percentage_description='' where mit_probability_range_percentage_description IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_probability_range_percentage_display_order='' where mit_probability_range_percentage_display_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_probability_range_percentage_sk',
       'dim_ent_mit_probability_range_percentage_nk',
       'promt.dim_ent_promt_mit_probability_range_percentage',
       'dim_ent_mit_probability_range_percentage_sk',
       'dim_ent_mit_probability_range_percentage_nk',
       'mit_probability_range_percentage', 
       'mit_probability_range_percentage', 
       'mit_probability_range_percentage_description',
       'mit_probability_range_percentage_description',
	   'mit_probability_range_percentage_display_order',
	   'mit_probability_range_percentage_display_order',
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_environment='' where mit_environment IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_environment_description='' where mit_environment_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_environment_sk',
       'dim_ent_mit_environment_nk',
       'promt.dim_ent_promt_mit_environment',
       'dim_ent_mit_environment_sk',
       'dim_ent_mit_environment_nk',
       'mit_environment', 
       'mit_environment', 
       'mit_environment_description',
       'mit_environment_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_health_safety_security='' where mit_health_safety_security IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_health_safety_security_description='' where mit_health_safety_security_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_health_safety_security_sk',
       'dim_ent_mit_health_safety_security_nk',
       'promt.dim_ent_promt_mit_health_safety_security',
       'dim_ent_mit_health_safety_security_sk',
       'dim_ent_mit_health_safety_security_nk',
       'mit_health_safety_security', 
       'mit_health_safety_security', 
       'mit_health_safety_security_description',
       'mit_health_safety_security_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_quality='' where mit_quality IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_quality_description='' where mit_quality_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_quality_sk',
       'dim_ent_mit_quality_nk',
       'promt.dim_ent_promt_mit_quality',
       'dim_ent_mit_quality_sk',
       'dim_ent_mit_quality_nk',
       'mit_quality', 
       'mit_quality', 
       'mit_quality_description',
       'mit_quality_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_reputation='' where mit_reputation IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_reputation_description='' where mit_reputation_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_reputation_sk',
       'dim_ent_mit_reputation_nk',
       'promt.dim_ent_promt_mit_reputation',
       'dim_ent_mit_reputation_sk',
       'dim_ent_mit_reputation_nk',
       'mit_reputation', 
       'mit_reputation', 
       'mit_reputation_description',
       'mit_reputation_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	


update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_social_culture='' where mit_social_culture IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_social_culture_description='' where mit_social_culture_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_social_culture_sk',
       'dim_ent_mit_social_culture_nk',
       'promt.dim_ent_promt_mit_social_culture',
       'dim_ent_mit_social_culture_sk',
       'dim_ent_mit_social_culture_nk',
       'mit_social_culture', 
       'mit_social_culture', 
       'mit_social_culture_description',
       'mit_social_culture_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_cost_impact_tcv_percentage='' where mit_cost_impact_tcv_percentage IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_cost_impact_tcv_percentage_description='' where mit_cost_impact_tcv_percentage_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_cost_impact_tcv_percentage_sk',
       'dim_ent_mit_cost_impact_tcv_percentage_nk',
       'promt.dim_ent_promt_mit_cost_impact_tcv_percentage',
       'dim_ent_mit_cost_impact_tcv_percentage_sk',
       'dim_ent_mit_cost_impact_tcv_percentage_nk',
       'mit_cost_impact_tcv_percentage', 
       'mit_cost_impact_tcv_percentage', 
       'mit_cost_impact_tcv_percentage_description',
       'mit_cost_impact_tcv_percentage_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_schedule='' where mit_schedule IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_schedule_description='' where mit_schedule_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_schedule_sk',
       'dim_ent_mit_schedule_nk',
       'promt.dim_ent_promt_mit_schedule',
       'dim_ent_mit_schedule_sk',
       'dim_ent_mit_schedule_nk',
       'mit_schedule', 
       'mit_schedule', 
       'mit_schedule_description',
       'mit_schedule_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 

update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_overall_impact='' where mit_overall_impact IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_overall_impact_description='' where mit_overall_impact_description IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_overall_impact_display_sort_order='' where mit_overall_impact_display_sort_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_overall_impact_sk',
       'dim_ent_mit_overall_impact_nk',
       'promt.dim_ent_promt_mit_overall_impact',
       'dim_ent_mit_overall_impact_sk',
       'dim_ent_mit_overall_impact_nk',
       'mit_overall_impact', 
       'mit_overall_impact', 
       'mit_overall_impact_description',
       'mit_overall_impact_description',
	   'mit_overall_impact_display_sort_order',
	   'mit_overall_impact_display_sort_order',
       null,
       null,
       null,
       null,
       'FL',null;
		 



update [promt].[stage_promt_datalake_export_risk_snapshot] set distribution_type='' where distribution_type IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set distribution_type_description='' where distribution_type_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_distribution_type_sk',
       'dim_ent_distribution_type_nk',
       'promt.dim_ent_promt_distribution_type',
       'dim_ent_distribution_type_sk',
       'dim_ent_distribution_type_nk',
       'distribution_type', 
       'distribution_type', 
       'distribution_type_description',
       'distribution_type_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set shared_externaly='' where shared_externaly IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set shared_externaly_description='' where shared_externaly_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_shared_externaly_sk',
       'dim_ent_shared_externaly_nk',
       'promt.dim_ent_promt_shared_externaly',
       'dim_ent_shared_externaly_sk',
       'dim_ent_shared_externaly_nk',
       'shared_externaly', 
       'shared_externaly', 
       'shared_externaly_description',
       'shared_externaly_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	   


update [promt].[stage_promt_datalake_export_risk_snapshot] set risk_modeling_tech='' where risk_modeling_tech IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set risk_modeling_tech_description='' where risk_modeling_tech_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_risk_modeling_tech_sk',
       'dim_ent_risk_modeling_tech_nk',
       'promt.dim_ent_promt_risk_modeling_tech',
       'dim_ent_risk_modeling_tech_sk',
       'dim_ent_risk_modeling_tech_nk',
       'risk_modeling_tech', 
       'risk_modeling_tech', 
       'risk_modeling_tech_description',
       'risk_modeling_tech_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;




update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_fully_transferred='' where mit_fully_transferred IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_fully_transferred_description='' where mit_fully_transferred_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_fully_transferred_sk',
       'dim_ent_mit_fully_transferred_nk',
       'promt.dim_ent_promt_mit_fully_transferred',
       'dim_ent_mit_fully_transferred_sk',
       'dim_ent_mit_fully_transferred_nk',
       'mit_fully_transferred', 
       'mit_fully_transferred', 
       'mit_fully_transferred_description',
       'mit_fully_transferred_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_fully_avoided='' where mit_fully_avoided IS NULL
update [promt].[stage_promt_datalake_export_risk_snapshot] set mit_fully_avoided_description='' where mit_fully_avoided_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'promt.stage_promt_datalake_export_risk_snapshot', 
       'stage_promt_datalake_export_risk_snapshot_id', 
       'dim_ent_mit_fully_avoided_sk',
       'dim_ent_mit_fully_avoided_nk',
       'promt.dim_ent_promt_mit_fully_avoided',
       'dim_ent_mit_fully_avoided_sk',
       'dim_ent_mit_fully_avoided_nk',
       'mit_fully_avoided', 
       'mit_fully_avoided', 
       'mit_fully_avoided_description',
       'mit_fully_avoided_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   




	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
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
		--select 'Falied', error_message()

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
end;		



GO


