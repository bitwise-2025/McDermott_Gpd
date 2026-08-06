
ALTER PROC [promt].[sp_fact_load_promt_opportunity] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);


--Inserting Good records to Fact Table

INSERT INTO [promt].[fact_promt_opportunity]
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
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
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
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]

from promt.stage_promt_datalake_export_opportunity
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
AND [dim_ent_opportunity_status_sk] IS NOT NULL
AND [dim_ent_opportunity_status_nk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_sk] IS NOT NULL
AND [dim_ent_opportunity_closing_justification_nk] IS NOT NULL
AND [dim_ent_response_status_sk] IS NOT NULL
AND [dim_ent_response_status_nk] IS NOT NULL
AND [dim_ent_distribution_type_sk] IS NOT NULL
AND [dim_ent_distribution_type_nk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_sk] IS NOT NULL
AND [dim_ent_risk_modeling_tech_nk] IS NOT NULL
AND [dim_ent_promt_project_sk] IS NOT NULL
AND [dim_ent_promt_project_nk] IS NOT NULL
AND [dim_ent_overall_impact_sk] IS NOT NULL
AND [dim_ent_overall_impact_nk] IS NOT NULL


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
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[opportunity_id]
,[opportunity_no]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[overall_impact]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[action_due_date]
,[probability]
,[best_case]
,[worst_case]
,[discrete_value]
,[bottom_value]
,[top_value]
,[lower_probability]
,[min_value]
,[max_value]
,[risk_function]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
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

