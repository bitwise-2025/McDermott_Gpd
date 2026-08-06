
ALTER PROC [promt].[sp_fact_load_promt_risk_snapshot] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

		INSERT INTO [promt].[fact_promt_risk_snapshot]
(

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]

)

select 

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]

from promt.stage_promt_datalake_export_risk_snapshot
WHERE   
[dim_ent_risk_opportunity_category_sk] IS NOT NULL
AND [dim_ent_risk_opportunity_category_nk] IS NOT NULL
AND [dim_ent_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_environment_sk] IS NOT NULL
AND [dim_ent_environment_nk] IS NOT NULL
AND [dim_ent_health_safety_security_sk] IS NOT NULL
AND [dim_ent_health_safety_security_nk] IS NOT NULL
AND [dim_ent_quality_sk] IS NOT NULL
AND [dim_ent_quality_nk] IS NOT NULL
AND [dim_ent_reputation_sk] IS NOT NULL
AND [dim_ent_reputation_nk] IS NOT NULL
AND [dim_ent_social_culture_sk] IS NOT NULL
AND [dim_ent_social_culture_nk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_schedule_sk] IS NOT NULL
AND [dim_ent_schedule_nk] IS NOT NULL
AND [dim_ent_risk_status_sk] IS NOT NULL
AND [dim_ent_risk_status_nk] IS NOT NULL
AND [dim_ent_risk_closing_justification_sk] IS NOT NULL
AND [dim_ent_risk_closing_justification_nk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_sk] IS NOT NULL
AND [dim_ent_strategy_pre_contract_nk] IS NOT NULL
AND [dim_ent_strategy_execution_sk] IS NOT NULL
AND [dim_ent_strategy_execution_nk] IS NOT NULL
AND [dim_ent_action_status_sk] IS NOT NULL
AND [dim_ent_action_status_nk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_sk] IS NOT NULL
AND [dim_ent_mit_probability_range_percentage_nk] IS NOT NULL
AND [dim_ent_mit_environment_sk] IS NOT NULL
AND [dim_ent_mit_environment_nk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_sk] IS NOT NULL
AND [dim_ent_mit_health_safety_security_nk] IS NOT NULL
AND [dim_ent_mit_quality_sk] IS NOT NULL
AND [dim_ent_mit_quality_nk] IS NOT NULL
AND [dim_ent_mit_reputation_sk] IS NOT NULL
AND [dim_ent_mit_reputation_nk] IS NOT NULL
AND [dim_ent_mit_social_culture_sk] IS NOT NULL
AND [dim_ent_mit_social_culture_nk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_sk] IS NOT NULL
AND [dim_ent_mit_cost_impact_tcv_percentage_nk] IS NOT NULL
AND [dim_ent_mit_schedule_sk] IS NOT NULL
AND [dim_ent_mit_schedule_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_shared_externaly_sk] IS NOT NULL
AND [dim_ent_shared_externaly_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_sk] IS NOT NULL
AND [dim_ent_mit_fully_transferred_nk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_sk] IS NOT NULL
AND [dim_ent_mit_fully_avoided_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL
AND [dim_ent_mit_overall_impact_sk] IS NOT NULL
AND [dim_ent_mit_overall_impact_nk] IS NOT NULL

group by

[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[dim_ent_risk_status_sk]
,[dim_ent_risk_status_nk]
,[dim_ent_risk_closing_justification_sk]
,[dim_ent_risk_closing_justification_nk]
,[dim_ent_strategy_pre_contract_sk]
,[dim_ent_strategy_pre_contract_nk]
,[dim_ent_strategy_execution_sk]
,[dim_ent_strategy_execution_nk]
,[dim_ent_action_status_sk]
,[dim_ent_action_status_nk]
,[dim_ent_mit_probability_range_percentage_sk]
,[dim_ent_mit_probability_range_percentage_nk]
,[dim_ent_mit_environment_sk]
,[dim_ent_mit_environment_nk]
,[dim_ent_mit_health_safety_security_sk]
,[dim_ent_mit_health_safety_security_nk]
,[dim_ent_mit_quality_sk]
,[dim_ent_mit_quality_nk]
,[dim_ent_mit_reputation_sk]
,[dim_ent_mit_reputation_nk]
,[dim_ent_mit_social_culture_sk]
,[dim_ent_mit_social_culture_nk]
,[dim_ent_mit_cost_impact_tcv_percentage_sk]
,[dim_ent_mit_cost_impact_tcv_percentage_nk]
,[dim_ent_mit_schedule_sk]
,[dim_ent_mit_schedule_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_shared_externaly_sk]
,[dim_ent_shared_externaly_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_mit_fully_transferred_sk]
,[dim_ent_mit_fully_transferred_nk]
,[dim_ent_mit_fully_avoided_sk]
,[dim_ent_mit_fully_avoided_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[dim_ent_mit_overall_impact_sk]
,[dim_ent_mit_overall_impact_nk]
,[ssri_id]
,[ss_id]
,[period_date]
,[risk_id]
,[risk_no]
,[risk_title]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[risk_owner]
,[actions]
,[cost_mitigation]
,[action_due_date]
,[mit_overall_impact]
,[mit_severity_score]
,[mit_hilp]
,[probability]
,[best_case]
,[most_likely]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function1]
,[mit_probability]
,[mit_best_case]
,[mit_most_likely]
,[mit_worst_case]
,[mit_discrete_value]
,[mit_bottom_value]
,[mit_top_value]
,[mit_lower_probability]
,[mit_min_value]
,[mit_max_value]
,[risk_function_2]
,[drivers_causes]
,[risk_due_date]
,[mit_cost]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[expected_value_at_risk]
,[weighted_value_at_risk]
,[cost_impact_ranging_basis]
,[expected_value_at_risk_pre_contract]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
	

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

