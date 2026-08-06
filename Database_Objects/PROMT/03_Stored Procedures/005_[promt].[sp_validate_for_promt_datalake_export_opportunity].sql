
ALTER PROC [promt].[sp_validate_for_promt_datalake_export_opportunity] AS
BEGIN
    
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);

	DECLARE @Date DATETIME;
	SET @Date = GETDATE();


	--------------------------------------------------------------------------------------
	----setup any pre=processing values as required.
	--------------------------------------------------------------------------------------

	select @processed_count=0 --temp entry


	--------------------------------------------------------------------------------------
	-- Combine date from the Reprocess table for the current run
	--------------------------------------------------------------------------------------
	
INSERT INTO [promt].[stage_promt_datalake_export_opportunity]
(
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
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
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]		
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
)
SELECT
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
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
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]		
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]

FROM [promt].[reprocess_promt_datalake_export_opportunity];

DELETE FROM [promt].[reprocess_promt_datalake_export_opportunity];

	-----------------------------------------------------------------
-------Update the SK/NK values within the Synapse table USING STORED PROCEDURE.
	-----------------------------------------------------------------
	
EXEC promt.sp_update_dimension_keys_for_promt_datalake_export_opportunity;


	SELECT @unprocessed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity
	WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;
			


	SELECT @processed_count  = count(*) FROM promt.stage_promt_datalake_export_opportunity
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
;



INSERT INTO [promt].[reprocess_promt_datalake_export_opportunity]
(
[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
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
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]		
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]
)
SELECT

[opportunity_id]
,[opportunity_no]
,[ro_category]
,[ro_category_description]
,[sub_category]
,[dim_ent_risk_opportunity_category_sk]
,[dim_ent_risk_opportunity_category_nk]
,[opportunity_title]
,[drivers_causes]
,[description]
,[record_date]
,[probability_range_percentage]
,[probability_range_percentage_description]
,[probability_range_percentage_display_order]
,[dim_ent_probability_range_percentage_sk]
,[dim_ent_probability_range_percentage_nk]
,[environment]
,[environment_description]
,[dim_ent_environment_sk]
,[dim_ent_environment_nk]
,[health_safety_security]
,[health_safety_security_description]
,[dim_ent_health_safety_security_sk]
,[dim_ent_health_safety_security_nk]
,[quality]
,[quality_description]
,[dim_ent_quality_sk]
,[dim_ent_quality_nk]
,[reputation]
,[reputation_description]
,[dim_ent_reputation_sk]
,[dim_ent_reputation_nk]
,[social_culture]
,[social_culture_description]
,[dim_ent_social_culture_sk]
,[dim_ent_social_culture_nk]
,[cost_impact_tcv_percentage]
,[cost_impact_tcv_percentage_description]
,[dim_ent_cost_impact_tcv_percentage_sk]
,[dim_ent_cost_impact_tcv_percentage_nk]
,[schedule]
,[schedule_description]
,[dim_ent_schedule_sk]
,[dim_ent_schedule_nk]
,[overall_impact]
,[overall_impact_description]
,[overall_impact_display_sort_order]
,[dim_ent_overall_impact_sk]
,[dim_ent_overall_impact_nk]
,[severity_score]
,[hilp]
,[opportunity_owner]
,[opportunity_due_date]
,[opportunity_status]
,[opportunity_status_description]
,[dim_ent_opportunity_status_sk]
,[dim_ent_opportunity_status_nk]
,[opportunity_closing_justification]
,[opportunity_closing_justification_description]
,[dim_ent_opportunity_closing_justification_sk]
,[dim_ent_opportunity_closing_justification_nk]
,[actions]
,[opportunity_cost]
,[response_status]
,[respose_status_description]
,[dim_ent_response_status_sk]
,[dim_ent_response_status_nk]
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
,[distribution_type]
,[distribution_type_description]
,[dim_ent_distribution_type_sk]
,[dim_ent_distribution_type_nk]
,[risk_function]
,[risk_modeling_tech]
,[risk_modeling_tech_description]
,[dim_ent_risk_modeling_tech_sk]
,[dim_ent_risk_modeling_tech_nk]
,[most_likely]
,[t_project_id]
,[active_flag]
,[created_by]
,[created_dtm]
,[version_no]
,[cost_impact_ranging_basis]
,[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[project_no]						
,[project_pc_code]					
,[project_pc_code_description]		
,[project_bid_project_id]			
,[project_project_title]				
,[project_client_name]				
,[project_business_line]				
,[project_business_line_description]	
,[project_country]					
,[project_manager]					
,[project_prom_lead]					
,[project_category]					
,[project_category_description]		
,[project_total_contract_value]		
,[project_estimated_cost]			
,[project_currency_code]				
,[project_currency_code_description]	
,[project_contract_type]				
,[project_contract_type_description]	
,[project_total_duration]			
,[project_document_revision_no]		
,[project_document_revision_date]	
,[project_revisied_by]				
,[project_approved_by]				
,[project_award_date]				
,[project_active_flag]				
,[project_project_type]				
,[project_project_type_description]	
,[project_duration_type]				
,[project_version_no]				
,[project_status]					
,[project_status_description]		
,[dl_touched_dtm]
,[process_date]
,[closed_dtm]
,[archived]
,[rearchival_date]

FROM promt.stage_promt_datalake_export_opportunity

WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;

UPDATE promt.stage_promt_datalake_export_opportunity
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity
set process_date = GETDATE();

UPDATE promt.reprocess_promt_datalake_export_opportunity
set created_date_time = GETDATE();
	---------------------------------------------------------------------------

DELETE FROM promt.stage_promt_datalake_export_opportunity
WHERE   
[dim_ent_risk_opportunity_category_sk]
IS NULL OR [dim_ent_risk_opportunity_category_nk]
IS NULL OR [dim_ent_probability_range_percentage_sk]
IS NULL OR [dim_ent_probability_range_percentage_nk]
IS NULL OR [dim_ent_environment_sk]
IS NULL OR [dim_ent_environment_nk]
IS NULL OR [dim_ent_health_safety_security_sk]
IS NULL OR [dim_ent_health_safety_security_nk]
IS NULL OR [dim_ent_quality_sk]
IS NULL OR [dim_ent_quality_nk]
IS NULL OR [dim_ent_reputation_sk]
IS NULL OR [dim_ent_reputation_nk]
IS NULL OR [dim_ent_social_culture_sk]
IS NULL OR [dim_ent_social_culture_nk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_sk]
IS NULL OR [dim_ent_cost_impact_tcv_percentage_nk]
IS NULL OR [dim_ent_schedule_sk]
IS NULL OR [dim_ent_schedule_nk]
IS NULL OR [dim_ent_opportunity_status_sk]
IS NULL OR [dim_ent_opportunity_status_nk]
IS NULL OR [dim_ent_opportunity_closing_justification_sk]
IS NULL OR [dim_ent_opportunity_closing_justification_nk]
IS NULL OR [dim_ent_response_status_sk]
IS NULL OR [dim_ent_response_status_nk]
IS NULL OR [dim_ent_distribution_type_sk]
IS NULL OR [dim_ent_distribution_type_nk]
IS NULL OR [dim_ent_risk_modeling_tech_sk]
IS NULL OR [dim_ent_risk_modeling_tech_nk]
IS NULL OR [dim_ent_promt_project_sk]
IS NULL OR [dim_ent_promt_project_nk]
IS NULL OR [dim_ent_overall_impact_sk]
IS NULL OR [dim_ent_overall_impact_nk]
IS NULL 
;	



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


--End of Stored Procedure
END
GO

